function [t,y]=gen_sin(fs,Tokn,A,f,fi,fi2,war)

if nargin==0
    fs=10000
    Tokn=0.3
    A=1
    f=50
    fi=0
    fi2=pi/4;
    war=0.1
end

t=0:1/fs:Tokn-1/fs;
zakres=t<war;
zakresend=t>=war;

y=A*sin(2*pi*f*t(zakres)+fi);
y=[y A*sin(2*pi*f*t(zakresend)+fi2)];
y2=A*sin(2*pi*f*t+fi);

if nargout==0
    figure;
    hold on;
    plot(t,y)
    plot(t,y2,'r')
end