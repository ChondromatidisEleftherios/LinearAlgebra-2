A = [12, -7, 9, 5; 8,15, -6, 11; 14,9,17,-8; 10, -4, 5, 13];

disp(A);
mhtrwo1 = eye(4);
mhtrwo1(1,1) = 1/A(1,1);
A1 = mhtrwo1 * A;

mhtrwo2 = eye(4);
mhtrwo2(2,1) = -A(2,1);
A2 = mhtrwo2 * A1;

mhtrwo3 = eye(4);
mhtrwo3(3,1) = -A(3,1);
A3 = mhtrwo3 * A2;

mhtrwo4 = eye(4);
mhtrwo4(4,1) = -A(4,1);
A4 = mhtrwo4 * A3;

disp("Custom Method: ");
disp(A4);

disp("Rref method: ");
disp(rref(A));

mhtrwo5 = eye(4);
mhtrwo5(2,2) = 1/A4(2,2);
A5 = mhtrwo5 * A4;

disp(A5);

mhtrwo6 = eye(4);
mhtrwo6(3,2) = -A4(3,2);
A6 = mhtrwo6 * A5;

disp(A6);

mhtrwo7 = eye(4);
mhtrwo7(4,2) = -A4(4,2);
A7 = mhtrwo7 * A6;

disp(A7);

%p

mhtrwo8 = eye(4);
mhtrwo8(3,3) = 1/A7(3,3);
A8 = mhtrwo8 * A7;

mhtrwo9 = eye(4);
mhtrwo9(4,3) = -A7(4,3);
A9 = mhtrwo9 * A8;

disp(A9);

mhtrwo10 = eye(4);
mhtrwo10(4,4) = 1/A9(4,4);
A10 = mhtrwo10 * A9;

disp(A10);

%Panw
mhtrwo11 = eye(4);
mhtrwo11(3,4) = -A10(3,4);
A11 = mhtrwo11 * A10;
disp(A11);

mhtrwo12 = eye(4);
mhtrwo12(2,4) = -A10(2,4);
A12 = mhtrwo12 * A11;
disp(A12);

mhtrwo13 = eye(4);
mhtrwo13(1,4) = -A10(1,4);
A13 = mhtrwo13 * A12;
disp(A13);

%
mhtrwo14 = eye(4);
mhtrwo14(2,3) = -A13(2,3);
A14 = mhtrwo14 * A13;
disp(mhtrwo14);
disp(A14);

mhtrwo15 = eye(4);
mhtrwo15(1,3) = -A13(1,3);
A15 = mhtrwo15 * A14;
disp(mhtrwo15);
disp(A15);

%
mhtrwo16 = eye(4);
mhtrwo16(1,2) = -A13(1,2);
A16 = mhtrwo16 * A15;
disp(mhtrwo16);
disp(A16);

disp("Telikos Pinakas: ");
disp(A16);

disp("rref");
disp(rref(A));

disp("inverse");
disp(inv(A)); %Na to kanw me dianysmata kai augmented matrix


