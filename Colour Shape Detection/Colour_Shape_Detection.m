
File_Name = "Ovals.png";
File_Name = "PCA_Image.png";
Image = imread(File_Name);
Greyscale_Image = Image;

% Greyscale_Image = rgb2gray(Image);

%Filtering out some noise%
Filtered_Image = medfilt2(Greyscale_Image, [10 10]);

[Image_Height,Image_Width,Depth] = size(Image);

Lower_Threshold = 20;
Upper_Threshold = 160;


%Thresholding the signal%
for Row_Scanner = 1: +1: Image_Height
   for Column_Scanner = 1: +1: Image_Width 
    
    Pixel_Value = Filtered_Image(Row_Scanner,Column_Scanner);
    if(Pixel_Value > Upper_Threshold)
    Filtered_Image(Row_Scanner,Column_Scanner) = 255;    
    end
    
    if(Pixel_Value < Lower_Threshold)
        Filtered_Image(Row_Scanner,Column_Scanner) = 255;    
    end
    
   end
end

Filtered_Image = medfilt2(Filtered_Image, [10 10]);
imshow(Filtered_Image);



