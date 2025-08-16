program ejercicio4a;
const CENTINELA = -1;
var 
    num,suma, count: integer;
    promedio: real;
begin
    suma := 0;
    promedio := 0;
    count := 0;
    writeln('Ingrese una lista de numeros positiva');
    repeat
        read(num);
        suma := suma + num;
        count := count + 1;
    until (num = CENTINELA);
    promedio := suma / count;
    writeln('La suma de toda la lista es: ',suma:0);
    writeln('El promedio de la lista es: ',promedio:0:2);
end.