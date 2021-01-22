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
    a[i] := random(101) - 50;

  //вывод случайных чисел.
  for i := 1 to N do
    Write(a[i], ' ');
  Writeln();

  j := 0;
  for i := 1 to N do
    if (a[i] > 0) and (a[i] mod 2 <> 0) and ((j = 0) or (a[i] < m)) then
    begin
      m := a[i];
      j := 1;
    end;

  Writeln(m);

end.

