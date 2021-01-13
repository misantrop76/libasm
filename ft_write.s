bits 64
global _ft_write
extern ___error

section .text
_ft_write:						; rdi = file descriptor, rsi = buffer, rdx = n
    mov rax, 0x2000004			;appel de write
    syscall
	jc	error					;error de write
	ret

error:
	push rax				
	call ___error				;appel de error rbx = errno
	pop rbx
	mov [rax], rbx				;[rax] = retour de errno
	mov rax, -1					;rax = retour de la fonction
	ret
