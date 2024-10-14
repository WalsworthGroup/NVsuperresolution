function MicroReadPos(handlexy,handlez,pointers)
paPos =  libpointer('doublePtr', 0.0);
% Read current position
err = calllib('MicroDrive', 'MCL_MDReadEncoders',pointers.pxPos,pointers.pyPos,paPos,paPos,handlexy);
err = calllib('MicroDrive', 'MCL_MDReadEncoders',pointers.pzPos,paPos,paPos,paPos,handlez);

if (err ~= 0)
    message = sprintf('Error: MicroDrive did not correctly read encoders. Error Code %d', err);
    disp(message);
    cleanup(handle, 1);
    return;
else
    xPos = pointers.pxPos.value;
    message = sprintf('Current x pos: %f', xPos);
    disp(message);
    yPos = pointers.pyPos.value;
    message = sprintf('Current y pos: %f', yPos);
    disp(message);
    zPos = pointers.pzPos.value;
    message = sprintf('Current z pos: %f\n', zPos);
    disp(message);
end

end