function fieldname = str2fieldname(inStr)
% performs substitutions to make string suitable as fieldname

% Note that simply doing newName = regexprep(name{i},'\W','') would make
% the name legal, but I prefer underscores for spaces

noTrailingSpaces = regexprep(inStr,' *$','');
spacesToUnderscores = regexprep(noTrailingSpaces,' +','_');
fieldname = regexprep(spacesToUnderscores,'\W',''); %\W impermissible


% Copyright 2013 Randy Sage
% License: Apache 2.0, see apache2p0.txt, md5sum a9837d7229867e42167933d249b5093b
