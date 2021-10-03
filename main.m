% File main.m
% Simple MATLAB script to evaluate the tasks in Assignment 6.

Analysis = BallisticDataAnalysis(csvread('PositionData.txt'));

try
    % Evaluation of programming task 1.
    Analysis.PlotRawTrajectories();
    
    % Evaluation of programming task 2.
    Analysis.AvgVar();
    
    % Evaluation of programming task 3.
    Analysis.AccelerationDueToGravity();
    
    % Evaluation of programming task 4.
    Analysis.Speed();
    
    % Just because!
    disp(' ');
    disp(' ');
    disp('==================================');
    disp('It''s always sunny in Philadelphia!');
    disp('==================================');
catch
    warning('Something went wrong with the data analysis.');
end
% Now test the documentation
disp('Now the help files');
help BalisticDataAnalysis 
help PlotRawTrajectories 
help AccelerationDueToGravity 
help Speed 