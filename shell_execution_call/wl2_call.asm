extern ShellExecuteA

section .text
    global main

main:
    push rbp
    mov rbp, rsp
    sub rsp, 40h

    xor rcx, rcx
    lea rdx, [rel option]
    lea r8, [rel path]
    lea r9, [rel param]
    mov qword [rsp+20h], 0
    mov dword [rsp+28h], SW_SHOWNORMAL
    call ShellExecuteA

    xor ecx, ecx

    add rsp, 40h
    pop rbp
    ret

section .data
    option: db 'open', 0
    path: db 'cmd.exe', 0
    param: db 0
    dir: db 0
    SW_SHOWNORMAL: equ 5