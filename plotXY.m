function plotXY(mat,varargin)

if nargin == 1
plot(mat(:,1),mat(:,2:end))
else
plot(mat(:,1),mat(:,2:end),varargin{:})
end