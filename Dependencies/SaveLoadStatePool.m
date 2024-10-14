classdef SaveLoadStatePool
    properties
    end

    methods
        function saveState(obj,app,filename) %save properties into filename
            proplist = obj.extractproplist(app); % extract list of properties

            appstate = struct();
            for i = 1:length(proplist)
                appstate.(proplist{i}) = app.(proplist{i}).Value;
            end
            save(filename,'appstate');
        end

        function app = loadState(obj,app,filename)
            if ~exist(filename,'file')
                return
            end

            appstate = load(filename,'appstate');
            appstate = appstate.appstate;
            proplist = obj.extractproplist(app); % extract list of properties

            for i = 1:length(fieldnames(appstate))
                try
                    app.(proplist{i}).Value = appstate.(proplist{i});
                catch
                    disp("Property not found and cannot be loaded from settings file. This may happen the first time a new property is added.");
                end
            end
        end

        function proplist = extractproplist(~,app) %extract all switches, fields, and checkboxes in an app
            % Get all app properties
            props = properties(app);

            % Initialize empty arrays for storing names
            proplist = repmat({''}, 1, length(props));

            % Loop through all properties
            for i = 1:length(props)
                prop = props{i};
                if isa(app.(prop), 'matlab.ui.control.Switch') || isa(app.(prop), 'matlab.ui.control.EditField') || isa(app.(prop), 'matlab.ui.control.NumericEditField') || isa(app.(prop), 'matlab.ui.control.CheckBox') || isa(app.(prop), 'matlab.ui.control.TextArea')
                    proplist{i} = prop;
                end
            end
            proplist=proplist(~cellfun('isempty', proplist)); % get rid of empty cells in the array
        end


    end

end