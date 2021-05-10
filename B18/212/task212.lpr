program task212;

var
  x, a: smallint;
  q: boolean;
  count: integer;

function f(x, a: smallint): boolean;
begin
  f := ((x and 56 <> 0) and (x and  18 = 0) and (x and a = 0)) or ((x and 18 = 0) and (x and a = 0) and (x and 43 <> 0));
end;

begin
  count := 0;
  for a := 44 to 62 do
    for x := 1 to 1000 do
      if f(x, a) = True then
        q := True
      else
      begin
        q := False;
        count += 1;
      end;

  Writeln(count);
end.

