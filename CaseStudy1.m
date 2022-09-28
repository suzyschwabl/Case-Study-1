v1 = CNTY_COVID(1, :);
figure;
hold on;
for i = 1 : CNTY_COVID(end)
    plot(CNTY_COVID(i, :));
end
hold off;

[initialCluster, C] = kmeans(CNTY_COVID, 9, "Replicates", 10);

figure;
hold on;
c1 = C(1, :);
c2 = C(2, :);
c3 = C(3, :);
plot(C(1, :));
plot(C(2, :));
plot(C(3, :));
plot(C(4, :));
plot(C(5, :));
plot(C(6, :));
plot(C(7, :));
plot(C(8, :));
plot(C(9, :));
hold off; 

divisions = CNTY_CENSUS(:,3);
divAndClusts = cat(2, initialCluster, divisions);
%ivsClustsCntyNames = cat(2, divAndClusts, CNTY_CENSUS(:, 5));