program problem13;

const
  N = 20;

var
  a: array [1..N] of integer;
  i, j, min: integer;

begin
  //случайные числа.
  randomize();
  for i := 1 to N do
    a[i] := random(2001) - 1000;

  //вывод случайных чисел.
  for i := 1 to N do
    Write(a[i], ' ');
  Writeln();

  //минимальное значение из всех нечетных элементов массива, которые делятся на 5.
  min := 1001;
  for i := 1 to N do
    if (a[i] < min) and (a[i] mod 2 <> 0) and (a[i] mod 5 = 0) then
      min := a[i];

  Writeln(min);

end.

