program helper;

Uses
  SysUtils, Math;

const
  NLIM = 10000;

var
  a: array[1..NLIM] of integer;
  i, n, lim, otwo: integer;
  otwt: real;

function full_search(): integer;
var
  f, fm, q, min, mmin, otwo: integer;
  otwt: real;

begin
  f := 0;
  fm := 0;
  q := 0;
  for i := 1 to n do
  begin
    if a[i] > 1 then
    begin
      q += 1;
      if f = 0 then
      begin
        min := a[i];
        f += 1;
      end
      else
      if a[i] < min then
        min := a[i];
    end;
    if (a[i] < 1) and (a[i] > 0) then
      if fm = 0 then
      begin
        mmin := a[i];
        fm += 1;
      end
      else
      if a[i] > mmin then
        mmin := a[i];
  end;
  if q <> 0 then
  begin
   otwo := q;
   otwt := min
  end
  else
  begin
    otwo := 1;
    otwt := mmin;
  end;
end;

begin
  n := StrToInt(ParamStr(1));
  lim := StrToInt(ParamStr(2));
  randomize();
  for i := 1 to n do
    a[i] := lim*random;       //ошибка

  for i := 1 to n do
    Write(a[i], ' ');

  readln();
  Writeln(otwo, ' ', otwt:0 : 1);
end.
