function functionHandle = getFunctionHandleFromFile( fullFileName )
%GETFUNCTIONHANDLE Provides a function handle for full path of file
%   Provides a function handle for full path of file; Useful when a user wants
%   to use a function without placing it on the path

if ~exist(fullFileName,'file') 
    error('The file at %s does not seem to exist',fullFileName);
end

[pathstr, name, ext] = fileparts(fullFileName);

prevDir = pwd;

cd(pathstr);
functionHandle = str2func(name);
cd(prevDir);

% Copyright 2013 Randy Sage
% License: Apache 2.0, see apache2p0.txt, md5sum a9837d7229867e42167933d249b5093b
