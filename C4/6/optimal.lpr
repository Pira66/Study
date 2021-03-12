program optimal;

const
  LIM = 1000;

var
  a: array[1..LIM] of integer;
  n, i, minf, mins, minaf, minas, tr, td, tra, tda: integer;

begin
  readln(n);
  for i := 1 to n do
    readln(a[i]);

  minf := a[1];
  tr := 1;
  mins := a[2];
  td := 2;
  for i := 3 to n - 4 do
    if (a[i] < minf) or ((a[i] > minf) and (a[i] < mins)) then
    begin
      if a[i] < minf then
        if mins > minf then
        begin
          mins := minf;
          td := tr;
          minf := a[i];
          tr := i;
        end
        else
        begin
          minf := mins;
          tr := td;
          mins := a[i];
          td := i;
        end;
      if ((a[i] > minf) and (a[i] < mins)) or ((a[i] > mins) and (a[i] < minf)) then
        if mins > minf then
        begin
          mins := a[i];
          td := i
        end
        else
        begin
          minf := a[i];
          tr := i;
        end;
    end;

  minaf := 1001;
  tra := i + 1;
  minas := 1002;
  tda := i + 2;
  for i := n - 3 to n do
    if (a[i] < minaf) or ((a[i] > minaf) and (a[i] < minas)) or (i - tr >= 4) or (i - td >= 4) then
    begin
      if a[i] < minaf then
        if minas > minaf then
          if i - tr >= 4 then
          begin
            minas := minaf;
            tda := tra;
            minaf := a[i];
            tra := i;
          end
        else
          if i - tr >= 4 then
          begin
            minaf := minas;
            tra := tda;
            minas := a[i];
            tda := i;
          end;
      if ((a[i] > minaf) and (a[i] < minas)) or ((a[i] > minas) and (a[i] < minaf)) then
        if minas > minaf then
        if i - tr >= 4 then
          begin
            minas := a[i];
            tda := i
          end
        else
        if i - tr >= 4 then
          begin
            minaf := a[i];
            tra := i;
          end;
    end;

  if minas + mins < minaf + minf then
    if (minas <> 1002) and (tda - td >= 4) then
    begin
      Writeln(minas + mins);
      exit;
    end;
  if (minaf + mins < minas + mins) and (minaf + mins < minaf + minf) and (tra - td >= 4) then
    begin
      Writeln(minaf + mins);
      exit;
    end;
  if (minaf <> 1001) and (tra - tr >= 4) then
    Writeln(minaf + minf);

end.


