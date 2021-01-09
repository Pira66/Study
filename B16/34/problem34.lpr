program problem34;

var
  n, d: integer;

function f(n: integer): integer;
begin
  Writeln(n);
  if n > 0 then
  begin
    d := n mod 10 + f(n div 10);
    Writeln(d);
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
  until d > 5;
  Writeln(n, ' ', d); //799999, 52
end.
