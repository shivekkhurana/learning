function [ sig ] = lagrange(n,start,he, symbolicVariable)
    P=1;
    
    syms t;
    if (nargin > 3) 
        t = symbolicVariable;
    end
    
    syms x;
    x = t;
    
    for i=start+1:n+1
        for j=start+1:n+1
            if (j-1)~=(i-1)
            P=P*(x-(j-1)*he/n)/((i-1)*he/n -(j-1)*he/n);
            end
        end
        sig(i)=P;
        P=1;
    end 
end

