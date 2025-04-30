	;; Ashley Biscoe CMSC 313 2:30 Section

SECTION .data
msg     db      'Hello World!', 0Ah ;Create a msg variable to hold the string 
	
SECTION .text
	global  _start 		;Create a label _start to indicate the start of the instruction to be executed
_start:	
	mov     edx, 13		;Allocate 13 bytes for the 12 characters in the string, including the space, and an extra byte for the line feed character
	mov     ecx, msg	;Load the address of the msg variable in ecx
	mov     ebx, 1		;Move the string to the STDOUT file so it can be printed
	mov     eax, 4		;Print the string
	int     80h
	
	mov     ebx, 0      	;Return 0 when the program exits
	mov    	eax, 1		;Exit the program
	int     80h
