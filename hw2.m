clear;
clc;
ImageA=imread('Image A.jpg');
ImageB=imread('Image B.jpg');
cpselect(ImageA,ImageB);

T=fitgeotrans(fixedPoints,movingPoints,'affine');
ImageT=imwarp(ImageB,T);
subplot(1,2,1);imshow(ImageA);title('Image A');
subplot(1,2,2);imshow(ImageT);title('Image T');
