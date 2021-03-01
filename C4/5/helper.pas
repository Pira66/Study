program helper;

Uses
  SysUtils, Math;

const
  NLIM = 10000;

var
  K: array[1..NLIM] of integer;
  D: array[1..NLIM] of integer;
  i, n, limo, limt: integer;

function full_search(): integer;
var
  i, f, pq, n, j, q, number: integer;

begin
  for i := 1 to n do
    if K[i] mod D[i] <> 0 then
      K[i] := K[i] mod D[i]
    else
      K[i] := 0;

  f := 0;
  pq := 0;
  for i := 1 to n - 1 do
  begin
    q := 0;
    for j := i + 1 to n do
      if K[i] = K[j] then
        q += 1;
    if f = 0 then
    begin
      pq := q;
      number := K[i];
      f += 1;
    end
    else
    begin
      if q > pq then
        pq := 1;
      if K[i] > number then
        number := K[i];
    end;
  end;
  full_search := ifthen(pq <> 0, number, 0);
end;

begin
  n := StrToInt(ParamStr(1));
  limo := StrToInt(ParamStr(2));
  limt := StrToInt(ParamStr(3));
  randomize();
  for i := 1 to n do
  begin
    D[i] := random(limo);
    D[i] := random(limt);
  end;

  for i := 1 to n  do
    Write(D[i], ' ', K[i]);

  readln();
  Writeln(full_search());
end.
