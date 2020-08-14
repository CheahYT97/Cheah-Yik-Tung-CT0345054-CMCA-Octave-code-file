total = 0;
numTerms = input('Enter number of terms: ');

for i=1:numTerms
    total = 1/i+ 1/ (i + 2) * (i + 3);
end

fprintf('Total of %d terms is %d\n', numTerms, total);

