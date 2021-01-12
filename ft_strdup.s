bits 64
global _ft_strdup
extern _malloc
extern ___error

section .text
_ft_strdup:   ;src = rdi
	mov rcx, 0
	cmp rdi, 0
	je error
	jmp str_len

incre_len:
	inc rcx

str_len:
	cmp BYTE[rdi + rcx], 0
	jne incre_len
	jmp do_malloc

do_malloc:
	inc rcx
	push rdi
	mov rdi, rcx
	call _malloc ; rax = malloc
	jz error_malloc
	pop rdi
	xor rcx, rcx
	jmp cpy

incre:
	inc rcx

cpy:
	mov dl, BYTE[rdi + rcx]
	mov BYTE[rax + rcx], dl
	cmp dl, 0
	jne incre
	ret

error:
	mov rax, 0
	ret

error_malloc:
	push rax
	call ___error
	pop rbx
	mov [rax], rbx
	mov rax, 0
	ret
