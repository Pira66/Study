program full_search;

var
  i, k, q, x, a, b, y, n, c, r, min, mmin: longint;
  testmas: ^longint;

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

  GetMem(testmas, ((y - x + 1)*3) * sizeof(longint));

  n := 0; r := 0;
  for i := x to y do
  begin
    p(i, a, b, q);
    if q = 2 then
    begin
      testmas[n] := a + b;
      testmas[n + 1] := a;
      testmas[n + 2] := b;
      n += 3;
    end;
  end;

  for i := 0 to n - 2 do
  begin
    for k := i + 1 to n - 1 do
      if (testmas[i] < testmas[k]) and (i mod 3 = 0) and (k mod  3 = 0) then
      begin
        min := testmas[k];
        mmin := k;
      end;
    c := min;
    testmas[mmin] := testmas[i];
    testmas[i] := c;

    c := testmas[mmin + 1];
    testmas[mmin + 1] := testmas[i + 1];
    testmas[i + 1] := c;

    c := testmas[mmin + 2];
    testmas[mmin + 2] := testmas[i + 2];
    testmas[i + 2] := c;
  end;

  r := 0;
  for i := 1 to n - 2 do
  begin
    r += 1;
    if i <> 1 then
      r += 2;
    if  (testmas[r] < 0) or (testmas[r + 1] < 0) then
      continue;
    Writeln(testmas[r], ' ', testmas[r + 1]);
  end;

  Freemem(pointer(testmas));

end.
