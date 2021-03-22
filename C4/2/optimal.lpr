program optimal;

var
  i, n, a, b, c, d, ch, fch, fnch, ci: integer;

begin
  readln(n);

  fch := 0;
  fnch := 0;
  for i := 1 to n do
  begin
    readln(ch);
    if i = 1 then
      c := ch;
    if i = 2 then
      d := ch;
    if i > 2 then
      if (ch < c) or (ch < d) then
      begin
        if (c > d) and (ch <= c) then
          c := ch;
        if (c > d) and (ch <= d) then
        begin
          c := d;
          d := ch;
        end;
        if (d > c) and (ch < d) then
          d := ch;
        if (d > c) and (c < d) and (ch < c) then
        begin
          d := c;
          c := ch;
        end;
      end;
    if ch mod 2 = 0 then
    begin
      if fch = 0 then
      begin
        a := ch;
        fch += 1;
        ci := i;
      end;
      if (fch = 1) and (ci <> i) then
      begin
        b := ch;
        fch += 1;
        ci := i;
      end;
      if (fch = 2) and (ci <> i) then
      begin
        if (ch < a) or (ch < b) then
        begin
          if (a < b) and (ch >= a) then
            b := ch;
          if (a < b) and (ch <= a) then
          begin
            b := a;
            a := ch;
          end;
          if (b < a) and (ch >= b) then
            a := ch;
          if (b < a) and (ch <= b) then
          begin
            a := b;
            b := ch;
          end;
        end;
      end;
    end;
  end;

  if fch = 2 then
    Writeln(a + b)
  else
    Writeln(c + d);
end.
