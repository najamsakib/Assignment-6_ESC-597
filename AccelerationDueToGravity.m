% AccelerationDueToGravity.m
% File defining one of the methods of class BallisticDataAnalysis.
% =========================================================================
% Write something short.
%
% Describe what this function does and what it assumes
% =========================================================================
% modified (date)
% by (who)
% =========================================================================
function success = AccelerationDueToGravity(obj)
    try
        disp(obj.SillyMessage);
        success = true;
    catch
        warning('Something went wrong in running AccelerationDueToGravity!');
        success = false;
    end
end