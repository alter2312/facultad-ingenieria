program ejercicio9;

const 
    N = 3;  { Tamaño de la matriz }

type 
    tMatriz = array[1..N, 1..N] of integer;
    tArrayUn = array[1..(N * (N + 1)) div 2] of integer; { Tamaño del arreglo unidimensional }

{ Procedimiento para pasar de la matriz a arreglo unidimensional }
procedure matriz2arreglo(a: tMatriz; var arreglo: tArrayUn);
var 
    indice, i, j: integer;
begin
    indice := 1;
    for i := 1 to N do
    begin
        for j := i + 1 to N do
        begin
            arreglo[indice] := a[i, j];  { Asignación de valor al arreglo }
            indice := indice + 1;
        end;
    end;
end;

{ Procedimiento para pasar del arreglo unidimensional a la matriz }
procedure arreglo2matriz(arreglo: tArrayUn; var matriz: tMatriz);
var 
    indice, i, j: integer;
begin
    indice := 1;
    for i := 1 to N do
    begin
        for j := i + 1 to N do
        begin
            matriz[i, j] := arreglo[indice];  { Asignamos valores de arreglo a la matriz }
            matriz[j, i] := arreglo[indice];  { Dado que es simétrica, asignamos también en el otro lado }
            indice := indice + 1;
        end;
    end;
end;

{ Función para obtener el valor de la matriz desde el arreglo unidimensional }
function obtSim(a: tArrayUn; i, j: integer): integer;
var 
    indice: integer;
begin
    indice := (i * (i - 1)) div 2 + (j - i);  { Cálculo del índice correspondiente }
    obtSim := a[indice];
end;

{ Programa principal }
var
    matriz: tMatriz;
    arreglo: tArrayUn;
    i, j, valor: integer;
begin
    { Leer la matriz simétrica }
    writeln('Ingrese los valores de la matriz simétrica (triángulo superior):');
    for i := 1 to N do
    begin
        for j := i + 1 to N do
        begin
            write('Valor en (', i, ',', j, '): ');
            readln(matriz[i, j]);
        end;
    end;

    { Convertir la matriz a un arreglo unidimensional }
    matriz2arreglo(matriz, arreglo);

    { Mostrar el arreglo unidimensional }
    writeln('Arreglo unidimensional resultante:');
    for i := 1 to (N * (N + 1)) div 2 do
        write(arreglo[i], ' ');
    writeln;

    { Leer las coordenadas y obtener los valores usando obtSim }
    writeln('Ingrese pares de coordenadas (i, j) para obtener valores (-1 -1 para terminar):');
    repeat
        write('Ingrese i: ');
        readln(i);
        write('Ingrese j: ');
        readln(j);
        
        if (i <> -1) and (j <> -1) then
        begin
            valor := obtSim(arreglo, i, j);
            writeln('Valor en (', i, ',', j, ') es: ', valor);
        end;
    until (i = -1) and (j = -1);

    { Convertir el arreglo de vuelta a la matriz }
    arreglo2matriz(arreglo, matriz);

    { Mostrar la matriz reconstruida }
    writeln('Matriz reconstruida:');
    for i := 1 to N do
    begin
        for j := 1 to N do
            write(matriz[i, j]:4);
        writeln;
    end;
end.
