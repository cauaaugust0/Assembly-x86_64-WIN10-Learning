; messagebox.asm - NASM syntax para Windows x64
; Compilar: nasm -f win64 messagebox.asm -o messagebox.obj
; Link: link messagebox.obj /subsystem:windows /entry:main /defaultlib:user32.lib /defaultlib:kernel32.lib

extern MessageBoxW
extern ExitProcess

section .data
    message dw 'O','l','a',' ','M','u','n','d','o','!',0
    caption dw 'M','e','n','s','a','g','e','m',0
    user32db db 'user32.dll',0
    msgboxw db 'MessageBoxW',0
    
    MB_OK equ 0
    MB_ICONINFORMATION equ 40h

section .bss
    hUser32 resq 1

section .text
    global main

main:
    ; Prólogo
    push    rbp
    mov     rbp, rsp
    sub     rsp, 40h          ; Shadow space
    
    ; Parâmetros do MessageBoxW (rcx, rdx, r8, r9)
    xor     rcx, rcx          ; hWnd = NULL
    lea     rdx, [message]    ; lpText
    lea     r8, [caption]     ; lpCaption
    mov     r9d, MB_OK        ; uType
    
    call    MessageBoxW
    
    ; Epílogo
    mov     rsp, rbp
    pop     rbp
    
    ; Sair com código 0
    xor     ecx, ecx
    call    ExitProcess
    
    ret