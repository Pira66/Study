program full_search;

var
  x, y, i, a, b, q: longint;

procedure p(i: longint; var a, b, q: longint);
var
  j: longint;

begin
  q := 0;
  for j := 2 to i - 1 do
    if i mod j = 0 then
    begin
      q := q + 1;
      if q = 1 then
        a := j;
      if q = 2 then
        b := j;
    end;
end;

begin
  //assign(input, 'tests/00');
  //reset(input);

  readln(x, y);

  for i := x to y do
  begin
    p(i, a, b, q);
    if q = 2 then
      Writeln(a, ' ', b);
  end;
end.