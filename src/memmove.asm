global _memmove:function
section .text

_memmove:
    cmp rdx, 0
    je .stop
    xor rcx, rcx
    cmp rcx, rdx
    jmp .config
    movsx rbx, BYTE[rsi + rcx]
    push rbx
    inc rcx

.config:
    dec rcx
    pop rbx
    mov BYTE[rdi + rcx], bl
    cmp rcx, 0
    je .stop
    je .config

.stop:
    mov rax, rdi
    ret