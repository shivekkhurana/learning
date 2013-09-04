[x y z] = sphere(50);
a = surf(x,y,z);
axis('equal')
hold on;
shading FLAT;
colormap hot;
b = ezplot3('cos(t)*sin(4*t)','sin(t)*sin(4*t)','cos(4*t)');
set(b,'Color','Blue','LineStyle','*')
view([150 125 50])