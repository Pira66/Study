program problem6;


const
  N=30;

var
 a: array [1..N] of integer;
 i, j: integer;
 s: real;

begin
  randomize();
  for i := 1 to N do
    a[i] := random(101);   //рандомные числа.

  for i := 1 to N do
    Write(a[i], ' ');
  Writeln();               //вывод рандомных чисел.

  for i := 1 to N do
    j += a[i];

  s := j / N;              //средний балл.

  j := 0;
  for i := 1 to N do
    if a[i] > s then
      j := j + 1;

  Writeln(j);              //кол-во учеников, у которых балл выше среднего.

end.


