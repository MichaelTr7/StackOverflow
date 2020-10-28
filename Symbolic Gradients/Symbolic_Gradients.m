
syms w
[f] = f_L(w);

%f ends up being a 1 by 6 array% 
gradient(f(1))
gradient(f(2))
gradient(f(3))
gradient(f(4))
gradient(f(5))
gradient(f(6))


 function f = f_L(w)
 z_1h=[-1,-1,1,1,1,1]'; % a 6 by 1 vector
 z_2h=[0,1,0,0,1,1]';
 z_3h=[2,0,4,0,0,1]';
 f=(log(1+exp(-z_1h'*w))+log(1+exp(-z_2h'*w))+log(1+exp(-z_3h'*w))/3);
 end
 
 
%% 
% syms w
%  
%  z_1h = [-1,-1,1,1,1,1]'; % a 6 by 1 vector
%  z_2h = [0,1,0,0,1,1]';
%  z_3h = [2,0,4,0,0,1]';
%  f = (log(1+exp(-z_1h'*w))+log(1+exp(-z_2h'*w))+log(1+exp(-z_3h'*w))/3);
%  
% gradient(f,w);
 
 
 
