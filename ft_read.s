bits 64
global _ft_write
extern ___error

section .text
_ft_write:						; rdi = file descriptor, rsi = string, rdx = byte count
    mov rax, 0x2000003
    syscall
	jc	error
	ret

error:
	;neg rax
	push rax
	call ___error
	pop rbx
	mov [rax], rbx
	mov rax, -1
	ret