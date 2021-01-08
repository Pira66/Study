program problem34;

var
  n, d: integer;

function f(n: integer; var d: integer): integer;
begin
  Writeln(N);
  if n > 0 then
  begin
    d := n mod 10 + f(n div 10, d);
    Writeln(d);
    f := d
  end
  else
    f := 0;
end;

begin
  n := 0;
  repeat
    n += 1;
    d := 0;
    f(n, d);
  until d > 51;
  Writeln(n, ' ', d); //799999, 52
end.
