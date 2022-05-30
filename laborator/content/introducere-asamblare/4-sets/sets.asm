%include "printf32.asm"

section .text
    global main
    extern printf

main:
    ;cele doua multimi se gasesc in eax si ebx
    mov eax, 139
    mov ebx, 169
    PRINTF32 `%u\n\x0`, eax ; afiseaza prima multime
    PRINTF32 `%u\n\x0`, ebx ; afiseaza cea de-a doua multime

    ; TODO1: reuniunea a doua multimi
    mov ecx, eax
    or ecx, ebx
    PRINTF32 `%u\n\x0`, ecx


    ; TODO2: adaugarea unui element in multime
    mov ecx, 8
    or ecx, ebx
    PRINTF32 `%u\n\x0`, ecx

    ; TODO3: intersectia a doua multimi
    mov ecx, eax
    and ecx, ebx
    PRINTF32 `%u\n\x0`, ecx


    ; TODO4: complementul unei multimi
    mov ecx, eax
    not ecx
    PRINTF32 `%u\n\x0`, ecx


    ; TODO5: eliminarea unui element
    mov ecx, 1
    not ecx
    and ecx, ebx
    PRINTF32 `%u\n\x0`, ecx


    ; TODO6: diferenta de multimi EAX-EBX
    mov ecx, eax
    not ebx
    and ecx, ebx
    PRINTF32 `%u\n\x0`, ecx


    xor eax, eax
    ret
