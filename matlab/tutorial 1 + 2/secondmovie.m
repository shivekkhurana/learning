fig1 = figure(1);
shading FLAT;
winsize = get(fig1, 'Position');
winsize(1:2) = [0 0];
numframes = 5;
A = moviein(numframes,fig1,winsize);
set(fig1,'NextPlot','replacechildren');
t=0:pi/500:pi;
for i=1:numframes,
    plot3(t,t,(sin(2*i*t))/2);
    A(:,i) = getframe(fig1,winsize);
end

movie(fig1,A,30,3,winsize);
save secondmovie.mat A


