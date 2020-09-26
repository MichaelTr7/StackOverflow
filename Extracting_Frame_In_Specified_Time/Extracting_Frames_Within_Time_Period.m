
%Change the start and end times to trim video and get frames%
Start_Time = 4;
End_Time = 5;


File_Name = "Animated_Blocks_Test.avi";
Video_Properties = VideoReader(File_Name);

Video_Height = Video_Properties.Height;
Video_Width = Video_Properties.Width;
Number_Of_Frames = Video_Properties.NumFrames;
Frame_Rate = Video_Properties.FrameRate;
Video_Duration = Video_Properties.Duration;


%Converting the start time and end time to the frame number/index%
Frame_Period = 1/Frame_Rate;

Start_Frame_Index = round(Start_Time/Frame_Period); 
End_Frame_Index = round(End_Time/Frame_Period);

Number_Of_Frames = End_Frame_Index - Start_Frame_Index + 1;


Video_Height = Video_Properties.Height;
Video_Width = Video_Properties.Width;

Colour_Channel_Matrix = zeros(Video_Height,Video_Width,3,'uint8');
Video_Structure = struct('cdata',Colour_Channel_Matrix,'colormap',[]);


Frame_Index = 1; 
while(hasFrame(Video_Properties))
    
Video_Structure(Frame_Index).cdata = readFrame(Video_Properties);
Frame_Index = Frame_Index + 1;    
       
    
end


% Frame_Data = {Video_Structure.cdata};
% implay(Video_Structure);

Clipped_Video = Video_Structure(Start_Frame_Index:End_Frame_Index);
implay(Clipped_Video);
Clipped_Video_Frame_Data = {Clipped_Video.cdata};




