program ThreeNumbersRedo;

const
  N = 5;

var
  i, j, k: integer;

begin
  for k := 1 to N - 2 do
    for j := k + 1 to N - 1 do
      for i := j + 1 to N do
        Writeln(k, ' ', j, ' ', i);

end.

