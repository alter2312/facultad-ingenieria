program ejercicio12;
var x,y,n,fmax,f:integer;
begin
    writeln('Calculo del f(x,y) maximo en un entorno -n y n ');
    writeln('Concidere f / f(x,y) = x^2 - 9xy + y^2 en un entorno -n y n');
    write('Ingrese n: ');
    readln(n);
    fmax := sqr(0) - 9*0*0 +sqr(0);
    for x:= -n to n do
        for y := -n to n do begin 
            f := sqr(x) - 9*x*y + sqr(y);
            if (fmax < f) then 
                fmax := f
        end;
    writeln('El valor maximo de f(x,y) es en un entorno entre ',-n:0,' y ',n:0, ' es ',fmax:0,'.')
end.