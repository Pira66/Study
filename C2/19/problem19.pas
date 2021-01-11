program problem19;

const
  N = 70;

var
  a: array [1..N] of integer;
  i, j, m: integer;

begin
  //случайные числа.
  randomize();
  for i := 1 to N do
    a[i] := random(65536) - 32767;

  //вывод случайных чисел.
  for i := 1 to N do
    Write(a[i], ' ');
  Writeln();

  //наименьшее содержащееся в массиве положительное число, десятичная запись которого оканчивается цифрой 7.
  m := 32768;
  for i := 1 to N do
    if (a[i] < m) and (a[i] mod 10 = 7) then
      m := a[i];

  Writeln(m);

end.
