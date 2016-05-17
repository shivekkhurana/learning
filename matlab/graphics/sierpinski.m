close all;
clear all;
clc;
x=input('enter the x coordinates : ');
y=input('enter the y coordinates : ');

[x(1) y(1) 1;x(2) y(2) 1 ;x(3) y(3) 1];

     p = input('enter the locations of P : ');
    x0 = floor(p(1));
    y0 = floor(p(2));
     i=0;
     plot(x,y)
     hold on
     j=1;
 
 if det([x(1) y(1) 1;x(2) y(2) 1 ;x(3) y(3) 1])~=0
     
      while(i<1000)  
         
c=randi(3);
         
         plot(x0,y0,'*')
         mid_x=(x(c)+x0)/2;
         mid_y=(y(c)+y0)/2;
         x0=mid_x;
         y0=mid_y;
         i=i+1;
         j=j+1;
         plot(x0,y0,'.')
         hold on
      end
 end

