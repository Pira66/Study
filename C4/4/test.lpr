program test;

uses
  Math;

const
  N = 5;

var
  i, optimalotvettwo, fullsearchotvettwo: integer;
  arr: array[1..N] of real;
  optimalotvetone, fullsearchotvetone: real;

function power_2(): longint; forward;

procedure full_search(var fullsearchotvetone: real; var fullsearchotvettwo: integer);
var
  l, pl: integer;
  p, pmax, ppmax, num, pnum: real;
  q, c, r: longint;

begin
  l := 0;
  pmax := 0; ppmax := pmax;
  for c := 1 to power_2() - 1 do
  begin
    num := 1000001;
    l := 0;
    p := 1; q := c;
    for i := 1 to N do
    begin
      r := q mod 2;
      if r = 1 then
      begin
        l += 1;
        if arr[i] < num then
          num := arr[i];
      end;
      q := q div 2;
      p *= ifthen(r = 1, arr[i], 1);
    end;
    pmax := max(pmax, p);
    if (pmax > ppmax) then
    begin
      ppmax := pmax;
      pl := l;
      pnum := num;
    end;
  end;
  fullsearchotvetone := pnum;
  fullsearchotvettwo := pl;
end; //вывести ответ

procedure optimal(var optimalotvettwo: real; var oprimalotvetone: integer);
var
  c, mmin, smin: real;
  q, f, sf, sq: integer;

begin
  q := 0;
  sq := 0;
  for i := 1 to N do
  begin
    if (arr[i] > 1) or ((f = 0) and (arr[i] > 1)) then
    begin
      q += 1;
      if f = 0 then
      begin
        mmin := arr[i];
        f := 1;
      end
      else
        mmin := min(mmin, arr[i]);
    end;
    if (arr[i] < 1) and (arr[i] > 0) or ((sf = 0) and (arr[i] > 1) and (arr[i] < 0)) then
    begin
      sq += 1;
      if sf = 0 then
      begin
        smin := arr[i];
        sf := 1;
      end
      else
        smin := min(smin, arr[i]);
    end;
  end;
  if q > sq then
  begin
    optimalotvetone := q;
  end
  else
    optimalotvettwo := smin;
end;

function power_2(): longint;
begin
  power_2 := 1;
  for i := 1 to N do
    power_2 *= 2;
end;

begin
  randomize();
  for i := 1 to N do
    arr[i] := random * (50);

  for i := 1 to N do
    Writeln(arr[i]: 0: 1);

  if (fullsearchotvetone = optimalotvetone) and (fullsearchotvettwo = optimalotvettwo) then
    Writeln('otveti v proecte full_search i optimal covpadaut')
  else
  begin
    Writeln(fullsearchotvettwo, ' ', fullsearchotvetone: 0: 1);
    Writeln(optimalotvettwo, ' ', optimalotvetone);
  end;

end.

