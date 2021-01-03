program problem;

var
  x, y: integer;
  r, a, b, i: integer;

begin
  for i := 32000 to -32000 do
  begin
    y := i;
    if y > 81 then
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
    if (a = 9) and (b = 81) then
      break;
  end;
  Write(i);
end.

