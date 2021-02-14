program simple4;//Среда прогр: Lazarus
                //версия: 2.0.10
const
  Lim = 1000;

var
  a: array[1..Lim] of real;
  i, j, n, f, q: integer;
  min: real;

begin
  //ввод кол-ва элементов и их значений
  readln(n);
  for i := 1 to n do
    readln(a[i]);

  //произведение чисел будет максимальным, если каждое будет > 1(записываем кол-во таких чисел и минимальное среди них)
  f := 0;
  q := 0;
  for i := 1 to n do
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

  Writeln(q, ' ', min: 0: 1);

end.

