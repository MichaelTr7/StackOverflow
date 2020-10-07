g = @(x) -0.25* (x^3 - 3*x^2  - 2);
x0 = 1.5;
epsilon = 1e-7; 
N=100;


pointfixe(g, x0, N, epsilon);