function [ ] = saveimg(capcha)
SavePath = uigetdir('F:\Study\Images\Facerecognition\data', 'Select Student Folder' );
file_ext='.pgm';
folder_content = dir ([SavePath,'\*',file_ext]);
nface = size (folder_content,1);
str=int2str(nface+1);
str=strcat(str,'.pgm');
saveas=strcat(SavePath,'\',str);
imwrite(capcha,saveas);
disp('Image Sucessfully Saved As ');
disp(str);
end