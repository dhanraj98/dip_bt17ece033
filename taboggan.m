gradient=[[12,14,23,13],
[16,11,21,18],
[21,24,23,12],
[12,21,20,10]];
image=[[4,4,3,2],
[3,7,6,1],
[2,7,6,2],
[0,1,0,2]];            
T=[[0,0,0,0],
[0,0,0,0],
[0,0,0,0],
[0,0,0,0]];            
display(gradient);
display(image);
display(T);
for i=1:1:4
for j=1:1:4
least=gradient(i,j);  
x=i;
y=j;
if(i+1<=4&&gradient(i+1,j)<least)
least=gradient(i+1,j);
x=i+1;
y=j;
endif
if(i-1>=1&&gradient(i-1,j)<least)
least=gradient(i-1,j);
x=i-1;
y=j;
endif
if(j-1>=1&&gradient(i,j-1)<least)
least=gradient(i,j-1);
y=j-1;
x=i;
endif
if(j+1<=4&&gradient(i,j+1)<least)
least=gradient(i,j+1);
y=j+1;
x=i;
endif
if(j+1<=4&&i+1<=4&&gradient(i+1,j+1)<least)
least=gradient(i+1,j+1);
y=j+1;
x=i+1;
endif
if(j-1>=1&&i+1<=4 && gradient(i+1,j-1)<least)
least=gradient(i+1,j-1);
y=j-1;
x=i+1;
endif
if(j+1<=4&&i-1>=1 && gradient(i-1,j+1)<least)
least=gradient(i-1,j+1);
y=j+1;
x=i-1;
endif

T(i,j)=image(x,y);
  endfor
endfor
display(T);

