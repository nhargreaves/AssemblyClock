; ===== COUNT =================================================
	MOV	AL,0	; Move 0 into the AL register
REP:			; This label is used with jump commands
	SUB	AL,2	; Subtract two from AL
	JMP	REP	; Jump back to the rep label
	
	END		; Program ends here
; =============================================================