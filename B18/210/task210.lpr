program task210;

var
  x, a: smallint;
  q: boolean;

function f(x: smallint; a: smallint): boolean;
begin
  f := (x and 17 <> 0) or (x and a <> 0) or (x and 58 = 0) or (x and 8 = 0) and (x and a <> 0) and (x and 58 = 0);
end;

begin
  for a := 55 downto 43 do
  begin
    q := False;
    for x := 1 to 1000 do
      if f(x, a) = True then
      begin
        q := True;
        break;
      end;
    if q = False then
      break;
  end;

  Writeln(a); //почему 43
end.

