; ----- TASK 11 ------- CHARACTER INPUT OUTPUT --------------------------
 
; --------------------------------------------------------------
;  Input key presses from the keyboard until Enter is pressed.
; --------------------------------------------------------------
    CLO     ; Close unwanted windows.
    MOV BL, C0 ; we move the hardcoded address C0 into the BL register to set the program up
Rep:
    IN  00  ; Wait for key press - Store it in AL.
    MOV [BL], AL ; we take whatever comes from the keyboard and store it in the RAM adress
                 ; that BL points to. As you know, [] indicate memory access. In the first
                 ; run, BL will contain C0, in the second run it will contain C1 and so forth
    INC BL       ; we increase BL, so the incoming byte will simply be dropped to another
                 ; location
 
    CMP AL,0D   ; Was the enter key pressed? (ASCII 0D)
    JNZ Rep ; No - jump back.  Yes - end.
 
END