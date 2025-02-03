program ejercicio13;
const 
    BASE = 16;
    MAX = 3;
type 
    arregloChar = array [1..MAX]of char;
    arregloInteger = array [1..MAX] of integer;
var 
    arrChar : arregloChar;
    arrInt  : arregloInteger;
    i,resultado : integer;
begin
    writeln('Ingrese numero positivo hexadecimal de 3 cifras: ');
    for i := 1 to MAX do begin
        read(arrChar[i]);
        case arrChar[i] of
            '0'..'9': arrInt[i] := ord(arrChar[i]) - ord('0');
            'A'..'F': arrInt[i] := 10 + ord(arrChar[i]) - ord('A');
        end;
    end;
    resultado := arrInt[1] * sqr(BASE) + arrInt[2] * BASE + arrInt[3];
    writeln('Hexadecimal ', arrChar[1], arrChar[2], arrChar[3], ' = Decimal ', resultado:0);
end.
