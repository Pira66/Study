program problem7;

const
  N = 30;

var
  a: array [1..N] of integer;
  i, x: integer;

begin
  //случайные числа в диапазоне от -32768 до 32767.
  randomize();
  for i := 1 to N do
    a[i] := random(65535) - 32768;

  //вывод случайных чисел.
  for i := 1 to N do
    Write(a[i], ' ');
  Writeln();

  readln(x);

  //поиск числа, равного значению x.
  i := N;
  while (x <> a[i]) and (i > 1) do
    i := i - 1;

  if a[i] = x then
    Writeln(i)
  else
    Writeln('Znachenie ne naideno');

end.

