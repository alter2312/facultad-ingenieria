{** letra **}
{Escriba un programa en Pascal que, dados dos enteros de la forma hhmm (ingresados por la
entrada est´andar), donde hh representa las horas (menos de 24) y mm los minutos (menos
de 60), determine la suma de estos dos tiempos, y exhiba el resultado en la salida est´andar,
en la forma d hhmm, donde d es d´ıas (ya sea cero o uno). Incluya mensajes de salida con
etiquetas descriptivas para el ingreso de datos}

program SumarTiempos;
var
  tiempo1, tiempo2, totalMinutos, horas, minutos, dias: integer;
begin
 
  (* Solicitar el ingreso de los tiempos *)
  writeln('Ingrese el primer tiempo en formato hhmm (ejemplo: 1230 para 12:30): ');
  readln(tiempo1);
  writeln('Ingrese el segundo tiempo en formato hhmm (ejemplo: 0845 para 08:45): ');
  readln(tiempo2);
  
  (* Convertir a minutos *)
  minutos := (tiempo1 mod 100) + (tiempo2 mod 100);
  horas := (tiempo1 div 100) + (tiempo2 div 100) + (minutos div 60);
  minutos := minutos mod  60;
  dias := horas div 24;
  horas := horas mod 24;
  
  (* Mostrar el resultado *)
  writeln('Resultado: ', dias, ' ', horas:2, minutos:2);
  readln;
end.