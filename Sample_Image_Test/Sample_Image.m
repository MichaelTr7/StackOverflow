
Sample_Image = uint8([20 40 60 80; 100 120 140 160]);
subplot(1,3,1); imshow(Sample_Image,'InitialMagnification',1500);
title("Test Image");
set(gcf, 'Position',  [100, 100, 500, 400]);
axis on
xlabel('x-axis'); ylabel('y-axis');

%Using the (row,column) convention%
Row = 1;
Column = 1;


subplot(1,3,2); imshow(Sample_Image(Row,Column));

%Using the (y,x) convention%
x = 1;
y = 1;

subplot(1,3,3); imshow(Sample_Image(y,x));
