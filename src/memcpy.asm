global memcpy:function
section .text

memcpy:
    mov r10, 0
    mov rax, rdi
    jmp .config

.config:
    cmp rdi, 0
    je .stop
    inc r10
    cmp rsi, 0
    je .stop
    inc r10
    jmp .cpy

.cpy:
    mov rcx, rdx
    inc r10
    rep movsb

.stop:
    ret