program task22;

var
  x, mx, L, M: integer;

begin
  mx := -32000;
  repeat
    mx += 1;
    x := mx;
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

  Writeln(mx);  //118
end.

