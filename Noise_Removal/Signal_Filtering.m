
%Importing table data and changing data to array type%
Excel_Table_Data = readtable('stackoverflow.xlsx');
All_Signal_Data = table2array(Excel_Table_Data);

%Grabbing the first column as the sample indices%
Sample_Index = All_Signal_Data(:,1);

%Deleting the first column of the Signal_Data array corresponding to the
%sample indices%
All_Signal_Data(:,1) = [];


%Array to store each signal's mean value%
Number_Of_Signals = 51;
Mean_Array = zeros(1,Number_Of_Signals);

%Evaluating the mean of the 51 signals respectively%
for Signal_Number = 1: +1: Number_Of_Signals
Mean_Array(1,Signal_Number) = mean(All_Signal_Data(:,Signal_Number));   
end 

Margin = 0.00;

%Thresholding the signal%
for Signal_Number = 1: +1: Number_Of_Signals

%Grabbing one column corresponding to a single signal%
Signal_Data = All_Signal_Data(:,Signal_Number);
Mean = Mean_Array(1,Signal_Number);
Maximum_Bound = Mean + Margin;
Minimum_Bound = Mean - Margin;

Signal_Data((Signal_Data > Minimum_Bound) & (Signal_Data < Maximum_Bound)) = Mean;
All_Signal_Data(:,Signal_Number) = Signal_Data;

end 


plot(Sample_Index,All_Signal_Data);







