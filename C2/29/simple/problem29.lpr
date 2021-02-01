program problem29;

const
  N = 5;
var
  a: array [1..N] of integer;
  i, k, max, max2: integer;

begin
  for i := 1 to N do
    read(a[i]);

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
    if (max2 = max) or ((a[i] < max) and (a[i] > max2)) then
       max2 := a[i];

  Writeln(max2);

end.

