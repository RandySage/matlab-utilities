function branchName = getGitBranch(pathForBranch)
% returns the name of the branch in the specified folder

narginchk(0,1);
if nargin >= 1
    cd(pathForBranch);
end

[a,branchNamePreCleaning] = system('git branch | grep "*"');

branchName = regexprep(branchNamePreCleaning,'\W','');


% Copyright 2013 Randy Sage
% 
% Licensed under the Apache License, Version 2.0 (the "License");
% you may not use this file except in compliance with the License.
% You may obtain a copy of the License at
% 
%  http://www.apache.org/licenses/LICENSE-2.0
% 
% Unless required by applicable law or agreed to in writing, software
% distributed under the License is distributed on an "AS IS" BASIS,
% WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
% See the License for the specific language governing permissions and
% limitations under the License.
