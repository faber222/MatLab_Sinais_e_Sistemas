% Tutorial Básico de Matlab
% Autor: Professora Deise Monquelate Arndt
% IFSC - Campus São José
% Data Agosto/2015
%
% 
% O objetivo deste tutorial é auxiliar os alunos no aprendizado da
% ferramenta Matlab. Boa parte do conteúdo ministrado neste será de grande
% utilizade para a disciplina de COM I.


%% Iniciando os trabalhos

close all           % Fecha todas as Figuras abertas
clear all           % Limpa todas as variáveis já existentes 
clc                 % Limpa a tela de comandos do Matlab

%% Trabalhando com Vetores e Matrizes

% Criando um vetor linha
LA = [1, 2, 3, 4, 5]
% Criando um vetor colunaa
CA = [11; 12; 13; 14; 15;]
% Criando uma matriz
MA =[0  1  2  3  4  5  6  7  8  9
    10 11 12 13 14 15 16 17 18 19
    20 21 22 23 24 25 26 27 28 29
    30 31 32 33 34 35 36 37 38 39
    40 41 42 43 44 45 46 47 48 49
    50 51 52 53 54 55 56 57 58 59
    60 61 62 63 64 65 66 67 68 69
    70 71 72 73 74 75 76 77 78 79
    80 81 82 83 84 85 86 87 88 89
    ]

% Transposição de matrizes
LAT = LA .'             %Transposição
CAT = CA .'             %Transposição
MAT = MA .'             %Transposição

% Matriz  preeenchida com valores determinados
MB = ones(3,3)      % Matriz 3x3 preenchida com 1's
MC = zeros(3,5)     % Matriz 3x5 preenchida com 0's
MD = eye(4,3)       % Matriz identidade

%Matrizes aleatórias
 X = rand(3,4)      % Uniforme no intervalo (0,1).
 X1 = randn(2,5)    % Normal (gaussiana) com média 0, variância 1.
 
 %% Inserindo valores em variáves

 Q = -0.001;                          % Ponto (não vírgula) como separador decimal.
 R = -1e-3;                           % -1 * 10^-3.
 S= 5 - 2j;                          % MATLAB aceita números complexos (i ou j).
 T = 2.5e3;

%% Operações Matemáticas 

%Operações matemáticas são a alma do MATLAB. A lista completa dos operadores disponíveis pode ser obtida no site da mathworks.
%Ao trabalhar com vetores ou matrizes, as restrições de operação da matemática devem ser respeitadas


soma = 3 + 7        % Soma

subt = 4 - 6        % Subtração

mult = 2 * 8        % Multiplicação

divs = 7 / 30       % Divisão

pote = 4 ^ 9        % Potenciação

raiz = sqrt(28)     % Raiz quadrada

%% Intervalos
inte1 = 1:9         % Intervalo

inte2 = 1:4:40      % Intervalo saltado

inte3 = 5:-1:1      % Intervalo negativo

inte4 = 15:-5:-30   % Intervalo negativo saltado


%% Manipulando as matrizes e vetores

mult1 = [5 4 3 2 1] .* [6 7 8 9 10] %Multiplicação elemento a elemento de vetores

mult2 = LA * CA                     % Produto escalar

div1 = [5 4 3 2 1] ./ [10 9 8 7 6]  %Divisão elemento a elemento de vetores

pot1 = [1 2 3 4 5 6] .^ 3           %Potenciação elemento a elemento de vetores

%% Números complexos
j 
cplx1 = 12 + j*5        % Número complexo

cplxC1 = conj(cplx1)    %Conjugado

%Hermitiana (transposta conjugada)
Vcplx = [1 + j*3, 4 + j*6, 8 - j*13, -9 + j*1]
VcplxH = Vcplx'

%% Operações Booleanas
 MA == 5*MA                      % Testa igualdade elemento a elemento.
 MA ~= 5*MA                      % Diferente de.
 MA > 3;                          % Testa se cada elemento é maior que 3.
 [1 1 0] & [1 0 0];               % Lógica E.
 [1 1 0] | [1 0 0];               % Lógica OU.
 
 %Obs.: O MATLAB considera Falso = 0 e Verdadeiro, tudo que não é 0.

 
 %% Algumas funções úteis
 abs([-1 2 -3])                  % Módulo.
 abs(1+j)                        % Igual a raiz de 2.
 angle(1+j)                      % Em radianos.
 angle(1+j) * (180/pi)           % Convertido pra graus.

%  convolução                       % Convolução, equivalente a produto polinomial
 conv([1 1], [1 1])               % (x+1)(x+1) = x² + 2x + 1
 
 roots([1 2 1])                   % Calcula as raízes do polinômio
%% Indexando Matrizes

LAInd   = LA(1)    % Elemento 1 do vetor LA
CAInd_3   = CA(3)    % Elemento 3 do vetor CA
MAInd = MA(2,4)  % Elemento da linha 2 e coluna 4 da matriz [múltiplos subscritos]
MAInd_6   = MA(6)    % Elemento 6 da matriz [indexação por índice]
 
LA3 = LA(2:4)  % Elementos 2 a 4 do vetor LA
CA3 = CA(1:3)  % Elementos 1 a 3 do vetor CA
MA3 = MA(3,5:8) % Elementos 5 a 8 da linha 3 da matriz
MA4 = MA(1:5,8)  % Elementos 1 a 5 da coluna 8 da matriz
MA5 = MA(1:4,5:7) % Elementos da linha 1 a 4 e da coluna 5 a 7 da matriz (submatriz)

%Concatenando um vetor com um escalar. 

C1 = [LA, 10]   % Concatenando um vetor linha
C2 = [CA; 25]   % Concatenando um vetor coluna
 
 

%%  Criando Sinais

 t = 0:9;
 f = sin(t);
 plot(t, f)                      % O que o MATLAB faz é unir os pontos.
 plot(t, f, 'bx')                % Azul com x
%  help plot

 t = 0:0.01:4*pi;                % Com muitos pontos o gráfico fica suave.
 f = sin(t);
 plot(t, f)
 plot(t, cos(t), 'ro')            % Apagou o gráfico do seno!

 hold                            % Para manter os plots.
 plot(t, sin(t), 'b*')
 plot(t, cos(2*t), 'g')
 
 %% Trabalhando com Figuras
%Nova janela de plotagem, título, eixos
 figure(50)                          % Cria uma nova janela de plotagem.
 plot(t, 2*exp(-t))
 title('Funcao Exponencial')     % Inserir Título.
 xlabel('tempo')                 % Texto do eixo horizontal.
 ylabel('amplitude')             % Texto do eixo vertical.
 
 %Subplot
%O comando subplot(M,N,i) divide a janela de plotagem em uma matriz M x N e prepara o proximo plot na posicao i.

figure(51)
 subplot(2,3,1)
 plot(t, t.^2)

 subplot(2,3,5)
 plot(t, sqrt(t))

 subplot(2,3,2)
 plot(t, sin(t/2) + 1)
%Plot sem o argumento x
 figure(52); plot(t, f)
 figure(53); plot(f)
%Plotando seqüências discretas: stem
 n = 0:6
 a = 10 - (n - 3) .^ 2
 figure(54)
 stem(n, a)
 
 
 
 
 
 