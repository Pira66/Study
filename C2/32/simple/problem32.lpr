program problem32;

const
  N = 10;

var
  a: array [1..N] of integer;
  i, j: integer;//переменные цикла
  min, min2: integer;//прошлый минимум и настоящий
  t: integer;//флаг(первая сумма элементов)
  idxone, idxtwo: integer;//индексы элементов, сумма которых минимальна

begin
  randomize();
  for i := 1 to N do
    a[i] := random(11) - 5;

  for i := 1 to N do
    Write(a[i], ' ');
  Writeln();

  t := 0;
  for i := 1 to N - 1 do
    for j := i + 1 to N do
    begin
      min := a[i] + a[j];
      t += 1;
      if t = 1 then
      begin
        min2 := min;
        idxone := i;
        idxtwo := j;
      end
      else
        if min < min2 then
        begin
          min2 := min;
          idxone := i;
          idxtwo := j;
        end;
    end;

  Writeln(idxone, ' ', idxtwo);

end.

