program problem4;

const
  N = 31;

var
  A: array[1..N] of integer;
  i, x, y: integer;
  s: real;

begin
  //рандомные числа.
  randomize();
  for i := 1 to N do
    a[i] := random(41) - 20;

  //вывод рандомных чисел.
  for i := 1 to N do
    Write(a[i], ' ');
  Writeln();

  //x - сумма температур.
  //y - кол-во дней с температурой > 0.
  x := 0;
  y := 0;
  for i := 1 to N do
  begin
    if a[i] > 0 then
      x := x + a[i];
    y := y + 1;
  end;

  //ср. арифм.
  s := x / y;

  Writeln(s: 0: 2);

end.

