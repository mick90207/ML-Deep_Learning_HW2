%%
%Load file
setNumber = 3696;
featurevectorDim = 5616;

% featureVector = importFeatureVector('feature_vector.csv',1,inf);
% sequence = csvread('sequence.csv',0,1);
range = csvread('range.csv');

trainData = csvread('train_sorted.csv',1,1);

%%
%Initail GPU Device
gpu = gpuDevice;
featureVectorG = gpuArray(featureVector);

%%
%SVM Initail
svmParameters.patterns = featureVector;
svnParameters.labels = sequence;