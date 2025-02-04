program ejercicio9;
var num1, num2, resultado,i:integer;
begin
    writeln('Potencia');
    writeln('*********');
    write('Ingrese un numero: ');
    readln(num1);
    write('Ingrese un segundo numero: ');
    readln(num2);
    resultado := 1;
    for i:= 1 to num2 do 
        resultado := resultado * num1;
    writeln('La potencia de ',num1:0,' elevado a la ',num2:0 ,' es ',resultado:0, '.')
end.
