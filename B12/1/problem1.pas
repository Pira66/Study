program problem1;

uses
  StrUtils;

var
  i: integer;
  s: string = '';

begin
  for i := 1 to 101 do
    s := s + '1';

  while (pos('1111', s) > 0) do
  begin
      s := StringReplace(s, '1111', '22', []);
      s := StringReplace(s, '222', '1', []);
  end;

  Writeln(s);
  readln;
end.
