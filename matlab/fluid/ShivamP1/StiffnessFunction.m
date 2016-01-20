%function [K,S,f] = Stiffness_function_shivam()
%UNTITLED10 Summary of this function goes here
%   Detailed explanation goes here

%n=input('enter the dimension for which stiffness matrix needs to be calculated:');
clear all;
clc;
e=input('Enter the number elements in which the system is being divided : ');
n=input('Division b/w any two elements : ');
start=input('Enter start Point : ');
last=input('Enter end point of your system : ');
order= input('Enter the order : ');

a=1;
c=1;

syms x y; 
L=Lagrange(n,start,last/e);
%F=@(x,k)(-(x+((k-1)*last/n))^2); % change here for F
F=@(x,k)(-(x+((k-1)*last/e))^2);
S = [];
for i=1:n+1
    for j=1:n+1
        
        %P(i,j)=(int(a*diff(L(1,i))*diff(L(1,j))+c*L(1,i)*L(1,j) , start ,last)); % change here for K
        P(i,j)=(int(diff(L(1,i))*diff(L(1,j))-L(1,i)*L(1,j) , start ,last/e));
        Integ=a*diff(L(1,i))*diff(L(1,j))-c*L(1,i)*L(1,j);
        K(i,j)=GaussQuadratureIteration(Integ,start,last/e,order);
        
    end
    
end

for i=1:e
    for j=1:n+1
        f(i,j)=int(F(x,i)*L(1,j),start,last/e);
    end
end


 S = P;
 for i=2:e
  S = assembly(S,P);
 end
 
 disp('The Assembled matrix K: ')
 disp(S);
  SS = (f(1,:))';
 for i=2:e
  SS = assembly(SS,(f(i,:))');
 end
 disp('The Assembled matrix  F: ')
 disp(SS);
 
 u=zeros(n+1,1);
 u(1)=input('enter initial and final boundary[ u_i ] :');
 u(e+1)=input('enter initial and final boundary[ u_i ]:');
 
 Q=zeros(e+1, 1); %input('enter Q');
 
 y=  inv(S(2:e,2:e))*(SS(2:e,1)+Q(2:e,1));
 u(2:e,1)=y(1:end,1);
 disp('Finally :');
 disp('Final U: '); disp(u)
 disp('Final Q'); 
 D=S*u-SS;
 
 plot(1:5,1,'*')
 hold on 
 
 gt=@(l)(-0.91*sin(l) +0.5*cos(l)+l^2-1/2);
 for i=1:e+1
     v(i)=gt(start +(e-1)*last/e);
 end
 plot(v,1,'rs')
     hold on
%end