function [A, b] = eliminacao_gauss_sem_pivotacao (n, A, b)
  for j=1:n-1
    if abs(A(j, j)) != 0
      r = 1/A(j, j);
      for i=j+1:n
        Mult = A(i, j)*r;
        A(i, j) = 0;
        for k=j+1:n
          A(i, k) = A(i, k) - Mult*A(j, k);
        endfor
        b(i) = b(i) - Mult*b(j);
      endfor
    endif
  endfor
endfunction
