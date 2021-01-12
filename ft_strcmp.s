bits 64
global _ft_strcmp

section .text
_ft_strcmp: ;rsi = s2 rdi = s1
	xor rcx, rcx
	jmp comp

incre:
	inc rcx

comp:
	cmp BYTE[rdi + rcx], 0
	je end
	cmp BYTE[rsi + rcx], 0
	je end
	mov dl, BYTE [rdi + rcx]
	cmp dl, BYTE [rsi + rcx]
	jne end
	jmp incre

end:
	mov dl, BYTE [rdi + rcx]
	cmp dl, BYTE [rsi + rcx]
	je egal
	jl infe
	jg sup

egal:
	mov rax, 0
	ret

infe:
	mov rax, -1
	ret

sup:
	mov rax, 1
	ret
