program helper;

uses
  SysUtils;

const
  LIM = 1000;

var
  i, j, n, q: integer;
  a: array[1..LIM] of integer;

function f(): integer;
var
  min: integer;

begin
  min := a[1] + a[5];
  for i := 1 to n - 1 do
    for j := i + 1 to n do
      if j - i >= 4 then
        if a[i] + a[j] < min then
          min := a[i] + a[j];
  f := min;
end;

begin
  n := StrToInt(Paramstr(1));
  q := StrToInt(Paramstr(2));

  randomize();
  for i := 1 to n do
    a[i] := random(q);

  Writeln(n);
  for i := 1 to n do
    Write(a[i], ' ');

  readln();

  Writeln(f());
end.
