program problem21othreshenie;

const
  N = 30;

var
  a: array[1..2] of integer;
  i, max, k, kanmax: integer;

begin
  readln(a[1]);
  max := a[1];
  k := 1;

  for i := 2 to N do
  begin
    readln(a[2]);
    kanmax := a[2];
    if (kanmax > max) then
    begin
      k := 0;
      max := kanmax;
    end;
    if kanmax = max then
      k += 1;
  end;

  Writeln(k);

end.
