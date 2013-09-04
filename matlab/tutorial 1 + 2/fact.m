function f = fact(n)
    f = 1;
    if n >= 0
        f = f*n;
        n = n-1;
        if(n>0)
            f = f*fact(n);
        end
    else
        error('Factorial of negative(s) not defined !');
    end