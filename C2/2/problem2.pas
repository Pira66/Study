program problem2;

const
  N = 30;

var
  a: array[1..N] of integer;
  i, x, y: integer;
  s: real;

begin
  //случайные числа.
  randomize();
  for i := 1 to N do
    a[i] := random(101);

  //вывод случайных чисел.
  for i := 1 to N do
    Write(a[i], ' ');
  Writeln();

  //x - сумма чисел > 20.
  //y - кол-во чисел > 20.
  x := 0;
  y := 0;
  for i := 1 to N do
  begin
    if a[i] > 20 then
      x := x + a[i];
      y := y + 1;
  end;

  //s - среднее арифм.
  s := x / y;

  //вывод ср.аримф. до сотых.
  Writeln(s:0:2);

end.


