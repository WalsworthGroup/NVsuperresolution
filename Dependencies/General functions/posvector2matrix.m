function result = posvector2matrix(vec, m)
    % Calculate the length of the input vector
    n = length(vec);
    
    % Determine the number of rows needed
    numRows = ceil(n / m);
    
    % Calculate the total number of elements needed to fill the matrix
    totalElements = numRows * m;
    
    % Pad the original vector with zeros if necessary
    paddedVec = [vec, 9999 * ones(1, totalElements - n)];
    
    % Reshape the padded vector into a 2D matrix
    result = reshape(paddedVec, m, numRows)'; % Transpose to get the desired shape
end