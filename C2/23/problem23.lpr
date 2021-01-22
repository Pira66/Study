program problem23;

const
  N = 10;

var
  a: array[1..N, 1..N] of integer;
  i, j, s, k: integer;

begin
  randomize();
  for i:= 1 to N do
  begin
    for j:= 1 to N do
      a[i, j] := random(101) - 50;
  end;

  for i := 1 to N do
  begin
    for j := 1 to N do
      Write(a[i, j]:6, ' ');
    Writeln()
  end;
  Writeln();

  s := 0;
  for i := 1 to N do
    s += a[i, i];

  k := 0;
  for i := 1 to N do
  begin
    for j := 1 to N do
      if (a[i, j] > 0) and (a[i, j] * N > s) then
        k += 1;
  end;

  Writeln(k);

end.
