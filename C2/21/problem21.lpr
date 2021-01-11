program problem21;

const
  N = 30;

var
  a:array[1..N] of integer;
  i, max, j, k: integer;

begin
  randomize();
  for i := 1 to N do
    a[i] := random(65535) - 32767;

  for i := 1 to N do
    Write(a[i], ' ');
  Writeln();

  max := -32769;
  for i := 1 to N do
    if a[i] > max then
    begin
      max := a[i];
      j := i;
    end;

  k := 0;
  for i := j + 1 to N do
    if a[i] = max then
      k += 1;

  Writeln(k);

end.


