{**letra**}
{No es posible utilizar una computadora para generar números aleatorios genuinos ya que
es preciso utilizar un algoritmo para generar los números, lo que implica que es posible predecir los números generados. Lo que sí pueden hacer las computadoras es generar números
seudoaleatorios (números que, estadíısticamente, parecen ser aleatorios). Una técnica antigua (que no produce buenos resultados) se llama método del cuadrado medio. Funciona
así: dado un número a, para generar el siguiente número de la secuencia se extraen los
dígitos que están en la posición de las decenas y las centenas de a
2
. Por ejemplo, si a es
53, entonces a
2
es 2809, y el siguiente número seudoaleatorio será 80. Se ve que el siguiente
número seudoaleatorio a 80 es 40. Si se continúua este proceso se obtiene 60, 60, 60, . . .
Escriba un programa en Pascal que lea por la entrada estándar un entero de dos dígitos
y determine el siguiente número seudoaleatorio que se generaría si se usara el método del
cuadrado medio. Como resultado, exhiba por la salida estándar el número de dos dígitos
original, el cuadrado de este entero, y el siguiente número seudoaleatorio. Incluya mensajes
de salida con etiquetas descriptivas para el ingreso y el despliegue de datos.
}
program ejercicio8;
var
  num, cuadrado, central: integer;
begin
  { Pedimos al usuario un número de dos dígitos }
  write('Ingrese un numero de dos digitos: ');
  readln(num);
  
  { Calculamos el cuadrado del número }
  cuadrado := num * num;
  
  { Extraemos los dos dígitos centrales }
  central := (cuadrado div 10) mod 100;
  
  { Mostramos los resultados }
  writeln('Numero original: ', num);
  writeln('Cuadrado: ', cuadrado);
  writeln('Siguiente numero seudoaleatorio: ', central);
end.
