program problem1;

const
  N = 20;

var
  a: array [1..N] of integer;
  i, min: integer;

begin
  //случайные числа.
  randomize();
  for i := 1 to N do
    a[i] := random(1001);

  //вывод случайных чисел.
  for i := 1 to N do
    Write(a[i], ' ');
  Writeln();

  //минимальное чётное число, которое не делится на 3.
  min := 1001;
  while min > 0 do
    if a[i] < min then
      min := a[i];

  //вывод минимального чётного числа, которое не делится на 3.
  Writeln(min);

end.
