program ejercicio4;
var num1, num2, num3, i:integer;
begin
    writeln('Mostrar Multiplos en un rango dado');
    writeln('++++++++++++++++++++++++++++++++++++');
    writeln('Ingrese un el primer numero');
    readln(num1);
    writeln('Ingrese el segundo numero');
    readln(num2);
    Writeln('Ingrese el numero que sera el multiplo');
    readln(num3);
    for i := num1 to num2 do begin
        if i mod num3 = 0 then
            write(i:0, ' ')
    end;
    writeln()
end.