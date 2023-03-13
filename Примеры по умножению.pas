program abc;
uses crt;
var
   a,b,k,m,n:integer;
   s: array of string;
   f:text;
Begin
   assign(f, 'Примеры.txt');
   rewrite(f);
   randomize;
   k:=0;
   clrscr;
   writeLn('Введи диапазон');
   write('=> ');
   readLn(a);
   write('=> ');
   readLn(b);
   clrscr;
   setLength(s, (b-a+1)*10);
   for var i:= a to b do
       for var j:= 1 to 10 do
       Begin  
          s[k] := i+' * '+j+' = ';
          Inc(k);
       End;
   for var i := 0 to k*10 do
   Begin
   m:= random(k);;
   n:= random(k);
   swap(s[m], s[n]);
   End;
  for var i:= 0 to k-1 do writeLn(f,s[i]);;
  close(f);
  readln;
End.