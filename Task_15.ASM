; ----- Task 15 ------- Passing Parameters -------------------

; ----- Use Registers to pass parameters into a procedure ------

	JMP 	Start	; Skip over bytes used for data storage

	DB	0	; Reserve a byte of RAM at address [02]
Start:
	MOV	AL,5	; move 5 to AL

	CALL	30	; A procedure to multiply AL by 2


; ----- A procedure to add two numbers -------------------------

;	Parameters passed into procedure using register AL
;	Result returned in AL
;	This method is simple but is no good if there are a 
;	lot of parameters to be passed.

	ORG	30	; Code starts at address [30]

	MUL	AL,2	; Do the multiplication.  Result goes into AL

	RET		; Return from the procedure

; --------------------------------------------------------------
	END