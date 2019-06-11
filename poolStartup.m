function poolStartup
% POOLSTARTUP Perform user-specific pool startup actions on a worker
%
%   poolStartup
%
%   To define specific initialization actions on each worker just after the
%   pool has been instantiated, provide a poolStartup function that is
%   accessible to the worker.  This function can be in any of the following
%   locations, searched for in this order:
%
%   1. In a file that is specified in the job object's AttachedFiles
%      property.
%   2. In a folder that is specified in the job object's AdditionalPaths
%      property.
%   3. In this file.
%
%   If this function throws an error, the error information appears in the
%   task object's Error, ErrorMessage, and ErrorIdentifier properties, and
%   the task function and taskFinish will not be evaluated.   Any callback
%   functions for the task will still be evaluated.
%
%   If the same MATLAB worker session is used for running multiple jobs,
%   any path changes made here or during the execution of tasks will be
%   reverted by the MATLAB Distributed Computing Server to their original
%   values before the next job runs. However any path changes in this file
%   will not be used to distinguish the task function as it will have been
%   loaded before this function is executed. Any data stored by this
%   function or by the execution of the job's tasks (for example, in the
%   base workspace or in global or persistent variables) will not be
%   cleared by the MATLAB Distributed Computing Server before the next job
%   runs, unless the RestartWorker property of the next job is set to true.
%
%   See also jobStartup, taskStartup.

% Copyright 2009-2015 The MathWorks, Inc.

addpath(genpath([matlabroot,'/toolbox/YALMIP-master']));
addpath(genpath([matlabroot,'/toolbox/sdpt3']));

