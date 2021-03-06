program problem21oth;

  //k - кол-во чисел, равных max.
  //l - кол-во ячеек в массиве.
var
  a: array of integer;
  i, max, k, l: integer;

begin
  randomize();

  //Задаём размер массива.
  SetLength(a, 1);

  //Изначально мы принимаем a[0] за максимум, след-но одно максимальное число k := 1.
  //Изначально у нас в массиве один эелемент (a[0]), след-но l := 1.
  a[0] := random(65536) - 32767;
  max := a[0];
  k := 1;
  l := 1;

  //Цикл от 1 до 999999. С каждым разом l += 1, так как становится на одну ячейку больше.
  for i := 1 to 999999 do
  begin
    l += 1;
    //Задаём размер массива. Теперь он больше.
    SetLength(a, l);
    //Выполняется следующий алгоритм: если a[i] > max, то у нас новый максимум, если a[i] = max, то теперь два числа со значением max. k += 1.
    a[i] := random(65536) - 32767;
    if (a[i] > max) then
    begin
      k := 0;
      max := a[i];
    end;
    if a[i] = max then
      k += 1;
    //очищаем массив.
    SetLength(a, 0);
  end;

  Writeln(k);

end.
