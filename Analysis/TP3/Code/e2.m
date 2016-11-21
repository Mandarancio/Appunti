clear all;

[data, labels, testData, testLabels] = traintestMNIST([0,1,2,3,4], 5000,500);
n = size(data)(1)
precision = 0;
N = size(testData)(1)
for i = 1:N
  img_i = testData(i,:);
  knn_index = knn(data,img_i);
  if (labels(knn_index)==testLabels(i))
    precision= precision+1;
  endif
endfor
disp(strcat("1NN result : ",num2str(precision/N*100),"%"));
fflush(stdout);

m = [1:5:30];
m = [m, 30:20:100];
m = [m, 150:50:200];
m = [m, 300:150:750];

res = [];
[pc,ev,~] = pca(data);
X = data-mean(data);
Y = testData - mean(data);

for i=m
  PCM = pc(:,1:i);
  r_data = (PCM * PCM' * X')';
  r_test = (PCM * PCM' * Y')';
  precision=0;
  for j = 1:N
    img_i = r_test(j,:);
    knn_index = knn(r_data,img_i);
    if (labels(knn_index)==testLabels(j))
      precision= precision+1;
    endif
  endfor
  precision = precision/N;
  disp(strcat("1NN + PCA(",num2str(i),"): ",num2str(precision*100),"%"));
  fflush(stdout);
  
  res=[res precision];
endfor 
plot(m, res);
xlabel('m');
ylabel('precision');
legend('precision(m)');
xlim([1,750]);

[mp,imp]=max(res);
text(m(imp),mp+0.01, strcat(num2str(mp*100),"%"));
hold on;
scatter(m(imp),mp);
hold off;