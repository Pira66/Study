program problem24;

const
  N = 10;
var
  a: array[1..N, 1..N] of integer;
  i, j, max, Sum : integer;

begin
  randomize();
  for i := 1 to N do
  begin
    for j := 1 to N do
      a[i, j] := random(65535) - 32767;
  end;

  for i := 1 to N do
  begin
    for j:= 1 to N do
      Write(a[i, j], ' ');
  end;
  Writeln();

  Sum := 0;
  for i := 1 to N do
  begin
    max := a[i,1];
    for j := 2 to N do
    begin
      if a[i, j] > max then
        max := a[i, j];
    end;
    Sum += max;
  end;

  Writeln(Sum);

end.
