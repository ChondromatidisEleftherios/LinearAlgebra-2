function Ask42874 ()
  M = [7,-2,5; 4,9,-3; 6,2,8];
  disp("Matrix:");
  disp(M);
  cramer = M(1,1) * ((M(2,2)*M(3,3))-(M(2,3)*M(3,2))) - M(1,2)*(M(2,1)*M(3,3)-(M(2,3)*M(3,1))) + M(1,3)*(M(2,1)*M(3,2)-(M(2,2)*M(3,1)));
  disp("Determinant using my function: ");
  disp(cramer);
  builtIn = det(M);
  disp("Determinant using the built-in det function: ");
  disp(builtIn);
  if (~(cramer==0))
    disp("The matrix can be inversed!");
  else
    disp("The matrix CANNOT be inversed!");
  endif
  end
