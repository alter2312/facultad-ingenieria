
#include <stdio.h>
int Ocurrencias(char frase[], int largo, char letra){
    int contador = 0;
    for (int i = 0; i < largo; i++){
        if (frase[i] == letra){
            contador ++;
        }
    }
    return contador;
}
int main() {
    char frase[100];
    char letra;
    printf(" Ejercicio 3 practico 0 \n");
    printf("Contar ocurrencias de un caracter en una frase \n");
    printf("____________________\n");
    printf("Ingrese una frase (maximo 100 caracteres): ");
    fgets(frase, sizeof(frase), stdin);
    int largo = 0;
    while (frase[largo] != '\0' && frase[largo] != '\n') {
        largo++;
    }
    printf("Ingrese el caracter a buscar: ");
    scanf(" %c", &letra);
    int ocurrencias = Ocurrencias(frase, largo, letra);
    printf("El caracter '%c' aparece %d veces en la frase.\n", letra, ocurrencias);
    return 0;
}