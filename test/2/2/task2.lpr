program task2;

var
  x, y, z, w: boolean;

begin
  Writeln('x', ' ', 'y', ' ', 'z', ' ', 'w');

  for x := FALSE to TRUE do
    for y := FALSE to TRUE do
      for z := FALSE to TRUE do
        for w := FALSE to TRUE do
          if ( (x = (w or y)) or ( (not w or z) and (not y or w) )  ) = FALSE then
            Writeln(ord(x), ' ', ord(y), ' ', ord(z), ' ', ord(w));

  readln();
end.

