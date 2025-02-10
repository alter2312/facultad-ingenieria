program ejercicio8;
VAR
    resultado, operando: integer;
    operador: char;
begin
    writeln('Calculadora');
    write('Ingrese una operación: ');
    read(resultado);
    read(operador);    
    while operador <> '=' do
    begin
        read(operando);
        case operador of
            '+': resultado := resultado + operando;
            '-': resultado := resultado - operando;
            '*': resultado := resultado * operando;
            '/': if operando <> 0 then
                     resultado := resultado div operando
                 else
                     writeln('Error: División por cero.');
        else
            writeln('Error: Operador inválido.');
        end;
        read(operador);
    end;
    
    writeln('Resultado final: ', resultado:0);
end.
