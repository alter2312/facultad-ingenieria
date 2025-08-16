program ejercicio5;
const N = 10;
type
    tFila = array[1..N] of integer;
    tipoMatriz = array [1..N] of tFila;
var
     fila1,fila2 : integer;
    matriz : tipoMatriz;
procedure cargarValores(var matriz:tipoMatriz);
var i, j: integer;
begin
    for i := 1 to N do 
        for j := 1 to N do 
            read(matriz[i, j]);
end;

procedure desplegarMatriz(matriz: tipoMatriz);
var
  i, j: integer;
begin
  for i := 1 to N do
  begin
    for j := 1 to N do
      Write(matriz[i, j], ' ');  // Imprime el elemento y un espacio
    WriteLn;                    // Salto de línea al final de cada fila
  end;
end;
procedure cambiarFila(var matriz: tipoMatriz; m, n: integer);
var
  aux: tFila;
begin
aux := matriz[m];
matriz[m]:= matriz[n];
matriz[n]:= aux;
end;
begin
   WriteLn('Ingrese los valores de la matriz:');
    cargarValores(matriz);

    // 2. Pedir al usuario las filas a intercambiar
    Write('Ingrese el número de la primera fila a intercambiar (', N, '): ');
    ReadLn(fila1);
    Write('Ingrese el número de la segunda fila a intercambiar (', N, '): ');
    ReadLn(fila2);
    writeln('La matriz ingresada es: ');
    desplegarMatriz(matriz);
    cambiarFila(matriz,fila1,fila2);
    writeln('La fila ',fila1:0,'y',fila2:0, 'fueron intercambiadas');
    desplegarMatriz(matriz);
end.
