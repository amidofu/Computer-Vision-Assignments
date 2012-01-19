function [ hat ] = SO3( u )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
a=u(1,1);
b=u(2,1);
c=u(3,1);
hat=[0 -c b;c 0 -a;-b a 0];
end

