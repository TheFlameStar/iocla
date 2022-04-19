%include "../utils/printf32.asm"

section .data
source_text: db "ABCABCBABCBABCBBBABABBCBABCBAAACCCB", 0
substring: db "BABC", 0

print_format: db "Substring found at index: %d", 10, 0

section .text
extern printf
global main
main:
    push ebp
    mov ebp, esp
    mov ecx, source_text
    mov ebx, substring
    mov al, byte [ecx]
    mov dl, byte [ebx]
    mov esi, 0 ;creste dupa stringul source_text
    mov edi, 0 ;retine indexul la care se respecta cond
    ; TODO: Print the start indices for all occurrences of the substring in source_text
compare:
    cmp dl, 0
    je exit2
    mov ebx, substring
    mov dl, byte [ebx]
    cmp al, 0
    je exit1
    mov al, byte [ecx]
    mov dl, byte [ebx]
    cmp al, dl
    jne continue

index:
    mov edi, esi

continue:
    cmp al, dl
    je increase
    inc ecx
    inc esi
    jmp compare

increase:
    inc ecx
    inc ebx
    inc esi
    mov al, byte [ecx]
    mov dl, byte [ebx]
    cmp al, dl
    je increase
    jmp compare

exit1:
    push -1
    push print_format
    call printf
    add esp, 8
    jmp exit

exit2:
    push edi
    push print_format
    call printf
    add esp, 8
    jmp exit

exit:
    leave
    ret
