program task6;

var
  s, n: integer;

begin
  s := 0;
  n := 25;
  while s + n <= 100 do
  begin
    s := s + 20;
    n := n - 5;
  end;
  writeln(s) //120
end.
