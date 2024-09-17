#include <stdio.h>

/**
 * Afisati adresele elementelor din vectorul "v" impreuna cu valorile
 * de la acestea.
 * Parcurgeti adresele, pe rand, din octet in octet,
 * din 2 in 2 octeti si apoi din 4 in 4.
 */

int main() {
    int v[] = {0xCAFEBABE, 0xDEADBEEF, 0x0B00B135, 0xBAADF00D, 0xDEADC0DE};

    char* c = v;
    for (int i = 0; i < 4 * 5; ++i)
        printf("Parcurgere adresa din octet in octet: %p %hhx\n", c + i, *(c + i));
    printf("\n");
    short* a = v;
    for (int i = 0; i < 2 * 5; ++i)
        printf("Parcurgere adresa din 2 in 2 octeti: %p %hx\n", a + i, *(a + i));
    printf("\n");
    int* b = v;
    for (int i = 0; i < 5; ++i)
        printf("Parcurgere adresa din 4 in 4 octeti: %p %x\n", b + i, *(b + i));

    return 0;
}
