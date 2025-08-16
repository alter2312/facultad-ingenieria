program ejercicio4b;
const CENTINELA = -1;
var 
    num, max, min: integer;
begin
    writeln('Ingrese una lista de numeros positiva');
    read(num);
    max := num;
    min := max;
    while(num <> CENTINELA) do begin
        read(num);
        if (num > max) then
            max := num
        else if (num < min) then
            min := num;
    end;
    writeln('El número máximo de la lista es: ',max:0);
    writeln('El número mínimo de la lista es: ',min:0);
end.
