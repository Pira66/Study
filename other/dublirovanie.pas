program dublirovanie;

var
  x, znx, zn, c, k, L, M, i: integer;
  a: array[1..10] of integer;
  b: array[1..2,1..10] of integer;

function F(var znx: integer; zn: integer): integer;
begin
  if zn := 32000 then
    znx -= 1 else
    znx += 1;
end;

begin
  //присваиваем значение znx к каждой задаче.
  for i := 1 to 10 do
    read(a[i]);

  //присваиваем значение L и M к каждой задаче.
  for i := 1 to 10 do
    read(b[1, i], b[2, i]);

  //задача 1.
  znx := a[1];
  zn := znx;
  repeat
    F(znx, zn);
    x := znx;
    L := b[1, 1];
    M := b[2, 1];
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
  znx := a[2];
  zx := znx;
  repeat
    F(znx, zn);
    x := znx;
    L := b[1, 2];
    M := b[2, 2];
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
  znx := a[3];
  zn := znx
  repeat
    F(znx, zn);
    x := znx;
    L := b[1, 3];
    M := b[2, 3];
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
  znx := a[4];
  zn := znx;
  repeat
    F(znx, zn);
    x := znx;
    L := b[1, 4];
    M := b[2, 4];
    while x > 0 do
    begin
      L := L + 1;
      M := M * (x mod 10);
      x := x div 10;
    end;
  until (L = 2) and (M = 14);
  Writeln(znx);

  //задача 5.
  znx := a[5];
  zn := znx;
  repeat
    F(znx, zn);
    x := znx;
    L := b[1, 5];
    M := b[2, 5];
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
  znx := a[6];
  zn := znx;
  repeat
    F(znx, zn);
    x := znx;
    L := b[1, 6];
    M := b[2, 6];
    while x > 0 do
    begin
      L := L + 1;
      M := M * (x mod 10);
      x := x div 10;
    end;
  until (L = 2) and (M = 21);
  Writeln(znx);

  //задача 7.
  znx := a[7];
  zn := znx;
  repeat
    F(znx, zn);
    x := znx;
    L := b[1, 7];
    M := b[2, 7];
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
  znx := a[8];
  zn := znx;
  repeat
    F(znx, zn);
    x := znx;
    L := b[1, 8];
    M := b[2, 8];
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
  znx := a[9];
  zn := znx;
  repeat
    F(znx, zn);
    x := znx;
    L := b[1, 9];
    M := b[2, 9];
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
  znx := a[10];
  zn := znx;
  while znx > 0 do
  begin
    repeat
      F(znx, zx);
      x := znx;
      L := b[1, 10];
      M := b[2, 10];
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
end;

end.

