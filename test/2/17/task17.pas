program task17;

var
  x, y, i, q, max: integer;

begin
  q := 0; max := -1;
  for i := 3361 to 9205 do
    if ((i mod 4 = 0) or (i mod 5 = 0)) and (i mod 9 <> 0) and (i mod 11 <> 0) and (i mod 17 <> 0) and (i mod 23 <> 0) then
    begin
      q += 1;
      if i > max then
        max := i;
    end;

  Writeln(q, ' ', max);
end.

