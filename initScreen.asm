	lda #BAKGR_CLR
	sta $d020
	sta $d021

	+CLEAR_SCREEN


	ldx #0
	ldy #0
	clc
	jsr PLOT 	; move cursor to top

	+PRINT TITLE_CLR, text1			; title
	+PRINT GTEXT_CLR, text2			; introduction
	+PRINT PRMPT_CLR, text3	
	+SCANF INPUT_CLR, pname, PNAME_DIM 	; ask for name

	+PRINTF GTEXT_CLR, text4
