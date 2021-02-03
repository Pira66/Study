program problem24;

var
  s: string = '';
  i, j: integer;//переменная цикла
  q: integer;//кол-во рядом стоящих и не равных друг другу элементов
  qp: integer;//кол-во элементов в предыдущей группе
  t: integer;//флаг, сигнализирующий о том, что при переборе символов нашлись два разных, рядом стоящих

begin
  readln(s);

  q := 1;
  qp := q;
  j := 1;
  while j < length(s) do
  begin
    t := 0;
    while (s[j] <> s[j + 1]) and (j < length(s)) do
    begin
      q := q + 1;
      j += 1;
      t += 1;
    end;
    if qp < q then
      qp := q;
    if t = 0 then
      j += 1;
    q := 1;
  end;

  Writeln(qp);
end.
