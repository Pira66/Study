program problem27;

const
  N = 5;

var
  a: array[1..N, 1..N] of integer;
  i, j, t, max, maxw, sum, sumw: integer;

begin
  randomize();
  for i := 1 to N do
  begin
    for j := 1 to N do
      a[i, j] := random(20);
  end;

  for i := 1 to N do
  begin
    for j := 1 to N do
      Write(a[i, j]: 6, ' ');
    Writeln();
  end;
  Writeln();

  max := a[1, 1];
  sum := max;
  t := 0;

  for i := 1 to N do
  begin
    if i <> 1 then
      sum := 0;
    for j := 1 to N do
    begin
      if a[i, j] > max then
        max := a[i, j];
      if t <> 0 then
        sum += a[i, j];
      t += 1;
    end;
    if i = 1 then
    begin
      sumw := sum;
      maxw := max
    end
    else
      if max > maxw then
      begin
        sumw := sum;
        maxw := max;
      end;
  end;

  Writeln(sumw);

end.

