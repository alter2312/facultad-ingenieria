#include <stdio.h>

//declaracion de array
void cargarArray(int array[], int n){
    int num;
    for (int i = 0; i < n; i++){
        scanf("%d",&num);
        array[i] = num;
    }
}
void selectSort(int array[], int n) {
    int indMin, aux;
    for (int i = 0; i < ( n-1); i++){
        indMin = i;
        for (int j = i + 1; j < n; j++){
            if (array[indMin] > array[j]){
                indMin = j;
            }
        }
        aux = array[i];
        array[i] = array[indMin];
        array[indMin] = aux;
    }
}
void imprimirArray(int array[], int n){
    for (int i = 0; i < n; i++){
        printf("%d ", array[i]);
    }
    printf("\n");
}
int main(){
    int num = 5;
    int arr[num];
    printf("\nEjercicio 6 \n");
    printf("ingrese %d números: \n",num);
    cargarArray(arr, num);
    printf("El array ingresado fue el siguiente\n");
    imprimirArray(arr, num);
    selectSort(arr, num);
    printf(" el array ordenado es: \n");
    imprimirArray(arr, num);

    return 0;
}