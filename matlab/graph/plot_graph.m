function w=plot_graph(Adj_Mat)

[a,b]=size(Adj_Mat);
coordi=zeros(a,2);

for p=1:a
    for q=1:2
        coordi(p,q)=randi([1,10]);
    end
end
x=coordi(:,1);
y=coordi(:,2);

for i=1:a
    for j=1:b
       if Adj_Mat(i,j)==1
          line([x(i) x(j)],[y(i) y(j)])
       end
    end
end
end