function pop_workspace()
% Pop last workspace off stack

% Function written/provided under CC BY-SA 3.0 license by Andrew Janke
% (http://stackoverflow.com/users/105904/andrew-janke) as written in the
% Stack Overflow answer at http://stackoverflow.com/a/1827045/527489
%
% License CC BY-SA 3.0: http://creativecommons.org/licenses/by-sa/3.0/
% Note: http://blog.stackoverflow.com/2009/06/attribution-required/

c = getappdata(0, 'WORKSPACE_STACK');
if isempty(c)
    warning('Nothing on workspace stack');
    return;
end
s = c{end};
c(end) = [];
setappdata(0, 'WORKSPACE_STACK', c);

% Do this if you want a blank slate for your workspace
evalin('caller', 'clear');

% Stick vars back in caller's workspace
names = fieldnames(s);
for i = 1:numel(names)
    assignin('caller', names{i}, s.(names{i}));
end
