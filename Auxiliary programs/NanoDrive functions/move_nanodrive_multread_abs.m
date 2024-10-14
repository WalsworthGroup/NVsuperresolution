function [poserr,newpos] = move_nanodrive_multread_abs(axis,handle,goalpos,pauselength)

% try reading and writing to the NanoDrive
prevpos = calllib('Madlib', 'MCL_SingleReadN', axis, handle);
fprintf('Previous position = %f um.\n', prevpos);

goaldeltapos = abs(goalpos-prevpos);
% if goaldeltapos > 5 % moving large distances requires a long pause length
%     pauselength = 2000;
% end

% get user input for the new position
if goaldeltapos > 0.05
    err = calllib('Madlib', 'MCL_SingleWriteN', goalpos, axis, handle);
    if (err ~= 0)
        fprintf('Error: NanoDrive did not correctly write position. Error Code %d', err);
        MCLcleanup(handle, 1);
        return;
    end

    % pause device before reading again
    calllib('Madlib', 'MCL_DeviceAttached', pauselength, handle);
end

% read the new position to make sure NanoDrive actually moved
nreads = 10;
newposreadvec = zeros(1,nreads);
for i = 1:nreads
    newposreadvec(i) = calllib('Madlib', 'MCL_SingleReadN', axis, handle);
end
newpos = mean(newposreadvec);
fprintf('Intended position = %f. Actual new position = %f.\n',goalpos,newpos);
poserr=(newpos-goalpos)*1000;
fprintf('Position error is %f nm.\n', poserr);

end
