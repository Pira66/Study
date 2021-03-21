program helper;

uses
  SysUtils;

const
  LIM = 1000;

var
  i, j, n, q, x: integer;
  a: array[1..LIM] of integer;
  f: text;
  s: string;

function fs(): integer;
var
  min: integer;

begin
  min := a[1] + a[5];
  for i := 1 to n - 1 do
    for j := i + 1 to n do
      if j - i >= 4 then
        if a[i] + a[j] < min then
          min := a[i] + a[j];
  fs := min;
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
  close(f);
end.
