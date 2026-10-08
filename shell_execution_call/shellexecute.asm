extern ShellExecuteA
extern ExitProcess

section .data
    operation db 'open',0
    file_name db 'notepad.exe',0
    parameters db 0
    directory db 0
    
    SW_SHOWNORMAL equ 1

section .text
    global main

main:
    push    rbp
    mov     rbp, rsp
    sub     rsp, 40h          ; Shadow space
    
    ; ShellExecuteA(
    ;   hwnd, op, file, params, dir, showcmd
    ;   rcx,  rdx, r8,  r9,    [rsp+20h], [rsp+28h]
    ; )
    
    xor     rcx, rcx          ; hwnd = NULL
    lea     rdx, [operation]  ; "open"
    lea     r8, [file_name]   ; "notepad.exe"
    lea     r9, [parameters]  ; NULL
    mov     qword [rsp+20h], 0 ; directory = NULL
    mov     dword [rsp+28h], SW_SHOWNORMAL
    
    call    ShellExecuteA
    
    ; Sair
    xor     ecx, ecx
    call    ExitProcess
    
    mov     rsp, rbp
    pop     rbp
    ret