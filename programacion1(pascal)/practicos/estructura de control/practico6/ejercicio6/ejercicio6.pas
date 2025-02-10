program ejercicio6;
const
  COSTO_FUNC = 100;  // Costos fijos de funcionamiento
  BENEF_GAM = 30;    // Beneficio por gamusino
  VENTAS_MES = 20;   // Ventas iniciales
var
  ventas, benefNetoActual, benefNetoAnt, publ : integer;
begin
  write('Ingrese el gasto inicial en publicidad: ');
  readln(publ);

  writeln('Gastado Publicidad   Ventas   Beneficio Neto');

  ventas := VENTAS_MES;
  benefNetoActual := ventas * BENEF_GAM - COSTO_FUNC - publ;
  writeln(publ, ' ', ventas, ' ', benefNetoActual);

  repeat
    benefNetoAnt := benefNetoActual;
    publ := publ * 2;
    ventas := trunc(ventas * 1.50);
    benefNetoActual := ventas * BENEF_GAM - COSTO_FUNC - publ;
    writeln(publ, ' ', ventas, ' ', benefNetoActual);
  until benefNetoAnt > benefNetoActual;
end.