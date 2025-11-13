function cramerMethod ()
  M = [7,-2,5; 4,9,-3; 6,2,8];
  de = M(1,1) * ((M(2,2)*M(3,3))-(M(2,3)*M(3,2))) - M(1,2)*(M(2,1)*M(3,3)-(M(2,3)*M(3,1))) + M(1,3)*(M(2,1)*M(3,2)-(M(2,2)*M(3,1)));
  disp(de);
  determinant = det(M)
  disp(determinant);
  end
