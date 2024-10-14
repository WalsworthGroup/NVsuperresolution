function fit_2dscan(X,Z,fXZ,axis)
% Generate a grid for X and Z
[X_grid, Z_grid] = meshgrid(X, Z);

% Reshape X_grid, Z_grid, and fXZ into vectors
X_vector = reshape(X_grid, [], 1);
Z_vector = reshape(Z_grid, [], 1);
fXZ_vector = reshape(fXZ, [], 1);

% Create a table of the independent variables and the dependent variable
tbl = table(X_vector, Z_vector, fXZ_vector, 'VariableNames', {'X', 'Z', 'fXZ'});

% Fit the linear model
model = fitlm(tbl, 'fXZ ~ X + Z');
disp(model);

% Prepare a fine grid for a smooth surface
[X_grid_fine, Z_grid_fine] = meshgrid(linspace(min(X), max(X), 100), linspace(min(Z), max(Z), 100));
tbl_fine = table(reshape(X_grid_fine, [], 1), reshape(Z_grid_fine, [], 1), 'VariableNames', {'X', 'Z'});

% Predict over the fine grid
fXZ_fine_predicted = predict(model, tbl_fine);
fXZ_fine_predicted = reshape(fXZ_fine_predicted, size(X_grid_fine));

% Plotting
axisvector = ['X','Y','Z'];
axisname = axisvector(axis);
figure;
hold on;
grid on;
% Scatter plot for the original data
scatter3(X_vector, Z_vector, fXZ_vector, 10, 'o', 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'r'); % Reduced marker size to 10
% Surface plot for the fitted model
mesh(X_grid_fine, Z_grid_fine, fXZ_fine_predicted, 'FaceAlpha', 0.5);
xlabel('X');
ylabel('Z');
zlabel(sprintf('%s position error',axisname));
title(sprintf('%s position discrepancy vs. X and Z position',axisname));
legend('Original Data', 'Fitted Surface');
view(30, 40); % Adjusts the 3D view angle
hold off;
end