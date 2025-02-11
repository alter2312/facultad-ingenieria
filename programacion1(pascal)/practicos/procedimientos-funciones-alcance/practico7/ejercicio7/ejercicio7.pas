program ejercicio7;
function distancia(x1,x2,y1,y2 :real):real;
begin
    distancia := sqrt(sqr(x1 -x2) + sqr(y1 -y2));
end;
var
    x1, y1, x2, y2, resultado: Real;
begin
    writeln('Ingrese las coordenadas del primer punto:');
    readln(x1, y1);
    writeln('Ingrese las coordenadas del segundo punto:');
    readln(x2, y2);
    resultado := distancia(x1, y1, x2, y2);
    writeln('La distancia entre los puntos es: ', resultado:0:2);
end.