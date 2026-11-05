program nilaiakhirmahasiswa;
uses crt;


var
nama:string;
tugas,uts,uas:real;
nilai_akhir:real;



begin
    clrscr;

    write(' nama mahasiswa : ');
    readln(nama);
     write(' nilai tugas: ');
    readln(tugas);
     write(' nilai uts: ');
    readln(uts);
     write(' nilai uas: ');
    readln(uas);
    
    nilai_akhir:=(tugas*0.30)+(uts*0.30)+(uas*0.40);
    
    
    writeln('nilai akhir: ', nilai_akhir:0:2)


end.