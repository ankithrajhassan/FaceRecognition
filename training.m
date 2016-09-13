function [m, A, Eigenfaces]=training()


clear all
clc
close all



TP = uigetdir;
disp('this is training path');
disp(TP);
T = train(TP);
[m, A, Eigenfaces] = eigenface(T);
end