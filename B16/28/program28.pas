program program28;

const Lim = 100000000;

var
  n: integer;
  cache: array[1..Lim] of int64;

begin
  cache[1] := 3;
  cache[2] := 3;
  cache[3] := 10;
  cache[4] := 24;

  n := 4;
  repeat
    n += 1;
    cache[n] := (5 * n - 7) + cache[n - 1] + cache[n - 4];
  until cache[n] > 5000000000000;

  Writeln(n, ' ', cache[n]);
end.
