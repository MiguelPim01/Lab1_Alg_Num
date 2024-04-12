L = [3 0 0 0; 2 5 0 0; 1 -7 4 0; 5 3 -4 8];
c = [15; 20; -21; 51];
n = size(L)(1);
L
c
n

x = substituicoes_sucessivas(n, L, c);
x

r = c - L * x;
r
