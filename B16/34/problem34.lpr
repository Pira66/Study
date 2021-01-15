program problem34;

var
 n, d, c: integer;

function f(n: integer): integer;
begin
  c += 1;
  if (c = 2) and (n > 51) then
    exit;
  if n > 0 then
  begin
    d := n mod 10 + f(n div 10);
    c += 1;
    if (c = 2) and (d > 51) then
      exit;
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
    c := 0;
    f(n);
  until d > 51;

  Writeln(n, ' ', d);
end.                //почему-то записываются числа в переменные, хотя этого быть не должно
