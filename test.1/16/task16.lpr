program task16;

var
  q: integer;

procedure F(n: integer);
begin
    q += n;
    if n < 4 then
    begin
        F(n + 1);
        F(n + 3);
    end;
end;

begin
  q := 0;
  F(1);
  Writeln(q);
end.

