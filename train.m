 function T = train(trainpath)


 no_folder=size(dir([trainpath,'\*']),1)-size(dir([trainpath,'\*m']),1)-size(dir([trainpath,'\*asv']),1)-2;

T = [];
disp('Loading Faces');
for i = 1 : no_folder
    stk = int2str(i);
    disp(stk);
    stk = strcat('\s',stk,'\*pgm');
    folder_content = dir ([trainpath,stk]);
    nface = size (folder_content,1);
    disp(nface);
for j = 1 :  nface
  
    str = int2str(j);
    str = strcat('\',str,'.pgm');
    str = strcat('\s',int2str(i),str);
    str = strcat(trainpath,str);
    img = imread(str);
    %img = rgb2gray(img);
    
    [irow,icol] = size(img);
   
    temp = reshape(img',irow*icol,1);   
    T = [T temp];                     
end

end

end