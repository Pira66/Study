program problem33;

Uses
  Math;

const
  N = 30;
var
  a: array [1..N] of integer;
  i, min1, min2, rp, rv, r: integer;

begin
  randomize();
  for i := 1 to N do
    a[i] := random(65535) - 32767;

  for i := 1 to N do
    Write(a[i], ' ');
  Writeln();

  if a[1] - a[2] < a[2] - a[1] then
    r := abs(a[1] - a[2])
  else
    r := abs(a[2] - a[1]);
  min1 := 1;
  min2 := 2;
  for i := 3 to N do
  begin
    rp := a[i - 1] - a[i];
    rv := a[i] - a[i - 1];
    if (abs(rp) < r) or (abs(rv) < r) then
    begin
      r := min(abs(rp),abs(rv));
      min1 := i - 1;
      min2 := i;
    end;
  end;

  Writeln(min1, ' ', min2);

end.

