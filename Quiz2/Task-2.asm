;Student Name: Muhammad Saad
;Student Roll Number: 2018-CS-7
;Task Name:
;Task Description: Write a program that determines the student’s grade. The program will read three scores and define the grade. If student have above 90 average marks then assign the A grade. If average marks have less than 90 or greater than 70 then assign the B grade. If average marks less than 50 then assign C grade.
;Dont forget to explain the code using comments


; you code goes here
;//


Include Irvine32.inc

.data

prompt1 byte "Enter your first score: " , 0  ; prompts to display on screen
prompt2 byte "Enter your second score: ",0	; prompts to display on screen
prompt3 byte "Enter your third score: ",0	; prompts to display on screen

prompt4 byte "Your grade is A", 0	; prompts to display on screen
prompt5 byte "Your grade is B", 0	; prompts to display on screen	
prompt6 byte "Your grade is C", 0	; prompts to display on screen
prompt7 byte "Your grade is D", 0	; prompts to display on screen

score1 dword ?
score2 dword ?
score3 dword ?
gradeA dword 100
gradeB dword 89
gradeC dword 69
gradeD dword 49
total dword 3

.code

main proc

	mov edx, 0	
	mov edx, offset prompt1
	call writestring	
	call readint	; taking input
	mov score1, eax	; storing value in score1
	mov eax,0
	call crlf

	mov edx, 0
	mov edx, offset prompt2
	call writestring
	call readint	; taking input
	mov score2, eax	; storing value in score1
	mov eax,0
	call crlf


	mov edx, 0
	mov edx, offset prompt3
	call writestring
	call readint	; taking input
	mov score3, eax	; storing value in score3
	mov eax,0
	call crlf

	mov eax, score1
	add eax, score2
	add eax, score3

	mov edx, 0
	div total

	mov ebx, gradeA	;comparison happening
	cmp eax, ebx
	jg condition1

	mov ebx, gradeB ;comparison happening
	cmp eax, ebx
	jg condition2

	mov ebx, gradeC	;comparison happening
	cmp eax, ebx

	jg condition3

	mov ebx, gradeD ;comparison happening
	cmp eax, ebx
	jg condition4

	condition1:	
		mov edx, offset prompt4
		call writestring
		jmp m
		

	condition2:
		mov edx, offset prompt5
		call writestring
		

	condition3:
		mov edx, offset prompt6
		call writestring

	condition4:
		mov edx, offset prompt7
		call writestring	
	
	m:

main endp
end main
