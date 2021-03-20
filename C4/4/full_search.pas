program full_search;

uses
  Math, StrUtils;

const
  LIM = 10000;

var
  i, n, q, c, s: integer;
  a: array[1..LIM] of real;
  p, pmax, r: real;

procedure f();
begin
  s := 2;
  for i := 1 to n - 1 do
    s *= 2;
  s -= 1;
end;

begin
  readln(n);
  for i := 1 to n do
    readln(a[i]);

  f();

  pmax := 0;
  for c := 1 to s do
  begin
    p := 1; q := c;
    for i := 1 to n do
    begin
      r := q mod 2;
      q := q div 2;
      p *= ifthen(r = 1, a[i], 1);
    end;
    pmax := max(pmax, p);
  end;

  Writeln(pmax);
end.                              //спросить, доделать
