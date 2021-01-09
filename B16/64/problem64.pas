program problem64;

var
  i, z, k: integer;

function f(n: integer): integer;
begin
  if n <= 13 then
    F := n * n * n + n * n + 1;
  if (n > 13) and (n mod 3 = 0) then
    F := F(n - 1) + 2 * n * n - 3;
  if (n > 13) and (n mod 3 <> 0) then
    F := F(n - 2) + 3 * n + 6;
end;

begin
  for i := 1 to 1000 do
  begin
    z := 0;
    z := F(i);
    if z mod 2 = 0 then
      k += 1;
  end;

  Writeln(k);
end.
