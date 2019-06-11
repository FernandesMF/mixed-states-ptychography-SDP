function jobStartup(job)
% JOBSTARTUP Perform user-specific job startup actions on a worker
%
%   jobStartup(job)
%
%   To define specific job initialization actions on each worker that
%   participates in a job, provide a jobStartup function that is accessible
%   to the worker.  This function can be in any of the following locations,
%   searched for in this order:
%
%   1. In a file that is specified in the job object's AttachedFiles
%      property.
%   2. In a folder that is specified in the job object's AdditionalPaths
%      property.
%   3. In this file.
%
%   The job parameter passed to this function is the job object for which
%   the worker is about to execute a task.
%
%   If this function throws an error, the error information appears in the
%   task object's Error, ErrorMessage, and ErrorIdentifier properties, and
%   the task will not be executed.  If the same MATLAB worker session is
%   used for running multiple tasks and evaluating this function for the
%   first task results in an error, the worker will attempt to run
%   subsequent tasks without running the jobStartup function again.
%
%   If the same MATLAB worker session is used for running multiple tasks or
%   jobs, any path changes made here or during the execution of tasks will
%   be reverted by the MATLAB Distributed Computing Server to their
%   original values before the next job runs, but preserved for subsequent
%   tasks in the same job. Any data stored by this function or by the
%   execution of the job's tasks (for example, in the base workspace or in
%   global or persistent variables) will not be cleared by the MATLAB
%   Distributed Computing Server before the next job runs, unless the
%   RestartWorker property of the next job is set to true.
%
%   See also taskStartup, taskFinish.

% Copyright 2004-2015 The MathWorks, Inc.

%#ok<*INUSD> Suppression because this example does not use the input argument

addpath(genpath([matlabroot,'/toolbox/YALMIP-master']));
addpath(genpath([matlabroot,'/toolbox/sdpt3']));
