
%
%Progam to calculate RUN LENGTH ENCODING
%the prog takes any image, converts it to binray, and performs RLE on the binary image


I=imread('C:/Users/Admin/Downloads/lena512color.tiff');
subplot(2,1,1);
imshow(I);title('original image');
subplot(2,1,2);
level=graythresh(I);
bw=im2bw(I,level);
imshow(bw);title('binary image');

a=bw'; a=a(:); a=a';
a=double(a);
rle(1)=a(1); m=2; rle(m)=1;

for i=1:length(a)-1
if a(i)==a(i+1)
rle(m)=rle(m)+1;
else
m=m+1; rle(m)=1;        %dynamic allocation and initialization of next element of rle
 end
end
display('original size of image:')
display(sizeof(I));
display(' size of image after rle:')
display(sizeof(rle));

c=((sizeof(I)-sizeof(rle))/sizeof(I))*100;
display('compression(in%)=')
display(c);
display(rle);



