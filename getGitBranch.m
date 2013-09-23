function branchName = getGitBranch(pathForBranch)
% returns the name of the branch in the specified folder

narginchk(0,1);
if nargin >= 1
    cd(pathForBranch);
end

[a,branchNamePreCleaning] = system('git branch | grep "*"');

branchName = regexprep(branchNamePreCleaning,'\W','');


% Copyright 2013 Randy Sage
% License: Apache 2.0, see apache2p0.txt, md5sum a9837d7229867e42167933d249b5093b
