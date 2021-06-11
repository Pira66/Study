program Task12;

uses
  StrUtils;

var
  i: integer;
  s: string;

begin
  for i := 1 to 12 do
    s += '3';

  while (pos('333', s) > 0) or (pos('999', s) > 0) do
    if (pos('333', s) > 0) then
    begin
      s := StringReplace(s, '333', '9', []);
    end
    else
    begin
      s := StringReplace(s, '999', '3', []);
    end;

  Writeln(s); //39

  Readln();
end.

