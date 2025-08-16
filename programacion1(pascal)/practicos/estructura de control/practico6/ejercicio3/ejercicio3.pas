program ejercicio3;
var
  v, coeficiente, acumulador: real;
begin
  write('Ingrese x: ');
  readln(v);

  write('Ingrese los coeficientes: ');
  read(coeficiente);
  acumulador := coeficiente;

  repeat
    read(coeficiente);
    if coeficiente <> -1 then
      acumulador := acumulador * v + coeficiente;
  until coeficiente = -1;

  writeln('El valor del polinomio evaluado en ', v:0:2, ' es ', acumulador:0:2);
end.