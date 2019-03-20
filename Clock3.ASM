; ======================================================
; ===== Clock3.asm ===================================
; ===== Seven Segment Displays Port 02 =================
; this section controls the left section of the clock

Start:
	JMP 	Body	;skip clockdata tables

ClockData:		;data table for clock values

			;left hand side
	DB	FA	;0
	DB	0A	;1 
	DB	B6	;2
	DB	9E	;3
	DB	4E	;4
	DB	DC	;5
	DB	FC	;6
	DB	8A	;7
	DB	FE	;8
	DB	CE	;9

			;right hand side
	DB	FB	;0
	DB	0B	;1 
	DB	B7	;2
	DB	9F	;3
	DB	4F	;4
	DB	DD	;5
	DB	FD	;6
	DB	8B	;7
	DB	FF	;8
	DB	CF	;9

Body:

	MOV	BL,02	;0 left
	MOV	AL,[BL]
	OUT	02;

RepLeft:		;loop to cycle through left side numbers	

	CALL	30	;go through right hand side of clock

	INC	BL;	;inc BL and move into clock, so left hand side slowly increases
	MOV	AL,[BL]	
	OUT	02
	
	CMP	AL,[0B]	;check if AL is 9
	JNZ	RepLeft	;if it is, leave loop

	CALL 30

	JMP Start	; Jump back to the start.
	

; ----- Procedure Stored At Address [30] -------------
; This procedure controls the right section of the clock

	ORG	30	; Generate machine code from address [30]

	

	MOV	DL,0D	;1 left
	MOV	AL,[DL]
	OUT	02;

RepRight:
	INC	DL	;inc DL and move into clock, so right hand side slowly increases
	MOV	AL,[DL]
	OUT	02;
	
	CMP	AL,[15]	;check if AL is 9
	JNZ	RepRight	;if so, leave loop

	MOV	DL,0C	;0 left
	MOV	AL,[DL]
	OUT	02;

	RET		; Return from the procedure.
	END

; ======================================================
