program task127;

var
  x, a: smallint;
  q: boolean;

function f(x: smallint; a: smallint ): boolean;
begin
  f := ((x mod a = 0) and (x mod a <> 15)) or ((x mod 18 <> 0) and (x mod 15 <>0));
end;

begin
  for a := 1 to 1000 do
  begin
    q := True;
    for x := 1000 to 1 do
      if f(x, a) = False then
      begin
        q := False;
        break;
      end;
    if q = True then
      break;
  end;
  Writeln(a);
end. //Ответ = 1, так как любое число mod 1 = 0 и не равно 15.

