program problem17;

const
  N = 30;
var
  a: array [1..N] of longint;
  i, j, p: longint;

begin
  //случайные числа.
  randomize();
  for i := 1 to N do
    a[i] := random(101);

  //вывод случайных чисел.
  for i := 1 to N do
    Write(a[i], ' ');
  Writeln();

  //произведение двузначных элементов массива, которые не делятся на 6.
  p := 1;
  for i := 1 to N do
    if (a[i] >= 10) and (a[i] < 100) and (a[i] mod 6 <> 0) then
      p := p * a[i];

  Writeln(p);

end.

