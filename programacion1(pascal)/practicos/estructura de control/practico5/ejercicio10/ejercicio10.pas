program ejercicio10;
var 
    num, n, val: integer;
begin
    writeln('Descomposición de un número');
    write('Ingrese un número ');
    readln(num);
    val := num;
    n := 0;
    while (val mod 2 = 0) do 
    begin
        val := val div 2; 
        n := n + 1;
    end;
    writeln(num:0, ' = 2^',n:0,' * ',val:0);
end.
