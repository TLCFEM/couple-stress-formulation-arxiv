clear;clc;

G=1;
v=.4;
l=.5;
u=.1;

ur=@(r,l)[1;
    1/r/r;
    (1-4*v)*r*r;
    (3-4*v)/(2-2*v)*log(r)+2*l*l/r/r;
    -besseli(1,r/l)/r;
    -besselk(1,r/l)/r]'/2/G;
ut=@(r,l)[-1;
    1/r/r;
    (5-4*v)*r*r;
    2*l*l/r/r-((3-4*v)*log(r)+1)/(2-2*v);
    besseli(0,r/l)/l-besseli(1,r/l)/r;
    -besselk(0,r/l)/l-besselk(1,r/l)/r]'/2/G;
mut=@(r,l)[0;
    0;
    (16-16*v)*l*l;
    2*l*l/r/r;
    besseli(0,r/l)/l-besseli(1,r/l)/r;
    -besselk(0,r/l)/l-besselk(1,r/l)/r]';

A=[ur(1,l);ut(1,l);mut(1,l);ur(2,l);ut(2,l);mut(2,l);];
B=[u;-u;0;0;0;0];
C=A\B;

x=(1:0.02:2)';

y=zeros(size(x));
z=zeros(size(x));

for i=1:numel(x)
    y(i)=-dot(ut(x(i),l),C)/u;
end

plot(y,x)
