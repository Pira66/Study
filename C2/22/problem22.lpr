program problem22;

const
  N = 5;

var
  a: array[1..N, 1..N] of integer;
  i, s, j: integer;

begin
  randomize();
  for i := 1 to N do
  begin
    for j := 1 to N do
      a[i, j] := random(65535) - 32767;
  end;

  for i := 1 to N do
  begin
    for j := 1 to N do
      Write(a[i, j], ' ');
  end;
  Writeln();

  s := 0;
  for i := 1 to N do
    s += a[i, i];

  Writeln(s / N :0 :2);

end.
