    global strchr:function
    section .text

strchr:
    xor RAX, RAX

.loop:
    cmp BYTE[RDI], SIL
    je .find
    cmp BYTE[RDI], 0
    je .null
    inc RDI
    jmp .loop

.null:
    mov RAX, 0
    ret

.find:
    mov RAX, RDI
    ret