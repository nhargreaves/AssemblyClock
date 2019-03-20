
; ----- EXAMPLE 2 ------- HEXADECIMAL --------------------------

; ===== CONTROL THE TRAFFIC LIGHTS =============================

	CLO		; Close unwanted windows.
Start:
			; T1: R--
			; T2: R--
	MOV AL,90	; Copy 1001 0000 into the AL register.
	OUT 01		; Send AL to Port One (The traffic lights).

			; T1: RA-
			; T2: R--
	MOV AL,D0	; Copy 1101 0000 into the AL register.
	OUT 01		; Send AL to Port One (The traffic lights).

			; T1: --G
			; T2: R--
	MOV AL,30	; Copy 0011 0000 into the AL register.
	OUT 01		; Send AL to Port One (The traffic lights).

			; T1: -A-
			; T2: R--
	MOV AL,50	; Copy 0101 0000 into the AL register.
	OUT 01		; Send AL to Port One (The traffic lights).

			; T1: R--
			; T2: R--
	MOV AL,90	; Copy 1001 0000 into the AL register.
	OUT 01		; Send AL to Port One (The traffic lights).

			; T1: R--
			; T2: RA-
	MOV AL,98	; Copy 1001 1000 into the AL register.
	OUT 01		; Send AL to Port One (The traffic lights).

			; T1: R--
			; T2: --G
	MOV AL,84	; Copy 1000 0100 into the AL register.
	OUT 01		; Send AL to Port One (The traffic lights).

			; T1: R--
			; T2: -A-
	MOV AL,88	; Copy 1000 1000 into the AL register.
	OUT 01		; Send AL to Port One (The traffic lights).
	JMP Start	; Jump back to the start.
	END		; Program ends.
	
; ===== Program Ends ==========================================