program problem14;

const N = 30;

var
  a: array [1..N] of integer;
  i, s: integer;

begin
  //случайные числа.
  randomize();
  for i := 1 to N do
    a[i] := random(1001);

  //вывод случайных чисел.
  for i := 1 to N do
    Write(a[i], ' ');
  Writeln();

  //сумма элементов массива, кратных тринадцати.
  s := 0;
  for i := 1 to N do
    if a[i] mod 13 = 0 then
      s += a[i];

  Writeln(s);

end.

