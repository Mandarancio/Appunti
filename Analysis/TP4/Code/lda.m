function [a,b,sw] = lda(x0,x1)
  g0 = mean(x0);
  g1 = mean(x1);
  p0 = (x0-g0)'*(x0-g0);
  p1 = (x1-g1)'*(x1-g1);
  sw  = p0+p1;
  a = (g0-g1)/sw;
  b = -0.5*((g0+g1)*a');
endfunction