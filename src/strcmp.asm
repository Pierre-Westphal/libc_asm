global strcmp:function
section .text

strcmp:
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
    mov bl, BYTE[rdi + rcx]
    mov dl, BYTE[rsi + rcx]
    cmp bl, dl
    je .incre
    movsx eax, bl
    movsx ebx, dl
    sub eax, ebx

.stop:
    ret