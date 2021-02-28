program tests_gen;

Uses
  SysUtils;

var
  a: TextFile;
  i: integer;
  n, lim: integer;

begin
  n := StrToInt(Paramstr(1));
  lim := StrToInt(Paramstr(2));
  Writeln(n);
  randomize();
  for i := 1 to n do
    Writeln(random(lim));
end.
