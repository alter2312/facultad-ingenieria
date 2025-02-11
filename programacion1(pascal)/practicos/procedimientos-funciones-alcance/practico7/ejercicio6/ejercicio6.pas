program ejercicio6;
var
  a, b, c: integer;
  raiz1, raiz2: real;
  count: integer;
function discriminante(a,b,c:integer):real;
begin
    discriminante := sqr(b) - (4 * a *c);
end;
function raiz(num:real ;a,b,cant:integer):real;
var resu:real;
begin
    case cant of
        2 : resu := (-b + num) / (2 * a);
        1 : resu := -b  / (2 * a);
    end;
    raiz := resu;
end;
procedure raices(a,b,c:integer ; var raiz1,raiz2:real; var count:integer);
var dis:real;
begin
    dis := discriminante(a,b,c);
    if dis > 0 then
        count := 2
    else if dis = 0 then
        count := 1
    else count :=  0;
    if dis >= 0 then begin
      raiz1:= raiz(sqrt(dis),a,b,count);
      raiz2:= raiz(-sqrt(dis),a,b,count);
    end
    else begin
     raiz1:= 0;
     raiz2:= 0;
    end;
end;
begin
  write('Ingrese los coeficientes a, b, c: ');
  readln(a, b, c);
  raices(a, b, c, raiz1, raiz2, count);
  if count = 2 then
    writeln('Las raíces son: ', raiz1:0:2, ' y ', raiz2:0:2)
  else if count = 1 then
    writeln('La raíz doble es: ', raiz1:0:2)
  else
    writeln('No hay raíces reales.');
end.