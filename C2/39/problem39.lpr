program problem39;

const
  N = 30;

var
  a: array [1..N] of integer;
  i, j, k, imax, kmax: integer;

begin
  //randomize();
  for i := 1 to N do
    a[i] := 1 + random(100);

  for i := 1 to N do
    Write(a[i], ' ');
  Writeln(); Writeln();

  kmax := 0;
  for i := 1 to N do
  begin
    k := 0;
    for j := 2 to a[i] - 1 do
      if a[i] mod j = 0 then
        k += 1;
    if k + 2 > kmax then
    begin
      imax := i;
      kmax := k + 2; //любое число делится на 1 и на само себя
    end;             //след-но не считаем 1 и само число, а просто прибавляем в конце
  end;

  Writeln(imax);

end.
