bits 64
global _ft_write
extern ___error

section .text
_ft_write:						; rdi = file descriptor, rsi = buffer, rdx = buffer_size
    mov rax, 0x2000004
    syscall
	jc	error
	ret

error:
	push rax
	call ___error
	pop rbx
	mov [rax], rbx
	mov rax, -1
	ret
