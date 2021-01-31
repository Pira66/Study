program SortirovkaByMe;

const
  N = 10;

var
  a: array[1..N] of integer;
  i, c, idx, min, t, j: integer;

begin
  randomize();
  for i := 1 to N do
    a[i] := random(41) - 20;

  for i := 1 to N do
    Write (a[i], ' ');
  Writeln();

  for i := 1 to N - 1 do
  begin
    min := a[i];
    t := 0;
    for j := i + 1 to N do
      if a[j] <= min then
      begin
        min := a[j];
        idx := j;
        t += 1;
      end;
    if t <> 0 then
    begin
      c := a[i];
      a[i] := a[idx];
      a[idx] := c;
    end;
  end;

  for i := 1 to N do
    Write (a[i], ' ');
  Writeln();


end.

