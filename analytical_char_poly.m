function coeffsVec = analytical_char_poly(A)
  pkg load symbolic     % μόνο στο Octave
  syms lambda

  % Χαρακτηριστικό πολυώνυμο
  p = expand(det(A - lambda*eye(size(A,1))));

  % Παίρνουμε όλους τους συντελεστές (από λ^0 προς λ^n)
  c_all = coeffs(p, 'All');

  % Αντιστρέφουμε ώστε να είναι από λ^n προς σταθερό
  coeffsVec = c_all * -1;
end
