%This script gets the derivatives of the columns in a matrix

m_in = dLinearSim06; % Define the input matrix

[numRows, numCols] = size(m_in); % Get the size of the input matrix
m_out = zeros(numRows, numCols); % Define the output matrix

% Calculate the derivative of each column
for col = 1:numCols
    % Use the diff function to compute the differences between consecutive elements
    derivatives = diff(m_in(:, col));
    
    % Pad the derivative values with a zero at the beginning to match the size of the original column
    derivatives = [0; derivatives];
    
    % Store the derivative values in the new matrix
    m_out(:, col) = derivatives;
end

d2LinearSim06 = m_out; % Name the output matrix

% Delete Unnecessary Variables from the Workspace
clear col derivatives m_in m_out numCols numRows 