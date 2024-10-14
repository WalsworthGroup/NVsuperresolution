# use ctypes for easy access to dll
from ctypes import *

def MCLMicroDrive():
    print "MicroDrive python test program\n"

    # load the dll
    mdll = cdll.MicroDrive

    handle = mdll.MCL_InitHandle()
    if handle == 0:
        print "Error: Handle did not initialize properly.\nExiting"
        return

    # read different properties of the MicroDrive
    # first declare variables of type c_double
    # all variables must be turned into their ctype other than int and string
    encoderResolution = c_double()
    stepSize = c_double()
    maxVel = c_double()
    minVel = c_double()

    # next get pointers to each variable since we must pass by reference
    pER = pointer(encoderResolution)
    pSS = pointer(stepSize)
    pMxV = pointer(maxVel)
    pMnV = pointer(minVel)

    # finally read the info and then print it out
    err = mdll.MCL_MicroDriveInformation(pER, pSS, pMxV, pMnV, handle)
    if err != 0:
        print "Error: MicroDrive could not correctly get its information.  Error Code:", err, "\nExiting"
        mdll.MCL_ReleaseHandle(handle)
        return
    else: # must use .value to convert from ctype to python type
        print "MicroDrive information"
        print "Encoder Resolution:", encoderResolution.value 
        print "Step Size:", stepSize.value
        print "Max Velocity:", maxVel.value
        print "Min Velocity:", minVel.value, "\n"

    # create position varialbes and get pointers to them
    xPos = c_double()
    yPos = c_double()
    px = pointer(xPos)
    py = pointer(yPos)

    err = mdll.MCL_MicroDriveReadEncoders(px, py, handle)
    if err != 0:
        print "Error: MicroDrive did not read position properly. Error Code:", err, "\nExiting"
        mdll.MCL_ReleaseHandle(handle)
        return
    else:
        print "Current x position:", xPos.value
        print "Current y postiion:", yPos.value, "\n"

    # now try to move device
    xin = input("How much do you want to move x by (mm)?\n")
    yin = input("How much do you want to move y by (mm)?\n")

    if xin == 0 and yin == 0: # no movement, do nothing
        err = 0
    elif yin == 0: # only move x axis
        err = mdll.MCL_MicroDriveMoveProfile(c_uint(1), maxVel, c_double(xin), 0, handle)
    elif xin == 0: # only move y axis
        err = mdll.MCL_MicroDriveMoveProfile(c_uint(2), maxVel, c_double(yin), 0, handle)
    else: # move both axes
        err = mdll.MCL_MicroDriveMoveProfileXY(maxVel, c_double(xin), 0, maxVel, c_double(yin), 0, handle)

    if err != 0:
        print "Error: MicroDrive did not move properly. Error Code:", err, "\nExiting"
        mdll.MCL_ReleaseHandle(handle)
        return
    else:
        # make sure to pause device, so it is not accessed before finishing move
        if (abs(xin) > abs(yin)):
            milliseconds = int(1000*xin/maxVel.value)
            err = mdll.MCL_DeviceAttached(abs(milliseconds), handle)
        else:
            milliseconds = int(1000*yin/maxVel.value)
            err = mdll.MCL_DeviceAttached(abs(milliseconds), handle)

    # read position after move
    err = mdll.MCL_MicroDriveReadEncoders(px, py, handle)
    if err != 0:
        print "Error: MicroDrive did not read position properly. Error Code:", err, "\nExiting"
        mdll.MCL_ReleaseHandle(handle)
        return
    else:
        print "New x position: ", xPos.value
        print "New y position: ", yPos.value, "\n"

    # be sure to release handle
    mdll.MCL_ReleaseHandle(handle)

    print "Program completed without any errors"


