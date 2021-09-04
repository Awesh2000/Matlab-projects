clc;
clear all;
close all;
L = 3; C = 2;
R1 = 150;   G1 = tf([1/(R1*C) 0],[1 1/(R1*C) 1/(L*C)]);
R2 = 100;  G2 = tf([1/(R2*C) 0],[1 1/(R2*C) 1/(L*C)]);
bode(G1,'r',G2,'g'), grid
legend('R = 150','R = 100')