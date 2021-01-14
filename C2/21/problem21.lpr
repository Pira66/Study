program problem21;

const
  N = 30;

var
  a:array[1..N] of integer;
  i, max, k: integer;

begin
  randomize();
  for i := 1 to N do
    a[i] := random(65535) - 32767;

  for i := 1 to N do
    Write(a[i], ' ');
  Writeln();

  max := a[1];
  k := 1;
  for i := 2 to N do
  begin
    if (a[i] > max)  then
    begin
      k := 0;
      max := a[i];
    end;
    if a[i] = max then
      k += 1;
  end;

  Writeln(k);

end.


