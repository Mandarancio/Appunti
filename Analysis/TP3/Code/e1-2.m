clear all;

[data, trainLabels, testImages, testLabels] = traintestMNIST([2], 5000,5);
[pc,ev,~] = pca(data);
t = mat2cell(testImages, ones(1, 5), size(testImages)(2));
figure;
index=1;
x = mean(data);
size(x)

for i=1:5
  img = cell2mat(t(i));
  subplot(5,11,index);
  image(reshape(img,28,28)');
  axis("square") ;
  axis off;
  index +=1;
  for m=1:10
    PCM = pc(:,1:m);
    rimg = rm(img,x, PCM);
    subplot(5,11,index);
    rimg = reshape(rimg,28,28)';
    image(rimg);
    title(['m = ' num2str(m)]);
    axis("square") ;
    axis off;
    index +=1;
  endfor
endfor 

figure();
index= 1;
for i=1:5
  img = cell2mat(t(i));
  subplot(5,3,index);
  image(reshape(img,28,28)');
  axis("square") ;
  axis off;
  index +=1;
  PCM = pc(:,1:145);
  rimg = rm(img,x, PCM);
  subplot(5,3,index);
  rimg = reshape(rimg,28,28)';
  image(rimg);
  title(['95%']);
  axis("square") ;
  axis off;
  index +=1;
  PCM = pc(:,1:500);
  rimg = rm(img,x, PCM);
  subplot(5,3,index);
  rimg = reshape(rimg,28,28)';
  image(rimg);
  axis("square") ;
  title(['100%']);
  axis off;
  index +=1;
endfor 