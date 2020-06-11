
OriginalImage=imread('C:/Users/Admin/Downloads/lena512.mat');

numofpixels=size(OriginalImage,1)*size(OriginalImage,2);


subplot(2,2,1);
imshow(OriginalImage);
title('Original Image');
subplot(2,2,2);
imhist(I,64);
title('Original Image Histogram');
HistogramEqualizedImage=uint8(zeros(size(OriginalImage,1),size(OriginalImage,2)));

freq=zeros(256,1);

probf=zeros(256,1);

probc=zeros(256,1);

cdp=zeros(256,1);

output=zeros(256,1);

%freq counts the occurrence of each pixel value.

%The probability of each occurrence is calculated by probf.

for i=1:size(OriginalImage,1)

    for j=1:size(OriginalImage,2)

        value=OriginalImage(i,j);

        freq(value+1)=freq(value+1)+1;

        probf(value+1)=freq(value+1)/numofpixels;

    end

end

sum=0;

no_bins=255;

%The cumulative distribution? probability is calculated and stored in cdp 

for i=1:size(probf)

   sum=sum+freq(i);

   cdp(i)=sum;

   probc(i)=cdp(i)/numofpixels;

   output(i)=round(probc(i)*no_bins);

end

for i=1:size(OriginalImage,1)

    for j=1:size(OriginalImage,2)

            HistogramEqualizedImage(i,j)=output(OriginalImage(i,j)+1);

    end

end


figure
subplot(2,2,1);
imshow(OriginalImage);
title('Original Image');
subplot(2,2,2);
imhist(I,64);
title('Original Image Histogram');

subplot(2,2,3);
imshow(HistogramEqualizedImage);
title('Histogram equalized image');
subplot(2,2,4);
imhist(HistogramEqualizedImage,64);

title('Histogram equalization');

