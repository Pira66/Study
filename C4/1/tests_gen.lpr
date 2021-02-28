program tests_gen;

Uses
  SysUtils;

var
  i, n, limot, limdo: integer;

begin
  n := StrToInt(ParamStr(1));
  limot := StrToInt(ParamStr(2));
  limdo := StrToInt(ParamStr(3));
  randomize();
  Writeln(n);
  for i := 1 to n do
    Writeln(random(limdo - limot + 1) + limot, ' ', random(limdo - limot + 1) + limot);
end.
