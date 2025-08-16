program ejercicio9;
const
    CENTINELA = -1;
var
    a, b : integer;
function multiplo(m,n : integer) : boolean;
begin
    multiplo:= (n mod m = 0) or (m mod n = 0)
end;

begin
    read(a);
    while a <> CENTINELA do begin
        readln(b);
        if multiplo(a,b) then
            writeln('Si')
        else
            writeln('No');
        read(a)
    end;
end.
