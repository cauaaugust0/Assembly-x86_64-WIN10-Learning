extern puts
extern printf

section .text
global main

main:
    sub rsp, 40h

    mov byte [rsp+30h], 'c'
    mov byte [rsp+31h], 'a'
    mov byte [rsp+32h], 'u'
    mov byte [rsp+33h], 'a'
    mov byte [rsp+34h], 0

    lea rcx, [rsp+30h]
    call printf

    xor eax, eax

    add rsp, 40h

    ret