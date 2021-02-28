program tests_gen1;//для задания 1

Uses
  SysUtils;

var
  a: TextFile;
  i, j, q, n: integer;
  s: string;

procedure write_test_data_to_file(s: string);
begin
  Assign(a, s);
  ReWrite(a);
  Writeln(a, n);
  for j := 1 to n do
    Writeln(a, random(21) - 10, ' ', random(21) - 10);
  Close(a);


end;

begin
  randomize();
  q := StrToInt(Paramstr(1));
  n := StrToInt(Paramstr(2));
  for i := 1 to q do
    write_test_data_to_file(IntToStr(i) + '.txt');
end.
