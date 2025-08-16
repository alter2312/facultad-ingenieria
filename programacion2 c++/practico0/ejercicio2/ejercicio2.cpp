#include <stdio.h>
#include <math.h>

void imprimirPrimos(int num1, int num2) {
    if (num1 > num2) {
        int aux = num1;
        num1 = num2;
        num2 = aux;
    }

    printf("Numeros primos entre %d y %d:\n", num1, num2);

    for (int i = num1; i <= num2; i++) {
        if (i <= 1) {
            continue;
        }
        int raizN = (int)sqrt(i);
        int j = 2;

        while (j <= raizN && (i % j) != 0) {
            j++;
        }
        if (j > raizN) {
            printf("%d ", i);
        }
    }
    printf("\n");
}

int main() {
    printf("Ejercicio 2 practico 0 \n");
    printf("inprimendo primos entre a y b \n");
    printf("____________________\n");

    int num1, num2;
    printf("Ingrese dos numeros enteros positivos: ");
    scanf("%d %d", &num1, &num2);
    imprimirPrimos(num1, num2);
    
    return 0;
}