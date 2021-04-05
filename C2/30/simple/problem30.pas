program problem30;

const
  N = 30;

var
  a: array [1..N] of integer;
  i, q: integer;


begin
  randomize();
  for i := 1 to N do
    a[i] := random(41) - 20;

  for i := 1 to N do
    Write(a[i], ' ');
  Writeln();

  //номер третьего положительного элемента массива.
  q := 0;
  for i := 1 to N do
  begin
    if a[i] > 0 then
    begin
      q += 1;
    end;
    if q = 3 then break;
  end;

  if q = 3 then
    Writeln(i)
  else
    Writeln('V massive menshe treh polozhitelnih elementov');

end.
