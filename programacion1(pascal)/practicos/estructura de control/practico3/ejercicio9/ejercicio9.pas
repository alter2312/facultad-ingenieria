{**letra**}
{Escriba un programa en Pascal que lea de la entrada estándar un entero de hasta cuatro
cifras y lo despliegue en la salida estándar con un punto separando la cifra de los millares
(si la hay) de la cifra de las centenas. Su programa no necesita controlar que el entero
ingresado tenga hasta cuatro cifras, asuma que así sería. Incluya mensajes de salida con
etiquetas descriptivas para el ingreso de datos}
program ejercicio9;
const PUNTO = '.'
var num, millares, resto: integer;
begin
    writeln('Ingrese un numero de 4 cifras');
    readln(num);

    millares := num div 1000;
    resto := num mod 1000;

    if millares > 0 then 
    begin
        write('numero formateado: ', millares, PUNTO);
        if resto < 10 then
            writeln('00', resto) { Agrega 2 ceros si es menor a 10 }
        else if resto < 100 then
            writeln('0', resto) { Agrega 1 cero si es menor a 100 }
        else
            writeln(resto); { Caso normal }
    end
    else 
        writeln('numero formateado: ', resto);
end.

