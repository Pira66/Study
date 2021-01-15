program problem11;

const
  N = 30;

var
  a: array [1..N] of integer;
  i, min: integer;

begin
  //случайные числа.
  randomize();
  for i := 1 to N do
    a[i] := random(10001);

  //вывод случайных чисел.
  for i := 1 to N do
    Write(a[i], ' ');
  Writeln();

  //минимальное трехзначное число.
  min := 10001;
  for i := 1 to N do
    if (a[i] < min) and (a[i] >= 100) and (a[i] < 1000) then
      min := a[i];

  if min <> 10001 then
    Writeln(min) else
    Writeln('Takih chisel net');

end.

