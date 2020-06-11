
imgb = imread('C:/Users/Admin/Downloads/lena512.mat');
subplot(2,2,1);
imshow(imgb);
title('Original image');
subplot(2,2,2);
imhist(imgb,64);
title('histogram');

[r c] = size(imgb);
s1 = input('Enter s1 value:');
s2 = input('Enter s2 value:');
r1 = input('Enter r1 value:');
r2 = input('Enter r2 value:');

m1 = s1/r1;
m2 = (s2-s1)/(r2-r1);
m3 = (255-s2)/(255-r2);
for i=1:r
  for j=1:c
      if( imgb(i,j) <= r1 && imgb(i,j) >= 0 ) imgb1(i,j)= floor(m1*r);
      else if( imgb(i,j) <= r2 && imgb(i,j) >= r1 ) imgb1(i,j)= floor(s1 + ((imgb(i,j) - r1)*m2));
      else imgb1(i,j)= floor(s2 + ((imgb(i,j) - r2)*m3));
    end
    end 
  end
end
subplot(2,2,3);
imshow(imgb1);
caption = sprintf('r1 = %d, s1 = %d\nr2 = %d, s2= %d\nm1= %d, m2= %d, m3= %d', r1, s1, r2, s2, m1, m2, m3);
title(caption);
subplot(2,2,4);
imhist(imgb1,64);
title('histogram');
