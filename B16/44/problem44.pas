program problem44;

function F(n: integer): integer;
begin
  if n <= 3 then
    F := n;
  if (n > 3) and (n mod 3 = 0) then
    F := n * n * n + F(n - 1);
  if (n > 3) and (n mod 3 = 1) then
    F := 4 + F(n div 3);
  if (n > 3) and (n mod 3 = 2) then
    F := n * n + F(n - 2);
end;

begin
  Writeln(F(100));
end.

