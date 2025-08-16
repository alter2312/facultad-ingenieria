program ejercicio9;
var
  m, n, i, fin, divisor: integer;
begin
    write('Ingrese dos numeros (m y n): ');
    readln(m, n);
    if m > n then
        writeln('No se muestra nada porque m > n')
    else begin
        writeln('Los numeros gemelos entre ', m:0, ' y ', n:0, ' son: ');
        i := m;
        while (i <= n - 2) do begin
        // Verificar si i es primo
        divisor := 2;
        fin := trunc(sqrt(i));
        while (divisor <= fin) and (i mod divisor <> 0) do 
            divisor := divisor + 1;
        // Verificar si i + 2 es primo
            if divisor > fin then begin
                divisor := 2;
                fin := trunc(sqrt(i + 2));
                while (divisor <= fin) and ((i + 2) mod divisor <> 0) do 
                divisor := divisor + 1;
                // Si ambos son primos, mostramos la pareja
                if divisor > fin then 
                writeln(i:0, ' y ', i + 2:0);
            end;
        i := i + 1;  
    end;
    writeln; 
  end;
end.