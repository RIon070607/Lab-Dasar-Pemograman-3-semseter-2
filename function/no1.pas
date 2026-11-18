program faktorial_rekursi;
uses crt;

function faktorial(n : integer):integer;
begin
  if n <= 1 then
    faktorial := 1
  else
    faktorial := n * faktorial(n - 1);
end;

var
  n : integer;

begin
  clrscr;
  write('Nilai : ');
  readln(n);
  writeln('Hasil : ', faktorial(n));
  readln;
end.
