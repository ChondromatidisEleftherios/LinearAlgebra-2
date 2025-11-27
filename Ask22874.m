function Ask22874()
A = [12, -7, 9, 5; 8,15, -6, 11; 14,9,17,-8; 10, -4, 5, 13];
disp("Starting Matrix A:");
disp(A);

disp("---Calculating the RREF of A---");
disp("\n");
mhtrwo1 = eye(4);
mhtrwo1(1,1) = 1/A(1,1);
A1 = mhtrwo1 * A;
disp("Modified Matrix A1:");
disp(A1);
disp("Elementary Matrix 1:");
disp(mhtrwo1);

mhtrwo2 = eye(4);
mhtrwo2(2,1) = -A(2,1);
A2 = mhtrwo2 * A1;
disp("Modified Matrix A2:");
disp(A2);
disp("Elementary Matrix 2:");
disp(mhtrwo2);

mhtrwo3 = eye(4);
mhtrwo3(3,1) = -A(3,1);
A3 = mhtrwo3 * A2;
disp("Modified Matrix A3:");
disp(A3);
disp("Elementary Matrix 3:");
disp(mhtrwo3);

mhtrwo4 = eye(4);
mhtrwo4(4,1) = -A(4,1);
A4 = mhtrwo4 * A3;
disp("Modified Matrix A4:");
disp(A4);
disp("Elementary Matrix 4:");
disp(mhtrwo4);

mhtrwo5 = eye(4);
mhtrwo5(2,2) = 1/A4(2,2);
A5 = mhtrwo5 * A4;
disp("Modified Matrix A5:");
disp(A5);
disp("Elementary Matrix 5:");
disp(mhtrwo5);

mhtrwo6 = eye(4);
mhtrwo6(3,2) = -A4(3,2);
A6 = mhtrwo6 * A5;
disp("Modified Matrix A6:");
disp(A6);
disp("Elementary Matrix 6:");
disp(mhtrwo6);

mhtrwo7 = eye(4);
mhtrwo7(4,2) = -A4(4,2);
A7 = mhtrwo7 * A6;
disp("Modified Matrix A7:");
disp(A7);
disp("Elementary Matrix 7:");
disp(mhtrwo7);

mhtrwo8 = eye(4);
mhtrwo8(3,3) = 1/A7(3,3);
A8 = mhtrwo8 * A7;
disp("Modified Matrix A8:");
disp(A8);
disp("Elementary Matrix 8:");
disp(mhtrwo8);

mhtrwo9 = eye(4);
mhtrwo9(4,3) = -A7(4,3);
A9 = mhtrwo9 * A8;
disp("Modified Matrix A9:");
disp(A9);
disp("Elementary Matrix 9:");
disp(mhtrwo9);

mhtrwo10 = eye(4);
mhtrwo10(4,4) = 1/A9(4,4);
A10 = mhtrwo10 * A9;
disp("Modified Matrix A10:");
disp(A10);
disp("Elementary Matrix 10:");
disp(mhtrwo10);

%Prepei na mhdenistoun kai ta stoixeia PANW apo ta pivots

mhtrwo11 = eye(4);
mhtrwo11(3,4) = -A10(3,4);
A11 = mhtrwo11 * A10;
disp("Modified Matrix A11:");
disp(A11);
disp("Elementary Matrix 11:");
disp(mhtrwo11);

mhtrwo12 = eye(4);
mhtrwo12(2,4) = -A10(2,4);
A12 = mhtrwo12 * A11;
disp("Modified Matrix A12:");
disp(A12);
disp("Elementary Matrix 12:");
disp(mhtrwo12);

mhtrwo13 = eye(4);
mhtrwo13(1,4) = -A10(1,4);
A13 = mhtrwo13 * A12;
disp("Modified Matrix A13:");
disp(A13);
disp("Elementary Matrix 13:");
disp(mhtrwo13);

mhtrwo14 = eye(4);
mhtrwo14(2,3) = -A13(2,3);
A14 = mhtrwo14 * A13;
disp("Modified Matrix A14:");
disp(A14);
disp("Elementary Matrix 14:");
disp(mhtrwo14);

mhtrwo15 = eye(4);
mhtrwo15(1,3) = -A13(1,3);
A15 = mhtrwo15 * A14;
disp("Modified Matrix A15:");
disp(A15);
disp("Elementary Matrix 15:");
disp(mhtrwo15);

mhtrwo16 = eye(4);
mhtrwo16(1,2) = -A13(1,2);
A16 = mhtrwo16 * A15;
disp("Elementary Matrix 16:");
disp(mhtrwo16);

disp("Final RREF Matrix A (custom method): ");
disp(A16);

disp("Final RREF Matrix A (built-in rref() function)");
disp(rref(A));
disp("\n");
%------------------------------------------------------
%ANTISTROFOS
disp("---Calculating the Inversed A---");

kmhtrwo = eye(4);

disp("To calculate the inverse, we are doing the opposite of the previous code");
disp("Multiply the last Elementary Matrix from before with a new Elementary Matrix and go like that for the rest");
disp("\n");
disp("Starting (new) Elementary Matrix:");
disp(kmhtrwo);

kmhtrwo1 = kmhtrwo * mhtrwo16;
disp("Modified Elementary Matrix: ");
disp(kmhtrwo1);
disp("Multiplied with Elementary Matrix 16 from before: ");
disp(mhtrwo16);

kmhtrwo2 = kmhtrwo1 * mhtrwo15;
disp("Modified Elementary Matrix: ");
disp(kmhtrwo2);
disp("Multiplied with Elementary Matrix 15 from before: ");
disp(mhtrwo15);

kmhtrwo3 = kmhtrwo2 * mhtrwo14;
disp("Modified Elementary Matrix: ");
disp(kmhtrwo3);
disp("Multiplied with Elementary Matrix 14 from before: ");
disp(mhtrwo14);

kmhtrwo4 = kmhtrwo3 * mhtrwo13;
disp("Modified Elementary Matrix: ");
disp(kmhtrwo4);
disp("Multiplied with Elementary Matrix 13 from before: ");
disp(mhtrwo13);

kmhtrwo5 = kmhtrwo4 * mhtrwo12;
disp("Modified Elementary Matrix: ");
disp(kmhtrwo5);
disp("Multiplied with Elementary Matrix 12 from before: ");
disp(mhtrwo12);

kmhtrwo6 = kmhtrwo5 * mhtrwo11;
disp("Modified Elementary Matrix: ");
disp(kmhtrwo6);
disp("Multiplied with Elementary Matrix 11 from before: ");
disp(mhtrwo11);

kmhtrwo7 = kmhtrwo6 * mhtrwo10;
disp("Modified Elementary Matrix: ");
disp(kmhtrwo7);
disp("Multiplied with Elementary Matrix 10 from before: ");
disp(mhtrwo10);

kmhtrwo8 = kmhtrwo7 * mhtrwo9;
disp("Modified Elementary Matrix: ");
disp(kmhtrwo8);
disp("Multiplied with Elementary Matrix 9 from before: ");
disp(mhtrwo9);

kmhtrwo9 = kmhtrwo8 * mhtrwo8;
disp("Modified Elementary Matrix: ");
disp(kmhtrwo9);
disp("Multiplied with Elementary Matrix 8 from before: ");
disp(mhtrwo8);

kmhtrwo10 = kmhtrwo9 * mhtrwo7;
disp("Modified Elementary Matrix: ");
disp(kmhtrwo10);
disp("Multiplied with Elementary Matrix 7 from before: ");
disp(mhtrwo7);

kmhtrwo11 = kmhtrwo10 * mhtrwo6;
disp("Modified Elementary Matrix: ");
disp(kmhtrwo11);
disp("Multiplied with Elementary Matrix 6 from before: ");
disp(mhtrwo6);

kmhtrwo12 = kmhtrwo11 * mhtrwo5;
disp("Modified Elementary Matrix: ");
disp(kmhtrwo12);
disp("Multiplied with Elementary Matrix 5 from before: ");
disp(mhtrwo5);

kmhtrwo13 = kmhtrwo12 * mhtrwo4;
disp("Modified Elementary Matrix: ");
disp(kmhtrwo13);
disp("Multiplied with Elementary Matrix 4 from before: ");
disp(mhtrwo4);

kmhtrwo14 = kmhtrwo13 * mhtrwo3;
disp("Modified Elementary Matrix: ");
disp(kmhtrwo14);
disp("Multiplied with Elementary Matrix 3 from before: ");
disp(mhtrwo3);

kmhtrwo15 = kmhtrwo14 * mhtrwo2;
disp("Modified Elementary Matrix: ");
disp(kmhtrwo15);
disp("Multiplied with Elementary Matrix 2 from before: ");
disp(mhtrwo2);

kmhtrwo16 = kmhtrwo15 * mhtrwo1;
disp("Multiplied with Elementary Matrix 1 from before: ");
disp(mhtrwo1);

disp("Final Inversed Matrix (custom method): ");
disp(kmhtrwo16);

disp("Final Inversed Matrix (built-in inv() function): ");
disp(inv(A)); %Antistrofh tou arxikou pinaka A pou dothike

end
