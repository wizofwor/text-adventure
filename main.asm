;##############################################################################
;#
;# TEXT ADVENTURE - April 2017
;#
;##############################################################################

	!to "build/texadv.prg",cbm

	!src "standart-lib.asm"		; standard macros 
	!src "definitions.asm"		; adress definitions

 	+SET_START $3000

  	lda #$00
 	sta counter					; initialize
 	sta blink					; counter

 	!src "setIRQ.asm"
 	!src "initScreen.asm"



 	jmp *

 	!src "irq.asm"
 	!src "subroutines.asm"
 	!src "data.asm"