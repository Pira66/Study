program problem28;

const
  N = 10;

var
  a: array [1..N] of integer;
  i, k, x, y, min: integer;
  s: real;

begin
  randomize();
  for i := 1 to N do
    a[i] := random(41) - 20;

  for i := 1 to N do
    Write(a[i], ' ');
  Writeln();

  s := 0;
  for i := 1 to N do
  begin
    x += a[i];
    y += 1;
  end;
  s := x / y;

  k := 1;
  min := a[1];
  for i := 2 to N do
    if abs(abs(a[i]) - abs(s)) < abs(abs(min) - abs(s)) then
    begin
      min := a[i];
      k := i;
    end;

  Writeln(k);

end.


