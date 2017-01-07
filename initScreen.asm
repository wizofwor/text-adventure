	lda #$00
	sta $d020
	sta $d021

	+CLEAR_SCREEN


	ldx #0
	ldy #0
	clc
	jsr PLOT 	; move cursor to top

	+PRINT $0A, text1	; title
	+PRINT $0f, text2	; introduction
	+PRINT $05, text3	; ask for name

;	jsr scann
	+SCANF $07, pname, 4

	+PRINTF $0f, text4
