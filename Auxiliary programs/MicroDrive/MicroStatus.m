function status = MicroStatus(handle)
isMoving = libpointer('int32Ptr',0);
calllib('MicroDrive', 'MCL_MicroDriveMoveStatus',isMoving,handle);
status = isMoving.Value;
% disp(status);
end
