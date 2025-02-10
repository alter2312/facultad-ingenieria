program ejercicio6;
const CENTINELA = '$';
var letraAnterior, LetraActual:char;
begin
    write('Ingrese un texto : ');
    read(letraActual);
    letraAnterior := letraActual;
    writeln();
    write('Las consonantes y vocales duplicadas son: ');
    while (letraActual <> CENTINELA) do begin
        read(letraActual);
        if (letraAnterior = letraActual) then
            write(letraAnterior,letraActual,' ');
        letraAnterior := letraActual
    end;
    writeln();
end.