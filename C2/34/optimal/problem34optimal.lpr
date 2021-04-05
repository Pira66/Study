program problem34optimal;

const
  N = 5;

var
  a: array [1..N] of integer;
  i, min, max, fmin, fmax: integer;

begin
  for i := 1 to N do
    read(a[i]);

  if a[1] > a[2] then
  begin
    max := a[1];
    min := a[2];
  end
  else
  begin
    max := a[2];
    min := a[1];
  end;
  for i := 3 to N do
  begin
    if a[i] < min then
      min := a[i];
    if a[i] > max then
      max := a[i];
  end;

  Writeln(max - min);
end.
