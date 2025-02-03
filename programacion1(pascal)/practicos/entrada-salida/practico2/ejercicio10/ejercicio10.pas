{**letra**}
{Con el resultado del ejercicio 11 del Práctico 1, escriba un programa en Pascal para determinar la raíz cuadrada de un número real positivo a mediante el cálculo de a ^ 0,5 El programa deberá leer el valor para a por la entrada estándar. Como resultado, exhiba por la salida estándar el valor de a, el valor de a ^ 0,5  y el valor de sqrt(a) (el cual se calculará con la función predefinida). Incluya mensajes de salida con etiquetas descriptivas para el ingreso y el despliegue de datos.}
program Pr2Ej10;
var
    num,raiz : real;
begin
    Writeln('Ingrese n´umero real positivo');
    Readln(num);
    raiz := exp(0.5*ln(num));
    Writeln('Valor introducido: a = ',num);
    Writeln('Raiz cuadrada calculada = ', raiz);
    Writeln('Valor de Sqrt (a) = ', sqrt(num))
end.