clear all;
close all;
figure;
subplot(2,1,1);
I= imread('C:/Users/Admin/Downloads/lena512.mat');
c = edge(I, "Canny");
imshow(c);
title('Canny');

subplot(2,1,2);
s=edge(I, "Sobel");
imshow(s);
title('Sobel');

