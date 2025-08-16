program ejercicio8;
var num, n,m:integer;
function esPrimo(num:integer):boolean;
var divisor, fin:integer;
begin
    divisor := 2;
    fin := trunc(sqrt(num));
    while (divisor <= fin) and ((num mod divisor) <> 0) do
        divisor := succ(divisor);
    esprimo := (num >1) and (divisor > fin) ;
end;

begin
    write('Ingrese dos numeros enteros positivos: ');
    readln(m, n);
    write('Los numeros primos entre ', m, ' y ', n, ' son: ');
    for num := m to n do
      if esPrimo(num) then
        write(num, ' ')
end.