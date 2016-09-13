function []=Create
cd data;
while (1==1)
    choice=menu('Create Data',...
                  ' Add Image',...
                  ' Add Folder',...
                  ' Exit');
    if (choice ==1)
        addim;
    end
    if (choice == 2)
        addf;
    end
    if (choice == 3)
        cd ..;
        clc;
        close all;
        return;
    end    
end
end