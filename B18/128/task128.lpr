program task128;

var
  x, a: smallint;
  q: boolean;

function f(x: smallint; a: smallint): boolean;
begin
  //!a | !b | c
  f := (x mod 18 = 0) or (x mod a = 0) or (x mod 12 <> 0);
end;

begin
  for a := 1000 downto 1 do
  begin
    q := True;
    for x := 1 to 1000 do
      if f(x, a) = false then
      begin
        q := False;
        break;
      end;
    if q = True then
      break;
  end;
  Writeln(a);
end.

