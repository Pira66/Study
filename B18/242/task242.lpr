program task242;

var
  x, y, a: smallint;
  q: boolean;

function f(x: smallint; y: smallint; a: smallint): boolean;
begin
  f := (x > 11) or (x * x <= a) and (y * y >= a) or (y <= 12);
end;

begin
  for a := 1000 downto 1 do
  begin
    q := True;
    for x := 1 to 999 do
      for y := x + 1 to 1000 do
        if f(x, y, a) =  False then
        begin
          q := False;
          break;
        end;
    if q = True then
      break;
  end;

  Writeln(a);
end.

