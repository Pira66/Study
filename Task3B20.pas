program Task3B20;

var
  i, y, x, r, a, b: integer;

begin
  for i := 32000 downto -32000 do
    begin
      y := i;
      x := 81;
      if y > x then
        begin
          x := y;
        end;
      a := x; b := y;
      while b > 0 do
      begin
        r := a mod b;
        a := b;
        b := r;
      end;
      if (a = 9) and (x = 81) then
      break;
    end;
  Writeln(i);
  readln;
end.

