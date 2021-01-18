program problem37;

const
  N = 30;
var
  a: array [1..N] of integer;
  i, k, kMax: integer;

begin
  randomize();
  for i := 1 to N do
    a[i] := random(65535) - 32767;

  for i := 1 to N do
    Write(a[i], ' ');
  Writeln();

  k := 1;
  kmax := 0;
  for i := 2 to N do
  begin
    if a[i] > A[i - 1] then
      k += 1;
    if a[i] <= a[i - 1] then
    begin
      if k > kmax then
        kmax := k;
      k := 1;
    end;
  end;

  Writeln(kmax);

end.

