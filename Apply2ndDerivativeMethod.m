%This script finds the threshold voltage in the matrix data using the
%second derivative method

m = d2LinearSim02; % define the input matrix

% Get the size of the input matrix
[numRows, numCols] = size(m);

% Create a new matrix to store the matching values
m_o = zeros(1, numCols);

% Find the maximum value for each column
for col = 1:numCols
    % Use the max function to find the maximum value in each column
    maxVal = max(m(:, col));
    
    % Find the corresponding value in the first column that matches the maximum value
    matchingValue = m(find(m(:, col) == maxVal, 1), 1);
    
    % Store the matching value in the new matrix
    m_o(1, col) = matchingValue;
end

vth_d2LinearSim06 = m_o; % Name the output matrix

clear m m_o numRows numCols col maxVal matchingValue