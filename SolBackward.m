function [x] = SolBackward(U, y)
  solutions = [];
  len = length(U);

  for row = len:-1:1
    counter = 1;
    sum = 0;
    for col = len:-1:row
      if (row == len)
        solutions(1) = y(len)/ U(len, len);
      else
        if (col == row)
          abstraction = y(row) - sum;
          solutions(length(solutions) + 1) = abstraction / U(row, col);
        else
         sum = sum + (U(row, col) * solutions(counter));
        endif
      endif
      counter = counter + 1;
    endfor
  endfor

  solutions = flip(solutions);
  x = solutions(:); %Metatropi se 4x1
end
