program test;

const
  N = 20;

var
  arr: array[1..N] of longint;
  i: integer;

function full_search(): longint;
var
  min: longint;
  j: integer;
begin
  min := arr[1] + arr[5];
  for i := 1 to N - 1 do
    for j := i + 1 to N do
      if j - i >= 4 then
        if arr[i] + arr[j] < min then
          min := arr[i] + arr[j];

  full_search := min;
end;

//нужен optimal2

begin
  randomize();
  for i := 1 to N do
    arr[i] := random(10001);

  //...

end.

