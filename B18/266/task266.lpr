program task266;

var
  x, y, a: smallint;
  q: boolean;
  count: integer;

function f(x: smallint; y: smallint; a: smallint): boolean;
begin
  f := (x > 6) and (x * x <= a) or (y * y >= a) and (y < 5);
end;

begin
  count := 0;

  for a := 1000 downto 1 do
  begin
    q := False;
    for x := 1 to 999 do
      for y := x + 1 to 1000 do
      begin
        if f(x, y, a) = True then
          q := True;
        if q = False then
          count += 1;
      end;
  end;

  Writeln(count);
end.
