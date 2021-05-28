program task16;

function F(n: integer): integer;
begin
  if n <= 2 then
    F := n + 1;
  if n > 2 then
    F := F(n - 1) + 2 * F(n - 2);
end;

begin
  Writeln(F(4));
  Readln(); //13
end.

