program program28;

var
  n, a: integer;

procedure F(n: integer; var a: integer);
begin
  a := a + 2 * n + 1;
  if n > 1 then
  begin
    a := a + 3 * n - 8;
    n -= 1;
    F(n, a);
    n-=4;
    F(n, a);
  end;
  Writeln(a);
end;

begin
  n := 1;
  repeat
    a := 0;
    n += 1;
    F(n, a);
  until a > 5000000;

  Writeln(n, ' ',a);//45
end.

