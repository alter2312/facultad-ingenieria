program ejercicio7;
const SIMBOLO = '*';
var cantidad, i, j, num:integer;
begin
    writeln('Ingrese un número ');
    readln(cantidad);
    write('Ingrese ',cantidad:0,' de números: ');
    for i:= 1 to cantidad do begin
        read(num);
        for j :=1 to num do
            write(SIMBOLO);
        Writeln();
    end;    
end.