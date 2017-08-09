; Author: HRDARJI
; This program is just to play around with different datatypes in nasm

global _start

section .text

_start:

; print hello world

	mov eax, 0x4
	mov ebx, 0x1
	mov ecx, message
	mov edx, mlen
	int 0x80

; exit
	
	mov eax, 0x1
	mov ebx, 0x5
	int 0x80


section .data

	message:db "Hello World"
	mlen	equ $-message

; examples of some datatypes

; a single byte
	var1: db 0xAA

; sequence of bytes
	var2: db 0xAB, 0xCD, 0xEF

;a single word
	var3: dw 0xEE

;four bytes
	var4: dd 0xABCDEF
	var5: dd 0x12345

;6 times the initialization
	var6: TIMES 6 db 0xFF

;uninitialized data section which starts with .bss

section .bss
	
;reserve 100 bytes
	var7: resb 100

;reserve 20 word
	var8: resw 20
