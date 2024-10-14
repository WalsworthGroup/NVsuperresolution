% Define the range of coordinates
minX = 1;
maxX = 5;
minY = 40;
maxY = 50;

% Initialize the result matrix
resmatrix = zeros(maxX, maxY);

% Define the scanning pattern parameters
zigzagPattern = true;
direction = 1; % 1 for forward, -1 for backward

% Loop through X and Y coordinates
for x = minX:maxX
    % Determine the range of Y values based on the scanning direction
    if direction == 1
        yRange = minY:direction:maxY;
    else
        yRange = maxY:direction:minY;
    end

    % Loop through Y coordinates
    for y = yRange
        % Measure the result
        test = [x,y]
        result = x*y;
        
        % Store the result in the matrix
        resmatrix(x, y) = result;
    end

    % Update scanning direction for zigzag pattern
    direction = -direction;
end

% Display or use the result matrix as needed
disp(resmatrix);