bits 64
global _ft_strcpy

section .text
_ft_strcpy:       ; source: rsi   dest: rdi
	xor	rcx, rcx
	cmp rsi, 0
	je done
	jmp fill

incre:
	inc rcx

fill:
	mov dl, BYTE[rsi + rcx]
	mov BYTE[rdi + rcx], dl
	cmp dl, 0
	jne incre
	jmp done

done:
	mov rax, rdi
	ret