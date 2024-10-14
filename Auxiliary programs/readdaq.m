function cts = readdaq(NIhandle,dur)
read(NIhandle,'all');%flush buffer
pause(dur); %wait for data to accumulate
data = read(NIhandle,'all'); %read again
cts = data.Dev1_ctr0(end)-data.Dev1_ctr0(1);
end