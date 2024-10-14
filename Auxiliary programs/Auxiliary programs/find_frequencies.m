data = posvec;
t = timevec;

[frequency, power] = plomb(data, t);

% Step 3: Plot the Lomb-Scargle Periodogram
figure;
plot(frequency, power);
xlabel('Frequency (Hz)');
ylabel('Power');
title('Lomb-Scargle Periodogram');

% Find and mark the peak frequencies
[maxPower, idx] = maxk(power, 2);  % Find the two highest peaks
hold on;
plot(frequency(idx), maxPower, 'ro');  % Mark the peak frequencies
hold off;