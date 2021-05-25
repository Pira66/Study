program task6;

var
  s, ss, n: integer;

begin
  ss := -32000;
  repeat
    ss += 1;
    s := ss;
    n := 1;
    while s < 60 do
    begin
      s := s + 5;
      n := n * 3
    end;
  until n = 81;

  Writeln(ss); //40
end.

