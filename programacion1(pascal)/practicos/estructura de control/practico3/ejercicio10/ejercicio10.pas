{El costo de enviar por correo un paquete es
$77 para paquetes que pesan hasta un kilogramo (inclusive)
$77 más $56 por kilogramo adicional o fracción para paquetes que pesan más de un
kilogramo.Escriba un programa en Pascal que, lea de la entrada estándar el peso de un paquete como
un número real de kilogramos y exhiba en la salida estándar dicho peso junto al costo del
envío, según se muestra en los siguientes ejemplos. Incluya mensajes de salida con etiquetas
descriptivas para el ingreso y el despliegue de datos.}
program ejercicio10;
const 
    COSTO_INICIAL = 77;
    COSTO_KILO = 56;
var 
    costo: integer;
    peso, decimal : real;
begin
    writeln('Ingrese el peso del envio');
    readln(peso);
    decimal := peso - trunc(peso);
    if decimal > 0  then
        costo := COSTO_INICIAL + COSTO_KILO * (trunc(peso))
    else 
        costo := COSTO_INICIAL + COSTO_KILO * (trunc(peso)-1);
    
    writeln('Peso Costo');
    if peso <= 1 then 
        writeln(peso:0:2,' $',COSTO_INICIAL:0)
    else
        writeln(peso:0:2,' $',costo:0);

end.

