clc;
clear all;
close all;
R = 150; L = 3; C = 2;
G = tf([1/(R*C) 0],[1 1/(R*C) 1/(L*C)]);
bode(G)
grid on