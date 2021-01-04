program problem1;

const
  N = 20;

var
  a: array [1..N] of integer;
  i, j, min: integer;

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
  for i := 1 to N do
    if (a[i] mod 2 = 0) and (a[i] mod 3 <> 0) then
      break;
  j := i;
  min := a[i];
  for i := j to N do
    if (a[i] mod 2 = 0) and (a[i] mod 3 <> 0) then
      if a[i] < min then
        min := a[i];

  //вывод минимального чётного числа, которое не делится на 3.
  Writeln(min);

end.
