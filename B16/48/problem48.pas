program problem48;

var
  k, z: integer;

function F(n: integer): integer;
begin
  if n <= 3 then
    F := n;
  if (n mod 2 = 0) and (n > 3) then
    F := n + F(n - 1);
  if (n mod 2 <> 0) and (n > 3) then
    F := n * n + F(n - 2);
end;

begin
  k := 1;
  z := F(1);
  While z < 100000000 do
  begin
    k += 1;
    z := F(k);
  end;

  Writeln(k - 1);
end.

