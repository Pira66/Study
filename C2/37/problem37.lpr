program problem37;

const
  N = 10;
var
  a: array [1..N] of integer;
  i, k, t, smax, smaxsave, s, ssave: integer;

begin
  randomize();
  for i := 1 to N do
    a[i] := random(11) - 5;

  for i := 1 to N do
    Write(a[i], ' ');
  Writeln();

  t := 0;
  s := a[1];
  smax := 1;
  for i := 2 to N do
  begin
    if a[i] > A[i - 1] then
    begin
      s += a[i];
      smax += 1;
    end;
    if (a[i] <= a[i - 1]) and (smax > 1) then
    begin
      t += 1;
      if t = 1 then
      begin
        smaxsave := smax;
        ssave := s;
      end
      else
        if smax > smaxsave then
        begin
          smaxsave := smax;
          ssave := s;
        end;
    s := a[i];
    smax := 1;
    end;
    if smax = 1 then
    begin
      s := a[i];
      smax := 1;
    end;
  end;

  Writeln(ssave);

end.

