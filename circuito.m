x1 = 0;
x2 = 0;

t_inicial = [x1; x2];

t_inicio = 0;
t_final = 0.005;
tspan = [t_inicio t_final];

opciones = odeset('MaxStep',5e-7);
[t,x] = ode45(@(t,x) ecuacion_circuito(t,x), tspan, t_inicial, opciones);

plot(t,x(:,1));
figure;
plot(t,x(:,2));