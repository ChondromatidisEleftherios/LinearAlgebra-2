function coeffsVec = analytical_char_poly(A)
  pkg load symbolic
  syms lambda
  p = expand(det(A - lambda*eye(size(A,1))));
  c_all = coeffs(p, 'All');
  coeffsVec = c_all * -1; %Antistrefw ta proshma gia na einai opws ayta tou equation
end
