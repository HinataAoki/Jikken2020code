t=[0:8192*5-1]/8192;

x1=sin(2*pi*1*200*t)/1;
x2=sin(2*pi*2*200*t)/2;
x3=sin(2*pi*3*200*t)/3;
x4=sin(2*pi*4*200*t)/4;
x5=sin(2*pi*5*200*t)/5;
x6=sin(2*pi*6*200*t)/6;
x7=sin(2*pi*7*200*t)/7;
x8=sin(2*pi*8*200*t)/8;
x9=sin(2*pi*9*200*t)/9;
x10=sin(2*pi*10*200*t)/10;

S1=abs(fft(x1));
S2=abs(fft(x1+x2));
S3=abs(fft(x1+x2+x3));
S4=abs(fft(x1+x2+x3+x4+x5));
S5=abs(fft(x1+x2+x3+x4+x5+x6+x7+x8+x9+x10));

subplot(5,1,1);
plot(t(1:1100),S1(1:1100));
axis([t(1) t(1100) -1.5 1.5])
xlabel('time [sec]')
ylabel('amplitude')

subplot(5,1,2);
plot(t(1:2200),S2(1:2200));
axis([t(1) t(2200) -1.5 1.5])
xlabel('time [sec]')
ylabel('amplitude') 

subplot(5,1,3);
plot(t(1:3300),S3(1:3300));
axis([t(1) t(3300) -1.5 1.5])
xlabel('time [sec]')
ylabel('amplitude')

subplot(5,1,4);
plot(t(1:5500),S4(1:5500));
axis([t(1) t(5500) -1.5 1.5])
xlabel('time [sec]')
ylabel('amplitude')

subplot(5,1,5);
plot(t(1:11000),S5(1:11000));
axis([t(1) t(11000) -1.5 1.5])
xlabel('time [sec]')
ylabel('amplitude') 

audiowrite('S1.wav', S1/max(abs(S1)), 8192)