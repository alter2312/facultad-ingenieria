typedef struct Punto {
int coordX , coordY ;
};
typedef struct rep_colPuntos
{
    int capacidad;
    int cantidad;
    Punto *arregloPuntos;
} ColPuntos;

void insertarPunto ( ColPuntos & colPtos , Punto pto ){
    if (colPtos.cantidad < colPtos.capacidad){
        colPtos.arregloPuntos[colPtos.cantidad] = pto;
        colPtos.cantidad++;
    }
}
int menor(ColPuntos & ColPtos){
    if (ColPtos.cantidad <= 0) {
        return -1;
    }
    Punto aux;
    aux = ColPtos.arregloPuntos[0];

    for (int i = 1; i < ColPtos.cantidad;i++){

    if (aux.coordX > ColPtos.arregloPuntos[i].coordX){
        aux = ColPtos.arregloPuntos[i];
    }
    }
    return aux.coordX;

}

Punto puntoMedio(Punto pto1, Punto pto2){
    Punto aux;
    aux.coordX = (pto1.coordX + pto2.coordX) / 2;
    aux.coordY = (pto2.coordY + pto1.coordY) / 2;
    return aux;
}