bits 64
global _ft_strcmp

section .text

_ft_strcmp: ;rsi = s2 rdi = s1
	xor rcx, rcx
	jmp comp

end:
	mov dl, BYTE [rdi + rcx]
	cmp dl, BYTE [rsi + rcx]
	je egal
	jl infe
	jg sup

comp:
	cmp rdi, 0
	je end
	cmp rsi, 0
	je end
	mov dl, BYTE [rdi + rcx]
	cmp dl, BYTE [rsi + rcx]
	jne end
	jmp incre

incre:
	inc rcx

egal:
	mov rax, 0
	ret

infe:
	mov rax, -1
	ret

sup:
	mov rax, 1
	ret
