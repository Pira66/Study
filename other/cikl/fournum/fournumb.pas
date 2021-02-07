program fournumb;

const
  N = 6;

var
  i, j, k ,l: integer;

begin
  for i := 1 to N - 3 do
    for j := i + 1 to N - 2 do
      for k := j + 1 to N - 1 do
        for l := k + 1 to N do
          Writeln(i, ' ', j, ' ', k, ' ', l);

end.
