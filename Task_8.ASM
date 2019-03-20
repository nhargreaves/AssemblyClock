
; ----- EXAMPLE 8 --------------------------------

	MOV	BL,40	; Initial value stored in BL

Rep:			; Jump back to this label
	ADD	BL,3	; Add THREE to BL
	JMP	Rep	; Jump back to Rep

	END		; Program Ends

; ===== Program Ends ===============================