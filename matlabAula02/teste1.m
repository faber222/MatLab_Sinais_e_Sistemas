%% teste de funções
clear;
close all;
clc;

t = -5:0.01:10;

% % Parte 1 

% x = u(t) - u(t-4);
% x = u(t)-u(t-1)+u(t-4)-u(t-5);
% x = t.*(u(t)-u(t-1));
% x = 2*t.*(u(t)-u(t-1));

% % Parte 2

% x = u(t) - u(t-2);
% x = u(t+1)-2*u(t)+u(t-1);
% x = -u(t+3)+3*u(t+1)-2*u(t-1)+u(t-3);
% y = r(t+1)-r(t)+r(t-2);
% y = r(t+2)-r(t+1)-r(t-1)+r(t-2);
% x = d(t) + d(t-1);
% x = u(t)-u(t-1)+(-t+2).*(u(t-1)-u(t-2));
% x =  (t-1).*(u(t-1)-u(t-2))+u(t-2)-u(t-4);

% plot(t,x);
% plot(t,y);
axis([-5 10 -2 5])