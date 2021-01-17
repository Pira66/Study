program problem29;

const
  N = 30;
var
  a: array [1..N] of integer;
  i, k, max, max2: integer;

begin
  randomize();
  for i := 1 to N do
    a[i] := random(65535) - 32767;

  for i := 1 to N do
    Write(a[i], ' ');
  Writeln();

  //второй максимум массива.
  max := a[1];
  for i := 1 to N do
    if a[i] > max then
      max := a[i];
  max2 := a[1];
  for i := 2 to N do
    if (a[i] < max) and (a[i] > max2) then
       max2 := a[i];

  Writeln(max2);

end.

