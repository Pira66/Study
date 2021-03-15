program helper;

uses
  Math ,SysUtils;

const
  LIM = 1000;

var
  i: longint;
  a: array[1..LIM] of longint;
  n, q, x: integer;
  s: string;
  f: text;

function fs(): longint;
var
  p, i, j: integer;
begin
  p := 0;
  for i := 1 to n - 1 do
    for j := i + 1 to n do
      if a[i] * a[j] mod 14 = 0 then
        p := max(p, a[i] * a[j]);
    exit(p);
end;

begin
  n := StrToInt(ParamStr(1));
  q := StrToInt(ParamStr(2));

  randomize();
  for i := 1 to n do
    a[i] := 1 + random(q);
  x := fs();

  Writeln(n);
  for i := 1 to n do
    Write(a[i], ' ');

  readln(s);
  Writeln(x);

  assign(f, 'tests/' + s);
  rewrite(f);
  Writeln(f, n);
  for i := 1 to n do
    Writeln(f, a[i]);
  close(f);

  assign(f, 'tests/' + s + '.a');
  rewrite(f);
  Writeln(f, x);
  Writeln(f, 'Yes');
  close(f);

end.

