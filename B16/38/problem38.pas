program problem38;

var
  n, m, k, z, i ,j: integer;

function F(n, m: integer): integer;
begin
 if m = 0 then
   F := 0
 else
 begin
   m -= 1;
   F := n + F(n, m);
 end;
end;

begin
  for i := 1 to 30 do
    for j := 1 to 30 do
    begin
      n := j;
      m := i;
      z := F(n, m);
      if z = 30 then
      begin
        Writeln(n, ' ',m);
        k += 1;
      end;
    end;

  Writeln(k);

end.

