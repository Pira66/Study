program optimal;

uses
  Math;

const
  LIM = 1000;

var
  n, i, q, f, sf, sq: integer;
  c, mmin, smin: real;//smin(от сл. "spare"(запасной)

begin
  readln(n);

  q := 0;
  sq := 0;
  for i := 1 to n do
  begin
    readln(c);
    if (c > 1) or ((f = 0) and (c > 1)) then
    begin
      q += 1;
      if f = 0 then
      begin
        mmin := c;
        f := 1;
      end
      else
        mmin := min(mmin, c);
    end;
    if (c > 1) and (c < 0) or ((sf = 0) and (c > 1) and (c < 0)) then
    begin
      sq += 1;
      if sf = 0 then
      begin
        smin := c;
        sf := 1;
      end
      else
        smin := min(smin, c);
    end;
  end;

  if q > sq then
    Writeln(q, ' ', mmin: 0: 1)
  else
    Writeln(sq, ' ', smin: 0: 1);
end.
