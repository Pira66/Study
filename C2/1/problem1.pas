program problem1;

const
  N = 20;

var
  a: array [1..N] of integer;
  i, j: integer;

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
  j := a[i];
  for i := 1 to N do
    if (a[i] mod 2 = 0) and (a[i] mod 3 <> 0) then
        if a[i] < j then
          j := a[i];

  //вывод минимального числа, которое не делится на 3.
  Writeln(j);

end.
