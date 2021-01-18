program problem32;

const
  N = 10;

var
  a: array [1..N] of integer;
  i, j, min, min2, s: integer;

begin
  randomize();
  for i := 1 to N do
    a[i] := random(11) - 5;

  for i := 1 to N do
    Write(a[i], ' ');
  Writeln();

  s := a[1] + a[2];
  min := 1; min2 := 2;
  for i := 3 to N do
    if a[i] + a[i - 1] < s then
    begin
      s := a[i] + a[i - 1];
      min := i - 1;
      min2 := i;
    end;

  Writeln(min, ' ', min2);

end.
