program problem25;

const
  N = 6;
  M = 10;

var
  a: array[1..N, 1..M] of integer;
  i, j, Sum, min: integer;

begin
  randomize();
  for i := 1 to N do
  begin
    for j := 1 to M do
      a[i, j] := random(41) - 20;
  end;

  for i := 1 to N do
  begin
    for j := 1 to N do
      Write(a[i, j]:6 , ' ');
    Writeln()
  end;
  Writeln();

  Sum := 0;
  for i := 1 to N do
  begin
    min := a[i, 1];
    for j := 2 to M do
    begin
      if a[i, j] < min then
        min := a[i, j];
    end;
    Sum += min;
  end;

  Writeln(Sum);

end.
