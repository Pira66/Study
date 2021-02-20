program tests_gen;

var
  a, b, c, d, e: TextFile;
  i: integer;
  j: char;
  r: array[1..5] of string;

begin

  for j := 'a' to 'e' do
  begin
    Assign(j, '10.txt');
    ReWrite(j);
    Writeln(j, 5);
    for i := 1 to 5 do
      Writeln(j, random(21) - 10, ' ', random(21) - 10);
    Close(j);
  end;
  //////////////////////////////////////////////////////
  Assign(a, '10.txt');
  ReWrite(a);
  Writeln(a, 5);
  for i := 1 to 5 do
    Writeln(a, random(21) - 10, ' ', random(21) - 10);
  Close(a);

  Assign(b, '11.txt');
  ReWrite(b);
  Writeln(b, 5);
  for i := 1 to 5 do
    Writeln(b, random(21) - 10, ' ', random(21) - 10);
  Close(b);

  Assign(c, '12.txt');
  ReWrite(c);
  Writeln(c, 5);
  for i := 1 to 5 do
    Writeln(c, random(21) - 10, ' ', random(21) - 10);
  Close(c);

  Assign(d, '13.txt');
  ReWrite(d);
  Writeln(d, 5);
  for i := 1 to 5 do
    Writeln(d, random(21) - 10, ' ', random(21) - 10);
  Close(d);

  Assign(e, '14.txt');
  ReWrite(e);
  Writeln(e, 5);
  for i := 1 to 5 do
    Writeln(e, random(21) - 10, ' ', random(21) - 10);
  Close(e);

end.

