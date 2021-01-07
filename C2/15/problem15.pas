program problem15;

const
  N = 30;

var
  a: array [1..N] of integer;
  i, j, s: integer;

begin
  //случайные числа.
  randomize();
  for i := 1 to N do
    a[i] := random(1001);

  //вывод сулчайных чисел.
  for i := 1 to N do
    Write(a[i], ' ');
  Writeln();

  //среднее арифметическое нечётных трехзначных чисел.
  s := 0;
  j := 0;
  for i := 1 to N do
    if (a[i] div 1000 = 0) and (a[i] >= 100) and (a[i] mod 2 <> 0) then
    begin
      s += a[i];
      j += 1;
    end;

  if j <> 0 then
    Writeln((s / j):0 :2) else
    Writeln('Takih znacheniy net');

end.

