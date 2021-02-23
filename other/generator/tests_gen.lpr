program tests_gen;

Uses
  SysUtils;

var
  a: TextFile;
  i, j: integer;
  s: string;

procedure print(s: string);
begin
  Assign(a, s);
  ReWrite(a);
  Writeln(a, 5);
  for j := 1 to 5 do
    Writeln(a, random(21) - 10, ' ', random(21) - 10);
  Close(a);


end;

begin
  randomize();
  for i := 10 to 14 do
    print(IntToStr(i) + '.txt');
end.

