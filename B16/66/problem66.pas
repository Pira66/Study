program problem66;

var
 fzn, n, k, t: integer;

function F(n: integer): integer;
begin
  if n <= 15 then
    F := n * n + 11;
  if (n mod 2 = 0) and (n > 15) then
    F := F(n div 2) + n * n * n - 5 * n;
  if (n mod 2 <> 0) and (n > 15) then
    F := F(n - 1) + 2 * n + 3;
end;

begin
  n := 0;
  while n < 1000 do
  begin
    n += 1;
    fzn := F(n);
    k := 0;
    while fzn > 0 do
    begin
      if fzn mod 10 = 6 then
        k += 1;
      fzn := fzn div 10;
    end;
    if k = 3 then
      t += 1;
  end;

  Writeln(t);
end.
