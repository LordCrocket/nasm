%include "common.inc"


segment .text
        global  asm_main
asm_main:
        enter   0,0 


	mov rdi,prompt1
	call print
	call scan
	mov r12, rax
	mov rdi,prompt2
	call print
	call scan
	mov r13, rax

while:
	cmp r13,0
	je endwhile

	mov r14,r13

	;mov rdi, fmt
	;mov rsi, r12
	;call print

	;mov rdi, fmt	
	;mov rsi, r13
	;call print

	xor rdx,rdx
	mov rax,r12
	div r13

	;mov r15,rax ; Quotient
	mov r13,rdx ; Reminder

	mov rdi, fmt	
	mov rsi, r12
	call print

	mov rdi, fmt	
	mov rsi, r13
	call print

	mov rdi, fmt	
	mov rsi, r15
	call print

	mov r12,r14

	jmp while
endwhile:

	mov rdi,answer
	call print

	mov rdi, fmt	
	mov rsi, r12
	call print

        mov     rax, 0            ; return back to C
        leave                     
        ret
