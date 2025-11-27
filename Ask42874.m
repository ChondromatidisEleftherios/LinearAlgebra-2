function Ask42874 ()
  M = [7,-2,5; 4,9,-3; 6,2,8];
  disp("Matrix M:");
  disp(M);
  cramer = CramerDet(M);
  disp("Determinant using my function: ");
  disp(cramer);
  builtIn = det(M);
  disp("Determinant using the built-in det function: ");
  disp(builtIn);
  if (~(cramer==0))
    disp("The matrix can be inversed, determinant is not 0!");
  else
    disp("The matrix CANNOT be inversed, determinant is 0!");
  endif
  end
