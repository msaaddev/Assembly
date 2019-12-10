;Student Name: Muhammad Saad
;Student Roll Number: 2018-CS-7
;Task Name: 
;Task Description: Write Assembly program which takes a number N from user. Print following pattern using loops upto Nth line
;Dont forget to explain the code using comments


; you code goes here
;//

COMMENT !
 A program which takes a number N from user then print following pattern using loops upto Nth line
 1
 22
 333
 4444
!

Include Irvine32.inc

.data

prompt1 byte "Enter a number: " , 0 ; prompt to display on screen
num dword 1 ; Initialized the value that is printed on the screen to 1
index dword ?	; declard a variable to store index

.code

main proc
	mov eax, 0	; setting value in eax to 0
	mov edx, 0	; setting value in edx to 0
	mov edx, offset prompt1
	call writestring	; printing the string on the screen
	call readint

	mov index, eax		; moving user input in index variable
	mov eax, 0
	mov eax, num		; moving the default of num to eax
	

	loopBody:
		mov ecx, eax	; moving value stored in eax to ecx register

			nextedBody:
				call writeint ; printing the number on screen
			loop nextedBody	  	

		call crlf		; bringing the cursor to new line
	
		inc eax			; incrementing the value stored in eax register
		mov ecx, index	; moving the user input value to ecx register
		dec index		; decrementing loop control variable

	loop loopBody
main endp
end main
