{Escriba un programa en Pascal que encuentre las raíces de la ecuación cuadrática ax2 + bx + c = 0
donde a, b, y c son valores reales leídos de la entrada estándar. El programa deberá imprimir
en la salida estándar uno de los siguientes mensajes, según corresponda. Incluya mensajes
de salida con etiquetas descriptivas para el ingreso y el despliegue de datos.}
program ejercicio12;
var a,b,c integer;
begin
    write('Ingrese coeficientes de la ecuaci´on: ');
    readln(a,b,c);
    writeln('a = ',a:2:1,' b = ',b:2:1,' c = ',c:2:1);
    disc := sqr(b)-4*a*c;
    if (disc = 0) then begin
        x1 := -b/(2*a);
        writeln('Dos raices reales iguales : ',x1:6:2)
    end
    else if (disc > 0) then begin
        raizdisc := sqrt(disc);
        x1 := (-b + raizdisc)/(2*a);
        x2 := (-b - raizdisc)/(2*a);
        writeln('Dos raices reales diferentes: ', x1:6:2, ' y ',
        x2:6:2)
    end
    else begin
        x1 := -b /(2*a); {parte real}
        x2 := sqrt(-disc) / (2*a); {parte compleja}
        writeln('Dos raices imaginarias diferentes: ',x1:6:2,'
        (+/-) i ',x2:6:2)
    end
end.
