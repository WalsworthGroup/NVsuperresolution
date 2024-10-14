function [a,b] = fitplot1dscan(X,fX,axis) %fit and plot results from measuring abs position error
% axis should be set to 2 normally for Y.
% Fit a linear model
lm = fitlm(X, fX);

% Extract the coefficients
a = lm.Coefficients.Estimate(1); % Intercept
b = lm.Coefficients.Estimate(2); % Slope

% Generate points for the fitted line

X_line = linspace(min(X), max(X), 100);
f_line = a + b * X_line;

%plot data
popupFig = uifigure('Name', 'Data View', 'Position', [100, 100, 600, 300]); % Increased height to accommodate text
% Create axes for the plot
ax = uiaxes('Parent', popupFig, 'Position', [20, 50, 560, 250]); % Adjust position to make room for text
hold(ax, 'on');  % Specify the axes for hold

% Set labels and title on the correct axes
axesvector = ['X' 'Y' 'Z'];
axisname = axesvector(axis);

xlabel(ax, 'Absolute position (um)');
ylabel(ax, sprintf('%s position error (nm)',axisname));
title(ax, sprintf('%s position error vs. absolute position',axisname));

% Assuming X, fX, X_line, f_line, a, and b are defined somewhere in your code
% Generate some data to plot
scatter(ax, X, fX, 'filled');
plot(ax, X_line, f_line, '-r');

% Display the equation on the plot
txtAx = uiaxes('Parent', popupFig, 'Position', [20, -40, 560, 150], 'Color', 'none');  % Create a new axes for text
txtAx.XColor = 'none';  % Hide X axis
txtAx.YColor = 'none';  % Hide Y axis
text(txtAx, 0.01, 0.5, sprintf('f =  %.2f + %.2f%s', a,b, axisname), 'FontSize', 12, 'Units', 'normalized', 'VerticalAlignment', 'middle');

% Add legend
legend(ax, 'Data points', 'Fitted line');

hold(ax, 'off');  % Release the hold
end