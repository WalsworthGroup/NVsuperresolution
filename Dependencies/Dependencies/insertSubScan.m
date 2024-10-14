function scanresallnew = insertSubScan(scanresall,x_start,y_start,x_incr,y_incr,scanrespart,scancenterxy)
%Function to insert a smaller matrix (scanrespart) containing scan results
%for a subregion into a larger matrix (scanresall) containing all scan
%results for the entire region. Used in plotting the large XY
%scan result matrix.

% Calculate the size of the matrices
[M, N] = size(scanresall);
[A, B] = size(scanrespart);

% Calculate the center indices in the larger matrix. x_range,
% y_range refer to the entire range of scanresall
row_center = round((scancenterxy(2) - y_start) / y_incr) + 1; % adjust for y_start
col_center = round((scancenterxy(1) - x_start) / x_incr) + 1; % adjust for x_start

% Calculate the start and end indices in the larger matrix
row_start = row_center - floor(A / 2);
row_end = row_start + A - 1;
col_start = col_center - floor(B / 2);
col_end = col_start + B - 1;

% Ensure the indices are within bounds of the larger matrix
row_start = max(row_start, 1);
row_end = min(row_end, M);
col_start = max(col_start, 1);
col_end = min(col_end, N);

% Ensure the size of the region to replace matches the size of scanrespart
rows_to_replace = row_end - row_start + 1;
cols_to_replace = col_end - col_start + 1;

% Handle cases where the subregion may be truncated due to matrix boundaries
if rows_to_replace ~= A || cols_to_replace ~= B
    row_offset = floor(A / 2) - (row_center - row_start);
    col_offset = floor(B / 2) - (col_center - col_start);
    scanrespart = scanrespart((1+row_offset):(rows_to_replace+row_offset), ...
        (1+col_offset):(cols_to_replace+col_offset));
end

% Replace the subregion in the larger matrix
scanresallnew = scanresall;
scanresallnew(row_start:row_end, col_start:col_end) = scanrespart;
end
