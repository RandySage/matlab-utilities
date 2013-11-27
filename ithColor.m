function color = ithColor(i)
% ithColor returns the i'th color for plotting from MATLAB defaults

allcolors = get(0,'defaultAxesColorOrder');

iMod = 1+mod(i-1,size(allcolors,1));
color = allcolors(iMod,:);
