function [op_ms okr]=licz_opoznienie(t,y,yf,Tokn)

t0=licz_okres(t,y,Tokn);
t0f=licz_okres(t,yf,Tokn);
N=length(t0);
M=length(t0f);
K=min([N,M]);
op_ms=1000*(t0f(1:K)-t0(1:K));
okr=t0(2:end)-t0(1:end-1);
%op_ms=1000*(t0f(1)-t0(1));