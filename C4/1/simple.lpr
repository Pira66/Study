program simple;

const
  LIM = 1000;                   //предельное значение n

var
  x: array[1..LIM] of integer;  //абсциссы точек
  y: array[1..LIM] of integer;  //ординаты точек
  i, j, k, n: integer;
  a, b, c, P, S, maxS: real;

begin
  assign(input, 'tests\01');
  reset(input);

  readln(n);
  for i := 1 to n do
    readln(x[i], y[i]);

  maxS := 0;
  for i := 1 to n - 2 do
    for j := i + 1 to n - 1 do
      for k := j + 1 to n do
        begin
          if ((y[i] = 0) and (y[j] = 0)) or ((y[j] = 0) and (y[k] = 0)) or ((y[k] = 0) and (y[i] = 0)) then
            if ((x[i] = 0) and (y[i] <> 0)) or ((x[j] = 0) and (y[j] <> 0)) or ((x[k] = 0) and (y[k] <> 0)) then
              continue
            else
            begin
              a := sqrt(sqr(x[i] - x[j]) + sqr(y[i] - y[j]));
              b := sqrt(sqr(x[j] - x[k]) + sqr(y[j] - y[k]));
              c := sqrt(sqr(x[k] - x[i]) + sqr(y[k] - y[i]));
              if (a < b + c) and (b < a + c) and (c < a + b) then
              begin
                P := (a + b + c) / 2;
                S := sqrt(P * (P - a) * (P - b) * (P - c));
                if (maxS = 0) or (S > maxS) then
                  maxS := S;
              end;
            end;
        end;

  Writeln(maxS: 0: 2);

end.

