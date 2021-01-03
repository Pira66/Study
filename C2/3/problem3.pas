program problem3;

const
  N = 30;

var
 A: array[1..N] of integer;
 i, x, y: integer;
 s: real;

begin
  randomize();
  for i := 1 to N do
    a[i] := random(41) + 160;   //рандомные числа.

  for i := 1 to N do
    Write(a[i], ' ');
  Writeln();                    //вывод рандомных чисел.

  x := 0;
  y := 0;
  for i := 1 to N do
    if a[i] >= 180 then
    begin
      x := x + a[i];           //x - сумма всех игроков(рост)
      y := y + 1;              //y - кол-во игроков, попавших в команду
    end;

  s := x / y;                  //среднее арифм.

  Writeln(s:0:2);

end.



