clear all;
clc;
close all;

fs=10000;
Tokn=2;
A=1;
f=50;
fi=0;
fi2=pi/9;

Fstop1 = 35;          % First Stopband Frequency
Fpass1 = 45;          % First Passband Frequency
Fpass2 = 55;          % Second Passband Frequency
Fstop2 = 65;          % Second Stopband Frequency
Astop1 = 90;          % First Stopband Attenuation (dB)
Apass  = 1;           % Passband Ripple (dB)
Astop2 = 90;          % Second Stopband Attenuation (dB)
    
war=1;

[t,y]=gen_sin(fs,Tokn,A,f,fi,fi2,war);
Hd=proj_filtr(fs,Fstop1,Fpass1,Fpass2,Fstop2,Astop1,Apass,Astop2);
yf=filter(Hd,y);

[op_ms okr]=licz_opoznienie(t,y,yf,Tokn);

zakres=t>0.9;%Tokn-0.09;
y=y(zakres);
yf=yf(zakres);
t=t(zakres);

figure;
hold on;
plot(t,y)
plot(t,yf,'r')
 
M=length(okr);
tok=(0:M-1)*okr(end);

zakres=tok>0.5;
tok=tok(zakres);
op_ms=op_ms(zakres);

figure;
plot(tok,op_ms)

