
; ----- TASL 14 ------- TRAFFIC LIGHTS + PROCEDURES --------------------------

; ===== CONTROL THE TRAFFIC LIGHTS =============================

	CLO		; Close unwanted windows.
Start:
			; T1: R--
			; T2: R--
	MOV AL,90	; Copy 1001 0000 into the AL register.
	OUT 01		; Send AL to Port One (The traffic lights).
	MOV BL,10	; 10 second delay on R--R--
	CALL	60	; Call the procedure at address [60]

			; T1: RA-
			; T2: R--
	MOV AL,D0	; Copy 1101 0000 into the AL register.
	OUT 01		; Send AL to Port One (The traffic lights).
	MOV BL,2	; 2 second delay on RA-R--
	CALL	60	; Call the procedure at address [60]

			; T1: --G
			; T2: R--
	MOV AL,30	; Copy 0011 0000 into the AL register.
	OUT 01		; Send AL to Port One (The traffic lights).
	MOV BL,5	; 5 second delay on --GR--
	CALL	60	; Call the procedure at address [60]

			; T1: -A-
			; T2: R--
	MOV AL,50	; Copy 0101 0000 into the AL register.
	OUT 01		; Send AL to Port One (The traffic lights).
	MOV BL,2	; 2 second delay on -A-R--
	CALL	60	; Call the procedure at address [60]

			; T1: R--
			; T2: R--
	MOV AL,90	; Copy 1001 0000 into the AL register.
	OUT 01		; Send AL to Port One (The traffic lights).
	MOV BL,10	; 10 second delay on R--R--
	CALL	60	; Call the procedure at address [60]

			; T1: R--
			; T2: RA-
	MOV AL,98	; Copy 1001 1000 into the AL register.
	OUT 01		; Send AL to Port One (The traffic lights).
	MOV BL,2	; 2 second delay on R--RA-
	CALL	60	; Call the procedure at address [60]

			; T1: R--
			; T2: --G
	MOV AL,84	; Copy 1000 0100 into the AL register.
	OUT 01		; Send AL to Port One (The traffic lights).
	MOV BL,5	; 5 second delay on R----G
	CALL	60	; Call the procedure at address [60]

			; T1: R--
			; T2: -A-
	MOV AL,88	; Copy 1000 1000 into the AL register.
	OUT 01		; Send AL to Port One (The traffic lights).
	MOV BL,2	; 2 second delay on R---A-
	CALL	60	; Call the procedure at address [60]
	JMP Start	; Jump back to the start.

; ----- Time Delay Procedure Stored At Address [60] -------------
	ORG	60	; Generate machine code from address [60]

	PUSH	BL	; Save BL on the stack.
	PUSHF		; Save the CPU flags on the stack.
Rep:
	DEC	BL	; Subtract one from BL.
	JNZ	REP	; Jump back to Rep if BL was not Zero.

	POPF		; Restore the CPU flags from the stack.
	POP	BL	; Restore BL from the stack.

	RET		; Return from the procedure.
; ---------------------------------------------------------------
	END
; ---------------------------------------------------------------
	
; ===== Program Ends ==========================================

;RED- 10
;AR - 2
;AMBER - 2
;GREEN - 5

;R: long
;AR: short
;A: short
;G: medium