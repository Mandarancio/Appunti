clear all;
[data, ~,~,~] = traintestMNIST([2], 500);
[n, D] = size(data);
K=1
[pc,ev,~] = pca(data);
#X = mat2cell(data, ones(1, n), D);
#x = mean(data);
X = data-mean(data);
errs = zeros(D, 1);
for m=1:K:D
   PCM = pc(:,1:m);
   imgs = PCM * PCM' * X';
   imgs = imgs';
  # imgs = cell(n,1);
  # for i=1:1:n
  #    img = cell2mat(X(i));
  #    imgs(i) = {rm(img,x, PCM)};  
  # endfor
  # mat_img = cell2mat(imgs);  
   e=1/n*1/D*sum(sum(power(X-imgs,2)));
   errs(m) =e;
endfor
errs = errs(1:K:D);
mm = [1:K:D];
figure();
plot(mm,errs);
legend("err(r_m(x))");
xlabel("m");
ylabel("error");
m50 = find_m(ev,0.5);
m95 = find_m(ev,0.95);
m100 = find_m(ev,1.00);
disp("m 50%: ")
disp(m50);
disp("m 95%:")
disp(m95);
disp("m 100%:")
disp(m100);