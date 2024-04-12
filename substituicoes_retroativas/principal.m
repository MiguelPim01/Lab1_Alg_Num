%U = [6 -2 5; 0 4 -3; 0 0 7];
%d = [19; 3; -7];

U = [7 0 -3 5; 0 -1 6 2; 0 0 4 -3; 0 0 0 3];
d = [-9; 12; -3; 5];

n = size(U)(1);
U
d
n

x = substituicoes_retroativas(n, U, d);
x

r = d - U * x;
r

