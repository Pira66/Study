program problem2;

const
  N = 30;

var
  a: array[1..N] of integer;
  i, x, y: integer;
  s: real;

begin
  randomize();
  for i := 1 to N do
    a[i] := random(101);   //рандомные числа.

  for i := 1 to N do
    Write(a[i], ' ');
  Writeln();               //вывод рандомных чисел.

  x := 0;
  y := 0;
  for i := 1 to N do
  begin
    if a[i] > 20 then
      x := x + a[i];       //x - сумма чисел > 20.
      y := y + 1;          //y - кол-во чисел > 20.
  end;

  s := x / y;              //s - среднее арифм.

  Writeln(s:0:2);          //вывод ср.аримф. до сотых.

end.


