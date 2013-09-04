function dms(x)
    [d, fr] = infr(x);
    m = fr*60;
    s = (fr -m)*60;
    
    sprintf('Angle = %d deg. %d min. %d sec.', d, m, s)
end