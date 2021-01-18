program problem33;

const
  N = 10;
var
  a: array [1..N] of integer;
  i, min1, min2, r, j: integer;

begin
  randomize();
  for i := 1 to N do
    a[i] := random(11) - 5;

  for i := 1 to N do
    Write(a[i], ' ');
  Writeln();

  r := abs(a[2] - a[1]);
  min1 := 1;
  min2 := 2;
  for i := 1 to N - 1 do
  begin
    for j := 1 + i to N do
    if abs(a[i] - a[j]) < r then
    begin
      r := abs(a[i] - a[j]);
      min1 := i;
      min2 := j;
    end;
  end;

  Write(min1, ' ', min2);

end.

