program optimal2;

uses
  Math;

var
  i, n, x: integer;
  a, b, c, d, e, f, ci, cii: longint;
  fo, ft: integer;

begin
  readln(n);

  fo := 0; ft := 0;
  readln(x);
  a := x;
  c := 30001; d := 30001;
  e := 30001; f := 30001;
  for i := 1 to n do
  begin
    readln(x);
    if x < a then
    begin
      a := x;
      cii := i;
    end;
    if (x < b) and (x >= a) and (cii <> i) or (i = 2) then
      b := x;

    if (x < c) and (x mod 2 = 0) then
    begin
      d := c;
      c := x;
      ci := i;
      if d <> 30001 then
        fo := 1;
    end;
    if (x < d) and (x >= c) and (x mod 2 = 0) and (i <> ci) then
    begin
      d := x;
      fo := 1;
    end;

    if (x < e) and (x mod 2 <> 0) then
    begin
      f := e;
      e := x;
      if f <> 30001 then
        fo := 1;
    end;
    if (x < f) and (x > e) and (x mod 2 <> 0) then
    begin
      f := x;            if d <> 30001 then
        fo := 1;
      ft := 1;
    end;
  end;

  if (fo = 1) and (ft = 1) then
    Writeln(min(c + d, e + f));
  if (fo = 1) and (ft = 0) then
    Writeln(c + d);
  if (ft = 1) and (fo = 0) then
    Writeln(e + f);
  if (fo = 0) and (ft = 0) then
    Writeln(a + b);
end.
