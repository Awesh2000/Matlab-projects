N = 1024;
n = 0:N-1;

w0 = 2*pi/5;
x = sin(w0*n)+10*sin(2*w0*n);
s = spectrogram(x);

spectrogram(x,'yaxis')
subplot(2,2,1)

b = fir1(48,[0.35 0.65]);
freqz(b,1,350)
subplot(2,2,2)