function MicroMovePos(handlexy,handlez,deltaX,deltaY,deltaZ,pointers)
velocity = 2;
if deltaX ~= 0
    err = calllib('MicroDrive', 'MCL_MDMove', 1, velocity, deltaX, handlexy);
    if (err ~= 0)
        message = sprintf('Error: MicroDrive did not correctly move. Error code %d', err);
        disp(message);
        return;
    end
end
if deltaY ~= 0
    err = calllib('MicroDrive', 'MCL_MDMove', 2, velocity, deltaY, handlexy);
    if (err ~= 0)
        message = sprintf('Error: MicroDrive did not correctly move. Error code %d', err);
        disp(message);
        return;
    end
end
if deltaZ ~= 0 
    err = calllib('MicroDrive', 'MCL_MDMove', 1, velocity, deltaZ, handlez);
    if (err ~= 0)
        message = sprintf('Error: MicroDrive did not correctly move. Error code %d', err);
        disp(message);
        return;
    end
end
tic
statusxy = 1;
statusz = 1;
while statusxy ~= 0 || statusz ~= 0
    statusxy = MicroStatus(handlexy);
    statusz = MicroStatus(handlez);
end
toc
MicroReadPos(handlexy,handlez,pointers);

end