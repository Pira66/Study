program simple;

Uses
  Math;

const
  Lim = 1000;

var
  a: array[1..Lim] of integer;
  n, i, j, s, m, em, f: integer;

begin
  readln(n);
  for i := 1 to n do
    readln(a[i]);

  m := a[1] + a[2];
  for i := 1 to N - 1 do
    for j := i + 1 to N do
    begin
      s := a[i] + a[j];
      m := min(m, s);
      if (s mod 2 = 0) and ((s < em) or (f = 0)) then
      begin
        f := 1;
        em := s;
      end;
    end;

  if f = 1 then
    Writeln(em)
  else
    Writeln(m);

end.

