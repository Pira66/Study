program task423;

var
  x, a, k: smallint;
  q: boolean;

function f(x, a: smallint): boolean;
begin
  f := (a mod 5 = 0) and (2020 mod a = 0) or ((x mod 1718 <> 0) or (2023 mod a = 0));
end;

begin
  k := 0;
  for a := 1000 downto 1 do
    for x := 1 to 1000 do
    begin
      q := False;
      if f(x, a) = True then
        k += 1;
    end;

  Writeln(k); //16960

  Readln();
end.

