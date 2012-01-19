function [ C ] = ConicFit( Pts )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
x=Pts';
u1=x(1,1);
u2=x(1,2);
u3=x(1,3);
v=[u1*u1,u1*u2,u2*u2,u1*u3,u2*u3,u3*u3];
A=v;

for i=2:size(x,1)
    u1=x(i,1);
    u2=x(i,2);
    u3=x(i,3);
    v=[u1*u1,u1*u2,u2*u2,u1*u3,u2*u3,u3*u3];
    A=vertcat(A,v);
end
[U,S,V]=svd(A);
C=V(:,6);
end