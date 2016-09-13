function [ OutputName ] = facer(m, A, Eigenfaces)
cd test;
while (1==1)
    choice=menu('Face Recognition',...
                'Input image',...
                'Recognition',...
                'Exit');
    if (choice ==1)
       try cd TestImage;close all; end; 
        
         filename = imgetfile;
         capcha = imread(filename);
         %capcha = imcrop(capcha,[180,20,280,380]);
         imshow(capcha);
         saveinput(capcha);
    end
    
    if (choice == 2)
       [OutputName,m]=rec(m, A, Eigenfaces);
       n=fix((OutputName-1)/15);
       n = n+1;
       im=imread('InputImage.pgm');
       cd ..;
       img=strcat('data\s',int2str(n),'\1.pgm');
       SelectedImage=imread(img);
       subplot(121);
       imshow(im)
    title('Input');
    subplot(122),imshow(SelectedImage);
    title('Resulting match');
       disp('Person id: ');
       disp(int2str(n));
       
    end
     
   if (choice == 3) 
       clc; 
        close all;
        return;
    end    
end