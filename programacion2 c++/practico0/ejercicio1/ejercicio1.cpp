#include <stdio.h>

// Función de ordenamiento por inserción para ordenar de mayor a menor
void insertionSort(int arr[], int size) {
    int i, key, j;
    for (i = 1; i < size; i++) {
        key = arr[i];
        j = i - 1;

        // Condición para ordenar de mayor a menor
        while (j >= 0 && arr[j] < key) {
            arr[j + 1] = arr[j];
            j = j - 1;
        }
        arr[j + 1] = key;
    }
}

// La función ahora devuelve un float
float promedioClass (int arr[], int size) {
    insertionSort(arr, size); // Ordena el arreglo de mayor a menor
    float promedio;
    int suma = 0;
    
    // Bucle para sumar solo las 4 notas más altas
    for (int i = 0; i < (size-1); i++){
        suma += arr[i];
    }
    
    // Diviode la suma entre 4 para obtener el promedio
    promedio = (float)suma / (size - 1);
    return promedio;
}

int main() {
    int nota[5];
    printf("ingrese las 5 calificaciones: \n");
    for (int i = 0; i < 5; i++) {
        scanf("%d", &nota[i]);
    }
    int size = sizeof(nota) / sizeof(nota[0]);
    
    float promedio = promedioClass(nota, size);
    
    // Se usa el especificador de formato %.2f para mostrar dos decimales
    printf("El promedio de las 4 calificaciones mas altas es: %.2f\n", promedio);
    return 0;
}