program ejercicio7;

const
    M = 3; {Cantidad de filas de A y C}
    N = 2; {Cantidad de columnas de A y filas de B}
    P = 3; {Cantidad de columnas de B y C}

type
    RangoM = 1..M;
    RangoN = 1..N;
    RangoP = 1..P;
    MatrizMN = array[RangoM, RangoN] of integer;
    MatrizNP = array[RangoN, RangoP] of integer;
    MatrizMP = array[RangoM, RangoP] of integer;

procedure productoMatrices(a: MatrizMN; b: MatrizNP; var c: MatrizMP);
var 
    i, j, k, suma: integer;
begin
    for i := 1 to M do
    begin
        for j := 1 to P do
        begin
            suma := 0;
            for k := 1 to N do
                suma := suma + (a[i, k] * b[k, j]);
            c[i, j] := suma;
        end;
    end;
end;

procedure leerMatrizMN(var a: MatrizMN);
var 
    i, j: integer;
begin
    writeln('Ingrese los elementos de la matriz A (', M, 'x', N, '):');
    for i := 1 to M do
        for j := 1 to N do
            read(a[i, j]);
end;

procedure leerMatrizNP(var b: MatrizNP);
var 
    i, j: integer;
begin
    writeln('Ingrese los elementos de la matriz B (', N, 'x', P, '):');
    for i := 1 to N do
        for j := 1 to P do
            read(b[i, j]);
end;

procedure mostrarMatrizMP(c: MatrizMP);
var 
    i, j: integer;
begin
    writeln('Matriz resultante C (', M, 'x', P, '):');
    for i := 1 to M do
    begin
        for j := 1 to P do
            write(c[i, j]:4);
        writeln;
    end;
end;

var 
    A: MatrizMN;
    B: MatrizNP;
    C: MatrizMP;

begin
    leerMatrizMN(A);
    leerMatrizNP(B);
    productoMatrices(A, B, C);
    mostrarMatrizMP(C);
end.
