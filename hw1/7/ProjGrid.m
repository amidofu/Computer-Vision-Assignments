function [x,y] = ProjGrid( size, depth, pi )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
a=linspace(1,size,size);
b=a;
[x,y]=meshgrid(a,b);
I=pi*[x(:)';y(:)';depth*ones(1,size^2);ones(1,size^2)];%pi*all points
x=I(1,:)./I(3,:);
y=I(2,:)./I(3,:);
end

