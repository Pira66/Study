program ThreeNumbersRedo;

const
  N = 5;

var
  i, j, k: integer;

begin
  for i := 1 to N - 2 do
    for j := i + 1 to N - 1 do
      for k := j + 1 to N do
        Writeln(i, ' ', j, ' ', k);

end.

