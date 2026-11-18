program ptop1;
uses crt;

var
  angka : integer;
  p     : ^integer;
  pp    : ^PInteger;

begin

  angka := 7;
  p := @angka; // alamat dr var angka
  pp := @p;
  writeln('Angkanya : ', angka);
  writeln('Pointer 1 : ', p^); // ambil nilai dr var angka
  writeln('Pointer to another pointer : ', pp^^); // ke pointer 1

  pp^^ := 99; // ubah nilai angka lewat pointer to pointer
  writeln;
  writeln('Setelah diubah lewat pp^^ := 99');
  writeln('Angkanya : ', angka);
  writeln('Pointer 1 : ', p^);
  writeln('Pointer to another pointer : ', pp^^);
end.
