program problem24;

var
  k: integer;

function F(n: integer): integer;
begin
  k := k + 1;
  if n >= 1 then
  begin
    k := k + 1;
    F(n-1);
    F(n div 3);
    k := k + 1;
  end;
end;

begin
  k := 0;
  F(280);
  Writeln(k);
end.

