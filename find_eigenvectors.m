function V = find_eigenvectors(A, lambda_val)
  tolerance = 1e-6; %Tolerance gia na mhn exw provlimata me ta dekadika psifia
  V = null(A - lambda_val*eye(size(A)), tolerance);
end
