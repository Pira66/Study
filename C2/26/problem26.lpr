program problem26;

const
  N = 10;
  M = 20;
var
  a: array[1..N, 1..M] of integer;
  i, j, s, min, ns: integer;

begin
  randomize();
  for i := 1 to N do
  begin
    for j := 1 to M do
      a[i, j] := random(32767);
  end;

  for i := 1 to N do
  begin
    for j := 1 to M do
      Write(a[i, j]: 6, ' ');
    Writeln();
  end;
  Writeln();

  min := 0;
  for i := 1 to N do
  begin
    j := 0;
    s := 0;
    while j < M do
    begin
      for j := 1 to M do
        s += a[i, j];
    end;
    if min = 0 then
    begin
      min := s;
      ns := i;
    end
    else
      if s < min then
      begin
        min := s;
        ns := i;
      end;
  end;

 Write(ns, ' ', min);

end.
