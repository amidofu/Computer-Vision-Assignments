function   PlotHomo( l )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
a=l(1,1);
b=l(2,1);
c=l(3,1);
syms x y;
  ezplot(a * x + b * y + c);
  colormap([0, 0, 1]); %blue line

end

