program ejercicio5;

const
    M = 5; { Ejemplo: longitud de la subcadena }
    N = 10; { Ejemplo: longitud de la cadena principal (N >= M) }

type
    CadenaM = array [1..M] of char;
    CadenaN = array [1..N] of char;

var
    cm: CadenaM;
    cn: CadenaN;
    indice: integer;

function indiceSubCadena(cadn: CadenaN; cadm: CadenaM): integer;
var
    indn: integer;

    function esSubCadenaEn(cadn: CadenaN; cadm: CadenaM; i: integer): boolean;
    var
        idx: integer;
    begin
        idx := 1;
        while (idx <= M) and (i + idx - 1 <= N) and (cadn[i + idx - 1] = cadm[idx]) do
            idx := idx + 1;
        esSubCadenaEn := (idx = M + 1);
    end;

begin
    indn := 1;
    { Mientras no encuentra la subcadena y hay lugar para encontrarla }
    while ((indn + M - 1) <= N) and (not esSubCadenaEn(cadn, cadm, indn)) do
        indn := indn + 1;

    if (indn + M - 1) <= N then
        indiceSubCadena := indn
    else
        indiceSubCadena := 0;
end;

procedure leerCadenaM(var cadm: CadenaM);
var
    i: integer;
begin
    Write('Ingrese los ', M:1, ' caracteres de la subcadena: ');
    for i := 1 to M do
        read(cadm[i]);
    readln;
end;

procedure leerCadenaN(var cadn: CadenaN);
var
    i: integer;
begin
    Write('Ingrese los ', N:1, ' caracteres de la cadena principal: ');
    for i := 1 to N do
        read(cadn[i]);
    readln;
end;

begin
    WriteLn('Longitud máxima de la subcadena (M): ', M:0);
    leerCadenaM(cm);
    WriteLn('Longitud máxima de la cadena principal (N): ', N:0);
    leerCadenaN(cn);

    indice := indiceSubCadena(cn, cm);

    if indice > 0 then
        WriteLn('Subcadena encontrada en la posición: ', indice:0)
    else
        WriteLn('Subcadena no encontrada.');

    
end.
