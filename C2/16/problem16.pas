program problem16;

const
  N = 30;
var
  a: array [1..N] of longint;
  i, p: longint;

begin
  //случайные числа.
  randomize();
  for i := 1 to N do
    a[i] := random(101);

  //вывод случайных чисел.
  for i := 1 to N do
    Write(a[i], ' ');
  Writeln();

  //произведение элементов массива, которые имеют чётное значение и не оканчиваются на 0.
  p := 1;
  for i := 1 to N do
    if (a[i] mod 2 = 0) and (a[i] mod 10 <> 0) then
      p := p * a[i];

  Writeln(p);

end.

