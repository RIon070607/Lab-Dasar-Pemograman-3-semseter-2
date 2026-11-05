program cek_prima;
uses crt;

function prima(n : integer): boolean;
var
  i : integer;
begin
  if n < 2 then
    prima := false
  else
  begin
    prima := true;
    for i := 2 to n - 1 do
      if n mod i = 0 then
        prima := false;
  end;
end;

var
  angka : integer;

begin
  clrscr;
  write('Angka : ');
  readln(angka);

  if prima(angka) then
    writeln('Prima')
  else
    writeln('Non-Prima');
  readln;
end.
