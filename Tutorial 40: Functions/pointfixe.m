
function [x] = pointfixe(g, x0, N, errel)

while (errel > epsilon) & (nbiterations <N)
          x0=x1;
          x1=g(x0);
          e_n_1=e_n;
          e_n=abs(x1-x0);
          errel=e_n/abs(x1);
          nbiterations=nbiterations+1;
          x(nbiterations)=x1;
end
end
