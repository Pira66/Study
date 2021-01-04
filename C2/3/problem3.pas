program problem3;

const
  N = 30;

var
  A: array[1..N] of integer;
  i, x, y: integer;
  s: real;

begin
  //рандомные числа.
  randomize();
  for i := 1 to N do
    a[i] := random(41) + 160;

  //вывод рандомных чисел.
  for i := 1 to N do
    Write(a[i], ' ');
  Writeln();

  //x - сумма всех игроков(рост).
  //y - кол-во игроков, попавших в команду.
  x := 0;
  y := 0;
  for i := 1 to N do
    if a[i] >= 180 then
    begin
      x := x + a[i];
      y := y + 1;
    end;

  //среднее арифм.
  s := x / y;

  Writeln(s: 0: 2);

end.



