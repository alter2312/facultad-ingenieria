program ejercicio2a;
const 
    ESPACIO = ' ';
    CENTINELA = '.';
var 
    letra, letraAnterior, letraActual: char;
    count: integer;
begin
    write('Ingrese una letra: ');
    readln(letra);
    write('Ingrese una oración: ');
    read(letraActual);
    letraAnterior := letraActual;
    count := 0;
    while(letraActual <> CENTINELA) do begin
        read(letraActual);
        if (letraAnterior = letra) and ((letraActual = ESPACIO) or (letraActual = CENTINELA)) then 
            count := count + 1;
        letraAnterior := letraActual;
    end;
    writeln('La oración tiene ',count:0,' palabras que terminan con ',letra);
end.