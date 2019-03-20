
; ----- EXAMPLE 7 ---------------------------------

	MOV	BL,40	; Initial value stored in BL

Rep:			; Jump back to this label
	DEC	BL	; Minus ONE from BL
	JMP	Rep	; Jump back to Rep

	END		; Program Ends

; ===== Program Ends ===============================