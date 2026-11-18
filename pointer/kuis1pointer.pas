program Tugas2;
uses crt;

var
  x: integer;
  i,j,k:^word;
  p1,p2:^integer;
begin
clrscr;
  x :=100;
  p1 := @x;
  p2 := @x;

  i:= addr(p1);
  j:= addr(p2);
 

  writeln(' nilai @x  = ', x);
  writeln('Alamat di p1    : ', i^, ', nilai p1^ = ', p1^);
  writeln('Alamat di p2    : ', j^, ', nilai p2^ = ', p2^);

  p1^ := 25;
  writeln;
  writeln('Setelah p1^ := ',p1^);
  writeln('x   = ', x);
  writeln('p2^ = ', p2^, ' (ikut berubah, karena menunjuk x yang sama)');
end.
