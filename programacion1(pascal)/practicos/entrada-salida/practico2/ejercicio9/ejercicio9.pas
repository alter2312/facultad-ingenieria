{**letra**}
{. La función exp de Pascal calcula un valor igual a la suma de la serie infinita 1 + [x/1!] +
[(x2)/2!] + [(x3)/3!] + [(x4)/4!], siendo x un n´umero real. Escriba un programa en Pascal
que lea por la entrada est´andar un valor real para x entre 0,0 y 1,0. El programa debe
determinar, por un lado, la suma de los primeros cinco t´erminos de la serie infinita y, por
otro lado, el valor de exp(x) mediante la funci´on predefinida. Como resultado, exhiba por
la salida est´andar ambos valores calculados junto con el valor de x. Incluya mensajes de
salida con etiquetas descriptivas para el ingreso y el despliegue de datos}
program ejercicio9;

var
    num,suma : real;
begin
    Writeln('Ingrese n´umero real en intervalo [0.0,1.0]');
    Readln(num);
    (* suma de los cinco primeros términos de la serie *)
    suma := 1 + num + sqr(num)/2 + sqr(num)*num/(2*3) + sqr(sqr(num))/(2*3*4);
    Writeln('Valor introducido: x = ',num);
    Writeln('Suma de los cinco términos = ',suma);
    Writeln('Valor de Exp (x) = ', exp(num))
end.
