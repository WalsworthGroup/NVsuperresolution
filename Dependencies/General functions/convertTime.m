function output = convertTime(input)
% Check if the input is a number (seconds) or a string (hh:mm:ss)
if isnumeric(input)
    % Convert seconds to hh:mm:ss
    seconds = round(input);
    hours = floor(seconds / 3600);
    minutes = floor(mod(seconds, 3600) / 60);
    remainingSeconds = mod(seconds, 60);
    output = sprintf('%02d:%02d:%02d', hours, minutes, remainingSeconds);
elseif ischar(input) || isstring(input)
    % Convert hh:mm:ss to seconds
    timeParts = sscanf(input, '%d:%d:%d');
    hours = timeParts(1);
    minutes = timeParts(2);
    seconds = timeParts(3);
    output = hours * 3600 + minutes * 60 + seconds;
else
    error('Invalid input type. Input must be a numeric value (seconds) or a string (hh:mm:ss).');
end
end