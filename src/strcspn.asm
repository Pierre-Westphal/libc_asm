global strcspn:function
section .text

strcspn:
    xor rbx, rbx
    jmp .loop

.inc:
    inc rbx

.loop:
    mov al, BYTE [rdi + rbx]
    cmp al, 0
    je .stop
    xor rcx, rcx
    jmp .sub_loop

.sub_loop:
    mov dl, BYTE [rsi + rcx]
    cmp dl, 0
    je .inc
    cmp al, dl
    je .stop
    inc rcx
    jmp .sub_loop

.stop:
    mov rax, rbx
    ret