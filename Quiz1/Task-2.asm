; This program asks user to asks for user's age in year, months and days. 
; The program then prints the user's age in hours

INCLUDE Irvine32.inc 

.data 

daysInYear dword 365	; set that there are 365 days in a year
daysInMonth dword 30	; set that there are 31 days in a month
hours dword 24			; set that there are 24 hours in a day

ageInYears byte "Enter age in years: ", 0
ageInMonths byte "How many months have passed since your last birthday: ", 0
ageInDays byte "How many additional days have gone other than months: ", 0
ageinHours bye "Your age in hours: "

years dword ?			; initialized a variable to store user's age in years
months dword ?			; initialized a variable to store user's age in months
days dword ?			; initialized a variable to store user's age in days
storesDays_1 dword ?	; This variable will store the calculation of users age in years to days
storesDays_2 dword ?	; This variable will store the calculation of users age in months to days

.code 

main PROC  
	
	mov eax, 0

	mov edx, offset(ageInYears) 
	call WriteString
	mov edx, 0

	call readint
	mov years, eax		; storing the user's age in years in years variable
	mov eax, 0			; setting the value in the register to 0

	mov edx, offset(ageInMonths) 
	call WriteString
	mov edx, 0

	call readint 
	mov months, eax		; storing the user's age in months in months variable
	mov eax, 0			; setting the value in the register to 0

	mov edx, offset(ageInDays) 
	call WriteString
	mov edx, 0

	call readint
	mov days, eax		; storing the user's age in days in days variable

	mov eax, 0			; setting the value in the register to 0
	mov eax, years		; moved value stored in years to eax register

	mul daysInYear		; multiple the value stored in eax with daysInYears
	mov storesDays_1, eax ; moved the value stored in eax to storesDays_1 variable

	mov eax, 0
	mov eax, months		; moved value stored in months to eax register
	mul daysInMonth		; multiple the value stored in eax with daysInMonth
	mov storesDays_2, eax ; moved the value stored in eax to storesDays_2 variable

	mov eax, 0
	mov eax, days		; moved value stored in days to eax register
	add eax, storesDays_1	; add value stored in storesDays_1 in the value stored in eax register
	add eax, storesDays_2	; add value stored in storesDays_2 in the value stored in eax register
	
	mul hours			; multiple the value stored in eax register with the value stored in hours variable
	
	mov edx, offset(ageinHours) 
	call WriteString
	mov edx, 0

	call writeInt		; printing it on screen
	call readInt

exit
main ENDP 
END main
