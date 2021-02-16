program simple4;//Среда прогр: Lazarus
  //версия: 2.0.10
const
  Lim = 1000;

var
  a: array[1..Lim] of real;
  i, j, n, f, fm, q: integer;
  min, mmin: real;

begin
  //ввод кол-ва элементов и их значений
  readln(n);
  for i := 1 to n do
    readln(a[i]);

  //произведение чисел будет максимальным, если каждое будет > 1(записываем кол-во таких чисел и минимальное среди них)
  f := 0;
  fm := 0;
  q := 0;
  for i := 1 to n do
  begin
    if a[i] > 1 then
    begin
      q += 1;
      if f = 0 then
      begin
        min := a[i];
        f += 1;
      end
      else
      if a[i] < min then
        min := a[i];
    end;
    if (a[i] < 1) and (a[i] > 0) then
      if fm = 0 then
      begin
        mmin := a[i];
        fm += 1;
      end
      else
      if a[i] > mmin then
        mmin := a[i];
  end;

  if q <> 0 then
    Writeln(q, ' ', min: 0: 1)
  else
    Writeln(1, ' ', mmin: 0: 1);
end.

