program simple3; //Среда прогр: Lazarus
                 //версия: 2.0.10
const
  Lim = 1000;

var
  a: array[1..1000] of integer;
  n, i, j, f, R: integer;


begin
  //ввод кол-ва элементов, их значений и контрольное занчение
  readln(n);
  for i := 1 to n do
    readln(a[i]);
  readln(R);

  //находим произведение чисел, которое будет равно контрольному значению и выходим из цикла
  f := 0;
  for i := 1 to n - 1 do
    for j := i + 1 to n do
      if a[i] * a[j] = R then
      begin
        f += 1;
        break;
      end;

  //вывод в зависимости от успешности прохождения контроля
  if f <> 0 then
  begin
    Writeln('Vicheslennoe controlnoe znachenie:', ' ',R);
    Writeln('Control proiden');
  end
  else
  begin
    Writeln('Vicheslennoe controlnoe znachenie', ' ', 0);
    Writeln('Control ne proiden');
  end;

end.

