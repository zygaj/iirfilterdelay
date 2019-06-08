close all;
clc;
clear all;


w=1;
%fi=1
%a=exp(i*w+fi)
kat=1;

n=1;
for kat=0:0.1:2*pi
z(n)=cos(kat)+i*sin(kat);
s(n)=z2s(z(n));
n=n+1;
end
figure
plot(z)
figure
plot(s)

%zplane(a)

