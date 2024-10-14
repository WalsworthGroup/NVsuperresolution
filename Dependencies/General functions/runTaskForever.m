function t = runTaskForever(taskFunc, taskInterval, resetSeconds, taskname)
%Function used to execute a timer task indefinitely, removing MATLAB's
%8-hour limit on timers by periodically resetting and restarting the timer. 
% This is the syntax to utilize it, assuming
%testfunc is a function taking one variable
% t = runTaskForever(@() testfunc(35), taskInterval, resetSeconds);
% Ideally, set resetSeconds to something less than 8 hours (28800 s).
% To permanently stop the timer, you must send the command
% delete(t)

% Check if the provided taskFunc is a valid function handle
if ~isa(taskFunc, 'function_handle')
    error('taskFunc must be a valid function handle.');
end

% Calculate the total number of executions before resetting
maxExecutions = ceil((resetSeconds) / taskInterval);

% Create a timer object
t = timer('ExecutionMode', 'fixedRate', ...
    'Period', taskInterval, ...
    'TasksToExecute', maxExecutions, ...
    'TimerFcn', @(~,~) taskFunc(), ...
    'StopFcn', @(~,~) resetTimer());

% Nested function to reset the timer
    function resetTimer()
        % Reset the timer and restart it
        start(t);
        fprintf('Timer for task "%s" has been automatically reset.\n',taskname);
    end

% Start the timer
start(t);
end