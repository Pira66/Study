program problem18;

const
  N = 70;
var
  a: array [1..N] of integer;
  i, m, j: integer;

begin
  //случайные числа.
  randomize();
  for i := 1 to N do
    a[i] := random(65536) - 32767;

  //вывод случайных чисел.
  for i := 1 to N do
    Write(a[i], ' ');
  Writeln();



  //наименьшее положительное нечетное число, содержащееся в массиве.
  for i := 1 to N do
    if (a[i] > 0 ) and (a[i] mod 2 <> 0) then
    begin
      m := a[i];
      j := i;
      break;
    end;

  for i := j to N do
    if (a[i] > 0) and (a[i] < m) and (a[i] mod 2 <> 0) then
      m := a[i];

  Writeln(m);


end.

