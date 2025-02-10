program ejercicio2c;
const
    ESPACIO = ' ';
    CENTINELA = '.';
var
    letra, letraActual: char;
    contLetra, contPalabra: integer;
begin
    write('Ingrese una letra: ');
    readln(letra);
    write('Ingrese una oración: ');
    
    contPalabra := 0;
    repeat
        read(letraActual)
    until (letraActual <> ESPACIO);
    while (letraActual <> CENTINELA) do begin
        contLetra := 0;
        while (letraActual <> ESPACIO) and (letraActual <> CENTINELA) do begin
            if (letraActual = letra) then
                contLetra := contLetra + 1;
            read(letraActual);
        end;

        if contLetra = 1 then
            contPalabra := contPalabra + 1;   
                     
        while (letraActual = ESPACIO) and (letraActual <> CENTINELA) do
            read(letraActual);
    end;
    
    writeln('La oración tiene ', contPalabra, ' palabras que contienen la letra ', letra, ' una sola vez');
end.