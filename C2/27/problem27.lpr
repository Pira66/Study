program problem27;

const
  N = 10;

var
  a: array[1..N, 1..N] of integer;
  i, j, max, ns, s: integer;

begin
  randomize();
  for i := 1 to N do
  begin
    for j := 1 to N do
      a[i, j] := random(20);
  end;

  for i := 1 to N do
  begin
    for j := 1 to N do
      Write(a[i, j]: 6, ' ');
    Writeln();
  end;
  Writeln();

  max := a[1, 1];
  for i := 1 to N do
  begin
    for j := 1 to N do
      if a[i, j] > max then
        ns := i;
  end;

  s := 0;
  for j := 1 to N do
    s += a[ns, j];

  Writeln(s);

end.

