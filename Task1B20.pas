program Task1B20;

var
  x, a, b, c, d: integer;

begin
  for x := -32000 to 32000 do
    begin
      d := x;
      a := 0; b := 0;
      while d > 0 do
        begin
          c := d mod 2;
          if c = 0 then a := a + 1 else
            b := b + 1;
          d := d div 10;
        end;
      if (a = 3) and (b = 2) then
        break;
    end;
  Writeln(x);
  readln;
end.

