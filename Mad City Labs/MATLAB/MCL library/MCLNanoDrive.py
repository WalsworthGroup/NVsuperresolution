# use ctypes for easy c dll access
from ctypes import *
def MCLNanoDrive():

    print "MCL NanoDrive test program\n"
    # load the dll (place dll in same directory as python.exe)
    mcldll = cdll.madlib

    # For all remaining calls do : mcldll.FunctionName(function parameters)
    handle = mcldll.MCL_InitHandle()
    if handle == 0:
        print "Error: Handle not intialized correctly\nExiting"
        return

    # find some basic information about the NanoDrive
    class ProductInfo(Structure):
        _fields_ = [("axis_bitmap", c_ubyte),
                    ("ADC_resolution", c_short),
                    ("DAC_resolution", c_short),
                    ("Product_id", c_short),
                    ("FirmwareVersion", c_short),
                    ("FirmwareProfile", c_short)]
        _pack_ = 1 # this is how it is packed in the Madlib dll

    pi = ProductInfo()
    ppi = pointer(pi)

    err = mcldll.MCL_GetProductInfo(ppi, handle)
    if err != 0:
        print "Error: NanoDrive could not get productInformation. Error Code:", err, "\nExiting"
        mcldll.MCL_ReleaseHandle(handle) # be sure to release handle anytime before returning
        return
    else:
        print "Information about the NanoDrive:"
        print "axis bitmap:", pi.axis_bitmap
        print "ADC resolution:", pi.ADC_resolution
        print "DAC resolution:", pi.DAC_resolution
        print "Product ID:", pi.Product_id
        print "Firmware Version:", pi.FirmwareVersion
        print "Firmware Profile:", pi.FirmwareProfile

    # determine which axis to use
    if (pi.axis_bitmap & 0x4) == 0x4:
        axis = c_uint(3) # need to use unsigned integers
        print "\nUsing Z axis\n"
    elif (pi.axis_bitmap & 0x2) == 0x2:
        axis = c_uint(2)
        print "\nUsing Y axis\n"
    elif (pi.axis_bitmap & 0x1) == 0x1:
        axis = c_uint(1)
        print "\nUsing X axis\n"
    else:
        print "\No valid axes availible.\nExiting"
        mcldll.MCL_ReleaseHandle(handle)
        return

    # when function returns a c-type that is not an integer, must set the return type before you ever use it
    cal = mcldll.MCL_GetCalibration
    cal.restype = c_double
    readpos = mcldll.MCL_SingleReadN
    readpos.restype = c_double

    calibration = mcldll.MCL_GetCalibration(axis, handle)

    # show reading and writing to a position
    pos = mcldll.MCL_SingleReadN(axis, handle)
    if pos < 0:
        print "Error: NanoDrive did not correctly read position. Error Code:", pos, "\nExiting"
        mcldll.MCL_ReleaseHandle(handle)
        return
    else:
        percent = (pos/calibration)*100
        print "Current position is", percent, "% of the total range of motion" 

    # get user input for new position
    percent = input("Move to what percent of total range of motion?(0-100%):\n")
    pos = c_double((percent*calibration)/100) # must convert to c data type
    err = mcldll.MCL_SingleWriteN(pos, axis, handle)
    if err != 0:
        print "Error: NanoDrive did not correctly write position. Error Code:", err, "\nExiting"
        mcldll.MCL_ReleaseHandle(handle)
        return

    # pause before reading again
    mcldll.MCL_DeviceAttached(100, handle)

    # read the new position to make sure it actually moved
    pos = mcldll.MCL_SingleReadN(axis, handle)
    if pos < 0:
        print "Error: NanoDrive did not correctly read position. Error Code:", pos, "\nExiting"
        mcldll.MCL_ReleaseHandle(handle)
        return
    else:
        percent = (pos/calibration)*100
        print "\nNew position is", percent, "% of the total range of motion\n" 

    # try to create a waveform
    datapoints = 1000 # since int, don't need to cast to ctype
    milliseconds = c_double(0.1)

    wavetype = c_double * datapoints
    waveform = wavetype()

    print "Moving NanoDrive to 20% of total range of motion for waveform acquisition"
    pos = c_double((20*calibration)/100)
    err = mcldll.MCL_SingleWriteN(pos, axis, handle)
    if err != 0:
        print "Error: NanoDrive did not correctly move to 20% of total calibration. Error Code:", err, "\nExiting"
        mcldll.MCL_ReleaseHandle(handle)
        return
    
    err = mcldll.MCL_ReadWaveFormN(axis, datapoints, milliseconds, waveform, handle)
    if err != 0:
        print "Error reading waveform. Error Code:", err, "\nExiting"
        mcldll.MCL_ReleaseHandle(handle)
        return
        
    err = mcldll.MCL_Setup_LoadWaveFormN(axis, datapoints, milliseconds, waveform, handle)
    if err != 0:
        print "Error setting up load of waveform. Error Code:", err, "\nExiting"
        mcldll.MCL_ReleaseHandle(handle)
        return

    err = mcldll.MCL_Setup_ReadWaveFormN(axis, datapoints, milliseconds, handle)
    if err != 0:
        print "Error setting up read of waveform. Error Code:", err, "\nExiting"
        mcldll.MCL_ReleaseHandle(handle)
        return

    err = mcldll.MCL_TriggerWaveformAcquisition(axis, datapoints, waveform, handle)
    if err != 0:
        print "Error triggering waveform acquisition. Error Code:", err, "\nExiting"
        mcldll.MCL_ReleaseHandle(handle)
        return
    else:
        print "Waveform successfully acquired"
        
    # write the waveform doubles to a file, which can be used in a
    # graphing program
    filename = "MCL_waveform.txt"
    file = open(filename, "w")
    for i in range(0, 999, 1):
        s = repr(waveform[i]) + "\n" # turn double into string for file write
        file.write(s)

    print "Waveform data written to", filename, "\n"
    
    #cleanup
    file.close()

    mcldll.MCL_ReleaseHandle(handle)

    print "Program completed without any errors"
