program ejercicio6;
var max, min, i,num, n : integer;
begin
    writeln('Ingrese un valor para n');
    readln(n);
    write('Ingrese ', n:0, ' enteros: ');
    read(num);
    max := num;
    min := num;
    for i := 1 to n - 1 do begin
        read(num);
        if (num > max) then
            max := num
        else if (num < min) then
            min := num;
    end;
    writeln('El numero maximo es: ', max:0);
    writeln('El numero minimo es: ', min:0);
end.
end.