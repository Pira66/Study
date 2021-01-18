program problem31;

Uses
  Math;

const
  N = 30;

var
  a: array[1..N] of integer;
  i, maximum, k: integer;

begin
  randomize();
  for i := 1 to N do
    a[i] := random(65535) - 32767;

  for i := 1 to N do
    Write(a[i], ' ');
  Writeln();

  maximum := a[1] + a[2];
  k := 1;
  for i := 3 to N do
    if a[i] + a[i - 1] > maximum then
    begin
      maximum := a[i] + a[i - 1];
      k := i - 1;
    end;

  Writeln(k);

end.
