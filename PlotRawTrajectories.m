% PlotRawTrajectories.m
% File defining one of the methods of class BallisticDataAnalysis.
% =========================================================================
% Write something short.
%
% Describe what this function does and what it assumes
% =========================================================================
% modified (date)
% by (who)
% =========================================================================
function success = PlotRawTrajectories(obj)
    try
         %disp(obj.SillyMessage);
         % success = true;
         time_data = Analysis.A(:,1);
         xdata = Analysis.A(:,2:3:31);
         ydata = Analysis.A(:,3:3:31);
         zdata = Analysis.A(:,4:3:31);
         
         for i = 1:10
            subplot(2,2,1)
            plot(time_data,xdata(:,i), 'linewidth', 2)
            xlabel('t')
            ylabel('x')
            hold on
            subplot(2,2,2)
            plot(time_data,ydata(:,i), 'linewidth', 2)
            xlabel('t')
            ylabel('y')
            hold on
            subplot(2,2,3)
            plot(time_data,zdata(:,i), 'linewidth', 2)
            xlabel('t')
            ylabel('z')
            hold on

        end
        %text(1, 1, 1, 'T=0s' )
        %text(12, 20, 1, 'T=end' )
        %legend('Run 1', 'Run 2', 'Run 3', 'Run 4', 'Run 5', ...
        %       'Run 6', 'Run 7', 'Run 8', 'Run 9', 'Run 10' )

        %grid on
    catch
        warning('Something went wrong in running PlotRawTrajectories!');
        success = false;
    end
end



