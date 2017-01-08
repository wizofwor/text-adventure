;##############################################################################
;#
;# TEXT ADVENTURE - April 2017
;#
;##############################################################################

	!to "build/texadv.prg",cbm

	!src "standart-lib.asm"		; standard macros 
	!src "definitions.asm"		; adress definitions

 	+SET_START $3000

 	jmp main
 	!src "string-routines.asm"

main:
  	lda #$00
 	sta counter					; initialize
 	sta blink					; counter
 	sta pname_len
 	sta instr_len

 	!src "setIRQ.asm"
 	!src "initScreen.asm"

loop:
	+PRINT $05, text5 			; ask question and 
 	+SCANF $03, instr, 3		; wait for user input
 	+PRINT $0A, instr 			; print user input

 	dec $d020
 	dec $d020
 	jmp *
 	jmp loop

 	!src "irq.asm"
 	!src "data.asm"