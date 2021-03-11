program optimal;

uses
  Math;

const
  LIM = 1000;

var
  n, i, q, f, sf, sq: integer;
  a: array [1..LIM] of real;
  mmin, smin: real;//smin(от сл. "spare"(запасной)

begin
  readln(n);
  for i := 1 to n do
    readln(a[i]);

  q := 0;
  sq := 0;
  for i := 1 to n do
  begin
    if (a[i] > 1) or ((f = 0) and (a[i] > 1)) then
    begin
      q += 1;
      if f = 0 then
      begin
        mmin := a[i];
        f := 1;
      end
      else
        mmin := min(mmin, a[i]);
    end;
    if (a[i] > 1) and (a[i] < 0) or ((sf = 0) and (a[i] > 1) and (a[i] < 0)) then
    begin
      sq += 1;
      if sf = 0 then
      begin
        smin := a[i];
        sf := 1;
      end
      else
        smin := min(smin, a[i]);
    end;
  end;

  if q > sq then
    Writeln(q, ' ', mmin: 0: 1)
  else
    Writeln(sq, ' ', smin: 0: 1);
end.
