function result = myFunction(input)
% This function demonstrates a potential MATLAB error related to incorrect array indexing.
% Specifically, it uses linear indexing which can be error-prone, and does not handle the potential
% of an empty input array.

if isempty(input)
    result = []; % Handle empty input
    return
end

sizeInput = size(input);
numRows = sizeInput(1);
numCols = sizeInput(2);

% Incorrect linear indexing leading to potential out-of-bounds access
% if numRows or numCols is zero.
for i = 1:numRows * numCols
    element = input(i);  % linear index i may be out of bounds 
    % ... process element ...
end

end