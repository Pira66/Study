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
    a[i] := random(101) - 50;

  //вывод случайных чисел.
  for i := 1 to N do
    Write(a[i], ' ');
  Writeln();

  //наименьшее содержащееся в массиве положительное число, десятичная запись которого оканчивается цифрой 7.

  j := 0;
  for i := 1 to N do
    if (a[i] mod 10 = 7) and ((j = 0) or (a[i] < m)) then
    begin
      m := a[i];
      j := 1;
    end;

  Writeln(m);

end.
