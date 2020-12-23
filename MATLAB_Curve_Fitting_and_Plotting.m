%Curve Fitting and Publishing in MATLAB%

%Inputing data for x and y variables into and array

Random_Data_y = [0 0.141 0.205 0.271 0.371 0.437 0.444];
Random_Data_x = [2.42 104 112 119 126 131 131];

%Preparing data to be curved fitted
[Random_Data_x, Random_Data_y] = prepareCurveData(Random_Data_x,Random_Data_y);

%Applying type of curve fitting
f = fit(Random_Data_x,Random_Data_y,'smoothingspline');

%f will now act as an additional parameter in plot and will denote the type
%of curve fitting applied to the graph/plot

plot(f,Random_Data_x,Random_Data_y,'c');

%Now lets plot the linear plot and compare the two graphs
hold on

%Using hold on and off to allow additional plots to be added to the first
%plot on the same grid


plot(Random_Data_x,Random_Data_y,'--m');
legend('Data','Curve Fitted','Linear Approximation');
title('Data Linear and Curve Fitted Approximations');
xlabel('Random Data, x'); ylabel('Random Data, y');
xticks(0: 10: 130); yticks(-0.05: 0.025: 0.45);
axis([0 135 -0.05 0.45]);

grid;

%To adjust the colours of the graphs add additional parameters to the plot
%lines

hold off



