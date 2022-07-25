global strncmp:function
section .text

strncmp:
    cmp rdi, 0
    je .stop
    cmp rsi, 0
    je .stop
    xor eax, eax
    xor rcx, rcx
    jmp .loop

.incre:
    cmp bl, 0
    je .stop
    inc rcx

.loop:
    cmp rdx, rcx
    je .stop
    mov bl, BYTE[rdi + rcx]
    mov r8b, BYTE[rsi + rcx]
    cmp bl, r8b
    je .incre
    movsx eax, bl
    movsx ebx, r8b
    sub eax, ebx

.stop:
    ret
