program helper;

Uses
  SysUtils;

const
  LIM = 10000;

var
  y: array[1..LIM] of integer;
  x: array[1..LIM] of integer;
  i, n, q: integer;
  tf: text;
  ss: string;
  O: real;

function f():real;
var
  j, k: integer;
  a, b, c, P, S, maxS: real;

begin
  maxS := 0;
  for i := 1 to n - 2 do
    for j := i + 1 to n - 1 do
      for k := j + 1 to n do
      begin
      if ((y[i] = 0) and (y[j] = 0)) or ((y[j] = 0) and (y[k] = 0)) or ((y[k] = 0) and (y[i] = 0)) then
        if ((x[i] > 0) and (x[j] > 0) and (x[k] > 0)) or ((x[i] < 0) and (x[j] < 0) and (x[k] < 0)) then
        begin
          a := sqrt(sqr(x[i] - x[j]) + sqr(y[i] - y[j]));
          b := sqrt(sqr(x[j] - x[k]) + sqr(y[j] - y[k]));
          c := sqrt(sqr(x[k] - x[i]) + sqr(y[k] - y[i]));
          if (a < b + c) and (b < a + c) and (c < a + b) then
          begin
            P := (a + b + c) / 2;
            S := sqrt(P * (P - a) * (P - b) * (P - c));
            if (maxS = 0) or (S > maxS) then
              maxS := S;
          end;
        end;
      end;
  f := maxS;
end;

begin
  n := StrToInt(ParamStr(1));
  q :=  StrToInt(ParamStr(2));

  randomize();
  for i := 1 to n do
    x[i] := random(q + q + 1) - q;
  for i := 1 to n do
    y[i] := random(q + q + 1) - q;
  O := f();

  Writeln(n);
  for i := 1 to n do
    Writeln(x[i], ' ', y[i]);
  Writeln();

  readln(ss);
  Writeln(O: 0: 1);

  assign(tf, 'tests/' + ss);
  rewrite(tf);
  Writeln(tf, n);
  for i := 1 to n do
    Writeln(tf, x[i], y[i]);
  Close(tf);

  assign(tf, 'tests/' + ss + '.a');
  rewrite(tf);
  Writeln(tf, O: 0: 1);
  Close(tf);
end.

