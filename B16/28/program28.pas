program program28;

var
  n, a: integer;

  procedure F(n: integer);
  begin
    a := a + 2 * n + 1;
    if n > 1 then
    begin
      a := a + 3 * n - 8;
      F(n - 1);
      F(n - 4);
    end;
  end;

begin
  n := 1;
  repeat
    a := 0;
    n += 1;
    F(n);
  until a > 5000000;

  Writeln(n, ' ', a);
end.

