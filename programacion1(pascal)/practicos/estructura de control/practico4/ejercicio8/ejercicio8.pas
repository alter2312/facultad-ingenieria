program ejercicio8;
var 
    caracter : char;
    cantidad, i ,j : integer;
begin
    write('Ingrese un caracter: ');
    readln(caracter);
    write('ingrese un numero: ');
    readln(cantidad);
    for i := cantidad downto 1 do begin
        for j := 1 to i do  
            write(caracter);
        writeln();
    end;
end.