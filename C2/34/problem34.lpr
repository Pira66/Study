program problem34;

const
  N = 20;

var
  a: array [1..N] of integer;
  i, j, s: integer;

begin
  randomize();
  for i := 1 to N do
    a[i] := random(41) - 20;

  for i := 1 to N do
    Write(a[i], ' ');
  WritelN();

  s := abs(a[1] - a[2]);
  for i := 1 to N - 1 do
    for j := i + 1 to N do
      if abs(a[i] - a[j]) > s then
        s := abs(a[i] - a[j]);

  Write(s);

end.


