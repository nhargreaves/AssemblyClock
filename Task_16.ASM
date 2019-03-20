
; ----- TASK 16 ------- DATA TABLES --------------------------

	JMP	Start	; Skip past the data table.
	
	;R-- --G
	;RA- -A-
	;R-- --G 
	;-A- RA-

	;R-- --G	10000100
	;R-- -A-	10001000
	;R-- R--	10010000
	;RA- R--	11010000
	;--G R--	00110000
	;-A- R--	01010000
	;R-- R--	10010000
	;R-- RA-	10011000
	
	DB	90	; Data table begins.
	DB	D0	; These control the traffic lights.
	DB	30	; Last entry is also used as end marker
	DB	50
	DB	90
	DB	98
	DB	84
	DB	88
	DB	90

Start:
	MOV	BL,02	; 02 is start address of data table
Rep:
	MOV	AL,[BL]	; Copy data from table to AL
	OUT	01	; Output from AL register to port 01

	CMP	AL,58	; Last item in data table ???
	JZ	Start	; If yes then jump to Start
	INC	BL	; If no then point BL to the next entry
	JMP	Rep	; Jump back to do next table entry

	END
; --------------------------------------------------------------