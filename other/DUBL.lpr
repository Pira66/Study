program DUBL;

var
//объявление пары переменных??

function f1(x: integer): pair;
  var L, M: integer;
begin
  L:=0; M:=0;
  while x > 0 do begin
    L:= L + 1;
    if x mod 2 = 0 then
      M:= M + x mod 10;
    x:= x div 10;
  end;
  f1.a := L;
  f2.b := M;
end;

function f2(x: integer): pair;
  var L, M: integer;
begin
  L := 0; M := 0;
  while x > 0 do begin
    L := L + 1;
    if x mod 2 = 0 then
      M := M + x mod 10;
    x := x div 10;
  end;
  f2.a := L;
  f2.b := M;
end;

function f3(x: integer): pair;
  var L, M: integer;
begin
  L:=0; M:=0;
  while x > 0 do begin
    L:=L+1;
    if M < x then begin
      M:= (x mod 10) * 2;
    end;
    x:= x div 10;
  end;
  f3.a := L;
  f3.b := M;
end;

function f4(x: integer): pair;
  var L, M: integer;
begin
  L := 0; M := 1;
  while x > 0 do begin
      L := L + 1;
      M := M * (x mod 10);
      x := x div 10;
    end;
  f4.a := L;
  f4.b := M;
end;

function f5(x: integer): pair;
  var L, M: integer;
begin
  L:=0; M:=0;
  while x > 0 do begin
    L:= L + 1;
    if x mod 2 = 1 then
      M:= M + x mod 10;
    x:= x div 10;
  end;
  f5.a := L;
  f5.b := M;
end;

begin
  for x := 32000 downto -32000 do
  begin
    p := f1(x);
    if (p.a = 3) and (p.b = 7) then
      break;
  end;
  Writeln(x);

  for x := 32000 downto -32000 do
  begin
    p := f2(x);
    if (p.a = 3) and (p.b = 8) then
      break;
  end;
  Writeln(x);

  for x := 32000 downto -32000 do
  begin
    p := f3(x);
    if (p.a = 3) and (p.b = 10) then
      break;
  end;
  Writeln(x);

  for x := 32000 downto -32000 do
  begin
    p := f4(x);
    if (p.a = 2) and (p.b = 14) then
      break;
  end;
  Writeln(x);

  for x := -32000 to 32000 do
  begin
    p := f5(x);
    if (p.a = 3) and (p.b = 8) then
      break;
  end;
  Writeln(x);

end.



