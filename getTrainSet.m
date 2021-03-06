function [patterns labels] = getTrainSet(trainData,range,startRow,endRow)
if startRow ==1

    delta = 0;

else
    delta = sum(range(1:startRow-1));
end

from = delta+1;
to = delta+sum(range(startRow:endRow));

trainSet = trainData(from:to,:);

labels = num2cell(trainSet(:,1)');
% Cut patterns
patterns = num2cell(trainSet(:,2:size(trainSet,2))',[1,size(trainSet,2)]);