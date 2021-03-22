program helper;

Uses
  SysUtils, Math;

const
  NLIM = 10000;

var
  K: array[1..NLIM] of integer;
  D: array[1..NLIM] of integer;
  i, n, q, x, limo, limt: integer;
  t: text;
  s: string;

function ff(): integer;
var
  f, pq, n, j, number: integer;

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
  ff := ifthen(pq <> 0, number, 0);
end;

begin
  n := StrToInt(ParamStr(1));
  limo := StrToInt(ParamStr(2));
  limt := StrToInt(ParamStr(3));

  randomize();
  for i := 1 to n do
  begin
    K[i] := random(limo - limt + 1) + limt;
    D[i] := random(limt);
  end;
  x := ff();

  for i := 1 to n do
    Writeln(D[i], ' ', K[i]);

  readln(s);
  Writeln(x);

  assign(t, 'tests/' + s);
  rewrite(t);
  for i := 1 to n do
    Writeln(t, D[i], ' ', K[i]);
  close(t);

  assign(t, 'tests/' + s + '.a');
  rewrite(t);
  Writeln(t, x);
  close(t);
end.
