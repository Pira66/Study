program problem5;

const
  N = 30;

var
  a: array [1..N] of integer;
  i, j, min: integer;

begin
  //случайные числа.
  randomize();
  for i := 1 to N do
    a[i] := random(101);

  //вывод случайных чисел.
  for i := 1 to N do
    Write(a[i], ' ');
  Writeln();

  //минимальный проходной балл.
  for i := 1 to N do
    if a[i] > 20 then
      break;
  min := a[i];
  j := i;
  for i := j to N do
    if a[i] > 20 then
      if a[i] < min then
        min := a[i];

  Writeln(min);

end.
