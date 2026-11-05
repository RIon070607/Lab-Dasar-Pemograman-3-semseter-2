program hoaxhunter;
uses crt;

var
  nama: string;
  i: integer;
  pilihan: char;
  jawab, kunci: array[1..10] of char;

{ Prosedur Efek Mengetik Teks Bertahap (Typewriter Effect) }
procedure TypeWrite(s: string; d: integer);
var
  k: integer;
begin
  for k := 1 to length(s) do
  begin
    write(s[k]);
    delay(d);
  end;
  writeln;
end;

{ 2. Animasi Loading Interaktif dengan Progress Bar (0% - 100%) }
procedure Loading;
var
  p, b: integer;
begin
  clrscr;
  textcolor(cyan);
  gotoxy(25, 10);
  TypeWrite('INITIALIZING CYBER SYSTEM...', 15);
  
  for p := 0 to 100 do
  begin
    gotoxy(20, 12);
    textcolor(yellow);
    write('LOADING... [');
    
    textcolor(green);
    for b := 1 to (p div 5) do
      write('#');
    for b := (p div 5) + 1 to 20 do
      write('  ');
      
    textcolor(yellow);
    write('] ', p:3, '%');
    
    delay(10); { Kecepatan optimal agar tidak terlalu lama }
  end;
  delay(150);
  clrscr;
  while keypressed do readkey;   
end;

{ 1. Opening Cinematic & Slogan Transition }
procedure OpeningCinematic;
begin
  clrscr;
  textcolor(blue);
  writeln('======================================================================');
  textcolor(cyan);
  write('                   ');
  TypeWrite('HOAX HUNTER : BATTLE OF TRUTH', 25);
  textcolor(blue);
  writeln('======================================================================');
  writeln;
  
  textcolor(yellow);
  gotoxy(23, 6);
  TypeWrite('Enjoy the game! Keep fighting!', 20);
  
  textcolor(green);
  gotoxy(10, 8);
  TypeWrite('Discover facts, detect hoaxes, distinguish opinions!', 15);
  
  writeln;
  writeln;
  textcolor(red);
  gotoxy(24, 11);
  writeln('PRESS ANY KEY TO START');
  textcolor(blue);
  writeln('======================================================================');
  readkey;
end;

{ 3. Warning Cinematic (Peringatan Cyber & Berpikir Kritis) }
procedure WarningScreen;
begin
  clrscr;
  writeln;
  writeln;
  textcolor(red);
  writeln('                     WARNING !!!!                    ');
  writeln('======================================================');
  textcolor(yellow);
  writeln(' The game Hoax Hunter contains information and issues');
  writeln(' inspired by real-world events, including social');
  writeln(' issues, government affairs, and global developments.');
  writeln(' It also includes satire aimed at various phenomena');
  writeln(' occurring in society.');
  writeln;

  writeln(' Some content may contain opinions, differing');
  writeln(' perspectives, humor, and satire related to certain');
  writeln(' issues. The information presented in this game does');
  writeln(' not necessarily represent facts that have been fully');
  writeln(' verified.');
  writeln;

  writeln(' Players are encouraged to think critically, check');
  writeln(' information sources, and understand the context');
  writeln(' before drawing conclusions. Do not believe');
  writeln(' everything immediately, but do not reject it either');
  writeln(' before finding out the truth.');
  writeln;

  writeln(' By continuing the game, players acknowledge that');
  writeln(' they have read and understood this warning.');
  textcolor(red);
  writeln('======================================================');
  delay(4000);
end;

{ 5. Main Menu Interaktif }
procedure TampilanMenu;
begin
  textcolor(blue);
  writeln;
  writeln;
  writeln('====================================================================');
  writeln('=                            MAIN MENU                              =');
  writeln('====================================================================');
  textcolor(cyan);
  writeln('            (1)                PLAY                                 ');
  writeln('            (2)           GAME INSTRUCTIONS                         ');
  writeln('            (3)                QUIT                                 ');
  textcolor(white);
  write('Pilih (1-3): ');
end;

procedure IsiKunci;
begin
  kunci[1]  := 'H';
  kunci[2]  := 'F';
  kunci[3]  := 'O';
  kunci[4]  := 'H';
  kunci[5]  := 'H';
  kunci[6]  := 'H';
  kunci[7]  := 'F';
  kunci[8]  := 'F';
  kunci[9]  := 'F';
  kunci[10] := 'O';
end;

{ 7. Question Animation (Soal Kuis & Pernyataan Asli) }
procedure TampilSoal(n: integer);
begin
  case n of
    1: writeln(' MK memutuskan ijazah Wakil Presiden Gibran sah.');
    2: begin
         writeln(' Pemuda Yahudi Ortodoks bentrok dengan pasukan Israel dan');
         writeln(' menyebut IDF Nazi.');
       end;
    3: writeln(' Kehadiran data center dapat menjadi berkah atau musibah.');
    4: begin
         writeln(' IMF memaksa Presiden Prabowo menerima pinjaman besar');
         writeln(' berbunga tinggi sehingga Indonesia terancam krisis moneter.');
       end;
    5: begin
         writeln(' Tersedia pendaftaran BSU Rp300.000 per bulan untuk');
         writeln(' Oktober-Desember 2026 melalui tautan Facebook.');
       end;
    6: begin
         writeln(' Presiden Prabowo memberi uang Rp5 triliun dan mobil kepada');
         writeln(' setiap pemain Timnas Indonesia setelah juara FIFA ASEAN');
         writeln(' Cup 2026.');
       end;
    7: begin
         writeln(' iPhone 18 Pro dan Pro Max resmi dijual di Indonesia pada');
         writeln(' 16 Oktober 2026.');
       end;
    8: begin
         writeln(' Baru sekitar 8 persen Zona Musim di Indonesia memasuki');
         writeln(' musim hujan hingga pertengahan Oktober 2026 (data BMKG).');
       end;
    9: begin
         writeln(' BMKG mendeteksi 1.297 titik panas di Indonesia pada');
         writeln(' 14 Oktober 2026.');
       end;
    10: writeln(' Kearifan lokal memudar ketika korupsi dianggap normal.');
  end;
end;

{ 12. Explanation Screen }
procedure TampilPenjelasan(n: integer);
begin
  case n of
    1: begin
         writeln('  Klaim ini tidak benar. MK tidak menemukan bukti meyakinkan');
         writeln('  soal ijazah/sertifikat luar negeri Gibran untuk penyetaraan');
         writeln('  SMA. Namun MK tidak membatalkan jabatan Gibran karena');
         writeln('  pemohon dinilai tidak punya kedudukan hukum (legal standing).');
       end;
    2: begin
         writeln('  Pemuda Yahudi Ortodoks memang bentrok dengan aparat Israel');
         writeln('  dalam aksi protes dan menyebut tentara serta polisi');
         writeln('  perbatasan "Nazi". Ini terkait wajib militer, setelah');
         writeln('  Mahkamah Agung Israel mencabut pengecualian puluhan tahun.');
       end;
    3: begin
         writeln('  Ini pendapat Andreas Maryoto. Pusat data memang terus');
         writeln('  bertambah, tetapi menilainya berkah atau musibah bergantung');
         writeln('  sudut pandang: ada manfaat teknologi, ada pula dampak');
         writeln('  lingkungan dan penggunaan sumber daya.');
       end;
    4: begin
         writeln('  Komdigi menyatakan klaim ini tidak benar. Pinjaman IMF');
         writeln('  bergantung pada permintaan dan persetujuan negara yang');
         writeln('  bersangkutan, bukan paksaan seperti yang dikatakan dalam');
         writeln('  video YouTube tersebut.');
       end;
    5: begin
         writeln('  Tim pemeriksa fakta Tirto (CekFakta) menemukan tautan itu');
         writeln('  bukan dari kanal resmi Kementerian Ketenagakerjaan. Situsnya');
         writeln('  meminta nama lengkap, provinsi, dan nomor Telegram sehingga');
         writeln('  berpotensi menyalahgunakan data pribadi.');
       end;
    6: begin
         writeln('  ANTARA (tim JACX) menyatakan klaim ini tidak berdasar.');
         writeln('  Tidak ada pernyataan resmi Presiden soal hadiah itu, dan');
         writeln('  bonus Timnas adalah kewenangan Ketum PSSI, Erick Thohir.');
       end;
    7: begin
         writeln('  Menurut iNews, iPhone 18 Pro dan Pro Max mulai dijual resmi');
         writeln('  di Indonesia pada 16 Oktober 2026, dengan kamera utama');
         writeln('  48 MP, chip A20 Pro, dan iOS 27.');
       end;
    8: begin
         writeln('  BMKG melaporkan hingga pertengahan Oktober 2026 baru');
         writeln('  sekitar 8 persen Zona Musim yang masuk musim hujan,');
         writeln('  sedangkan Jawa, Bali, dan Nusa Tenggara masih kemarau.');
       end;
    9: begin
         writeln('  BMKG mendeteksi 1.297 titik panas berkepercayaan tinggi');
         writeln('  pada 14 Oktober 2026, terbanyak di Sumatera (505 titik).');
         writeln('  Data ini jadi penanda kewaspadaan kebakaran hutan dan lahan.');
       end;
    10: begin
         writeln('  Ini pendapat Komaruddin Hidayat. Ia menilai korupsi terjadi');
         writeln('  saat nilai moral (jujur, gotong royong, menjaga kehormatan)');
         writeln('  tidak diterapkan dalam birokrasi. Ini penilaian, bukan data');
         writeln('  yang bisa diukur.');
       end;
  end;
end;

{ 12. Reference Source Screen }
procedure TampilSumber(n: integer);
begin
  writeln('  SUMBER / LINK REFERENSI:');
  case n of
    1: writeln('  https://share.google/h6KIDTfxpAd5YsmLj');
    2: writeln('  https://share.google/hw48pdb8kteSwIBLY');
    3: writeln('  https://share.google/YkasRoBJCtAEGZZ2Y');
    4: writeln('  https://www.komdigi.go.id/berita/berita-hoaks/detail/hoaks-imf-paksa-presiden-prabowo-terima-pinjaman-bunga-tinggi');
    5: writeln('  https://old.cekfakta.com/focus/37219');
    6: writeln('  https://www.antaranews.com/berita/5786237/hoaks-prabowo-berikan-bonus-rp5-triliun-dan-mobil-untuk-setiap-pemain-timnas-indonesia');
    7: writeln('  https://www.inews.id/techno/gadget/iphone-18-pro-dan-pro-max-resmi-dijual-di-indonesia-hari-ini');
    8: writeln('  https://www.inews.id/news/nasional/bmkg-ungkap-baru-8-persen-wilayah-indonesia-masuk-musim-hujan-jawa-hingga-bali-kemarau');
    9: writeln('  https://www.inews.id/news/nasional/bmkg-catat-1297-titik-panas-di-indonesia-sumatera-terbanyak');
    10: writeln('  https://mediaindonesia.com/opini/943519/restorasi-gambut-dan-mangrove-langkah-bijak-redam-bencana');
  end;
end;

{ Inti Gameplay, Interaksi Jawaban, Penilaian, Rekap, hingga Penjelasan }
procedure Play;
var
  j, skor: integer;
  ch: char;
begin
  Loading;
  clrscr;
  textcolor(white);
  write('MASUKKAN NAMA PEMAIN: ');
  readln(nama);
  textcolor(blue);
  writeln('===============================================');
  writeln('= SELAMAT DATANG ', nama, ' DI GAME HOAX HUNTER');
  writeln('===============================================');
  textcolor(white);
  writeln;
  writeln(' Tekan tombol apa saja untuk mulai investigasi...');
  readkey;
  Loading;

  IsiKunci;
  skor := 0;

  { Sesi Kuis 10 Soal }
  for j := 1 to 10 do
  begin
    clrscr;
    textcolor(yellow);
    writeln(' QUESTION ', j, ' OF 10');
    writeln('==============================================================');
    textcolor(white);
    writeln;
    TampilSoal(j);
    writeln;
    
    { Indikator Pilihan Warna Kategori }
    textcolor(cyan);
    write(' Pilih jawaban: ');
    textcolor(green);   write('F = FACT   ');
    textcolor(magenta); write('O = OPINION   ');
    textcolor(red);     writeln('H = HOAX');
    
    textcolor(white);
    write(' Jawabanmu: ');

    repeat
      ch := upcase(readkey);
      if ch = #0 then readkey;     
    until (ch = 'F') or (ch = 'O') or (ch = 'H');

    jawab[j] := ch;
    writeln(ch);
    
    { 8. Answer Interaction (Feedback Instan Warna) }
    if jawab[j] = kunci[j] then
    begin
      textcolor(green);
      writeln(' [CORRECT! +10 POINTS]');
    end
    else
    begin
      textcolor(red);
      writeln(' [INCORRECT! +0 POINTS]');
    end;
    
    delay(700);
  end;

  { 10 & 11. Final Results Cinematic & Detailed Recap }
  Loading;
  clrscr;
  textcolor(yellow);
  writeln(' FINAL RESULT RECAP : ', nama);
  writeln('==============================================================');
  textcolor(white);
  
  for j := 1 to 10 do
  begin
    write(' Soal ', j:2, ' | Jawaban: ', jawab[j], ' | Status: ');
    if jawab[j] = kunci[j] then
    begin
      textcolor(green);
      writeln('BENAR (+10)');
      skor := skor + 10;
    end
    else
    begin
      textcolor(red);
      write('SALAH');
      textcolor(white);
      writeln(', Kunci: ', kunci[j], ' (+0)');
    end;
    textcolor(white);
  end;

  writeln;
  textcolor(yellow);
  writeln(' TOTAL SKOR AKHIR ', nama, ' : ', skor, ' dari 100');
  textcolor(white);
  writeln;
  writeln(' Tekan tombol apa saja untuk melihat penjelasan & referensi...');
  readkey;
  Loading;

  { 12. Explanation and Reference Screen }
  clrscr;
  for j := 1 to 10 do
  begin
    textcolor(yellow);
    writeln(' Soal ', j, ' - Kunci Jawaban: ', kunci[j]);
    textcolor(white);
    TampilPenjelasan(j);
    TampilSumber(j);
    writeln;

    if (j mod 3 = 0) and (j < 10) then
    begin
      writeln(' Tekan tombol apa saja untuk lanjut membaca...');
      readkey;
      clrscr;
    end;
  end;

  writeln(' Tekan tombol apa saja untuk kembali ke menu utama...');
  readkey;
  clrscr;
end;

{ Instruksi Permainan }
procedure Instruksi;
begin
  Loading;
  clrscr;
  textcolor(blue);
  writeln;
  writeln('=====================================================================');
  writeln('=                        GAME INSTRUCTIONS                          =');
  writeln('=====================================================================');
  textcolor(white);
  writeln(' (1) Pada setiap soal, tentukan apakah pernyataan yang muncul adalah:');
  textcolor(green);   writeln('      F = FAKTA (FACT)');
  textcolor(red);     writeln('      H = HOAX');
  textcolor(magenta); writeln('      O = OPINI (OPINION)');
  textcolor(white);
  writeln(' (2) Setiap jawaban benar bernilai +10 poin, salah +0 poin.');
  writeln(' (3) Di akhir permainan, hasil dan rekap nilai akan ditampilkan.');
  textcolor(blue);
  writeln('=====================================================================');
  textcolor(white);
  writeln;
  writeln(' Tekan tombol apa saja untuk kembali ke menu...');
  readkey;
  clrscr;
end;

{ Program Utama }
begin
  OpeningCinematic;
  Loading;
  WarningScreen;
  Loading;

  repeat
    TampilanMenu;
    while keypressed do readkey;   
    readln(pilihan);

    case pilihan of
      '1': Play;
      '2': Instruksi;
      '3': begin
             clrscr;
             textcolor(green);
             writeln('===============================================');
             writeln('  THANK YOU FOR PLAYING HOAX HUNTER!           ');
             writeln('===============================================');
             textcolor(white);
             delay(2000);
           end;
    else
      begin
        textcolor(red);
        writeln('=======================');
        writeln('PILIHAN TIDAK VALID !!!');
        writeln('=======================');
        delay(1500);
        clrscr;
      end;
    end;
  until pilihan = '3';
end.