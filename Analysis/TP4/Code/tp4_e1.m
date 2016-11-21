function [l] = f(x,a,b)
  y = b+x*a';
  if (y>=0) 
    l = 1;
  else
    l = 2;
  endif;
end

ntest = 500;
[data, labels, testData, testLabels] = traintestMNIST([3,7], 2000,ntest);
u_l = unique(labels);
[pc,ev,~] = pca(data);
X = data-mean(data);
PCM = pc(:,1:50);
%reduce training data
r_data = (PCM * PCM' * X')';
%reduce test data
r_testData = testData - mean(data);
testData = (PCM * PCM' * r_testData')';
x0 = r_data(find(labels==u_l(1)),:);
x1 = r_data(find(labels==u_l(2)),:);
correct = 0;
correctness = [0,0;0,0];
tic();
[a,b,sw] = lda(x0,x1);
for i=[1:ntest]
  img = testData(i,:);
  l = f(img,a,b);
  vl = u_l(l);
  if (vl == testLabels(i))
    correct++;
    correctness(l,1)++;
  else
    correctness(l,2)++;
  endif
endfor
t = toc();
printf('\nLDA on PCA(50)\n');
con_matrix(num2str(u_l(1)),num2str(u_l(2)),correctness);
printf('Total Precision: \t%d\n',correct/ntest);
printf('Execution time: \t%d s\n',t);
%% KNN
correct = 0;
correctness = [0,0;0,0];
tic();
for i = [1:ntest]
  img = testData(i,:);
  knn_index = knn(r_data,img);
  li = find(u_l==labels(knn_index));
  if (labels(knn_index)==testLabels(i))
    correct++;
    correctness(li,1)++;
  else
    correctness(li,2)++;
  endif
endfor
t= toc();
printf('\nkNN on PCA(50)\n');
con_matrix(num2str(u_l(1)),num2str(u_l(2)),correctness);
printf('Total Precision: \t%d\n',correct/ntest);
printf('Execution time: \t%d s\n',t);
