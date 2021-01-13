bits 64
global _ft_read
extern ___error

section .text
_ft_read:						; rdi = file descriptor, rsi = string, rdx = n
    mov rax, 0x2000003
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
