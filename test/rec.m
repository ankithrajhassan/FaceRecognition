function [OutputName,m] = rec(m, A, Eigenfaces)


pimag = [];
Train_Number = size(Eigenfaces,2);
for i = 1 : Train_Number
    temp = Eigenfaces'*A(:,i);
    pimag = [pimag temp]; 
end


InputImage = imread('InputImage.pgm');

temp = InputImage(:,:,1);


[irow,icol] = size(temp);
InImage = reshape(temp',irow*icol,1);



Difference = double(InImage)-m; 

ProjectedTestImage = Eigenfaces'*Difference; 

Edist = [];
for i = 1 : Train_Number
    q = pimag(:,i);
    temp = ( norm( ProjectedTestImage - q ) )^2;
    Edist = [Edist temp];
end

[min_edist , Recognized_index] = min(Edist);
OutputName = (Recognized_index);
m = Edist(Recognized_index);

end
