program ejercicio8;
const
    N = 5; {valor mayor estricto a 1}
type
    Digito = '0'..'9';
    Digitos = array [1..N] of Digito;

procedure leerArreglo(var a: Digitos);
var 
    i: integer;
begin
    for i := 1 to N do
        read(a[i]);
end;

function conversion(a: Digitos): integer;
var
    i, num: integer;
begin
    num := 0;
    for i := 1 to N do
        num := num * 10 + (ord(a[i]) - ord('0'));
    conversion := num;
end;

var
    arreglo: Digitos;
begin
    writeln('Ingrese ', N, ' digitos:');
    leerArreglo(arreglo);
    writeln('El numero correspondiente es: ', conversion(arreglo));
end.
