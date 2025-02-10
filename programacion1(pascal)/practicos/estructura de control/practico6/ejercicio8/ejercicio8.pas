program ejercicio8;
var m, n, i, fin, divisor : integer;
begin
    write('Ingrse dos numeros (m y n): ');
    readln(m,n);
    i := m;
    write('Los numeros primos entre ',m:0,' y ',n:0,' son: ');
    while (i <= n) do begin
        divisor := 2 ;
        fin := trunc(sqrt(i));
        while (divisor <= fin) and (i mod divisor <> 0) do
            divisor := divisor + 1;
        if divisor > fin then
            write(i:0,' ');
        i := succ(i);
    end;
    writeln;
end.
