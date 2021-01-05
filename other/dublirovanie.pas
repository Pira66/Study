program dublirovanie;

var
  x, znx, c, k, L, M: integer;

begin
  //задача 1.
  readln(znx);
  repeat
    znx -= 1;
    x := znx;
    L := 0;
    M := 0;
    while x > 0 do
    begin
      L := L + 1;
      if M < (x mod 10) then
      begin
        M := x mod 10;
      end;
      x := x div 10;
    end;
  until (L = 3) and (M = 7);
  Writeln(znx);

  //задача 2.
  readln(znx);
  repeat
    znx -= 1;
    x := znx;
    L := 0;
    M := 0;
    while x > 0 do
    begin
      L := L + 1;
      if x mod 2 = 0 then
        M := M + x mod 10;
      x := x div 10;
    end;
  until (L = 3) and (M = 8);
  Writeln(znx);

  //задача 3.
  readln(znx);
  repeat
    znx -= 1;
    x := znx;
    L := 0;
    M := 0;
    while x > 0 do
    begin
      L := L + 1;
      if M < x then
      begin
        M := (x mod 10) * 2;
      end;
      x := x div 10;
    end;
  until (L = 3) and (M = 10);
  Writeln(znx);

  //задача 4.
  readln(znx);
  repeat
    znx -= 1;
    x := znx;
    L := 0;
    M := 1;
    while x > 0 do
    begin
      L := L + 1;
      M := M * (x mod 10);
      x := x div 10;
    end;
  until (L = 2) and (M = 14);
  Writeln(znx);

  //задача 5.
  readln(znx);
  repeat
    znx += 1;
    x := znx;
    L := 0;
    M := 0;
    while x > 0 do
    begin
      L := L + 1;
      if x mod 2 = 1 then
        M := M + x mod 10;
      x := x div 10;
    end;
  until (L = 3) and (M = 8);
  Writeln(znx);

  //задача 6.
  readln(znx);
  repeat
    znx += 1;
    x := znx;
    L := 0;
    M := 1;
    while x > 0 do
    begin
      L := L + 1;
      M := M * (x mod 10);
      x := x div 10;
    end;
  until (L = 2) and (M = 21);
  Writeln(znx);

  //задача 7.
  readln(znx);
  repeat
    znx += 1;
    x := znx;
    L := 0;
    M := 10;
    while x > 0 do
    begin
      c := x mod 10;
      L := L + c;
      if c < M then
        M := c;
      x := x div 10;
    end;
  until (L = 14) and (M = 6);
  Writeln(znx);

  //задача 8.
  readln(znx);
  repeat
    znx += 1;
    x := znx;
    L := 0;
    M := 0;
    while x > 0 do
    begin
      c := x mod 2;
      if c = 0 then
        L := L + 1
      else
        M := M + 1;
      x := x div 10;
    end;
  until (L = 4) and (M = 0);
  Writeln(znx);

  //задача 9.
  readln(znx);
  repeat
    znx += 1;
    x := znx;
    L := 0;
    M := 0;
    while x > 0 do
    begin
      c := x mod 2;
      if c = 0 then
        L := L + 1
      else
        M := M + 1;
      x := x div 8;
    end;
  until (L = 3) and (M = 2);
  Writeln(znx);

  //задача 10.(ОШИБКА! РАЗОБРАТЬСЯ, ПОЧЕМУ ОТВЕТ 14, А НЕ 12).
  readln(znx);
  while znx > 0 do
  begin
    repeat
      znx -= 1;
      x := znx;
      L := 0;
      M := 0;
      while x > 0 do
      begin
        L := L + 1;
        M := M + (x mod 100);
        x := x div 100;
      end;
    until (L = 2) and (M = 12) or (znx = 0);
    c += 1;
  end;
  Writeln(c);

end.

