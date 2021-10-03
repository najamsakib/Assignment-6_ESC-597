% BallisticDataAnalysis.m
% File defining class BallisticDataAnalysis.
% =========================================================================
% Write something short.
%
% Describe what this function does and what it assumes
% =========================================================================
% modified (date)
% by (who)
% =========================================================================
classdef BallisticDataAnalysis
    properties (SetAccess = immutable)
    	%> The data of this class is stored is a matrix @c A, which is
    	%> initialized by the class constructor. @c A cannot be changed
    	%> after initialization.
    	A;    	
    end
    
    properties (Constant)
        %> A constant string used to verify execution.
        SillyMessage = 'Hello World!';
    end
    methods (Access = public)
        % -----------------------------------------------------------------
        %> @brief Class constructor.
        %>
        %> The function returns an object of class BallisticDataAnalysis
        %> with its data initialized by the @param Data.
        % -----------------------------------------------------------------
		function obj = BallisticDataAnalysis(Data)
			obj.A = Data;
        end
    end
    
    %> Data Processing Methods Declarations.
    methods (Access = public)
        %> Method to plot the raw trajectories.
        %> The return value of the method can be used to establish
        %> whether or not the execution was successful.
        success = PlotRawTrajectories(obj);
        
        %> Method to compute the average position and the variance.
        %> The return value of the method can be used to establish
        %> whether or not the execution was successful.
        success = AvgVar(obj);
        
        %> Method to compute the acceleration due to gravity.
        %> The return value of the method can be used to establish
        %> whether or not the execution was successful.
        success = AccelerationDueToGravity(obj);
        
        %> Method to determine the speed of the marble.
        %> The return value of the method can be used to establish
        %> whether or not the execution was successful.
        success = Speed(obj);
        
        %> Method to determine the gravitational acceleration from the 
        %> ensemble average velocity (derivative of the ensemble average trajectory).
        %> The return value of the method can be used to establish
        %> whether or not the execution was successful.
        success = MeanVelocityToAcceleration(obj);
        
    end
end