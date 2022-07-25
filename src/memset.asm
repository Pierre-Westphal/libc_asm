global memset:function
section .text

memset:
    mov rcx, rdx
    mov r8, 0
    mov al, SIL
    inc r8
    push rdi
    jmp .run

.run:
    cmp rdi, 0
    je .stop
    inc r8
    rep stosb

.stop:
    pop rax
    ret