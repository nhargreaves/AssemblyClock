; ===== COUNT =================================================
	MOV	AL,16	; Move 16 into the AL register
REP:			; This label is used with jump commands
	DIV	AL,0	; Divide AL by 0
	JMP	REP	; Jump back to the rep label
	
	END		; Program ends here
; =============================================================