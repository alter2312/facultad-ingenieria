program ejercicio11;
var fmax, x,m,n, fx :integer;
begin
    writeln('Calculo del f(x) maximo en un entorno m y n ');
    writeln('Concidere f / f(x) = x^2 -18x +5 en un entorno m y n , m < n');
    write('Ingrese m: ');
    readln(m);
    write('Ingrese n: ');
    readln(n);
    fmax := (sqr(m) - 18 * m + 5);
    for x := m + 1 to n do begin
        fx := sqr(x) -18 * x + 5;
        if (fmax < fx) then
            fmax := fx;
    end;
    writeln('El valor maximo de f(x) es en un entorno entre ',m:0,' y ',n:0, ' es ',fmax:0)
end.