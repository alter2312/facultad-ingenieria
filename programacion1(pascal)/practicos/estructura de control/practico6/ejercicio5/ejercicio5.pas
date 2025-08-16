program ejercicio5;
var diff, k, indice, square, squareBefore:integer;
begin
    write('Ingrese k ');
    readln(k);
    indice := 1;
    diff := 0;
    square := indice * indice;
    squareBefore := square;
    while diff <= k do begin
        square := indice * indice;
        diff := square -squareBefore;
        indice := indice + 1;
        write(square:0,' ');  
        squareBefore := square;
    end;
    writeln;
end.