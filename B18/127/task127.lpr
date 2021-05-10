program task127;

var
  x, a: smallint;
  q: boolean;

function f(x: smallint; a: smallint ): boolean;
begin
  f := (x mod a <> 0) or (x mod 18 = 0) or (x mod 15 = 0);
end;

begin
  for a := 1 to 1000 do
  begin
    q := True;
    for x := 1 to 1000 do
      if f(x, a) = False then
      begin
        q := False;
        break;
      end;
    if q = True then
      break;
  end;
  Writeln(a);
end.

