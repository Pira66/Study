program task168;

var
  x, a: smallint;
  q: boolean;

function f(x: smallint; a: smallint): boolean;
begin
  f := ((x and 28 = 0) and (x and 45 = 0)) or (x and 17 <> 0) or (x and a <> 0);
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

