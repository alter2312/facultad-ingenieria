{**letra**
Escriba un programa en Pascal que transforme un número octal (base ocho) de tres dígitos
en su correspondiente número equivalente en base 10. Por ejemplo, el número octal de tres
dígitos 415 equivale al valor decimal 4 × 8 ^2 + 1 × 8 1 + 5 × 8^0, o sea, 269. El programa
deberiá leer por la entrada estándar el número octal y realizar las operaciones aritm´eticas
necesarias para calcular el número equivalente en base 10. Como resultado, exhiba por la
salida estándar el valor octal ingresado junto con el número equivalente en base 10. Incluya
mensajes de salida con etiquetas descriptivas para el ingreso y el despliegue de datos.}
program ejercicio11;
const BASE = 8;
var octal, decimal, centenas,decenas,unidades integer;
begin
    writeln('ingrese un numero de base ',BASE,'de tres dígitos');
    read(octal);
    centenas := octal div 100;
    decenas := (octal div 10) mod 10;
    unidades := octal mod 10;
    decimal := centenas * sqr(BASE) + decenas * BASE + unidades
    writeln('Octal ', octal:3' = decimal ', decimal:3)
end.