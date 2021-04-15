program optimal;

type masrecord = record
  a: longint;
  b: longint;
  s: longint;
end;

var
  i, j, q, x, y, n, a, b: longint;
  mas: ^masrecord;

procedure swap(var ps, vs, pa, va, pb, vb: longint);
var
  c: longint;
begin
  c := ps;
  ps := vs;
  vs := c;
  c := pa;
  pa := va;
  va := c;
  c := pb;
  pb := vb;
  vb := c;
end;

procedure p(i: longint; var a, b, q: longint);
  var j: longint;
begin
  q := 0;
  for j := 2 to i - 1 do
    if i mod j = 0 then
    begin
      q := q + 1 ;
      if q = 1 then
        a := j;
      if q = 2 then
        b := j;
    end;
end;

begin
  //assign(input, 'tests\00');
  //reset(input);

  readln(x, y);

  GetMem(mas, ((y - x + 1) * 3) * sizeof(longint));

  n := 0;
  for i := x to y do
  begin
    p(i, a, b, q);
    if q = 2 then
    begin
      mas[n].s := a + b;
      mas[n].a := a;
      mas[n].b := b;
      n += 1;
    end;
  end;

  for i := 0 to n - 2 do
    for j := i + 1 to n - 1 do
      if mas[i].s < mas[j].s then
        swap(mas[i].s, mas[j].s, mas[i].a, mas[j].a, mas[i].b, mas[j].b);

  for i := 0 to n do
    if (mas[i].a > 0) and (mas[i].b > 0) then
      Writeln(mas[i].a, ' ', mas[i].b);

end.
