clc;
clear all;
close all;
M1 = 15890;
M2 = 746;
K1 = 2000000;
K2 = 1000000;
K3 = 40865;
K4 = 17500;
c1 = 350;
c2 = 15020;
C3 = 4597;
C4 = 4000;

s = 40000;
Ig = ((M1+M2)*s^2+c2*s+K2)/((M1*s^2+c1*s+K1)*(M2*s^2+(c1+c2)*s+(K1+K2))-(c1*s+K1)*(c1*s+K1));
Mg = (-M1*c2*s^3-M1*K2*s^2)/((M1*s^2+c1*s+K1)*(M2*s^2+(c1+c2)*s+(K1+K2))-(c1*s+K1)*(c1*s+K1));
W = Ig*Mg;
disp(Ig);
disp(Mg);
disp(W);

