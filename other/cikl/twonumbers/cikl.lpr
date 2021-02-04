program cikl;

const
  N = 5;

var
  i, j: integer;

begin
  for i := 1 to N - 1 do
    for j := i + 1 to N do
      Writeln(i, ' ',j);

end.





