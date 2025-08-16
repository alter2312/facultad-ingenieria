{** letra **}
{El error relativo en una medición m es la razón de la diferencia absoluta entre la medición
y el valor verdadero v al valor verdadero, la cual se calcula como |m − v|/v. Escriba un
programa en Pascal que lea por la entrada est´andar dos números reales que representan
la medición m y el valor verdadero v. El programa debe calcular el error relativo de la
medición y exhibirlo en la salida est´andar junto con la medición y el valor verdadero.
Incluya mensajes de salida con etiquetas descriptivas para el ingreso y el despliegue de
datos.}

program Ejercicio7;

var medicion, valorVerdadero, errorRelativo:real;
begin

    {*Solicita el ingreso de los valores medicion y valorVerdadero*}
    writeln('Ingrese la medición');
    readln(medicion);    
    writeln('ingrese el valor verdadero');
    readln(valorVerdadero);

    if (valorVerdadero = 0 ) then //condicion donde verifica un punto critico
    writeln('El valor verdadero no puede ser 0 ')
    else
    begin
        errorRelativo := abs( medicion - valorVerdadero ) / ValorVerdadero;

        {* imprime en pantalla los diferentes valores *}
        writeln('Medición: ', medicion);
        writeln('Valor verdadero: ', valorVerdadero);
        writeln('Error relativo: ', errorRelativo);
    end;
  
end.