program optimal;

type masrecord = record
  s: ^longint;
  a: ^longint;
  b: ^longint;
end;

var
  i, j, q, x, y, n, a, b: longint;
  mas: masrecord;

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

  GetMem(mas.s, y div x + 1*sizeof(longint));
  GetMem(mas.a, y div x + 1*sizeof(longint));
  GetMem(mas.b, y div x + 1*sizeof(longint));

  n := 1;
  for i := x to y do
  begin
    p(i, a, b, q);
    if q = 2 then
    begin
      mas.s[n] := a + b;
      mas.a[n] := a;
      mas.b[n] := b;
      n += 1;
    end;
  end;

  for i := 1 to n - 1 do
    for j := i + 1 to n do
      if mas.s[i] < mas.s[j] then
        swap(mas.s[i], mas.s[j], mas.a[i], mas.a[j], mas.b[i], mas.b[j]);

  for i := 1 to n do
    if (mas.a[i] <> 0) and (mas.b[i] <> 0) then
      Writeln(mas.a[i], ' ', mas.b[i]);

end.
