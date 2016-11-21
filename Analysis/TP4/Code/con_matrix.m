function con_matrix(c1,c2, results) 
  t1 = results(1,1)+results(2,2);
  t2 = results(1,2)+results(2,1);
  r1 = results(1,1)/t1;
  r2 = results(2,1)/t2;
  m1 = results(1,2)/t1;
  m2 = results(2,2)/t2;
  printf('\nCondition\ttotal\tPredicted 1\tPredicted 2\t\tRecall\t\tMissrate\n');
  printf('%s\t\t%d\t\t%d\t\t%d\t\t%f\t%f\n',c1,t1,results(1,1),results(1,2),r1,m1);
  printf('%s\t\t%d\t\t%d\t\t%d\t\t%f\t%f\n',c2,t2,results(2,2),results(2,1),r2,m2);
endfunction