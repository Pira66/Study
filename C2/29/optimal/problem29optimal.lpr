program problem29optimal;

const
  N = 5;

var
  a: array [1..N] of integer;
  i, k, max, max2: integer;

begin
  randomize();
  for i := 1 to N do
    read(a[i]);

  if a[1] > a[2] then
  begin
    max := a[1];
    max2 := a[2];
  end
  else
  begin;
    max := a[2];
    max2 := a[1];
  end;
  for i := 3 to N do
  begin
    if (a[i] > max) then
    begin
      max2 := max;
      max := a[i];
    end;
    if (a[i] < max) and (a[i] > max2) then
      max2 := a[i];
  end;

  Writeln(max2);
end.

