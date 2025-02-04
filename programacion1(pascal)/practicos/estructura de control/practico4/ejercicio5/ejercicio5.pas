program ejercicio5;
var num, i: integer;
begin
    writeln('Divisores de un número');
    writeln('***********************');
    writeln('Ingrese un numero');
    read(num);
    Writeln('Sus divisores son: ');
    for i := 1 to num do begin
        if (num mod i) = 0 then
        write(i:0, ' ')
    end;
    writeln()
end.