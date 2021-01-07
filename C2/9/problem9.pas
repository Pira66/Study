program problem9;

const
  N=30;

var
  a: array [1..N] of integer;
  i, x, y: integer;
  s: real;

begin
  randomize();
  for i := 1 to N do
    a[i] := random (1001);

  for i := 1 to N do
    Write(a[i], ' ');
  Writeln();

  x := 0;
  y := 0;
  for i := 1 to N do
    if a[i] mod 2 <> 0  then
    begin
      x += a[i];
      y += 1;
    end;

  s := x / y;

  Writeln(s: 0: 2);

end.

