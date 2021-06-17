program task5;

uses
  school;

var
  r: string;
  i: integer;

begin
  for i := 124 downto 1 do
  begin
    if i mod 2 = 0 then
      r := bin(i) + '01'  //bin - перевод в двоичную систему счисления
    else
      r := bin(i) + '10';
    if dec(r, 2) < 125 then
      Writeln(i, ' ', '-->', ' ', dec(r, 2)); //dec - перевести в десятичную систему счисления
  end;
  Readln();
end. 
//Ответ: 121    