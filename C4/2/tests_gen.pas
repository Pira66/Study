program tests_gen2;//для задания 2

Uses
  SysUtils;

var
  a: TextFile;
  i, j: integer;
  q: integer;   //кол-во тестов
  n: integer;   //кол-во строк в тестах
  s: string;

procedure write_test_data_to_file(s: string);
begin
  Assign(a, s);
  Rewrite(a);
  Writeln(a, n);
  for j := 1 to n do
    Writeln(a, random(3001));
  Close(a);
end;

begin
  randomize();
  q := StrToInt(Paramstr(1));
  n := StrToInt(Paramstr(2));
  for i := 1 to q do
    write_test_data_to_file(IntToStr(i) + '.txt');
end.
