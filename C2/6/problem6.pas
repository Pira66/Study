program problem6;

const
  N = 30;

var
  a: array [1..N] of integer;
  i, j: integer;
  s: real;

begin
  //случайные числа.
  randomize();
  for i := 1 to N do
    a[i] := random(101);

  //вывод случайных чисел.
  for i := 1 to N do
    Write(a[i], ' ');
  Writeln();

  //средний балл.
  for i := 1 to N do
    s += a[i];

  //кол-во учеников, у которых балл выше среднего.
  j := 0;
  for i := 1 to N do
    if a[i] > s / N then
      j := j + 1;

  Writeln(j);

end.


