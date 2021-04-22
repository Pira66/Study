program test;

uses
  Math;

const
  N = 20;

var
  arr: array[1..N] of longint;
  i, j: integer;

function full_search(): longint;
var
  p: longint;
begin
  p := 0;
  for i := 1 to n - 1 do
    for j := i + 1 to n do
      if (arr[i] * arr[j]) mod 14 = 0 then
        p := max(p, arr[i] * arr[j]);
  full_search := p;
end;

function optimal(): longint;
var
  m, m14, m7, m2: longint;
begin
  m := 0;
  m14 := 0;
  m7 := 0;
  m2 := 0;
  for i := 1 to n do
  begin
    if arr[i] > m then
      m := arr[i];
    if arr[i] mod 14 = 0 then
      if arr[i] > m14 then
        m14 := arr[i];
    if (arr[i] mod 7 = 0) and (arr[i] mod 2 <> 0) then
      if arr[i] > m7 then
        m7 := arr[i];
    if (arr[i] mod 2 = 0) and (arr[i] mod 7 <> 0) then
      if arr[i] > m2 then
        m2 := arr[i];
  end;

  if (m14 <> 0) and (m <> 0) and (m * m14 > m7 * m2) then
    optimal := m14 * m
  else
  if (m7 <> 0) and (m2 <> 0) then
    optimal := m7 * m2;

end;

begin
  randomize();
  for i := 1 to N do
    arr[i] := random(1001);

  if full_search <> optimal then
    Writeln(full_search, ' ', optimal)
  else
    Writeln('otveti v proecte full_search i optimal covpadaut');
end.

