program GestionFacultad;

const
    CANT_SALONES = 10;
    MAX_PIZARRONES = 4;

type
    TSalon = record
        asientos: Integer;
        pizarrones: 1..MAX_PIZARRONES;
        hayProyector: Boolean;
    end;
    TFacultad = array [1..CANT_SALONES] of TSalon;

procedure informeSalones(facu: TFacultad);
var
    i: Integer;
begin
    for i := 1 to CANT_SALONES do begin
        writeln('Salón ', i, ':');
        writeln('Cantidad de asientos: ', facu[i].asientos);
        writeln('Cantidad de pizarrones en el salón: ', facu[i].pizarrones);
        if facu[i].hayProyector then
            writeln('Dispone de proyectores')
        else
            writeln('No contiene proyectores');
        writeln;
    end;
end;

procedure salonMasAsientos(facu: TFacultad; var indSalon: Integer; var maxAsientos: Integer);
var
    i: Integer;
begin
    indSalon := 1;
    maxAsientos := facu[1].asientos;
    for i := 2 to CANT_SALONES do
        if facu[i].asientos > maxAsientos then begin
            indSalon := i;
            maxAsientos := facu[i].asientos;
        end;
end;

function primerSalonSinAsientos(facu: TFacultad): Integer;
var
    indice: Integer;
begin
    indice := 1;
    while (indice <= CANT_SALONES) and (facu[indice].asientos <> 0) do
        indice := indice + 1;
    if indice <= CANT_SALONES then
        primerSalonSinAsientos := indice
    else
        primerSalonSinAsientos := 0;
end;

{ Programa principal }
var
    facultad: TFacultad;
    i, indSalon, maxAsientos, sinAsientos: Integer;
begin
    { Cargar datos de los salones }
    writeln('Ingrese los datos de los ', CANT_SALONES, ' salones:');
    for i := 1 to CANT_SALONES do begin
        writeln('Salón ', i, ':');
        write('  Cantidad de asientos: ');
        readln(facultad[i].asientos);
        write('  Cantidad de pizarrones (1 a ', MAX_PIZARRONES, '): ');
        readln(facultad[i].pizarrones);
        write('  ¿Tiene proyector? (1=Sí, 0=No): ');
        readln(facultad[i].hayProyector);
    end;
    
    { Mostrar informe de los salones }
    writeln;
    writeln('Informe de los salones:');
    informeSalones(facultad);
    
    { Determinar el salón con más asientos }
    salonMasAsientos(facultad, indSalon, maxAsientos);
    writeln('El salón con más asientos es el ', indSalon, ' con ', maxAsientos, ' asientos.');
    
    { Determinar el primer salón sin asientos }
    sinAsientos := primerSalonSinAsientos(facultad);
    if sinAsientos <> 0 then
        writeln('El primer salón sin asientos es el ', sinAsientos, '.')
    else
        writeln('Todos los salones tienen asientos.');
end.
