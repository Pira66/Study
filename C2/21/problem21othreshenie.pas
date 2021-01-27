program problem21othreshenie;

const
  N = 10;

var
  i, max, x, q: integer;

begin
  read(max);
  q := 1;

  for i := 2 to N do
  begin
    readln(x);
    if (x = max) then
      q += 1
    else if (x > max) then
    begin
      max := x;
      q := 1;
    end;
  end;

  Writeln('kol-vo max elementov:', ' ',q);

end.
