program deret_fibonacci;
uses crt;

var
  n, i : integer;
  a, b, c : longint;

begin
  clrscr;
  write('Nilai : ');
  readln(n);

  write('Deret Fibonacci : ');
  a := 1;
  b := 1;
  for i := 1 to n do
  begin
    write(a, ' ');
    c := a + b;
    a := b;
    b := c;
  end;
  writeln;
  readln;
end.
