function strippedVec = stripextremevalues(vec)
    % Find the position of the last non-extreme value
    lastValidIndex = find(vec ~= 9999, 1, 'last');
    
    % Extract the portion of the vector up to the last non-extreme value
    if isempty(lastValidIndex)
        strippedVec = []; % Return an empty vector if all values are extreme
    else
        strippedVec = vec(1:lastValidIndex);
    end
end