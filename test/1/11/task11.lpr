program task11;

uses
  Math;

var
  n, i: integer;
  q: real;

begin
  n := (27 * 2) + 10;
  Writeln(n);//64

  i := 6; //2**6 = 64

  q := 6 * 6;//36 бит на 1 пароль.

  q *= 55;
  Writeln(q);

  q /= 8;
  Writeln(q);//248(247,5)
end.
{N = 2^i
 Длина пароля = 6 символов (27 * 2 различных букв, десятичные цифры)}
