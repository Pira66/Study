program problem30;

const
  N = 30;

var
  a: array [1..N] of integer;
  i, maxe, pe, ve, te, ne, k, nz: integer;

procedure Pel(var pere, vtoe: integer);
begin
  ne := 1;
  if k = 1 then
  begin
    pere := a[1];
    for i := 1 to N do
    begin
      if (a[i] > pere) and (a[i] >= 0) then
        pere := a[i];
    end;
  end
  else
  begin
    vtoe := a[1];
    for i := 1 to N do
    begin
      if (a[i] < pere) and (a[i] > vtoe) and (a[i] >= 0) then
      begin
        vtoe := a[i];
        ne := i;
      end;
    end;
  end;
  if (vtoe = a[1]) and (vtoe >= 0) then
    pe += 1;
  if (vtoe <> a[1]) then
    pe += 1;
end;

begin
  randomize();
  for i := 1 to N do
    a[i] := random(65535) - 32767;

  for i := 1 to N do
    Write(a[i], ' ');
  Writeln();

  pe := 0;
  nz := 0;
  //максимум.
  nz := 0;
  k := 1;
  maxe := a[1];
  Pel(maxe, nz);

  //второй элемент.
  k := 2;
  ve := a[1];
  Pel(maxe, ve);

  //третий элемент.
  te := a[1];
  Pel(ve, te);

  //вывод.
  if pe = 3 then
    Writeln(ne)
  else
    Writeln('V Massive menshe treh polozhitelnih elementov');

end.
