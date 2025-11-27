function Ask32874B ()
  C = [3,1; 0,2];
  theta = linspace(0, 2*pi, 20);
  V = [cos(theta); sin(theta)];
  disp(V);


  V_trans = C * V;
  coeffs = analytical_char_poly(C);
  lambda_vals = roots(double(coeffs));
  lambda1 = lambda_vals(1);
  lambda2 = lambda_vals(2);
  disp(lambda1);
  disp(lambda2);
  eig_vec1 = find_eigenvectors(C, lambda1);
  eig_vec2 = find_eigenvectors(C, lambda2);
  disp(eig_vec1);
  disp(eig_vec2);

  figure;
  plot(V(1,:), V(2,:), 'bo-'); hold on;
  plot(V_trans(1,:), V_trans(2,:), 'ro-');
  quiver(0,0,eig_vec1(1),eig_vec1(2),1.5,'g','LineWidth',4);
  quiver(0,0,eig_vec2(1),eig_vec2(2),1.5,'m','LineWidth',4);
  axis equal; grid on;
  legend('Αρχικός κύκλος','Μετασχηματισμένα διανύσματα','Ιδιοδιανύσματα');
  title('Οπτικοποίηση ιδιοτιμών και ιδιοδιανυσμάτων του πίνακα C');
end
