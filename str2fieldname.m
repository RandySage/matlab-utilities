function fieldname = str2fieldname(inStr)
% performs substitutions to make string suitable as fieldname

% Note that simply doing newName = regexprep(name{i},'\W','') would make
% the name legal, but I prefer underscores for spaces

noTrailingSpaces = regexprep(inStr,' *$','');
spacesToUnderscores = regexprep(noTrailingSpaces,' +','_');
fieldname = regexprep(spacesToUnderscores,'\W',''); %\W impermissible


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
