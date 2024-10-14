function formattedStr = formatNumber(num, maxSigFigs)
    % Validate the maxSigFigs input
    if nargin < 2
        maxSigFigs = 4; % Default to 4 significant figures if not provided
    end
    if maxSigFigs < 1
        error('Number of significant figures must be at least 1');
    end
    
    % Create the format string for the given number of significant figures
    formatStr = sprintf('%%.%dg', maxSigFigs);
    
    % Convert the number to a string with the specified number of significant figures
    str = sprintf(formatStr, num);
    
    % Remove trailing zeros in the fractional part if present
    if contains(str, '.')
        str = regexprep(str, '0*$', '');
    end
    
    % Remove trailing decimal point if there is one
    if ~isempty(str) && str(end) == '.'
        str(end) = '';
    end
    
    % Return the formatted string
    formattedStr = str;
end