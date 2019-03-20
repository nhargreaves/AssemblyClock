
; ----- EXAMPLE 6 ---------------------------------

; ---------------------------------------------------------------
	CLO		; Close unwanted windows.
; ===== IMMEDIATE MOVES =====
	MOV AL,48 ; Copy 48 HEX into AL register
	MOV BL,45 ; Copy 45 HEX into BL register
	MOV CL,4C ; Copy 4C HEX into CL register
	MOV DL,4F ; Copy 4F HEX into DL register

; ===== REGISTER INDIRECT MOVES =====
	MOV [C0],AL ; Copy value in AL to memory location C0
	MOV [C1],BL ; Copy value in BL to memory location C1
	MOV [C2],CL ; Copy value in CL to memory location C2
	MOV [C3],CL ; Copy value in CL to memory location C3
	MOV [C4],DL ; Copy value in DL to memory location C4

	END
; ---------------------------------------------------------------