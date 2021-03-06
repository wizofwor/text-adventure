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
 	sta counter			; initialize counter
 	sta blink			; initilize cursor blink delay

 	!src "setIRQ.asm"
 	!src "initScreen.asm"

loop:
	+PRINT PRMPT_CLR, text5 		; ask question and 
-	+SCANF INPUT_CLR, instr, INSTR_DIM	; wait for user input
 	+PRINT GTEXT_CLR, instr 		; print user input

 	+STRCMP pname, instr
 	bne +
 	inc $d020
 	jmp -
+ 	dec $d020
 	jmp -

 	dec $d020
 	dec $d020
 	jmp *
 	jmp loop

 	!src "irq.asm"
 	!src "data.asm"