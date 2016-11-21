#pkg load statistics
ntest = 500;
[data, labels, testData, testLabels] = traintestMNIST([3,7], 4000,ntest);
u_l = unique(labels);
[pc,ev,~] = pca(data);
X = data-mean(data);
PCM = pc(:,1:50);
%reduce training data
r_data = (PCM * PCM' * X')';
%reduce test data
r_testData = testData - mean(data);
testData = (PCM * PCM' * r_testData')';
x = [2:10];
y = [];
##{
for k=2:10
  [~,J,~]=kkmeans(testData,k);
  y(end+1) = J;
endfor
plot(x,y);
xlabel('k');
ylabel('J(y)');
##}

correct = 0;
correctness = [0,0;0,0];

tic();
[idx,J,G]= kkmeans(testData,2);
x1 = idx(find(testLabels==u_l(1)));
x2 = idx(find(testLabels==u_l(2)));
id1 = round(mean(x1));
c1 = x1(find(x1==id1));
correct+=rows(c1);
correctness(1,1)=rows(c1);
correctness(1,2)=rows(x1)-rows(c1);
id2 = round(mean(x2));
c2 = x2(find(x2==id2));
correct+=rows(c2);
correctness(2,1)=rows(c2);
correctness(2,2)=rows(x2)-rows(c2);
t=toc();


GD=sqrt(sum(power(G(1,:)-G(2,:),2)));

printf('\nk-means (2) on PCA(50)\n');
con_matrix(num2str(u_l(1)),num2str(u_l(2)),correctness);
printf('Total Precision: \t%d\n',correct/ntest);
printf('Execution time: \t%d s\n',t);
printf('Cluster distance: \t%d\n',GD);
printf('Mean distance from center: \t%d\n',sqrt(J)/ntest);

ntest = 500;
[data, labels, testData, testLabels] = traintestMNIST([3,5], 4000,ntest);
u_l = unique(labels);
[pc,ev,~] = pca(data);
X = data-mean(data);
PCM = pc(:,1:50);
%reduce training data
r_data = (PCM * PCM' * X')';
%reduce test data
r_testData = testData - mean(data);
testData = (PCM * PCM' * r_testData')';

correct = 0;
correctness = [0,0;0,0];

tic();
[idx,J,G]= kkmeans(testData,2);
x1 = idx(find(testLabels==u_l(1)));
x2 = idx(find(testLabels==u_l(2)));
id1 = round(mean(x1));
c1 = x1(find(x1==id1));
correct+=rows(c1);
correctness(1,1)=rows(c1);
correctness(1,2)=rows(x1)-rows(c1);
id2 = round(mean(x2));
c2 = x2(find(x2==id2));
correct+=rows(c2);
correctness(2,1)=rows(c2);
correctness(2,2)=rows(x2)-rows(c2);
t=toc();

GD=sqrt(sum(power(G(1,:)-G(2,:),2)));

printf('\nk-means (2) on PCA(50)\n');
con_matrix(num2str(u_l(1)),num2str(u_l(2)),correctness);
printf('Total Precision: \t%d\n',correct/ntest);
printf('Execution time: \t%d s\n',t);
printf('Cluster distance: \t%d\n',GD);
printf('Mean distance from center: \t%d\n',sqrt(J)/ntest);