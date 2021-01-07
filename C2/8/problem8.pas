program problem8;

const
  N = 30;

var
  a: array [1..N] of integer;
  i, x, y: integer;
  s: real;

begin
  //случайные числа.
  randomize();
  for i := 1 to N do
    a[i] := random(2001) - 1000;

  //вывод случайных чисел
  for i := 1 to N do
    Write(a[i], ' ');
  Writeln();

  //сумма модулей и кол-во чисел, которые оканчиваются на 5
  x := 0;
  y := 0;
  for i := 1 to N do
    if (a[i] mod 10 = 5) or (a[i] mod 100 = 5) or (a[i] mod 1000 = 5) or
      (a[i] mod 10000 = 5) or (a[i] mod 10 = -5) or (a[i] mod 100 = -5) or
      (a[i] mod 1000 = -5) or (a[i] mod 10000 = -5) then
    begin
      x += abs(a[i]);
      y += 1;
    end;

  s := x / y;

  Writeln(s: 0: 2);
end.



