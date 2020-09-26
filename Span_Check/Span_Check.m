

A = [1 2 3];
V = [2 4 6];

[Result] = Check_Span(A,V);


function [Result] = Check_Span(A,V)

Scaling_Factor_1 = A(1)/V(1);
Scaling_Factor_2 = A(2)/V(2);
Scaling_Factor_3 = A(3)/V(3);

Result = isequal(Scaling_Factor_1,Scaling_Factor_2,Scaling_Factor_3);

end


