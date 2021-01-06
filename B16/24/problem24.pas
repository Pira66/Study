program problem24;

var
  k: integer;

function F(n: integer; var k: integer): integer;
begin
  k := k + 1;
  if n >= 1 then
  begin
    k := k + 1;
    F(n-1, k);
    F(n div 3, k);
    k := k + 1;
  end;
end;

begin
  k := 0;
  Writeln(F(280, k));
end.

