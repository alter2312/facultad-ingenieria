program WikipediaManager;
const
    CANT_LETRAS = 20;
    CANT_ARTICULOS = 5;
type
    TIdioma = (es,en,pt);
    TFecha = record
        dia : 1..31;
        mes : 1..12;
        anio : 2001..9999;
    end;
    TNombre = array[1..CANT_LETRAS] of char;
    TArticulo = record
        nombre : TNombre;
        idioma : TIdioma;
        visitas : Integer;
        ultima_act : TFecha;
    end;
    Wikipedia = array[1..CANT_ARTICULOS] of TArticulo;
function esPosterior(fecha1,fecha2:TFecha):boolean;
begin
    esPosterior := (fecha1.anio>fecha2.anio) or
                   ((fecha1.anio=fecha2.anio) and (fecha1.mes>fecha2.mes)) or
                   ((fecha1.anio=fecha2.anio) and (fecha1.mes=fecha2.mes) and (fecha1.dia>fecha2.dia))
end;
procedure articuloMasReciente(wiki:Wikipedia; idioma:TIdioma; var art:TArticulo);
var 
    i : Integer;
begin
    i := 1;
    while (i <= CANT_ARTICULOS) and (wiki[i].idioma <> idioma) do
        i := i + 1;
    if i <= CANT_ARTICULOS then begin
        art := wiki[i];
        for i := i + 1 to CANT_ARTICULOS do begin
            if (wiki[i].idioma = idioma) and esPosterior(wiki[i].ultima_act, art.ultima_act) then
                art:=wiki[i];
        end;
    end
    else art.visitas := -1;
end;
procedure imprimirArticulosMasRecientes(wiki:Wikipedia);
var 
    idioma : TIdioma;
    articulo : TArticulo;
    i : Integer;
begin
    for idioma := es to pt do begin
        articuloMasReciente(wiki,idioma,articulo);
        if (articulo.visitas <> -1) then begin
            write('Nombre: ');
            for i := 1 to CANT_LETRAS do
                write(articulo.nombre[i]);
            writeln;
            case articulo.idioma of 
                es : writeln('Idioma: Español');
                en : writeln('Idioma: Inglés');
                pt : writeln('Idioma: Portugués')
            end;
            writeln('Visitas: ', articulo.visitas:0);
            writeln('Última actualización: ', articulo.ultima_act.dia:0, '/', articulo.ultima_act.mes:0,'/',articulo.ultima_act.anio:0);
            writeln;
        end else begin
                write('No hay articulos en el idioma');
                case idioma of 
                    es : writeln(' Español');
                    en : writeln(' Inglés');
                    pt : writeln(' Portugués')
            end;
        end;
    end; 
end;
var wiki:Wikipedia;
begin
    with wiki[1] do begin
        Nombre := 'Articulo 1';
        idioma := es;
        visitas := 100;
        with ultima_act do begin
            dia:=10; mes:=10; anio:=2023
        end
    end;
    with wiki[2] do begin
        Nombre := 'Articulo 2';
        idioma := en;
        visitas := 200;
        with ultima_act do begin
            dia:=15; mes:=9; anio:=2023
        end
    end;
    with wiki[3] do begin
        Nombre := 'Articulo 3';
        idioma := pt;
        visitas := 150;
        with ultima_act do begin
            dia:=5; mes:=10; anio:=2023
        end
    end;
    with wiki[4] do begin
        Nombre := 'Articulo 4';
        idioma := es;
        visitas := 300;
        with ultima_act do begin
            dia:=12; mes:=9; anio:=2023
        end
    end;
    with wiki[5] do begin
        Nombre := 'Articulo 5';
        idioma :=en;
        visitas :=250;
        with ultima_act do begin
            dia:= 20; mes:= 8; anio:= 2023
        end
    end;
    imprimirArticulosMasRecientes(wiki)
end.