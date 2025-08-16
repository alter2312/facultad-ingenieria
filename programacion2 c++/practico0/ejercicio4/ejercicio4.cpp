#include <stdio.h>
#include <ctype.h>  // Se necesita para tolower() y isalnum()
#include <string.h> // Se necesita para strlen()

// La declaración del parámetro se cambia de `char* data[]` a `char* data`
bool isPalindrome(char* data){
    int start = 0;
    int end = strlen(data) - 1; // Usamos strlen() para encontrar el final de la cadena

    // Manejar el caracter de nueva línea '\n' que agrega fgets()
    if (end >= 0 && data[end] == '\n') {
        data[end] = '\0';
        end--;
    }

    while(start < end && data[start] == data[end]){

        start++;
        end--;
    }
    return true;
}

int main(){
    char* data = new char[100];
    printf("Ingrese una palabra o frase: ");
    fgets(data, 100, stdin);
    
    isPalindrome(data) ? printf("Es un palindromo\n") : printf("No es un palindromo\n");
    
    delete[] data;
    return 0;
}