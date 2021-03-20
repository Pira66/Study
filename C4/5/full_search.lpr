program full_search;

const
  Lim = 10000;

var
  n, i, j, f, q, pq, number: integer;
  K: array[1..Lim] of integer;
  D: array[1..Lim] of integer;

begin
  readln(n);
  for i := 1 to n do
    readln(D[i], K[i]);

  for i := 1 to n do
    if K[i] mod D[i] <> 0 then
      K[i] := K[i] mod D[i]
    else
      K[i] := 0;

  f := 0;
  pq := 0;
  for i := 1 to n - 1 do
  begin
    q := 0;
    for j := i + 1 to n do
      if K[i] = K[j] then
        q += 1;
      if q > pq then
        pq := 1;
      if K[i] > number then
        number := K[i];
  end;

  if pq <> 0 then
    Writeln(number)
  else
    Writeln(0);

end.
