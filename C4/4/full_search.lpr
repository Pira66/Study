program full_search;

uses
  Math, SysUtils;

const
  LIM = 10000;

var
  i, n, q, c, r: longint;
  a: array[1..LIM] of real;
  p, pmax, ppmax, num, pnum: real;
  l, pl: integer;

function power_2(n: smallint): longint;
begin
  power_2 := 1;
  for i := 1 to n do
    power_2 *= 2;
end;

begin
  readln(n);

  for i := 1 to n do
    readln(a[i]);

  l := 0;
  pmax := 0; ppmax := pmax;
  for c := 1 to power_2(n) - 1 do
  begin
    num := 1000001;
    l := 0;
    p := 1; q := c;
    for i := 1 to n do
    begin
      r := q mod 2;
      if r = 1 then
      begin
        l += 1;
        if a[i] < num then
          num := a[i];
      end;
      q := q div 2;
      p *= ifthen(r = 1, a[i], 1);
    end;
    pmax := max(pmax, p);
    if (pmax > ppmax) then
    begin
      ppmax := pmax;
      pl := l;
      pnum := num;
    end;
  end;

  Writeln(pl, ' ', pnum: 0: 1);

end.
