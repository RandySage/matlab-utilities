function varargout = nameOf(varargin)
% returns the name(s) of the input variable(s)

for i = 1:nargin
    varargout{i} = inputname(i);
end
