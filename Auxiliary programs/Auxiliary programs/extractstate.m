% Get all app properties
props = properties(app);

% Initialize empty arrays for storing names
appstate = repmat({''}, 1, length(props));

% Loop through all properties
for i = 1:length(props)
    prop = props{i};
    if isa(app.(prop), 'matlab.ui.control.Switch') || isa(app.(prop), 'matlab.ui.control.EditField') || isa(app.(prop), 'matlab.ui.control.NumericEditField') || isa(app.(prop), 'matlab.ui.control.CheckBox')
        appstate{i} = prop;
    end
end

appstate=appstate(~cellfun('isempty', appstate));

disp(appstate);