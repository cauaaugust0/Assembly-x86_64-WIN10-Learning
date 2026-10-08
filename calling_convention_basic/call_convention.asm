extern scanf
extern puts
extern ShellExecuteA

section .data
    msg: db 'exe to open:', 0

    fmt: db "%s", 0

    option: db 'open', 0
    param: db 0
    dir: db 0
    SW_SHOWNORMAL: equ 5

section .bss
    input: resb 64

section .text
    global main

test:
    push rbp
    mov rbp, rsp
    sub rsp, 40h

    mov r8, rcx
    xor rcx, rcx
    lea rdx, [rel option]
    lea r9, [rel param]
    mov qword [rsp+20h], dir
    mov dword [rsp+28h], SW_SHOWNORMAL

    call ShellExecuteA

    xor ecx, ecx

    add rsp, 40h
    pop rbp
    ret

main:
    push rbp 
    mov rbp, rsp
    sub rsp, 28h

    lea rcx, [rel msg]
    call puts

    lea rcx, [rel fmt]
    lea rdx, [rel input]
    call scanf

    sub rsp, 8
    lea rcx, [rel input]
    call test
    add rsp, 8

    xor eax, eax

    add rsp, 28h
    pop rbp
    ret