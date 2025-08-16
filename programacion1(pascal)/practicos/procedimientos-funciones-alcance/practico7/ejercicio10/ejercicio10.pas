program ejercicio10;
const
    CENTINELA = -1;
var
    numero, factor, residuo, nuevoResiduo, multiplicidad, i: integer;

function divide(a, b: integer): boolean;
begin
    divide := (b mod a = 0);
end;

procedure multiplicidadFactor(numero, factor: integer; var multiplicidad, residuo: integer);
begin
    multiplicidad := 0;
    residuo := numero;
    while divide(factor, residuo) do
    begin
        multiplicidad := multiplicidad + 1;
        residuo := residuo div factor;
    end;
end;

begin
    read(numero);
    while numero <> CENTINELA do
    begin
        write(numero, ' = ');
        residuo := numero;
        factor := 2;
        while not divide(factor, numero) do
            factor := factor + 1;
        write(factor:4);
        residuo := numero div factor;
        while residuo <> 1 do
        begin
            multiplicidadFactor(residuo, factor, multiplicidad, nuevoResiduo);
            residuo := nuevoResiduo;
            for i := 1 to multiplicidad do
                write(' * ', factor:4);
            repeat
                factor := factor + 1;
            until divide(factor, residuo) or (residuo = 1);
        end;
        writeln;
        read(numero);
    end;
end.