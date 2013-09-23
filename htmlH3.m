function htmlH3(inStr)
% outputs publish-compatible h3 html string

% Note - does not escape html yet
narginchk(1,1);
fprintf('<html><h3>%s</h3></html>\n',inStr);


% Copyright 2013 Randy Sage
% License: Apache 2.0, see apache2p0.txt, md5sum a9837d7229867e42167933d249b5093b
