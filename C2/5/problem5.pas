program problem5;

const
  N = 30;

var
  a: array [1..N] of integer;
  i, j: integer;

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
  j := a[i];
  for i := 1 to N do
    if a[i] > 20 then
      if a[i] < j then
        j := a[i];

  Writeln(j);

end.
