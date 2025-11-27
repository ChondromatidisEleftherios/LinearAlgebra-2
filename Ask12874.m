function Ask12874 ()
  A = [12, -7, 9, 5; 8,15, -6, 11; 14,9,17,-8; 10, -4, 5, 13];
  [L, U, P] = calculateLU(A);
  disp("L:");
  disp(L);
  disp("U:");
  disp(U);
  %Gia ton b1
  b1 = [25; -14; 33; 9];
  pivoted = P*b1;
  [y] = SolForward(L, pivoted);
  [x] = SolBackward(U, y); %Pername th lysh tou solForward ws orisma sthn solBackward
  disp("Custom SolFoward Function (b1): ");
  disp(y);
  disp("Built-in Backslash Operator (b1): ");
  disp(L\pivoted);
  disp("Custom SolBackward Function (b1): ");
  disp(x);
  disp("Built-in Backslash Operator (b1): ");
  disp(U\y);
  %Gia ton b2
  b2 = [10; 5; -20; 15];
  pivoted = P*b2;
  [y] = SolForward(L, pivoted);
  [x] = SolBackward(U, y); %Pername th lysh tou solForward ws orisma sthn solBackward
  disp("Custom SolFoward Function (b2): ");
  disp(y);
  disp("Built-in Backslash Operator (b2): ");
  disp(L\pivoted);
  disp("Custom SolBackward Function (b2): ");
  disp(x);
  disp("Built-in Backslash Operator (b2): ");
  disp(U\y);
  end
