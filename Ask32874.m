function Ask32874 ()
B = [4 1 -2; 1 3 0; -2 0 5];

coeffs = analytical_char_poly(B);
disp(coeffs);
lambda_vals = roots(double(coeffs));
for iter = 1:length(lambda_vals)
    lambda = lambda_vals(iter);
    mat = find_eigenvectors(B, lambda);
    disp("Eigen Vector for lambda: ");
    disp(lambda);
    disp("\n");
    disp(mat);
    disp("\n");
endfor
disp("Comparing the results with the built-in eig function: ");
[test,test2] = eig(B);
disp(test);
end
