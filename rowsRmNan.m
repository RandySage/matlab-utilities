function mat = rowsRmNan(mat)

nanRowInds = find(sum(isnan(mat),2));
mat(nanRowInds,:) = [];

% Copyright 2013 Randy Sage
% License: Apache 2.0, see apache2p0.txt, md5sum a9837d7229867e42167933d249b5093b
