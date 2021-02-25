	AREA    RESET, DATA, READONLY
	EXPORT  __Vectors
__Vectors 
	DCD  0x10001000     ; stack pointer value when stack is empty
	DCD  Reset_Handler  ; reset vector
	ALIGN
	AREA mycode, CODE, READONLY
	ENTRY
	EXPORT Reset_Handler
Reset_Handler
	LDR R0, =SRC
	LDR R1, =DST
	LDR R3, [R0]
	STR R3, [R1]
	LDR R3, [R0, #4]
	STR R3, [R0, #4]
	LDR R3, [R0, #8]
	STR R3, [R0, #8]
	LDR R3, [R0, #12]
	STR R3, [R0, #12]
	LDR R3, [R0, #16]
	STR R3, [R0, #16]
	LDR R3, [R0, #20]
	STR R3, [R0, #20]
	LDR R3, [R0, #24]
	STR R3, [R0, #24]
	LDR R3, [R0, #28]
	STR R3, [R0, #28]
	LDR R3, [R0, #32]
	STR R3, [R0, #32]
	LDR R3, [R0, #36]
	STR R3, [R0, #36]
	
STOP
	B STOP
SRC DCD 0x12345678, 0x22345678, 0x32345678, 0x42345678, 0x52345678, 0x62345678, 0x72345678, 0x82345678, 0x92345678, 0xA2345678;SRC  location in code segment
	AREA DATASEG, DATA, READWRITE
DST DCD 0;DST location in Data segment
	END