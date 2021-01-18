program problem38;

const
  N = 30;

var
  a: array [1..N] of integer;
  i, k, kMax: integer;

begin
  randomize();
  for i := 1 to N do
    a[i] := random(65535) - 32767;

  for i := 1 to N do
    Write(a[i], ' ');
  Writeln();

  k := 0;
  kmax := 0;
  for i := 1 to N do
  begin
    if a[i] < 0 then
      k += 1;
    if a[i] >= 0 then
    begin
      if k > kmax then
        kmax := k;
      k := 0;
    end;
  end;

  Writeln(kmax);

end.

