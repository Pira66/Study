program simple6;

const
  Lim = 10000;

var
  a: array[1..Lim] of integer;
  n, min, i, j: integer;

begin
  readln(n);
  for i := 1 to n do
    readln(a[i]);

  min := a[1] + a[5];
  for i := 1 to n - 1 do
    for j := i + 1 to n do
      if j - i >= 4 then
        if a[i] + a[j] < min then
          min := a[i] + a[j];

  Writeln(min);

end.

