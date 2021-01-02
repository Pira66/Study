program problem1;

const N=20;

var
 a: array [1..N] of integer;
 i, j, min: integer;

begin
  randomize();
  for i := 1 to N do
    a[i] := random(1001);//рандомные числа.

  for i := 1 to N do
    Write(a[i], ' ');
  Writeln();             //вывод рандомных чисел.

  for i := 1 to N - 1 do
    for j := 1 to N - i do
      if (a[j] > a[j + 1]) then
        begin
           min := a[j];
           a[j] := a[j + 1];
           a[j + 1] := min;
         end;            //сортировка массива по возрастанию.

for i := 1 to 20 do
    if (a[i] mod 2 = 0) and (a[i] mod 3 <> 0) then break;
  Writeln(a[i]);         //минимальное чётное число, которое не делится на 3.

end.

