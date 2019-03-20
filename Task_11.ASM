
; ----- TASK 11 ------- CHARACTER INPUT OUTPUT --------------------------

; --------------------------------------------------------------
;  Input key presses from the keyboard until Enter is pressed.
; --------------------------------------------------------------
	CLO		; Close unwanted windows.
Rep:
	IN	00	; Wait for key press - Store it in AL.
	MOV	[C0],AL	; Copy AL to address [C0] to be displayed in the VDU
	CMP	AL,0D	; Was the enter key pressed? (ASCII 0D)
	JNZ	Rep	; No - jump back.  Yes - end.

END
; --------------------------------------------------------------