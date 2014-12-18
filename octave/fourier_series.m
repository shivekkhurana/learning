function fourier_series()

    t = -15:0.01:15;
    figure;
    subplot(331); plot(t, arrayfun(@(x  ) fn(x), t)); title('fn(t)');
    subplot(332); plot(t, ffn(t)); title('ffn(t, 10)');
    subplot(333); plot(t, ffn(t, 20)); title('ffn(t, 20)');
    subplot(334); plot(t, ffn(t, 30)); title('ffn(t, 30)');
    subplot(335); plot(t, ffn(t, 40)); title('ffn(t, 40)');
    subplot(336); plot(t, ffn(t, 100)); title('ffn(t, 100)');
    subplot(337); plot(t, ffn(t, 500)); title('ffn(t, 500)');
    subplot(338); plot(t, ffn(t, 1000)); title('ffn(t, 1000)');
    subplot(339); plot(t, ffn(t, 2000)); title('ffn(t, 2000)');

end

function [value] = fn(t)
    if (0<=t && t<2)
        value=1;
    elseif (2<=t && t<4)
        value = -1;
    else
        value = 0;
    end 
end

function [value] = ffn(t, n=10)
    value = 0;
    for k=0:n
        value = value + b(k)*sin(k*pi*t/2);
    end
end

function [an] = a(n) 
    an = 0;
end 

function [bn] = b(n)
    if rem(n, 2) == 0
        bn = 0;
    else
        bn = 4/(n*pi);
    end
end

