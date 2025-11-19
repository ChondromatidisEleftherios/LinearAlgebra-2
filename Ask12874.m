function Ask12874 ()
  A = [12, -7, 9, 5; 8,15, -6, 11; 14,9,17,-8; 10, -4, 5, 13];
  [L,U, P] = calculateLU(A);
  disp("L:");
  disp(L);
  disp("U:");
  disp(U);
  b1 = [25; -14; 33; 9];
  b2 = [10; 5; -20; 15];
  [x] = SolBackward(U, b1);
  disp(x);
  disp(U\b1);
  PL = P*b1;
  [y] = SolForward(L, PL);
   disp(L\PL);
   disp(y);
  end
