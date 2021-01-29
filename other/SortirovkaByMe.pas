program SortirovkaByMe;

var
  a: array[1..5] of integer;
  i, c, n, min, t: integer;

begin
  randomize();
  for i := 1 to 5 do
    a[i] := random(41) - 20;

  for i := 1 to 5 do
    Write (a[i], ' ');
  Writeln();

  //минимум.
  min := a[1];
  for i := 2 to 5 do
    if a[i] <= min then
    begin
      min := a[i];
      n := i;
    end;
  c := a[1];
  a[1] := a[n];
  a[n] := c;

  //числа по возрастанию
  min := a[2];
  t := 0;
  for i := 3 to 5 do
    if a[i] <= min then
    begin
      min := a[i];
      n := i;
      t += 1;
    end;
  if t <> 0 then
    c := a[2];
    a[2] := a[n];
    a[n] := c;

  min := a[3];
  t := 0;
  for i := 4 to 5 do
    if a[i] <= min then
    begin
      min := a[i];
      n := i;
      t += 1;
    end;
  if t <> 0 then
    c := a[3];
    a[3] := a[n];
    a[n] := c;

  min := a[4];
  t := 0;
  for i := 5 to 5 do
    if a[i] <= min then
    begin
      min := a[i];
      n := i;
      t += 1;
    end;
  if t <> 0 then
    c := a[4];
    a[4] := a[n];
    a[n] := c;

  for i := 1 to 5 do
    Write (a[i], ' ');
  Writeln();

end.

