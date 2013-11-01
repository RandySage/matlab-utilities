function push_workspace(name_notes)
% Grab current workspace and push it on the stack

% Function written/provided under CC BY-SA 3.0 license by Andrew Janke
% (http://stackoverflow.com/users/105904/andrew-janke) as written in the
% Stack Overflow answer at http://stackoverflow.com/a/1827045/527489
%
% License CC BY-SA 3.0: http://creativecommons.org/licenses/by-sa/3.0/
% Note: http://blog.stackoverflow.com/2009/06/attribution-required/

if nargin < 1
    name_notes = datestr(now(),30);
end

c = getappdata(0, 'WORKSPACE_STACK');
if isempty(c)
    c = [];
end

% Grab workspace
w = evalin('caller', 'whos');
names = {w.name};
s = struct;
for i = 1:numel(w)
    s.(names{i}) = evalin('caller', names{i});
end

% Push it on the stack
c(end+1).wkspc = s;
c(end).name_notes = name_notes;
fprintf('Pushing "%s" to stack (%d deep)\n', name_notes, length(c));

setappdata(0, 'WORKSPACE_STACK', c);
