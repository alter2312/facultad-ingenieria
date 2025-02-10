program ejercicio1;
var
    num1, num2, resto: integer;
begin
    writeln('Cálculo del MCD (máximo común divisor) de dos números');
    write('Ingrese el primer número m (m ≠ 0): ');
    readln(num1);
    write('Ingrese el segundo número n: ');
    readln(num2);

    while (num2 <> 0) do begin
        resto := num1 mod num2;   
        num1 := num2;        
        num2 := resto;         
    end;

    writeln('El MCD es: ', num1:0);  
end.
