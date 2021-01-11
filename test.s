bits 64

section .data
	message db 'hello', 10

section .text
	global _start
	_start:
		mov rax, 0x2000004
		mov rdi, 1
		mov rsi, message
		mov rdx 5+1
		syscall
		mov rdi, 0
		mov rax, 0x2000001
		syscall
