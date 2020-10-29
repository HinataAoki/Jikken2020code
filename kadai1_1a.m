t = [0:8192*5-1]/8192;
S100 = 0;

for n = 1:100
    S100 = S100+ sin(2*pi*n*200*t)/n;
end

plot(t(1:100),S100(1:100));
axis([t(1) t(100) -1.5 1.5])

audiowrite('S100.wav', S100/max(abs(S100)), 8192)