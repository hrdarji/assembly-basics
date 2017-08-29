; Author: HRDARJI
; This program was created to understand arithmetic, logical and control
; instructions of  assembly language programming.

global _start


section .text

_start:

	; ----------- Arithmetic Instructions----------------

	; register based addition
	
	mov eax, 0x0
	add eax, 0x10

	; memory based addition

	mov eax, 0x0
	add word [var2], 0x1111

	clc ; clear carry flag
	stc ; set carry flag
	cmc ; complement carry flag

	; subtract
	
	mov eax, 0x3
	sub eax, 0x2

	; increment and decrement instructions
	
	inc eax
	dec eax

	; multiplication

	mov eax, 0x0
	mov ebx, 0x0

	mov ax, 0x1111
	mov bx, 0x0002
	mul bx

	; divistion
	
	mov dx, 0x0
	mov ax, 0x1234
	mov cx, 0x2
	div cx

	; ----------- Logical Instructions----------------
	
	; AND
	
	mov al, 0x10
	and al, 0x01

	; AND can also be used for memory locations
	
	and byte [var1], 0x22

	; OR
	
	mov al, 0x10
	or al, 0x01

	; XOR
	
	mov al, 0x10
	xor al, 0x01

	; NOT 

	mov eax, 0xFFFFFFFF
	not eax

	; ----------- Control Instructions----------------

	jmp LabelExample2

	; instructions under LabelExample1 will never be executed.

LabelExample1:
	
	mov eax, 0x11
	add eax, 0x22	

LabelExample2:

	; we are updating eax to 5 because we will print hello world 5 times
	mov eax, 0x5

PrintString:
 
	push eax
	
	; print hello world 5 times
	
	mov eax, 0x4
	mov ebx, 1
	mov ecx, message
	mov edx, mlen
	int 0x80
	
	pop eax
	dec eax
	jnz PrintString

	;-------------- loop instruction example ---------------

	mov ecx, 0x5

PrintStringLoop:
	
	push ecx
	
	mov eax, 0x4
	mov ebx, 1
	mov ecx, message
	mov edx, mlen
	int 0x80
	
	pop ecx
	loop PrintStringLoop	
		
	; exit program 

	mov eax, 1
	mov ebx, 1		
	int 0x80

section .data

	var1 db 0x00
	var2 dw 0x0000
	var3 dd 0x00000000
	
	message: db "Hello World"
	mlen	equ $-message
