function [A, b] = eliminacao_gauss_com_pivotacao (n, A, b)
  for j=1:n-1
    p = j;
    Amax = abs(A(j, j));
    for k=j+1:n
      if abs(A(k, j)) > Amax
        Amax = abs(A(k, j));
        p = k;
      endif
    endfor
    if p != j
      for k=1:n
        t = A(j, k);
        A(j, k) = A(p, k);
        A(p, k) = t;
      endfor
      t = b(j);
      b(j) = b(p);
      b(p) = t;
    endif
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
