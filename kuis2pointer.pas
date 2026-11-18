program Tugas1;
uses crt;
type
  PReal = ^real;
  PStr  = ^string;
var
  n, i: integer;
  nama: array[1..100] of string;
  harga: array[1..100] of real;
  pHarga, pMax, pMin: PReal;
  pNama, namaMax, namaMin: PStr;
begin
  clrscr;
  write('Jumlah makanan: ');
  readln(n);

  for i := 1 to n do
  begin
    pHarga := @harga[i];
    pNama  := @nama[i];
    write('Nama makanan ke-', i, ' : ');
    readln(pNama^);
    write('Harga makanan ke-', i, ' : ');
    readln(pHarga^);
  end;

  pMax := @harga[1];  namaMax := @nama[1];
  pMin := @harga[1];  namaMin := @nama[1];
  for i := 2 to n do
  begin
    pHarga := @harga[i];
    pNama  := @nama[i];
    if pHarga^ > pMax^ then
    begin
      pMax := pHarga;
      namaMax := pNama;
    end;
    if pHarga^ < pMin^ then
    begin
      pMin := pHarga;
      namaMin := pNama;
    end;
  end;

  writeln;
  writeln('Termahal : ', namaMax^, ' (Rp ', pMax^:0:0, ')');
  writeln('Termurah : ', namaMin^, ' (Rp ', pMin^:0:0, ')');
end.