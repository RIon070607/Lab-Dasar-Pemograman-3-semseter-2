program suhutubuh;
uses crt;
var
suhu:real;
kondisi:string;

begin
    clrscr;
    write('masukkan suhu tubuh: ');
    readln(suhu);

    if suhu <36 then
    kondisi:= 'suhu rendah';
    if (suhu >=36) and (suhu <=37.5) then
    kondisi:='suhu normal';
    if suhu >37.5 then
    kondisi:='Demam';

    writeln('kondisi badan: ',kondisi)

        
  

end.