program task25;

var
  mas: array of integer;
  i, j, k, q, c, n: longint;

procedure p();
var
  t: longint;
begin
  for t := 2 to i do
    if (t mod 2 = 0) and (i mod t = 0) then
    begin
      q += 1; //счёт делителей
      mas[n] := t;
      n += 1; //номера элементов
    end;
end;

begin
  for i := 125256 to 125330 do
  begin
    SetLength(mas, 20);
    q := 0;
    n := 0;
    p();
    if q = 6 then
    begin
      for k := 0 to n - 1 do
        for j := k + 1 to n do
          if mas[k] > mas[j] then
          begin
            c := mas[k];
            mas[k] := mas[j];
            mas[j] := c;
          end;
      for k := 0 to n do
        Write(mas[k], ' ');
      Writeln(); Writeln();
      SetLength(mas, 0);
    end;
  end;
end. //ошибка, разобрать(1 приоритет)

