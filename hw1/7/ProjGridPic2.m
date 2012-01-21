function [ x,y,z ] = ProjGridPic2(img,depth,pi )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
a=linspace(1,size(img,1),size(img,1));
b=linspace(1,size(img,2),size(img,2));
[x,y]=meshgrid(a,b);
I=pi*[x(:)';y(:)';depth*ones(1,size(a,2)*size(b,2));ones(1,size(a,2)*size(b,2))];
c=I(1,:)./I(3,:);
d=I(2,:)./I(3,:);
scatter(c,d);
x=reshape(c,size(x,1),size(x,2));%store projected coordinates in x,y
y=reshape(d,size(y,1),size(y,2));
z=zeros(size(x,1),size(x,2));
surf(x,y,z,img,'FaceColor','texturemap','EdgeColor','none');
view([0,0,-1]);% view from [0,0,1]


end

