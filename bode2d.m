Wp = 100/500;
Ws = 150/500;

[n,Wn] = buttord(Wp,Ws,3,60)
[z,p,k] = butter(n,Wn);
sos = zp2sos(z,p,k);

freqz(sos,512,1000)
title(sprintf('n = %d Butterworth Lowpass Filter',n))