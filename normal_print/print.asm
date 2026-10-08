extern printf

section .text
    global main

main:
    sub rsp, 28h

    lea rcx, [rel string]

    call printf

    xor eax, eax
    add rsp, 28h

    ret

section .data
    string: db 'name', 0