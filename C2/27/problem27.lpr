program problem27;

const
  N = 5;

var
  a: array[1..N, 1..N] of integer;
  i, j, gmax, gsum, lmax, lsum: integer;

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

  gmax := a[1, 1];
  gsum := gmax;
  for j := 2 to N do
    gsum += a[1, j];

  for i := 2 to N do
  begin
    lmax := a[i, 1];
    lsum := lmax;
    for j := 2 to N do
      lsum += a[i, j];

    if (lmax > gmax) then
    begin
      gmax := lmax;
      gsum := lsum;
    end;
  end;

  Writeln(gsum);

end.

