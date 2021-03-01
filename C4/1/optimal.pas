program optimal1;

Uses
  Math;

const
  LIM = 100;

var
  i, n, x, y: integer;
  a, b, c, d, e, f: integer;
  fa, fb ,fc, fd, fe, ff: integer;

procedure p(var a, b, c, fa, fb, fc, x, y: integer);
begin
  if (y = 0) and ((x < a) or (fa = 0)) then
  begin
    fa := 1;
    a := x;
  end;
  if (y = 0) and ((x > b) or (fb = 0)) then
  begin
    fb := 1;
    b := x;
  end;
  if (abs(y) > c) or (fc = 0) then
  begin
    fc := 1;
    c := abs(y);
  end;
end;

begin
  readln(n);
  for i := 1 to n do
  begin
    readln(x, y);
    if x < 0 then
      p(a, b, c, fa, fb, fc, x, y);
    if x > 0 then
      p(d, e, f, fd, fe, ff, x, y);
  end;

  Writeln(max((b - a)*c, (e - d)*f)/2: 0: 1);

end.

















