program ejercicio6;
const 
    N = 3; {valor mayor estricto a 1}
type
    matriz = array [1..N, 1..N] of integer;

var matrizA, matrizB :matriz;

procedure createTranspositionArray(arrayA:matriz; var transPosition:matriz);
var i,j :integer;
begin
    for i :=1 to N do
        for j := 1 to N do
            transPosition[j,i] := arrayA[i,j];
end;

procedure addValues(var arrayA:matriz);
var i, j:integer;
begin
    for i := 1 to N do 
        for j := 1 to N do
            read(arrayA[i,j]);
end;

procedure showArray(arrayA:matriz);
var i, j:integer;
begin
    for i := 1 to N do begin
        for j := 1 to N do
            Write(arrayA[i,j]:0, ' ');
        writeln();
    end;
end;
procedure createTranspositionArray2(var arrayA:matriz);
var i,j, temp :integer;
begin
    for i :=1 to N do
        for j := i +1 to N do
            temp := arrayA[i,j];
            arrayA[i,j] := arrayA[j,i];
            arrayA[j,i] := temp;
end;
begin
    WriteLn('Ingrese los valores de una matriz ',N:0,' * ',N:0);
    addValues(matrizA);
    writeln('Matriz Original:');
    showArray(matrizA);
    createTranspositionArray2(matrizA);
    writeln('Matriz transpuesta:');
    showArray(matrizA);
    { Mostrar la matriz original }
    // writeln('Matriz Original:');
    // showArray(matrizA);
    // { Mostrar la matriz transpuesta }
    // writeln('Matriz Transpuesta:');
    // showArray(matrizB)
end.