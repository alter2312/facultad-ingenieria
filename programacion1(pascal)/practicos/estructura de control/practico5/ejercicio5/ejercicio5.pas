program ejercicio5;
var 
    saldo, monto : real;
    opcion : char;
begin
    writeln('Ingrese el saldo Inicial');
    readln(saldo);    
    repeat
        writeln('Ingrese una opcion');
        writeln('D - Depositar');
        writeln('R - Retirar');
        writeln('X - Salir');
        write('Opción: ');  
        readln(opcion);        
        case opcion of
            'D','d' : 
                begin
                    write('Ingrese monto a depositar: ');
                    readln(monto);
                    saldo := saldo + monto;
                    writeln();
                end;
            'R','r':
                begin
                    write('Ingrese monto a retirar: ');
                    readln(monto);
                    saldo := saldo - monto;
                    writeln();
                end;
            'X','x' : writeln('El saldo final es ', saldo:0:2);
        else
            writeln('Opción inválida, intente nuevamente.');
        end;
    until ((opcion = 'X') or (opcion = 'x'));
end.
