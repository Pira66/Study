program task229;

uses
  School;

var
  s: string;
  N, q, a: integer;

begin
  q := 0;
  for N := 2 to 32000 do
  begin
    s := bin(N);
        
    s += s[length(s) - 1];
    
    s += s[2];
    
    a := dec(s, 2);
    
    if (a >= 100) and (a <= 150) then
      q += 1;
  end;

  Writeln(q);
end.