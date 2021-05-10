program task25;

var
  i, j, k, c: longint;
  A: array of longint;
  n, q: integer;

procedure p();
begin
  for j := 1 to i do
    if i mod j = 0 then
    begin
      A[n] := j;
      n += 1;
      q += 1;
    end;
end;

begin
  for i := 125256 to 125330 do
  begin
    SetLength(A, 75);

    n := 0; q := 0;
    p();

    if q = 6 then
    begin
      for j := 0 to n - 1 do
        for k := j + 1 to n do
          if A[j] > A[k] then
          begin
            c := A[j];
            A[j] := A[k];
            A[k] := c;
          end;
      for j := 0 to n do
        Write(A[n], ' ');
      Writeln(); Writeln();
    end
    else
      SetLength(A, 0);
  end;
end.

