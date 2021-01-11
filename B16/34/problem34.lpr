program problem34;

var
  n, d: integer;

function f(n: integer): integer;
begin
  if n > 0 then
  begin
    d := n mod 10 + f(n div 10);
    f := d;
  end
  else
    f := 0;
end;

begin
  n := 0;
  repeat
    n += 1;
    d := 0;
    f(n);
  until d > 51;
  Writeln(n, ' ', d);
end.
