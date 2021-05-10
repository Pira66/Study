program task299;

var
  x, y, a: smallint;
  q: boolean;

function f(x, y, a: smallint): boolean;
begin
  f:= (y - x < a) or (7 * x + 4 * y > 350) or (3 * y - 2 * x > 45);
end;

begin
  for a := 1 to 1000 do
  begin
    q := True;
    for x := 0 to 1000 do
      for y := 0 to 1000 do
        if f(x, y, a) = False then
        begin
          q := False;
          break;
        end;
    if q = True then
      break;
  end;

  Writeln(a);
end.

