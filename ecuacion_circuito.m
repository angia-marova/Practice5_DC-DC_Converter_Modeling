function dxdt = ecuacion_circuito(t,x)

L = 2e-3;
R = 10;
C = 10e-6;
Uin = 32;
f=100e3;
T=1/f;
D=0.4;
if mod(t,T) < D*T
    d=1;
else
    d=0;
end


dxdt = zeros(2,1);
dxdt(1) = -500*x(2) + 16000*d;
dxdt(2) = 100000*x(1) - 10000*x(2);

end