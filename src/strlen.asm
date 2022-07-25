    global strlen:function
    section .text

strlen:
    xor rax, rax
    cmp rdi, 0
    je end

count:
	cmp BYTE [rdi], 0
	je end
	inc rdi
	inc rax
	jmp count

end:
	ret