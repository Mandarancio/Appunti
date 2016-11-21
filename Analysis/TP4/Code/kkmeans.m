function [y,J,g] = kkmeans(x,k)
  yt = zeros(1,rows(x));
  yt1 = randi(k,1,rows(x));
  g = zeros(k,columns(x));
  t = 0;
  jj = zeros(1,rows(x));
  d = zeros(k,rows(x));
  c = 0;
  while (sum(yt~=yt1)>0)
    yt(:) = yt1(:);
    for j=1:k 
      ij = find(yt==j);
      g(j,: ) = mean(x(ij,:));
      t = sum(power(x-g(j,:),2)');
      d(j,: ) = t;
    endfor
    [jj,yt1] = min(d);
  endwhile
  y = yt';
  J = sum(jj);
endfunction