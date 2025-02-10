program ejercicio7;
var num, divisor, fin:integer;
begin
    writeln('Ingrese un número');
    readln(num);
    if num < 2 then
        writeln('No es primo')
    else begin
        fin := trunc(sqrt(num));
        divisor := 2;
        while(divisor <= fin ) and ((num mod divisor) <> 0) do
            divisor := divisor + 1;
        if divisor > fin then writeln('Es primo.')
        else writeln('No es primo.')
    end;
end.