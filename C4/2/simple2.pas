program simple2;

const
  Lim = 1000;

var
  a: array[1..Lim] of integer;
  n, i, j, min, chmin, f: integer;

begin
  readln(n);
  for i := 1 to n do
    readln(a[i]);

  f := 0;
  min := -1;
  for i := 1 to N - 1 do
    for j := i + 1 to N do
    begin
      if (a[i] + a[j] < min) or (min = -1) then
        min := a[i] + a[j];
      if ((a[i] + a[j]) mod 2 = 0) then
      begin
        if f = 0 then
        begin
          chmin := a[i] + a[j];
          f += 1;
        end
        else
          if a[i] + a[j] < chmin then
            chmin := a[i] + a[j];
      end;
    end;

  if f <> 0 then
    Writeln(chmin)
  else
    Writeln(min);

end.

