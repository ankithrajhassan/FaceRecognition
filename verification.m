function [] = verification(m, A, Eigenfaces)
cd verify;
while (1==1)
    choice=menu('Verification',...
                'Input Image From File',...
                'Input Name',...
                'Verify',...
                'Exit');
    if (choice ==1)
        
         filename = imgetfile;
         capcha = imread(filename);
         imshow(capcha);
         saveveri(capcha);
    end
     if (choice ==2)
        
        prompt = 'Enter the ID of the User : ';
        dlg_title = 'Input';
        answer = inputdlg(prompt,dlg_title);
    end
    
    if (choice == 3)
       OutputName = ver(m, A, Eigenfaces);
       n = fix((OutputName-1)/15);
       n = n+1;
       in = strcat('s',int2str(n));
       tf = strcmp(answer,in);
        if(tf == 1) 
       im=imread('Inputveri.pgm');
       cd ..;
       img=strcat('data\s',int2str(n),'\1.pgm');
       SelectedImage=imread(img);
       subplot(121);
       imshow(im)
    title('Input');
    subplot(122),
    outp = strcat('Verification Complete. The user is :', answer);
        imshow(SelectedImage);
        title(outp);
        msgbox('Verification Complete');
      
        else
        msgbox('Does not match..!!');
        
       
        end
    
       
    end
     
   if (choice == 4) 
       clc; 
        close all;
        return;
    end    
end