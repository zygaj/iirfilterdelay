function x=liczMNK(x0,x1,y0,y1)

if nargin==0
    x0=1
    x1=2
    y0=3
    y1=5
    %a=2
    %b=1
end
    
%y=ax+b;


X=[x0 1;x1 1];
y=[y0;y1];
par=(X'*X)^-1*X'*y;
%0=ax+b
%x=-b/a
x=-par(2)/par(1);