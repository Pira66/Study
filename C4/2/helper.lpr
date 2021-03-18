program helper;

Uses
  SysUtils, Math;

const
  NLIM = 10000;

var
  a: array[1..NLIM] of integer;
  i, n, lim, x: integer;
  s: string;
  ff: text;

function full_search(): integer;
var
  i, j, s, m, em, f: integer;

begin
  f := 0;
  em := 0;
  m := a[1] + a[2];
  for i := 1 to N - 1 do
    for j := i + 1 to N do
    begin
      s := a[i] + a[j];
      m := min(m, s);
      if (s mod 2 = 0) and ((s < em) or (f = 0)) then
      begin
        f := 1;
        em := s;
      end;
    end;
  full_search := ifthen(f = 1, em, m);
end;

begin
  n := StrToInt(ParamStr(1));
  lim := StrToInt(ParamStr(2));

  randomize();
  for i := 1 to n do
    a[i] := random(lim) + 1;
  x := full_search();

  Writeln(n);
  for i := 1 to n  do
    Write(a[i], ' ');

  readln(s);
  Writeln(x);

  Assign(ff, 'tests\' + s);
  Rewrite(ff);
  Writeln(ff, n);
  for i := 1 to n  do
    Writeln(ff, a[i]);
  Close(ff);

  Assign(ff, 'tests\' + s + '.a');
  Rewrite(ff);
  Writeln(ff, x);
  Close(ff);
end.













