const
    N = 10 {valor mayor estricto a 1}
type
 
    CadenaN = array [1..N] of integer;

function cantMayores(cadn: CadenaN; num: integer): integer;
var
    cant, i: integer;
begin
    cant := 0; { Inicializar cant! }
    for i := 1 to N do
        if num < cadn[i] then
            cant := cant + 1;
    cantMayores := cant;
end;

function ordenado(cadn: CadenaN): boolean;
var i: integer;
begin
    i := 1;
    while (i < N) and (cadn[i] < cadn[i + 1]) do  // i < N para evitar acceder a cadn[N+1]
        i := i + 1;
    ordenado := i = N; // Será true si llegó hasta el final sin desorden
end;

procedure maxValorPos(cadn: CadenaN; var valor, pos: integer);
var
    i: integer;
begin
    valor := cadn[1]; // Inicializar con el primer valor
    pos := 1;      // Inicializar con la primera posición
    for i := 2 to N do // Empezar desde el segundo elemento
        if cadn[i] > valor then
        begin
            valor := cadn[i];
            pos := i;
        end;
end;
