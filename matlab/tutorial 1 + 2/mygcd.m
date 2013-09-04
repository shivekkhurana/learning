function gcd = mygcd(a,b)
    if a == 0 || b == 0
        gcd = a + b;
    else
        gcd = mygcd(b, rem(a,b));
    end
end