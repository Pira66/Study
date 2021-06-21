program task425;

var
  x, a: smallint;
  q: boolean;

function f(x, a: smallint): boolean;
begin
  f := ((x mod 16 = 0) = (x mod 24 = 0)) or (x mod a = 0);
end;

begin
  for a := 1000 downto 1 do
  begin
    q := True;
    for x := 1 to 1000 do
      if f(x, a)  = False then
      begin
        q := False;
        break;
      end;
      if q = True then
        break;
  end;

  Writeln(a); //8

  Readln();
end.

