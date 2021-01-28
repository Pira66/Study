program problem34fixed;

const
  Lim = 100000000;

var
  n: integer;
  cach: array[1..Lim] of int64;

begin
  cach[1] := 0;

  n := 0;
  repeat
    n += 1;
    cach[n] := n mod 10 + cach[n div 10];
  until n div 10 > 51;

  Writeln(n,' ',cach[n]);

end.

