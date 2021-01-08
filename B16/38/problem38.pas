program problem38;

var
  n, m, k: integer;

function F(n, m: integer): integer;
begin
 if m = 0 then
   F := 0
 else
 begin
   m -= 1;
   F := n + F(n, m);
 end;
end;

begin
  n := 1;
  m := 1;
  while n > 0 do
  begin
    n += 1;
    F(n, m);
    if F(n, m) = 30 then
    begin
      k += 1;
      break;
    end;
  end;

  Writeln(k);  //нужно определить количество различных значений n таких,
               //что n и m – натуральные числа, а значение F(n, m) равно числу 30.
end.           //Но в программе именяется только значение n, m остаётся 1. Таким образом получается 1 значение n, так как дальше идут только числа > 30.

//???
