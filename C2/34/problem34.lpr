program problem34;

const
  N = 10;

var
  a: array [1..N] of integer;
  i, j, x, y, s: integer;

begin
  randomize();
  for i := 1 to N do
    a[i] := random(11) - 5;

  for i := 1 to N do
    Write(a[i], ' ');
  WritelN();

  s := abs(a[1] - a[2]);
  x := 1;
  y := 2;
  for i := 1 to N - 1 do
  begin
    for j := i + 1 to N do
      if abs(a[i] - a[j]) > s then
      begin
        s := abs(a[i] - a[j]);
        x := i;
        y := j;
      end;
  end;

  Write(x, ' ',y);

end.


