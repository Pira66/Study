program SortirovkaByMe;

const
  N = 10;

var
  a: array[1..N] of integer;
  i, j: integer;
  t: integer;//временное хранение значения заменяемого элемента
  m: integer;//индекс последнего минимума

begin
  randomize();
  for i := 1 to N do
    a[i] := random(41) - 20;

  for i := 1 to N do
    Write (a[i], ' ');
  Writeln();

  for i := 1 to N - 1 do
  begin
    m := i;
    for j := i + 1 to N do
      if a[j] < a[m] then
        m := j;
    t := a[i];
    a[i] := a[m];
    a[m] := t;
  end;

  for i := 1 to N do
    Write (a[i], ' ');
  Writeln();


end.

