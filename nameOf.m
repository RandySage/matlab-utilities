function varargout = nameOf(varargin)
% returns the name(s) of the input variable(s)

for i = 1:nargin
    varargout{i} = inputname(i);
end

% Copyright 2013 Randy Sage
% License: Apache 2.0, see apache2p0.txt, md5sum a9837d7229867e42167933d249b5093b
