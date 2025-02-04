program ejercicio10;
var num, factorial,i:integer;
begin
    writeln('Calculadora de factoral');
    writeln('***********************');
    write('Ingrese un numero para calcular el factorial: ');
    readln(num);
    factorial := 1;
    for i := num downto 2 do begin
        factorial :=  factorial * i
    end;
    writeln('El factorial de ',num:0,'! es ',factorial:0,' .');
end.