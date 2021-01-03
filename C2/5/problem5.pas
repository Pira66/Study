program problem5;

const
  N = 30;

var
 a: array [1..N] of integer;
 i, j, min: integer;

begin
  randomize();
  for i := 1 to N do
    a[i] := random(101);   //рандомные числа.

  for i := 1 to N do
    Write(a[i], ' ');
  Writeln();               //вывод рандомных чиел.

  for i := 1 to N - 1 do
    for j := 1 to N - i do
        if a[j] > a[j + 1] then
        begin
          min := a[j];
          a[j] := a[j + 1];
          a[j + 1] := min;
        end;               //сортировка массива по возрастанию.

  for i := 1 to N do
    if a[i] > 20 then break;

  Writeln(a[i]);           //минимальный балл.

end.

