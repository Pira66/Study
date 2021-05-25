program task14;

uses
  Math;

var
  a, q: integer;

begin
  a := 125 + 25**3 + 5**9;

  //Writeln('Read from right to left'); //Проверка
  q := 0;
  while a > 0 do
  begin
    if a mod 5 = 0 then
      q += 1;
    //Write(a mod 5); //Проверка
    a := a div 5;
  end;
  Writeln();

  Writeln('Answer:', ' ', q);
  Readln();
end.
//Можно просто вывести патеричную запись и посчитать нули, но так удобнее.(+Проверка)
