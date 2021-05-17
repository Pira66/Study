program task2;

var
  x, y, z: boolean;

function F(x, y, z: boolean): boolean;
begin
  F := not z and x or x and y;
end;

begin
  Writeln('x', ' ', 'y', ' ', 'z', ' ', 'F');

  for x := FALSE to TRUE do
    for y := FALSE to TRUE do
      for z := FALSE to TRUE do
        Writeln(ord(x), ' ', ord(y), ' ', ord(z), ' ', ord(F(x, y, z)));

  Readln();
end.

