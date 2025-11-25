function Ask32874 ()
B = [4 1 -2; 1 3 0; -2 0 5];

coeffs = analytical_char_poly(B);
disp(coeffs);
lambda_vals = roots(double(coeffs));
for k = 1:length(lambda_vals)
    lambda = lambda_vals(k);
    V = find_eigenvectors(B, lambda);
    disp("Ιδιοδιανύσματα για λ =");
    disp (lambda);
    disp(V);
endfor
disp("Comparing the results with the built-in eig function: ");
[test,test2] = eig(B);
[test,test2] = eig(B);
disp(test);
%disp(test2);
end
