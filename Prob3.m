%--
%-- specgram demo idea
%--
format compact
Fs = 1024
Fo = 660
T_total = 1.2;
tt = 0:(1/Fs):T_total;
%=================================
%---
%--- make a scale for C major
%---
keys =   [ 40  42  44  45  47  49  51  52 ];
%--NOTES:   C   D   E   F   G   A   B   C
%     key #40 is middle-C
%
Fs = 1024;
duration = 0.15;
tt = 0: (1/Fs) : duration;
y2 = [ ];
for kk = 1:length(keys)
   keynum = keys(kk) + 7;      %<--- add 12 to move up one octave
   freq = 440 * (2 .^ ((keynum-49)/12));      %<---- OPTIONAL
   y2 = [ y2, cos( 2*pi*freq*tt  - pi/2 ) ];
end
%---
figure(1),   sound(y2,Fs)
  Fmax = Fs;
  Nfft = 256;   Nover = 200;
  [B,F,T] = specgram(y2,Nfft,Fmax,[],Nover);
subplot(1,1,1),    imagesc(T,F,db(B,40));
  title(['PLAY A SCALE'])
axis xy,  colormap(1-gray)
ylabel('FREQUENCY (Hz)'), xlabel('TIME (sec)')
drawnow,  sound(y2,Fs)
B2 = B; F2 = F; T2 = T;
keyboard
 clear y2
%=================================
load FE     %-- creates yy and Fs
y1 = yy; clear yy;
%--
figure(2)
subplot(1,1,1), strips(y1(1:2:round(0.36*Fs)),0.06,Fs/2), xlabel('TIME (sec)')
  title('Fur Elise  (0.36 secs)')
%--
figure(3),   sound(y1,Fs)
  Fmax = Fs/2;
  Nfft = 256;   Nover = 160;
  nn = round(4.7*Fs):2:round(6.8*Fs);
  [B,F,T] = specgram(y1(nn),Nfft,Fmax,[],Nover);
  T = 4.7+T;
subplot(1,1,1),    imagesc(T,F,db(B,25));
  title(['FUR ELISE'])
axis xy,  colormap(1-gray)
ylabel('FREQUENCY (Hz)'), xlabel('TIME (sec)')
drawnow,  sound(y1,Fs)
B1 = B; F1 = F; T1 = T;
keyboard
  clear y1
%=================================
load train     %-- creates y and Fs
y4 = y'; clear y;
%--
figure(4),   sound(y4,Fs)
  Fmax = Fs;
  Nfft = 256;   Nover = 200;
  Ly = round(0.75*Fs);
  nn = 1:1:Ly;
  [B,F,T] = specgram(y4(nn),Nfft,Fmax,[],Nover);
subplot(1,1,1),    imagesc(T,F,db(B,40));  grid
  title(['TRAIN WHISTLE'])
axis xy,  colormap(1-gray)
ylabel('FREQUENCY (Hz)'), xlabel('TIME (sec)')
drawnow,  sound(y4,Fs)
B4 = B; F4 = F; T4 = T;
keyboard
  clear y4
%=================================
load bat     %-- creates yy and Fs
Fs = 8000;
%---
figure(5),   sound(sa,Fs)
  Fmax = Fs;
  Nfft = 256;   Nover = 200;
  [B,F,T] = specgram(sa,Nfft,Fmax,[],Nover);
subplot(1,1,1),    imagesc(T,F,db(B,40));
  title(['BAT.MAT  (MALE SPEAKER)'])
axis xy,  colormap(1-gray)
ylabel('FREQUENCY (Hz)'), xlabel('TIME (sec)')
drawnow,  sound(sa,Fs)
B3 = B; F3 = F; T3 = T;
keyboard

%=================================
load Bee_5th     %-- creates yy and Fs
yy = yy(1:50000);
yy = yy + 100*randn(size(yy));   %-- guard against zeros
%--
figure(6),   sound(yy,Fs)
  Fmax = Fs/2;
  Nfft = 256;   Nover = 0;
  Ly = length(yy);
  nn = 1:2:Ly;
  [B,F,T] = specgram(yy(nn),Nfft,Fmax,[],Nover);
subplot(1,1,1),    imagesc(T,F,db(B,40));   grid
  title(['Beethovens FIFTH    (Robby GRIFFIN)'])
axis xy,  colormap(1-gray)
ylabel('FREQUENCY (Hz)'), xlabel('TIME (sec)')
drawnow,  sound(yy,Fs)
B5 = B; F5 = F; T5 = T;
keyboard
  clear yy
%=================================
figure(7)
subplot(2,2,1),  imagesc(T2,F2,db(B2,40));
  axis xy,  grid
  title(['PLAY A SCALE'])
  ylabel('FREQ (Hz)'), xlabel('TIME (sec)')
subplot(2,2,2),  imagesc(T1,F1,db(B1,40));
  axis xy,  grid
  title(['FUR ELISE'])
  ylabel('FREQ (Hz)'), xlabel('TIME (sec)')
subplot(2,2,3),  imagesc(T4,F4,db(B4,40));
  axis xy,  grid
  title(['TRAIN WHISTLE'])
  ylabel('FREQ (Hz)'), xlabel('TIME (sec)')
subplot(2,2,4),  imagesc(T3,F3,db(B3,40));
  axis xy,  grid
  title(['BAT.MAT  (MALE SPEAKER)'])
  ylabel('FREQ (Hz)'), xlabel('TIME (sec)')
colormap(1-gray)
drawnow

