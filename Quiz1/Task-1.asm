
INCLUDE Irvine32.inc 

.data 

distanceOfCityAtoB byte "Enter the distance from city A to B: ", 0 
distanceOfCityBtoC byte "Enter the distance from city B to C: ", 0
distanceOfCityCtoD byte "Enter the distance from city C to D: ", 0
distance byte "Distance in Meters: "
mile dword 1600

atoBDistance dword ? ; variable to store distance of city a to b
btoCDistance dword ?  ; variable to store distance of city b to c
ctoDDistance dword ?  ; variable to store distance of city c to d

.code 

main PROC  
	
	mov edx, 0
	mov edx, offset(distanceOfCityAtoB)
	call writestring

	call readint
	mov atoBDistance, eax
	mov eax, 0

	mov edx, 0
	mov edx, offset(distanceOfCityBtoC)
	call writestring

	call readint
	mov btoCDistance, eax
	mov eax, 0

	mov edx, 0
	mov edx, offset(distanceOfCityCtoD)
	call writestring

	call readint
	mov ctoDDistance, eax
	mov eax, 0

	mov eax, atoBDistance
	add eax, btoCDistance ; adding distance from b to c
	add eax, ctoDDistance ; adding distance from c to d

	mul mile  

	mov edx, 0
	mov edx, offset(distance)
	call writestring

	call writeint
	call readint

exit
main ENDP 
END main
