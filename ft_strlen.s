bits 64
global _ft_strlen

section .text
_ft_strlen: ; rdi = str
	mov rax, 0; i = 0
	jmp comp

incre:
	inc rax; i++

comp:
	cmp BYTE [rdi + rax], 0; str[i] == 0 ?
	jne incre
	ret
