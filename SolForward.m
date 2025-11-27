function [y] = SolForward(L, b)
  counter = 1;
  solutions = [];
  len = length(L);

  for row = 1:1:len
    counter = 1;
    sum = 0;
    for col = 1:1:row

      if (row == 1)
        solutions(1) = b(1)/ L(row, col);

      else
        if (col == row)
          abstraction = b(row) - sum;
          solutions(length(solutions) + 1) = abstraction / L(row, col);
        else
         sum = sum + (L(row, col) * solutions(counter));
        endif
      endif
      counter = counter + 1;
    endfor
  endfor

  y = solutions(:); %Metatropi se 4x1
end
