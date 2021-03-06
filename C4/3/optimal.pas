program optimal;

uses
  Math, StrUtils;

const
  LIM = 1000;

var
  a: array[1..LIM] of longint;
  i, n, R, fmax, smax, f: integer;

begin
  readln(n);
  for i := 1 to n do
    readln(a[i]);
  readln(R);

  fmax := 0;
  smax := 0;
  f := 0;
  for i := 1 to n do
    if (a[i] mod 2 = 0) or (a[i] mod 7 = 0) or (a[i] mod 14 = 0) then
    begin
      fmax := max(fmax, a[i]);
      if fmax = a[i] then
        f += 1;
      if (a[i] > smax) and (a[i] < fmax) or (f = 1) then
      begin
        smax := a[i];
        f += 1;
      end;
    end;

  if f > 2 then
  begin
    Writeln(fmax * smax);
    Writeln(ifthen(fmax * smax = R, 'Yes', 'No'));
  end
  else
  begin
    Writeln(0);
    Writeln('No');
  end;
end.

