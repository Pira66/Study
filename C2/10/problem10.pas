program problem10;

const
  N = 30;

var
  a: array [1..N] of integer;
  i, j, max: integer;

begin
  //случайные числа.
  randomize();
  for i := 1 to N do
    a[i] := random(41) - 20;

  //вывод случайных чисел.
  for i := 1 to N do
    Write(a[i], ' ');
  Writeln();

  //максимальная температура во время заморозков.
  max := -21;
  for i := 1 to N do
    if (a[i] > max) and (a[i] < 0) then
      max := a[i];

  Writeln(max);

end.


