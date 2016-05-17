clear all; close all;

points = [
	0,0; 
	3,0; 
	6,0; 
	0,3; 
	5.5,1.5; 
	6,0; 
	6,5; 
	6,10
];

syms t1 t2;
zaye = [
	(1/4)*(t1-1)*(t2-1)*(t1+t2+1); 
	(1/2)*(t1+1)*(t1-1)*(t2-1); 
	(-1/4)*(t2-1)*(t1+1)*(t1-t2-1);
	(1/2)*(t2-1)*(t2+1)*(t1-1);
	(-1/2)*(t2-1)*(t2+1)*(t1+1);
	(1/4)*(t2+1)*(t1-1)*(t1-t2+1);
	(-1/2)*(t1-1)*(t1+1)*(t2+1);
	(1/4)*(t2+1)*(t1+1)*(t1+t2-1);
]; 

for i=1:2
	for j=1:8
		syms x;
		if (i==1) 
			x = t1;
		else 
			x = t2;
		end
		J_(i, j) = diff(zaye(j), x);
		clear x;
	end
end

J = J_*points;
detJ = det(J);

dZayeGlobal = inv(J)*J_;

k = zeros(8);
for i=1:8
	for j=1:8
		syms x y;
		integrableF = (dZayeGlobal(1, i)*dZayeGlobal(1, j) + dZayeGlobal(2, i)*dZayeGlobal(2, j))*detJ;
		integrableF(x, y) = subs(subs(integrableF, t1, x), t2, y);
		[disps, k(i, j)] = evalc('numerical_integration2D_shivekkhurana(integrableF, -1, 1, -1, 1)');
	end
end

disp(k);