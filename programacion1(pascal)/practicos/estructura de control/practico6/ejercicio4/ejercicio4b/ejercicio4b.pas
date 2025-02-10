program ejercicio4b;
var cantPrimos, num, fin, divisor, indice : integer;
begin
  write('Ingrese n: ');
  readln(cantPrimos);
  num := 1;
  for indice := 1 to cantPrimos do begin
    repeat 
      num := num + 1; 
      divisor := 2;    
      fin := trunc(sqrt(num));
      while (divisor <= fin) and (num mod divisor <> 0) do
        divisor := divisor + 1;
    until (divisor > fin);
    writeln(indice, ': Primo: ', num:0, ' Raiz Cuadrada: ', sqrt(num):5:2);
  end;
end.
