%This script finds the maximum value of current, and outputs the
%corresponding value for voltage.

m = dLinearSim02; % Define the input matrix

% Get the size of the function matrix
[numRows, numCols] = size(m);

% Create a new matrix to store the corresponding x-values
v_of_max_g = zeros(1, numCols-1);

% Loop through each function
for col = 2:numCols
    % Get the y-values of the current function
    yValues = m(:, col);
    
    % Find the index of the maximum y-value
    [~, maxIndex] = max(yValues);
    
    % Get the corresponding x-value
    xValue = m(maxIndex, 1);
    
    % Store the x-value in the new matrix
    v_of_max_g(1, col-1) = xValue;
end

clear m numRows numCols col yValues maxIndex xValue 