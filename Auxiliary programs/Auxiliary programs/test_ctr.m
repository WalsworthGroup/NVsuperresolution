dev_name = "Dev1";
ctr_name = "ctr0";
NIhandle = daq("ni");
NIhandle.Rate = 10000;
CounterHandle = addinput(NIhandle,dev_name, ctr_name, "EdgeCount"); %add counter
AnalogHandle = addinput(NIhandle,dev_name, "ai0", "Voltage"); %to clock starts together with analog input

start(NIhandle,"continuous") %start the counter