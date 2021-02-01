program problem32otimal;

const
  N = 10;

var
  a: array [1..N] of integer;
  i, k, min, min2: integer;

begin
  randomize();
  for i := 1 to N do
    a[i] := random(41) - 20;

  for i := 1 to N do
    Write(a[i], ' ');
  Writeln();

  if a[1] < a[2] then
  begin
    min := 1;
    min2 := 2;
  end
  else
  begin
    min := 2;
    min2 := 1;
  end;

  for i := 3 to N do
    if a[i] < a[min] then
    begin
      min2 := min;
      min := i;
    end
    else
    if a[i] < a[min2] then
      min2 := i;

  Writeln(min, ' ', min2);

end.

