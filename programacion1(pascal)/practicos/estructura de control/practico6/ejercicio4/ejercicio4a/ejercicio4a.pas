program ejercicio4a;
var
  cant_primos, num, fin, divisor, iter : integer;
begin
  write('Ingrese n: ');
  readln(cant_primos);
  num := 1;
  iter := 1;
  repeat
    num := num + 1;  // Incremento para probar el siguiente número
    divisor := 2;    // Empezamos a probar divisores desde 2
    fin := trunc(sqrt(num));  // Límite para los divisores
    // Verificamos si el número es primo
    while (divisor <= fin) and (num mod divisor <> 0) do
      divisor := divisor + 1;
    // Si no se encontró ningún divisor, es primo
    if divisor > fin then
    begin
      writeln(iter, ': Primo: ', num, ' Raiz Cuadrada: ', sqrt(num):5:2);
      iter := iter + 1;  // Incrementamos el contador de primos encontrados
    end;
  until iter = cant_primos + 1;  // Terminamos cuando encontramos los n primos
end.