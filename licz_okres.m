function t0=licz_okres(t,y,Tokn)

%zmiejszenie zakresu poszukiwan
lasty=y;%(t>(Tokn-0.04));
lastt=t;%(t>(Tokn-0.04));

M=length(lastt);

k=1;
for m=2:M
    tmp0=lasty(m-1);
    tmp1=lasty(m);
    if tmp0<0 && tmp1>=0
        t0(k)=liczMNK(lastt(m-1),lastt(m),lasty(m-1),lasty(m));
        k=k+1;
    end
end