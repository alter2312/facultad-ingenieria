program ejercicio5;
var uno, dos, tre:integer;
procedure corrimiento (var a, b ,c :integer);
var aux:integer;
begin
    aux := a;
    a := b;
    b := c;
    c := aux;
end;
begin
  write('Ingrese tres números: ');
  readln(uno, dos, tres);
  corrimiento(uno, dos, tres);

  // Mostramos el resultado
  writeln('El corrimiento es: ', uno:0, ' ', dos:0, ' ', tres:0);
end.