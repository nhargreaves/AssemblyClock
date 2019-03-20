; ===== COUNT =================================================
	MOV	AL,8	; Move 10 into the AL register
REP:			; This label is used with jump commands
	MUL	AL,2	; Multiply AL by 2
	JMP	REP	; Jump back to the rep label
	
	END		; Program ends here
; =============================================================