program full_search;  //усложнённый вариант с суммой сомножителей

var
  i, k, q, x, a, b, y, n, c: longint;
  mas: array[1..100] of longint;
  pmaso: array[1..200] of longint;
  pmast: array[1..200] of longint;

procedure p(i: longint; var a, b, q: longint);
  var j: longint;
begin
  q := 0;
  for j := 2 to i - 1 do
    if i mod j = 0 then
    begin
      q := q + 1 ;
      if q = 1 then
        a := j;
      if q = 2 then
        b := j;
    end;
end;

begin
  //assign(input, 'tests\00');
  //reset(input);

  readln(x, y);
  n := 0;
  for i := x to y do
  begin
    p(i, a, b, q);
    if q = 2 then
    begin
      n += 1;
      mas[n] := a + b;
      pmaso[n] := a;
      pmast[n] := b;
    end;
  end;

  for i := 1 to n - 1 do
    for k := i + 1 to n do
      if mas[k] > mas[i] then
      begin
        c := mas[k];
        mas[k] := mas[i];
        mas[i] := c;

        c := pmaso[k];
        pmaso[k] := pmaso[i];
        pmaso[i] := c;

        c := pmast[k];
        pmast[k] := pmast[i];
        pmast[i] := c;
      end;

  for i := 1 to n do
    Writeln(pmaso[i], ' ', pmast[i]);

end.























