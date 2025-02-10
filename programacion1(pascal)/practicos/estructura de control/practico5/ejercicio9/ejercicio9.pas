program ejercicio9;
var 
    num, promedio, suma, sumaCuadrado, resultado:real;
    cantidad: integer;
begin
    writeln('Calculadora de desviación estandar de un número');
    writeln('Ingrese una lista de números');
    suma := 0;
    cantidad := 0;
    read(num);
    sumaCuadrado := 0;
    while(num >= 0) do begin
        suma := suma + num;
        cantidad := cantidad + 1;
        sumaCuadrado := sumaCuadrado + sqr(num);
        read(num);
    end;
    if cantidad > 0 then begin
        promedio := suma / cantidad;
        resultado := sqrt(sumaCuadrado/cantidad - sqr(promedio));
        writeln('La desviación estándar es ',resultado:0:2);
    end
    else writeln('No se ingresaron números válidos.');
end.