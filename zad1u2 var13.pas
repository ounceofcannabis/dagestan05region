program zad1u2var13;
var
  x, result: real;
begin
  writeln('Значения функции на интервале [-8;8] с шагом 0.1:');
  x := -8;
  
  while x <= 8 do
  begin
    if x < -6 then
      result := ln(x) / (-x + power(x, 3))
    else if (x >= -6) and (x < -1) then
      result := power(x, 0.1 * x)
    else if (x >= -1) and (x < 6) then
      result := x * power(x, 1/3) - power(x, 2)
    else
      result := ln(x) * power(x, 1/3);

    writeln('x = ', x:0:1, ', Результат: ', result:0:5);
    x := x + 0.1;
  end;
end.
