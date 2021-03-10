program optimal;

uses
  Math, StrUtils;

const
  LIM = 1000;

var
  a: array[1..LIM] of longint;
  i, n, R, fmax, smax, f, ci: integer;

begin
  readln(n);
  for i := 1 to n do
    readln(a[i]);
  readln(R);

  fmax := 0;
  smax := 0;
  f := 0;
  for i := 1 to n do
    if (a[i] mod 2 = 0) or (a[i] mod 7 = 0) or (a[i] mod 14 = 0) or ((a[i] * fmax) mod 14 = 0) or ((a[i] * smax) mod 14 = 0) then
      if (fmax < a[i]) or (smax < a[i]) then
      begin
        if (a[i] > fmax) and (((smax * a[i]) mod 14 = 0) or ((fmax * a[i]) mod 14 = 0)) then
        begin
          if (a[i] * fmax) mod 14 = 0 then
          begin
            if fmax <> 0 then
            begin
              smax := fmax;
              fmax := a[i];
            end
            else
              if (a[i] mod 2 = 0) or (a[i] mod 7 = 0) or (a[i] mod 14 = 0) then
                fmax := a[i];
          end;
          if ((fmax * smax) mod 14 = 0) and (fmax * smax < a[i] * smax) then
            fmax := a[i];
          f += 1;
        end;
      end;

  if f >= 2 then
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

