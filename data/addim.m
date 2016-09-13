function [] = addim

while (1==1)
    choice=menu('Add Image',...
                  'Choose From File',...
                  'Exit');
    if (choice ==1)
        [filename, user_cancelled] = imgetfile;
          
      filename = imgetfile;
      capcha=imread(filename);
      %capcha=imcrop(capcha,[180,40,280,380]);
      imshow(capcha);
      saveimg(capcha);
    end
    
    if (choice == 2)
        clc;
        close all;
        return;
    end    
end
end




