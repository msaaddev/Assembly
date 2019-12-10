;Student Name: Muhammad Saad
;Student Roll Number: 2018-CS-7

Include Irvine32.inc

.data

arr dword 2,3,4,1,6,3,4	; array defined
arrSize dword ?

.code


maximum proc	; maximum value procedure
		
	mov eax, [ebx]
	maxValue:
		cmp eax, [ebx]	; comparing value of eax with ebx
		jge maxLoop	; if value greater or equal
		mov eax, [ebx]	; moving value of ebx in eax

	maxLoop:
		add ebx, 4	; adding 4 in ebx to get next value of array
		loop maxValue	; looping
		ret

maximum endp

main proc

	mov ebx, offset arr
	mov ecx, 7
	call maximum
	call writeint

main endp


end main
