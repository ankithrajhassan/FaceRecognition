%Main
close all
clear all
clc
while (1==1)
    choice=menu('Face Recognition system',...
                'Train System',...
                'Face Recognition',...
                'Face Verification',...
                'Exit');
    
     
    if (choice ==1)
        [m, A, Eigenfaces]=training;
    end
    if (choice == 2)
        if exist('training.mat');
            load training;
        end
        facer(m, A, Eigenfaces);
    end
    
    if (choice ==3)
        verification(m, A, Eigenfaces);
    end
   
    if (choice == 4)
        clear all;
        clc;
        close all;
        return;
    end    
    
end