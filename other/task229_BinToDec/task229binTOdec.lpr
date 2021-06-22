program task229binTOdec;

uses
  SysUtils;

var
  s: string;
  N, q, a: integer;

function decTObin(dec: integer): integer;
var
  bin, rank, ost: integer;
begin
  bin := 0;
  rank := 1;
  while dec > 0 do
  begin
    ost := dec mod 2;
    dec := dec div 2;
    bin := bin + ost * rank;
    rank := rank * 10;
  end;
  s := IntToStr(bin);
end;

function binTOdec(bin: integer): integer;
var
  dec, step, rank: integer;
begin
  step := 1;
  dec := 0;
  while bin > 0 do
  begin
    rank := bin mod 10;
    bin := bin div 10;
    dec := dec + rank * step;
    step *= 2;
  end;

  a := dec;
end;

begin
  q := 0;
  for N := 2 to 32000 do
  begin
    decTObin(N);

    s += s[length(s) - 1];

    s += s[2];

    a := StrToInt(s);
    binTOdec(a);

    if (a >= 100) and (a <= 150) then
      q += 1;
  end;

  Writeln(q);
end.
