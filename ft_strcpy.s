bits 64
global _ft_strcpy

section .text
_ft_strcpy:       ; source: rsi   dest: rdi
	xor	rcx, rcx; i = 0
	cmp rsi, 0; !s1 ?
	je done
	jmp cpy

incre:
	inc rcx

cpy:
	mov dl, BYTE[rsi + rcx]
	mov BYTE[rdi + rcx], dl; dest[i] = src[i]
	cmp dl, 0; src[i] = 0 ?
	jne incre
	jmp done

done:
	mov rax, rdi
	ret