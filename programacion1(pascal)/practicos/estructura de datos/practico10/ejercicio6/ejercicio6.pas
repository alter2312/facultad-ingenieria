program ejercicio6;

type
 tipoMes = (enero, febrero, marzo, abril, mayo, junio, julio, agosto, septiembre, octubre, noviembre,       diciembre);
 tipoMesRango = 1..12;

procedure leerMes (var mes: TipoMes);
var numeroMes: TipoMesRango;
begin
    write('Ingrese un mes entre 1 y 12: ');
    readln(numeroMes);
    mes := TipoMes(numeroMes - 1)
end;

procedure imprimirMes(mes:tipoMes);
 begin
    case mes of
        enero      : write('Enero');
        febrero    : write('Febrero');
        marzo      : write('Marzo');
        abril      : write('Abril');
        mayo       : write('Mayo');
        junio      : write('Junio');
        agosto     : write('Agosto');
        septiembre : write('Septiembre');
        octubre    : write('Octubre');
        noviembre  : write('Noviembre');
        diciembre  : write('Diciembre');
    end;
        else write('Mes invalido');
end;