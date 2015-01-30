pt = [
    1   0   0   0   0   0   0   0;
    1   1   0   0   0   0   0   0;
    1   2   1   0   0   0   0   0;
    1   3   3   1   0   0   0   0;
    1   4   6   4   1   0   0   0;
    1   5   10  10  5   1   0   0;
    1   6   15  20  15  6   1   0;
    1   7   21  35  35  21  7   1
];

figure(1);

hold on;

for rowIndex=1:size(pt,1)
    x = find(pt(rowIndex, :) != 0)
    y = 1:rowIndex
    scatter(x, y);
end