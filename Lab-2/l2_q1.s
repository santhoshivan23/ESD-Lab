	AREA RESET, DATA, READONLY
	EXPORT __Vectors
__Vectors
	DCD 0x40001000 ; stack pointer value when stack is empty
	DCD Reset_Handler ; reset vector
	ALIGN
	AREA mycode, CODE, READONLY
	ENTRY
	EXPORT Reset_Handler
Reset_Handler
	LDR R0, =SRC
	LDR R1, =DST
	MOV R3, #10
UP
	LDR R1, [R0], #4
 	ADDS R2, R1
	ADC R6, #0
	SUBS R3, #1
	BNE UP
	LDR R6, =DST
	STR R2,[R6]
STOP
	B STOP

SRC DCD 1,2,3,4,5,6,7,8,9,10                                
	AREA data, DATA, READWRITE
DST DCD 0