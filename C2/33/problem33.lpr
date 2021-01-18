program problem33;

const
  N = 10;
var
  a: array [1..N] of integer;
  i, min1, min2, rv, r: integer;

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
  for i := 3 to N do
  begin
    rv := a[i] - a[i - 1];
    if abs(rv) < r then
    begin
      r := abs(rv);
      min1 := i - 1;
      min2 := i;
    end;
  end;

  Writeln(min1, ' ', min2);

end.

