program problem12;

const
  N = 40;

var
  a: array [1..N] of integer;
  i,x,y: integer;
  s: real;

begin
  //случайные числа.
  randomize();
  for i := 1 to N do
    a[i] := random (1001) - 500;

  //вывод случайных чисел.
  for i := 1 to N do
    Write(a[i], ' ');
  Writeln();

  //все положительные элементы массива, которые кратны первому элементу.
  x := 0;
  y := 0;
  for i := 1 to N do
    if (a[i] >= 0) and (a[i] mod a[1] = 0) then
    begin
      x += a[i];
      y += 1;
    end;

  s := x / y;

  Writeln(s: 0: 2);

end.

