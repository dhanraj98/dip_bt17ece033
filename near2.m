%3x3 Matrix
M = zeros(3,3);
M(:)=[10,2,9,4,18,14,22,7,25];

display(M); %Before Interpolation

C = imresize(M,[6,6],'nearest');
display(C); %After Interpolation
%READ AN INPUT IMAGE
A=imread('C:/Users/Admin/Downloads/lena512.mat');


% DEFINE THE RESAMPLE SIZE
Col = 1024;
Row = 1024;


%FIND THE RATIO OF THE NEW SIZE BY OLD SIZE
rtR = Row/size(A,1);
rtC = Col/size(A,2);


%OBTAIN THE INTERPOLATED POSITIONS
IR = ceil([1:(size(A,1)*rtR)]./(rtR));
IC = ceil([1:(size(A,2)*rtC)]./(rtC));


%ROW_WISE INTERPOLATION
B = A(:,IR);


%COLUMN-WISE INTERPOLATION
B = B(IC,:);



figure,subplot(121),imshow(A);title('BEFORE INTERPOLATION'); axis([0,1024,0,1024]);axis on;

subplot(122),imshow(B);title('AFTER INTERPOLATION');  axis([0,1024,0,1024]);axis on;
