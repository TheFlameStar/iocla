%include "../utils/printf32.asm"

%define NUM_FIBO 10

section .text

extern printf
global main
main:
    mov ebp, esp

    ; TODO - replace below instruction with the algorithm for the Fibonacci sequence
    ; sub esp, NUM_FIBO * 4
    mov ebx, NUM_FIBO
    xor eax, eax
    xor edx, edx
    xor ecx, ecx
    mov edx, 1

loop_fibo
    mov [esp + 4 * ecx], eax 
    mov eax, edx
    add [esp + 4 * ecx], edx
    mov edx, [esp + 4 * ecx]
    inc ecx

    cmp ecx, ebx
    jne loop_fibo
    inc ecx
    mov ecx, NUM_FIBO
print:
    mov eax, dword [esp + (ecx - 1) * 4]
    PRINTF32 `%d \x0`, eax
    dec ecx
    cmp ecx, 0
    ja print

    PRINTF32 `\n\x0`
    mov esp, ebp
    xor eax, eax
    ret
