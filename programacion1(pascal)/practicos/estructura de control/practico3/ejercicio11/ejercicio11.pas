program ejercicio11;
const 
    MARCA = '+';
    ESPACIO = ' ';
var 
    num, digito :integer;
    unidades, decenas, centenas, millares: boolean;
begin
    writeln('Ingrese un numero de cuatro digitos');
    readln(num);
    writeln('Ingrese un numero de un digito');
    readln(digito);
    unidades := num mod 10;
    decenas := (num div 10)  mod 10 = digito;
    centenas := (num div 100) mod 10 = digito;
    millares := (num div 1000) = digito;
    writeln(num:4);
    if (millares or centenas or decena or unidades) then begin
        if millares then write(MARCA)
            else write(ESPACIO);
        if centenas then write(MARCA)
            else write(ESPACIO);
        if decenas then write(MARCA)
            else write(ESPACIO);
        if unidades then write(MARCA)
            else write(ESPACIO);
    end
    else
        writeln(digito:1, ' no aparece en ', num:4);
end.