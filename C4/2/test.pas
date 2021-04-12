program test;

uses
  Math;

const
  N = 20;
  INF = 60000;

var
  i: integer;
  arr: array[1..N] of longint;
  a, b, c, d, e, f, z: longint;

function full_search(): longint;
var
  s, m, em: longint;
  f, j: integer;
begin
  m := arr[1] + arr[2];
    for i := 1 to N - 1 do
      for j := i + 1 to N do
      begin
        s := arr[i] + arr[j];
        m := min(m, s);
        if (s mod 2 = 0) and ((s < em) or (f = 0)) then
        begin
          f := 1;
          em := s;
        end;
      end;

    if f = 1 then
      full_search := em
    else
      full_search := m;
end;

procedure update_min(var a, b: longint; x: longint); forward;

function optimal(): longint;
begin
  a := INF;
  b := INF;
  c := INF;
  d := INF;
  e := INF;
  f := INF;

  for i := 1 to N do
  begin
    update_min(a, b, arr[i]);
    if arr[i] mod 2 = 0 then
      update_min(c, d, arr[i])
    else
      update_min(e, f, arr[i])
    end;

    if (d < INF) or (f < INF) then
      optimal := min(c + d, e + f)
    else
      optimal := a + b;
end;

procedure update_min(var a, b: longint; x: longint);
begin
  if x <= a then
  begin
    b := a;
    a := x;
  end
  else
    if x <= b then
      b := x;
end;

begin
  randomize();
  for i := 1 to N do
    arr[i] := random(101);

  for i := 1 to N do
    Write(arr[i], ' ');
  Writeln();

  Writeln(full_search, ' ', optimal);

end.

