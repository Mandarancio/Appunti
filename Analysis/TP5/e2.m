function [bits] = code(o,rep=1)
  bits = zeros(rows(o),columns(o)*rep);
  for i=1:rows(o)
    for j=1:columns(o)
      k = 1+(j-1)*rep;
      bits(i,k:k+rep-1)=repmat(o(i,j),1,rep);
    endfor
  endfor
endfunction

function [bits] = decode(o,rep=1)
  bits = zeros(rows(o),columns(o)/rep);
  for i=1:rows(o)
    for j=1:columns(bits)
      k = 1+(j-1)*rep;
      bits(i,j) = round(mean(o(i,k:k+rep-1)));
    endfor
  endfor
endfunction

function [r] = transmit(bits, perr=0.1) 
  r = zeros(size(bits));
  noise = rand(size(bits));
  for j=1:rows(bits)
    for i=1:columns(bits) 
      if (noise(j,i)<=perr) 
        r(j,i)=!bits(j,i);
      else
        r(j,i)=bits(j,i);
      endif
    endfor
  endfor
endfunction


function [p,R]=evalue(bits,err,rep)
  coded = code(bits,rep);
  recived = transmit(coded,err);
  decoded = decode(recived,rep);
  errs = 0;
  for i=1:rows(bits)
    if sum(decoded(i,:)!=bits(i,:))>0
      errs = errs + 1;
    endif
  endfor
  p = errs/rows(bits);
  R =  5/(5*rep);
  display(strcat("Number of repetition: ",num2str(rep)))
  display("Error Probability : ")
  display(strcat(num2str(errs/rows(bits)*100),"%"))
  display(strcat("Rrate of communication: ",num2str(R)))
endfunction

clear;
res = [1,3,5,11,23];
prec = zeros(1,columns(res));
rs = zeros(1,columns(res));


p_err = 0.1;
bits = round(rand(1000,5));;

for i=1:columns(res)
  [prec(i),rs(i)]=evalue(bits,p_err,res(i));
endfor

plot(res,prec);
xlabel("Repetitions");
ylabel("Error");
legend("Error trend");
title("Error VS Repetitions");
figure()
plot(res,rs);
xlabel("Repetitions");
ylabel("Rate of Communication");
legend("R trend");
title("Rate of Communication VS Repetitions");
