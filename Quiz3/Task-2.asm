;Student Name: Muhammad Saad
;Student Roll Number: 2018-CS-7

Include Irvine32.inc

.data

msg1 byte "Enter the temperature in Celsius: ", 0 ; msg to display on screen
cel real8 ?                                       ; initializing variable
formula_value1 dword 1.8                          ; initializing variable
formula_value2 dword 32

.code

conversion proc, cels: real8                      ; procedure declaration

	fld cels
	fld formula_value1
	fmul 
	fld formula_value2
	fadd
	ret 	

conversion endp

main proc
	
	mov edx, offset msg1                              ; moving address of msg1 into edx
	call writestring
	call readfloat
	FST cel
	Invoke conversion, cel
	call writefloat

main endp
end main

