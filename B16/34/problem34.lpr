program problem34;

const
  Lim = 1000;

var
 i: integer;
 oon, otw, n, d, c: int64;
 cache: array[1..Lim] of int64;

procedure f(n: integer);
begin
  c += 1;
  if c = 2 then
    oon := n;
  if n > 0 then
  begin
    d := n mod 10 + cache[n div 10];
    cache[n] := d;
    c += 1;
    if c = 2 then
      otw := d;
  end
  else
    cache[n] := 0;

end;

begin
  for i := 1 to 9 do
    cache[i] := i;

  n := 0;
  repeat
    n += 1;
    d := 0;
    c := 0;
    cache :=
    f(n);
  until (oon > 5000000000000) or (otw > 5000000000000);

  Writeln(n, ' ', cache[n]);
end.
