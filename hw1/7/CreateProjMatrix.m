function [ pi ] = CreateProjMatrix( ox,oy,fsx,fsy,fstheta,g )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
A=[fsx fstheta ox;0 fsy oy;0 0 1];
B=[1 0 0 0;0 1 0 0;0 0 1 0];
pi=A*B*g;

end

