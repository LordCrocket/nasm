extern	printf
extern	scanf 

segment .data
;
; These labels refer to strings used for output
;
prompt1 db    "Enter dividend: ", 0       ; don't forget nul terminator
prompt2 db    "Enter divisor: ", 0       ; don't forget nul terminator
answer db    "Answer: ", 0       ; don't forget nul terminator
fmt db "%d",10, 0
integer1 times 8 db 0 ;
formatin db "%d", 0




print:
        enter   0,0 
	push    rbp
	mov	rbp, rsp
	xor	rax, rax
	call	printf
	pop	rbp
	leave
	ret
scan:
	enter 0,0
	push rbp
	mov rbp,rsi
	mov rdi, formatin
        mov  rsi, integer1
	xor  rax,rax
	call scanf
	mov rax, [integer1]
	pop rbp
	leave
	ret

