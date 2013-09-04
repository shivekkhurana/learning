function l = mylcm(a,b)
    %a*b = lcm(a,b)*gcd(a,b)
    %lcm(a,b) = a*b/ gcd(a,b)
    l = a*b./gcd(a,b);
end