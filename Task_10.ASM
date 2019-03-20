; ----- EXAMPLE 4 ------- COUNTING AND JUMP --------------------------

	MOV	AL,0	; Initial value stored in BL
	MOV	BL,1	; Initial value stored in BL
	MOV	CL,1	; Initial value stored in BL
	MOV	[00],BL

Rep:			; Jump back to this label
	MOV	AL,BL
	ADD	AL,CL

	MOV	CL,[00]]
	
	MOV	[00],AL

	JMP	Rep	; Jump back to Rep

	END		; Program Ends

; ===== Program Ends ===============================