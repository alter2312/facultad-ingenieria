program ejercicio7;
var m,n,i,j:integer;
begin
    write('Ingrese dos numeros (m y n): ');
    read(m, n);
    i := m;
    while  (i <=n) do begin
        writeln('<< tabla ',i:0,' >>');
        for j := 0 to 10 do 
            writeln( j:2, ' * ', i:0, ' = ', (j * i):0);
        i := succ(i);
    end;
end.