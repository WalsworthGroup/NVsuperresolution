% Example data
X = posvec; % Independent variable
fX = poserrvec; % Dependent variable, f(X)

% Fit a linear model
lm = fitlm(X, fX);

% Extract the coefficients
a = lm.Coefficients.Estimate(2); % Slope
b = lm.Coefficients.Estimate(1); % Intercept

% Generate points for the fitted line
X_line = linspace(min(X), max(X), 100);
f_line = a * X_line + b;

% Plot the original data
figure; % Create a new figure window
scatter(X, fX, 'filled');
hold on; % Hold on to the current plot

% Plot the fitted line
plot(X_line, f_line, '-r');

% Add labels and title
xlabel('X');
ylabel('f(X)');
title('Linear Fit: f = aX + b');
legend('Data points', 'Fitted line');

% Display the equation on the plot
text(mean(X), mean(fX) + 1, sprintf('f = %.2fX + %.2f', a, b), 'FontSize', 12);

hold off; % Release the plot hold
