
function [a,b,c] = fitplot2dscan(X,Z,fXZ,axis) %fit and plot results from measuring abs position error
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

% Extract coefficients
a = model.Coefficients.Estimate(1); %Intercept
b = model.Coefficients.Estimate(2); %Slope X
c = model.Coefficients.Estimate(3); %Slope Z

% Prepare a fine grid for a smooth surface
[X_grid_fine, Z_grid_fine] = meshgrid(linspace(min(X), max(X), 100), linspace(min(Z), max(Z), 100));
tbl_fine = table(reshape(X_grid_fine, [], 1), reshape(Z_grid_fine, [], 1), 'VariableNames', {'X', 'Z'});

% Predict over the fine grid
fXZ_fine_predicted = predict(model, tbl_fine);
fXZ_fine_predicted = reshape(fXZ_fine_predicted, size(X_grid_fine));

%plot data
popupFig = uifigure('Name', 'Data View', 'Position', [100, 100, 600, 300]); % Increased height to accommodate text

% Create axes for the plot
ax = uiaxes('Parent', popupFig, 'Position', [20, 50, 560, 250]); % Adjust position to make room for text
hold(ax, 'on');  % Specify the axes for hold
grid(ax, 'on');

% Set labels and title on the correct axes
axesvector = ['X' 'Y' 'Z'];
axisname = axesvector(axis);

xlabel(ax, 'Absolute position (um)');
ylabel(ax, sprintf('%s position error (nm)',axisname));
title(ax, sprintf('%s position error vs. absolute position',axisname));

% Scatter plot for the original data
scatter3(ax,X_vector, Z_vector, fXZ_vector, 10, 'o', 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'r'); % Reduced marker size to 10

% Surface plot for the fitted model
mesh(ax,X_grid_fine, Z_grid_fine, fXZ_fine_predicted, 'FaceAlpha', 0.5);
xlabel(ax,'X');
ylabel(ax,'Z');
zlabel(ax,'f(X, Z)');
title(ax,sprintf('%s position error vs. X and Z position',axisname));
legend(ax, 'Data points', 'Fitted surface');
view(ax,30,40); % Adjusts the 3D view angle

% Display the equation on the plot
txtAx = uiaxes('Parent', popupFig, 'Position', [20, -40, 560, 150], 'Color', 'none');  % Create a new axes for text
txtAx.XColor = 'none';  % Hide X axis
txtAx.YColor = 'none';  % Hide Y axis
text(txtAx, 0.01, 0.5, sprintf('f = %.2f + %.2fX + %.2fZ', a, b,c), 'FontSize', 12, 'Units', 'normalized', 'VerticalAlignment', 'middle');

hold(ax, 'off');  % Release the hold
end