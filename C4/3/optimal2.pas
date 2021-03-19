program optimal2;

uses
  Math, StrUtils;

const
  LIM = 10000;

var
  n, i, R, m, m14, m2, m7, f14, f2, f7, O: integer;
  a: array [1..LIM] of integer;

begin
  readln(n);
  for i := 1 to n do
    readln(a[i]);
  readln(R);

  m := a[1];
  f14 := 0; f7 := 0; f2 := 0;
  for i := 1 to n do
  begin
    if a[i] > m then
      m := a[i];

    if (f14 = 0) and (a[i] mod 14 = 0) then
    begin
      m14 := a[i];
      f14 := 1;
    end;
    if (f14 = 1) and (a[i] mod 14 = 0) then
      if a[i] > m14 then
        m14 := a[i];

    if (f7 = 0) and (a[i] mod 7 = 0) and (a[i] mod 2 <> 0) then
    begin
      m7 := a[i];
      f7 := 1;
    end;
    if (f7 = 1) and (a[i] mod 7 = 0) and (a[i] mod 2 <> 0) then
      if a[i] > m7 then
        m7 := a[i];

    if (f2 = 0) and (a[i] mod 2 = 0) and (a[i] mod 7 <> 0) then
    begin
      m2 := a[i];
      f2 := 1;
    end;
    if (f2 = 1) and (a[i] mod 2 = 0) and (a[i] mod 7 <> 0) then
      if a[i] > m2 then
        m2 := a[i];
  end;

  if (f14 = 0) and (f7 = 0) and (f2 = 0) then
  begin
    Writeln(0);
    Writeln('No');
    exit;
  end;


  Writeln(max(m14 * m, m7 * m2));
  O := (max(m14 * m, m7 * m2));
  Writeln(ifthen(O = R, 'Yes', 'No'));
end.
