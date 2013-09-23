function plotXY(mat,varargin)

if nargin == 1
plot(mat(:,1),mat(:,2:end))
else
plot(mat(:,1),mat(:,2:end),varargin{:})
end

% Copyright 2013 Randy Sage
% License: Apache 2.0, see apache2p0.txt, md5sum a9837d7229867e42167933d249b5093b
