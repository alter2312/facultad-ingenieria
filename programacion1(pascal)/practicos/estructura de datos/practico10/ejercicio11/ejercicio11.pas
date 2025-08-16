program ejercicio11;
type
    complejo = record
                    re, im : Real;
end;

procedure sumaNumComplejo(c1,c2:complejo; var c3 : complejo);
begin
    c3.re := c1.re + c2.re;
    c3.im := c1.im + c2.im;
end;

procedure MulNumComplejo(c1,c2: complejo; var c3 : complejo);
begin
    c3.re := (c1.re * c2.re) - (c1.im * c2.im);
    c3.im := (c1.im * c2.re) + (c2.im * c1.re);
end;

var 
    num1, num2, suma, multiplicacion : complejo;
begin
    { Leer los valores de los números complejos }
    writeln('Ingrese el primer número complejo (parte real y parte imaginaria):');
    write('Parte real de num1: ');
    readln(num1.re);
    write('Parte imaginaria de num1: ');
    readln(num1.im);

    writeln('Ingrese el segundo número complejo (parte real y parte imaginaria):');
    write('Parte real de num2: ');
    readln(num2.re);
    write('Parte imaginaria de num2: ');
    readln(num2.im);

    { Calcular la suma y la multiplicación de los números complejos }
    sumaNumComplejo(num1, num2, suma);
    MulNumComplejo(num1, num2, multiplicacion);

    { Mostrar los resultados }
    writeln('La suma de los números complejos es: ', suma.re:0:2, ' + ', suma.im:0:2, 'i');
    writeln('La multiplicación de los números complejos es: ', multiplicacion.re:0:2, ' + ', multiplicacion.im:0:2, 'i');
end.
