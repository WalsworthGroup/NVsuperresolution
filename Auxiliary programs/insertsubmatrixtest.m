% Define the scan ranges and increments
x_incr = 0.1;
y_incr = 0.1;
x_start = 2;
y_start = -60;
x_range = x_start:x_incr:20;
y_range = y_start:y_incr:10;

% Generate the larger matrix scanresmat
scanresmat = zeros(length(y_range), length(x_range));

% Define the size of the smaller matrix scanrespart
A = 10; % number of rows
B = 30; % number of columns

% Generate a smaller matrix scanrespart with some example values
scanrespart = ones(A, B) * 10; % for example, a matrix of 10s

% Define the center coordinates of the subregion within the larger matrix
a = 10; % X coordinate
b = -20; % Y coordinate

% Calculate the size of the matrices
[M, N] = size(scanresmat);
[A, B] = size(scanrespart);

% Calculate the center indices in the larger matrix
row_center = round((b - y_start) / y_incr) + 1; % adjust for y_range start
col_center = round((a - x_start) / x_incr) + 1; % adjust for x_range start

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
scanresmat(row_start:row_end, col_start:col_end) = scanrespart;

% Display the result (optional)
disp(scanresmat);
imagesc(x_range,y_range,scanresmat);