program problem24optimal;

uses
  math;

var
  s: string = '';
  i: integer;
  q: integer;    //текущее кол-во рядом стоящих и не равных друг другу элементов
  mq: integer;   //максимальное кол-во рядом стоящих и не равных друг другу элементов
  pc: char;      //предыдущий символ

begin
  readln(s);

  q := 1;
  mq := 1;
  pc := s[1];
  for i := 2 to length(s) do
  begin
    if pc = s[i] then
      q := 1
    else
      q += 1;
    mq := max(q, mq);
    pc := s[i];
  end;

  Writeln(mq);

end.
