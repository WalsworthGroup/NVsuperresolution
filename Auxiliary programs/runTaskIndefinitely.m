function t = runTaskIndefinitely(taskFunc, taskInterval, resetSeconds)
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
              'TimerFcn', @(~,~) handleTimerTask(taskFunc), ...
              'StopFcn', @(~,~) resetTimer());

    % Nested function to reset the timer
    function resetTimer()
        % Reset the timer and restart it
        start(t);
    end

    % Start the timer
    start(t);
end

function handleTimerTask(taskFunction)
    % Perform the task
    taskFunction();
end