program helper;

Uses
  SysUtils, Math;

const
  NLIM = 10000;

var
  a: array[1..NLIM] of real;
  i, n, lim, kolvo: integer;
  number: real;
  s: string;
  fl: text;

procedure ff();
var
  q, sq, f, sf: integer;
  mmin, smin: real;

begin
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
    if (a[i] < 1) and (a[i] > 0) or ((sf = 0) and (a[i] > 1) and (a[i] < 0)) then
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
  begin
    kolvo := q;
    number := mmin;
  end
  else
  begin
    kolvo := sq;
    number := smin;
  end;
end;

begin
  n := StrToInt(ParamStr(1));
  lim := StrToInt(ParamStr(2));

  randomize();
  for i := 1 to n do
    a[i] := random * (lim);

  ff();

  Writeln(n);
  for i := 1 to n do
    Write(a[i]: 0: 1, ' ');

  readln(s);
  Writeln(kolvo, ' ',number: 0: 1);

  assign(fl, 'tests/' + s);
  rewrite(fl);
  Writeln(fl, n);
  for i := 1 to n do
    Writeln(fl, a[i]: 0: 1);
  close(fl);

  assign(fl, 'tests/' + s +'.a');
  rewrite(fl);
  Writeln(fl, kolvo, ' ', number: 0: 1);
  close(fl);
end.
