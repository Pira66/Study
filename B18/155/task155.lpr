program task155;

var
  x, a: smallint;
  q: boolean;

function f(x: smallint; a: smallint): boolean;
begin
  //p -> (q -> r) = !p | (!q | r) = !p | !q | r
  f := (x and a = 0) or (x and 56 <> 0) or (x and 20 <> 0);
end;

begin
  for a := 1000 downto 1 do
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

