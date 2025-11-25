function V = find_eigenvectors(A, lambda_val)
  tol = 1e-6;
  V = null(A - lambda_val*eye(size(A)), tol);
endfunction
