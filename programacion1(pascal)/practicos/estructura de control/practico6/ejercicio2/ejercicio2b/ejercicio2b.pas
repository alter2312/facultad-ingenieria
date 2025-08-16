program ejercicio2b;
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
    if letraActual = letra then
        count := count + 1;
    while(letraActual <> CENTINELA) do begin
        read(letraActual);
        if (letraAnterior = ESPACIO) and (letraActual = letra) then 
            count := count + 1;
        letraAnterior := letraActual;  
    end;
    writeln('La oración tiene ',count:0,' palabras que empieza con ',letra);
end.