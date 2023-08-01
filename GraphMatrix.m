%Graphs the contents of a matrix, where the first column is the x-axis and
%the other columns represent the data to be graphed

m = d2LinearSim06; % Select Matrix

% Extract the x-axis values from the first column
x = m(:, 1);

% Create a figure for the graph
% figure;

% Loop through each column (excluding the first column)
for i = 2:size(m,2);
    % Extract the data for the current column
    y = m(:, i);
    
    % Plot the data
    p = plot(x, y, 'LineWidth', 2);

    if(i == 10){set(p, 'Color',[0 0 1])}
    else if(i == 9){set(p,'Color',[0 .5 1])}
    else if(i == 8){set(p,'Color',[0 1 1])}
    else if(i == 7){set(p,'Color',[0 1 .5])}
    else if(i == 2){set(p,'Color',[0 1 0])}
    else if(i == 3){set(p,'Color',[.5 1 0])}
    else if(i == 4){set(p,'Color',[1 1 0])}
    else if(i == 5){set(p,'Color',[1 .5 0])}
    else if(i == 6){set(p,'Color',[1 0 0])}
    end; end; end; end; end; end; end; end; end;

    hold on;
end;

% Create a Matching Colorbar and Grid
colorbar('Ticks', [0 .125 .25 .375 .5 .625 .75 .875 1], 'TickLabels', [-40 -30 -20 -10 0 10 20 30 40]);
grid on;
xlabel('GATE VOLTAGE V_G (V)');

clear i m x y p ans;