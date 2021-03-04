program full_search;

Uses
  Math;

const
  LIM = 1000;

var
  a: array[1..LIM] of longint;
  i, j, n, R, p: integer;

begin
  Assign(input, 'tests/00');
  reset(input);

  readln(n);
  for i := 1 to n do
    readln(a[i]);
  readln(R);

  p := 0;
  for i := 1 to n - 1 do
    for j := i + 1 to n do
      if (a[i] * a[j]) mod 14 = 0 then
        p := max(p, a[i] * a[j]);

  Writeln(p);
  Writeln(ifthen(p = R, 'Control confirmed', 'Control not confirmed!'));
end.

