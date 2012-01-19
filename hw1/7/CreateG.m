function [ g ] = CreateG( theta,axis,trans )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
translation=trans';
A=axis'/norm(axis);%normalize axis vector
a=A(1,1);
b=A(1,2);
c=A(1,3);
g=[cos(theta)+a^2*(1-cos(theta)) (a*b*(1-cos(theta))-c*sin(theta)) (a*b*(1-cos(theta))+b*sin(theta)) translation(1,1);(a*b*(1-cos(theta))+c*sin(theta)) (cos(theta)+b*b*(1-cos(theta))) (b*c*(1-cos(theta))-a*sin(theta)) translation(1,2); (c*a*(1-cos(theta))-b*sin(theta)) (b*c*(1-cos(theta))+a*sin(theta)) (cos(theta)+c*c*(1-cos(theta))) translation(1,3); 0 0 0 1];


end

