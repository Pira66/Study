program problem7;

const
  N = 30;

var
  a: array [1..N] of integer;
  i, j, x: integer;

begin
  //случайные числа в диапазоне от -32768 до 32767.
  for i := 1 to N do
    a[i] := random(65535) - 32768;

  //вывод случайных чисел.
  for i := 1 to N do
    Write(a[i], ' ');
  Writeln();

  readln(x);

  //если заданное число есть в массиве, то j примет значение 1.
  j := 0;
  for i := 1 to N do
    if a[i] = x then
    begin
      j := j + 1;
      break;
    end;

  if j = 1 then
    Writeln(i)
  else
    Writeln('The value is not found');

end.


