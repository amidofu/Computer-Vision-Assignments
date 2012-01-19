function [x,y] = ProjGrid2( sizex,sizey, depth, pi )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
x=1;
b=1;
c=2;
y=1;
for i=2:sizex
    x=horzcat(x,b);
    y=horzcat(y,c);
    c=c+1;
end
c=x;
d=y;
for i=2:size
    x=horzcat(x,i*c);
    y=horzcat(y,d);
end
%x
l=size^2;
for i=1:l%size(x,1)
    u=[x(1,i) y(1,i) depth 1]';
    v=pi*u;
    %v
    x(1,i)=v(1,1)/v(3,1);
    y(1,i)=v(2,1)/v(3,1);
end
scatter(x,y);
end

