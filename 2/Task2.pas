program Project2;

uses
  StrUtils;

var
  i: integer;
  s: string = '';

begin
  for i := 1 to 82 do
    s := s + '1';
  while (pos('11111', s) + pos('888', s) > 0) do
  begin
    if pos('11111', s) > 0 then
      s := StringReplace(s, '11111', '88', [])
    else
      s := StringReplace(s, '888', '8', []);
  end;
  Writeln(s);
  readln;
end.
