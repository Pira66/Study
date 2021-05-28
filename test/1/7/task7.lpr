program task7;

uses
  Math;

var
  I, v, j, q: integer;
  t: real;

begin
  I := 200 * 2**23;
  v := 256 * 1000;
  q := 2;
  j := 16;
  t := I / (q * v * j);

  Writeln(t);//205
end.

