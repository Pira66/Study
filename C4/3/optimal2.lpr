program optimal2;

uses
  Math, StrUtils;

var
  n, i, x, answer, R, m, m14, m2, m7: longint;

begin
  readln(n);

  m := 0;  //тк в последовательности все числа положительные
  m14 := 0;
  m7 := 0;
  m2 := 0;
  for i := 1 to n do
  begin
    readln(x);

    if x > m then
      m := x;

    if x mod 14 = 0 then
      if x > m14 then
        m14 := x;

    if (x mod 7 = 0) and (x mod 2 <> 0) then
      if x > m7 then
        m7 := x;

    if (x mod 2 = 0) and (x mod 7 <> 0) then
      if x > m2 then
        m2 := x;
  end;

  if (m14 <> 0) and (m <> 0) and (m * m14 > m7 * m2) then
  begin
    Writeln(m14 * m);
    answer := m14 * m;
  end
  else
    if (m7 <> 0) and (m2 <> 0) then
    begin
      Writeln(m7 * m2);
      answer := m7 * m2;
    end;

  readln(R);

  Writeln(ifthen(answer = R, 'Yes', 'No'));

end.
