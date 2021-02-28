program optimal1;

Uses
  Math;

const
  LIM = 100;

var
  x: array[1..LIM] of integer;
  y: array[1..LIM] of integer;
  i, n, fxl, fyl, fxr, fyr ,xmaxXr, xmaxYr, xminXr, xminYr , ymaxXr, ymaxyr, xmaxXl, xmaxYl, xminXl, xminYl, ymaxXl, ymaxYl: integer;
  al, bl, cl, ar, br, cr, SL, SR, PL, PR: real;
begin
  readln(n);
  for i := 1 to n do
    readln(x[i], y[i]);

  fxl := 0;
  fyl := 0;
  fxr := 0;
  fyr := 0;
  for i := 1 to n do
  begin
    if x[i] < 0 then
      if y[i] = 0 then
        if fxl = 0 then
        begin
          fxl += 1;
          xminXl := x[i];
          xminYl := y[i];
          xmaxXl := x[i];
          xmaxYl := y[i];
        end
        else
        begin
          if x[i] < xminXl then
          begin
            xminXl := x[i];
            xminYl := y[i];
          end;
          if x[i] > xmaxXl then
          begin
            xmaxXl := x[i];
            xmaxYl := y[i];
          end;
        end
      else
        if fyl = 0 then
        begin
          fyl += 1;
          ymaxXl := x[i];
          ymaxYl := y[i];
        end
        else
          if abs(y[i]) > abs(ymaxYl) then
          begin
            ymaxXl := x[i];
            ymaxYl := y[i];
          end;
    if x[i] > 0 then
      if y[i] = 0 then
        if fxr = 0 then
        begin
          fxr += 1;
          xminXr := x[i];
          xminYr := y[i];
          xmaxXr := x[i];
          xmaxYr := y[i];
        end
        else
        begin
          if x[i] < xminXr then
          begin
            xminXr := x[i];
            xminYr := y[i];
          end;
          if x[i] > xmaxXr then
          begin
            xmaxXr := x[i];
            xmaxYr := y[i];
          end;
        end
      else
        if fyr = 0 then
        begin
          fyr += 1;
          ymaxXr := x[i];
          ymaxYr := y[i];
        end
        else
          if abs(y[i]) > abs(ymaxYr) then
          begin
            ymaxXr := x[i];
            ymaxYr := y[i];
          end;
  end;

  al := sqrt(sqr(ymaxXl - xminXl) + sqr(ymaxYl - xminYl));
  bl := sqrt(sqr(xmaxXl - ymaxXl) + sqr(xmaxYl - ymaxYl));
  cl := sqrt(sqr(xminXl - xmaxXl) + sqr(xminYl - xmaxYl));

  ar := sqrt(sqr(ymaxXr - xminXr) + sqr(ymaxYr - xminYr));
  br := sqrt(sqr(xmaxXr - ymaxXr) + sqr(xmaxYr - ymaxYr));
  cr := sqrt(sqr(xminXr - xmaxXr) + sqr(xminYr - xmaxYr));

  PL := (al + bl + cl) / 2;
  PR := (ar + br + cr) / 2;

  SR := sqrt(PR * (PR - ar) * (PR - br) * (PR - cr));
  SL := sqrt(PL * (PL - al) * (PL - bl) * (PL - cl));

  Writeln(max(SR, SL): 0: 1);

end.

















