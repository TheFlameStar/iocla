%include "../utils/printf32.asm"

%define ARRAY_SIZE    8

section .data
    print_format1 db "Negative: ", 0
    print_format2 db "Pozitive: ", 0
    array dd -10, 10, 3, -3, 7, -4, -8, 6

section .text
extern printf
global main
main:
    push ebp
    mov ebp, esp
    xor ebx, ebx
    xor edx, edx
    mov ecx, ARRAY_SIZE 

verify:
    mov eax, dword [array + ecx * 4 - 4]
    cmp eax, 0
    jg poz
    inc edx
    loop verify
    jmp exit

poz:
    inc ebx
    dec ecx
    jmp verify

exit:
    PRINTF32 `%s\x0`, print_format1
    PRINTF32 `%d\n\x0`, ebx
    PRINTF32 `%s\x0`, print_format2
    PRINTF32 `%d\n\x0`, edx
    leave
    ret