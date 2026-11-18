program Luaslingkaran;
uses crt;

function luas (r :real):real;
begin
    luas:= 3.14*r*r;
end;

begin
clrscr;
writeln('luas lingkaran adalah: ',luas(15):0:4);
readkey;
end.
