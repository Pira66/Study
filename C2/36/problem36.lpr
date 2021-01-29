program problem36;

const
  N = 30;
var
  a: array [1..N] of integer;
  i, k, kmax: integer;

begin
  randomize();
  for i := 1 to N do
    a[i] := random(101) - 50;

  //для теста.
  a[23] := -3;
  a[24] := -3;

  for i := 1 to N do
    Write(a[i], ' ');
  Writeln();

  k := 1;
  kmax := 0;
  for i := 2 to N do
  begin
    if a[i] = a[i - 1] then
      k += 1;
    if a[i] <> a[i - 1] then
    begin
      if k > kmax then
        kmax := k;
      k := 1;
    end;
  end;

  if kmax = 1 then
    Writeln('Sovpodaushih elementov net')
  else
    Writeln(kmax);

end.

