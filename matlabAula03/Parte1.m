clc
clear
close

% % Parte 1 
% % Para encontrar as raízes
% % A) Para k = 3
% % B) Para k = 4
% % C) Para k = 40

% A) k = 3
% r = roots([1 4 3]);
% disp(['Case (k=3): roots = [',num2str(r.'),']']);
% Case (k=3): roots = [-3 -1]

% B) k = 4
% r = roots([1 4 4]);
% disp(['Case (k=4): roots = [',num2str(r.'),']']);
% Case (k=4): roots = [-2 -2]

% C) k = 40
% r = roots([1 4 40]);
% disp(['Case (k=40): roots = [',num2str(r.'),']']);
% Case (k=40): roots = [-2+6i,-2-6i]

% % Parte 2
% % Entrada nula
% % A) Para k = 3
% % B) Para k = 4
% % C) Para k = 40

% A) k = 3
% y = dsolve('D2y+4*Dy+3*y=0','y(0)=3','Dy(0)=-7','t')
% disp(['(a) k = 3; y = ',char(y)])

% B) k = 4
% y = dsolve('D2y+4*Dy+4*y=0','y(0)=3','Dy(0)=-7','t')
% disp(['(b) k = 4; y = ',char(y)])

% C) k = 40
% y = dsolve('D2y+4*Dy+40*y=0','y(0)=3','Dy(0)=-7','t')
% disp(['(c) k = 40; y = ',char(y)])






