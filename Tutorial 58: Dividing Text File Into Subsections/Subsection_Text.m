
function [] = Subsection_Text(File_Name)

Mode = 'rt'; 
File_ID = fopen(File_Name,Mode);
Break_Condition = 0;

Line_Index = 1;

while(Break_Condition < 3)

Text = string(fgetl(File_ID));
 
Empty = ~contains(Text,["X" "Y" "Z"]);

if(~Empty)
Break_Condition = 0;
Lines(Line_Index,1) = Text;
end    

if(Empty)
Break_Condition = Break_Condition + 1;   
Lines(Line_Index,1) = "";
end
   
Line_Index = Line_Index + 1;
end

Lines = Lines(1:length(Lines)-3);
fclose(File_ID);

Break_Condition = 0;
Block_Index = 1; 

Save_File_ID = fopen("data" + num2str(Block_Index) +".txt",'w');

for Line_Index = 1: length(Lines)
Print_Text = Lines(Line_Index,1);

if(Print_Text ~= "")
Break_Condition = 0;
fprintf(Save_File_ID,"%s",Lines(Line_Index,1));
fprintf(Save_File_ID,"\n");
end

if(Print_Text == "")
Break_Condition = Break_Condition + 1;
if(Break_Condition == 2)
fprintf("Start new file\n");
fclose(Save_File_ID);
Block_Index = Block_Index + 1;
Save_File_ID = fopen("data" + num2str(Block_Index) +".txt",'w');
end
    
end    
   
end


end







