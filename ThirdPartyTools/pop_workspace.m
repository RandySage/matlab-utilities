function pop_workspace(clear_before_pop)
% Pop last workspace off stack (clear first if input is true)

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

if nargin && clear_before_pop
    fprintf('Clearing workspace')
    evalin('caller', 'clear');
end

fprintf('Popping "%s" from stack (now %d deep)\n', ...
    c(end).name_notes, length(c)-1);

s = c(end).wkspc;
c(end) = [];
setappdata(0, 'WORKSPACE_STACK', c);

% Stick vars back in caller's workspace
names = fieldnames(s);
for i = 1:numel(names)
    assignin('caller', names{i}, s.(names{i}));
end
