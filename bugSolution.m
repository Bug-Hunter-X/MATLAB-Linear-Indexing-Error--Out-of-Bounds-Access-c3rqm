function result = myFunction(input)
% This function demonstrates a corrected approach to avoid linear indexing errors.
% It handles empty input and uses nested loops for safer indexing.

if isempty(input)
    result = []; % Handle empty input
    return
end

sizeInput = size(input);
numRows = sizeInput(1);
numCols = sizeInput(2);

result = zeros(numRows, numCols); % Pre-allocate result (optional for efficiency)

% Corrected indexing using nested loops
for i = 1:numRows
    for j = 1:numCols
        element = input(i, j);
        % ... process element ...
        result(i,j) = element * 2; % Example operation
    end
end
end