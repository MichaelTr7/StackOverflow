

```
Image = imread("Boat.jpg"); 
[Image_Height,Image_Width] = size(Image);
Block_Size = 8;

Number_Of_Blocks_Horizontally = floor(Image_Width/8);
Number_Of_Blocks_Vertically = floor(Image_Height/8);
```

<h3>Seperating The Images Into 8 by 8 Blocks</h3>

```
Blocks = struct("Block_Images",[]);
Block_Index = 1;

for Row_Scanner = 1: +Block_Size: Image_Width
   for Column_Scanner = 1: +Block_Size: Image_Height 
    
     y = Row_Scanner;
     x = Column_Scanner;
  
    Blocks(Block_Index).Block_Images = Image(x:x+Block_Size-1,y:y+Block_Size-1);
    Block_Index = Block_Index + 1; 
    
   end
end

%%
%************************************************************%
%TRANSFORM THE 8 BY 8 BLOCKS%
%************************************************************%




%%
%************************************************************%
%RECONSTRUCTION%
%************************************************************%

Reconstructed_Image = zeros(Image_Height,Image_Width);

Block_Index = 1;
for Row_Scanner = 1: +Block_Size: Image_Width
   for Column_Scanner = 1: +Block_Size: Image_Height 
    
     y = Row_Scanner;
     x = Column_Scanner;
  
    Reconstructed_Image(x:x+Block_Size-1,y:y+Block_Size-1) = Blocks(Block_Index).Block_Images;
    Block_Index = Block_Index + 1;
    
   end
end

imshow(uint8(Reconstructed_Image));
title("Reconstructed Image from Blocks");
```
