program ejercicio11;
var logaritmando, base, resultado,aux: integer;
begin
    writeln('Calculadora de logaritmo');
    write('Ingrese un número: ');
    readln(logaritmando);
    write('Ingrese la base: ');
    readln(base);
    resultado := 0;
    aux := logaritmando;
    while aux >= base do begin
        aux := aux div base;
        resultado := resultado + 1;
    end;
    writeln('La parte entera de log_', base:0, '(', logaritmando:0, ') es: ', resultado:0);

end.