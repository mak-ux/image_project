clc;clear all;close all;

%Read the image
img = imread('C:\Users\DELL\Downloads\image.jpg');
[r,c]=size(img);
B=img(1:r/3,:);
G=img((r/3)+1:(2*r/3),:);
R=img((2*r/3)+1:r,:);
ref_img_region=G;
[rg,cg]=size(ref_img_region);
ref_img_region=ref_img_region(ceil((rg-50)/2):ceil((rg-50)/2)+50,ceil((cg-50)/2):ceil((cg-50)/2)+50);
ref_img_region=double(ref_img_region);
nR=align(G,R);
nB=align(G,B);
ColorImg_aligned=cat(3,nR,G,nB);
imshow(ColorImg_aligned);
