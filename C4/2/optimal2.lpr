program optimal2;

uses
  Math;

const
  INF = 60000;

var
  i, n, x: integer;
  a, b, c, d, e, f: longint;

procedure update_min(var a, b: longint; x: longint);
begin
  if x <= a then
  begin
    b := a;
    a := x;
  end
  else
    if x <= b then
      b := x;
end;

begin
  readln(n);
  a := INF;
  b := INF;
  c := INF;
  d := INF;
  e := INF;
  f := INF;

  for i := 1 to n do
  begin
    readln(x);
    update_min(a, b, x);
    if x mod 2 = 0 then
      update_min(c, d, x)
    else
      update_min(e, f, x)
  end;

  if (d < INF) or (f < INF) then
    Writeln(min(c + d, e + f))
  else
    Writeln(a + b);
end.
