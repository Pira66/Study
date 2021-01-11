program problem3;

const
  N = 30;

var
  A: array[1..N] of integer;
  i, x: integer;

begin
  //случайные числа.
  randomize();
  for i := 1 to N do
    a[i] := random(41) + 160;

  //вывод случайных чисел.
  for i := 1 to N do
    Write(a[i], ' ');
  Writeln();

  //самый низкий игрок баскетбольной команды.
  x := 201;
  for i := 1 to N do
    if (a[i] >= 180) and (a[i] < x) then
      x := a[i];

  Writeln(x);

end.



