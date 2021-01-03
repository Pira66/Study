program problem4;

const
  N = 31;

var
 A: array[1..N] of integer;
 i, x, y: integer;
 s: real;

begin
  randomize();
  for i := 1 to N do
    a[i] := random (41) - 20;   //рандомные числа.

  for i := 1 to N do
    Write(a[i], ' ');
  Writeln();                    //вывод рандомных чисел.

  x := 0;
  y := 0;
  for i := 1 to N do
    begin
      if a[i] > 0 then
        x := x + a[i];          //x - сумма температур.
        y := y + 1;             //y - кол-во дней с температурой > 0.
    end;

  s := x / y;                   //ср. арифм.

  Writeln (s:0:2);

end.

