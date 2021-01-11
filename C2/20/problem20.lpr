program problem20;

const
  N = 30;

var
  a, b: array[1..N] of integer;
  i: integer;

begin
  randomize();
  for i := 1 to N do
    a[i] := random(65535) - 35767;

  for i := 1 to N do
    Write(a[i], ' ');
  Writeln();
  Writeln();

  for i := 1 to N do
  begin
    b[i] := a[i];
    if b[i] < 0 then
      b[i] := b[i] * -1;
  end;

  for i := 1 to N do
    Write(b[i], ' ');

end.

