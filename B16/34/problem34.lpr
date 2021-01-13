program problem34;

const
  Lim = 100000000;

var
  n, i: integer;
  cache: array[1..Lim] of int64;

begin
  for i := 1 to 9 do
    cache[i] := i;
  cache[10] := 1;
  cache[11] := 2;
  cache[12] := 3;

  n := 12;
  repeat
    n += 1;
    cache[n] := (n mod 10) + cache[n div 10];
  until cache[n] > 5000000000000;

  Writeln(n, ' ', cache[n]);//но ошибка
end.
