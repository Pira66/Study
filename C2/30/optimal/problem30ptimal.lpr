program problem30ptimal;

const
  N = 10;

var
  a: array [1..N] of integer;
  i, k, el: integer;

begin
  for i := 1 to N do
    read(a[i]);

  k := 0;
  for i := 1 to N do
    if a[i] > 0 then
    begin
      k += 1;
      el := a[i];
      if k = 3 then
        break;
    end;

  Writeln(el);
end.

