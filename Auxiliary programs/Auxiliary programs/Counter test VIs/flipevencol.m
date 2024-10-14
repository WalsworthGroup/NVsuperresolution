function flippedMatrix = flipevencol(matrix)
    % Get the size of the matrix
    [rows, cols] = size(matrix);

    % Initialize the output matrix as a copy of the input matrix
    flippedMatrix = matrix;

    % Loop through each column
    for col = 2:2:cols  % Start at the 2nd column and increment by 2
        % Flip the elements in the even column
        flippedMatrix(:, col) = flip(matrix(:, col));
    end
end