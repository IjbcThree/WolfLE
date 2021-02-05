clc;
clear;


% [T,Res]=lyapunov(4,@lorenz_ext,@ode45,0,0.5,400000,[1.618*1e-4, 3.14*1e-4,3.5, 0.618*1e-4],2000);
% [T,Res]=lyapunov(4,@lorenz_ext,@ode45,0,0.5,300000,[1.618*1e-4, 3.14*1e-4, 1, 0.618*1e-4],2000);
% [T,Res]=lyapunov(4,@lorenz_ext,@ode45,0,0.5,300000,[1.618*1e-4, 3.14*1e-4, 7, 0.618*1e-4],2000);
% [T,Res]=lyapunov(4,@lorenz_ext,@ode45,0,0.5,300000,[1.618*1e-4, 3.14*1e-4, 3.5, 0.618*1e-4],2000);
[T,Res]=lyapunov(4,@lorenz_ext,@ode45,0,0.5,300000,[1.618*1e-4, 3.14*1e-4, 2.75, 0.618*1e-4],2000);


% plot(T,Res(:,1:3));
% axis([-inf,inf,-0.01,0.07]);
% gtext('L_1 = 0.058543'),gtext('L_2 = 0.010961'),gtext('L_3 = -0.000024')
% xlabel('t'); ylabel('Lyapunov exponents');
% 
% 
% L3.fig
% 
% plot(T,Res(:,4));
% axis([-inf,inf,-0.9,-0.5]);
% xlabel('t'); ylabel('Lyapunov exponents');
% gtext('L_4 = -0.719480')
% 


