section .data
    before_format db "before %s", 13, 10, 0
    after_format db "after %s", 13, 10, 0
    mystring db "abcdefghij", 0

section .text

extern printf
global main

toupper:
    push ebp
    mov ebp, esp

    ; TODO
    mov eax, dword[ebp + 8]
verify:
    mov bl, byte[eax]
    test bl, bl
    je out
    sub bl, 32
    mov byte[eax], bl
    inc eax
    jmp verify

;for bonus we first verify if it bigger than a, and after that if it is smaller
; than z. If so, we make it big by substracting 32

exit:
    leave
    ret

main:
    push ebp
    mov ebp, esp

    push mystring
    push before_format
    call printf
    add esp, 8

    push mystring
    call toupper
    add esp, 4

    push mystring
    push after_format
    call printf
    add esp, 8

    leave
    ret
