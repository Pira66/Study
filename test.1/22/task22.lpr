program task22;

var
  x, L, M, xx: integer;

begin
  xx := 0;
  repeat
    xx += 1;
    x := xx;
    L := 0;
    M := 0;
    while x > 0 do
    begin
      L := L + 1;
      if (M < x) and (x mod 2 = 0) then
        M:=x mod 10;
        x := x div 10;
    end;
  until (L = 3) and (M = 8);

  Writeln(xx);
end.
