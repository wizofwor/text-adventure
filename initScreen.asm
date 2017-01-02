	lda #$00
	sta $d020
	sta $d021

	+CLEAR_SCREEN


	ldx #0
	ldy #0
	clc
	jsr PLOT 	; move cursor to top

	lda #$0A
	sta CURCOL	; set cursor color
	ldx #<text1
	ldy #>text1
	jsr PRINT

	lda #$0F
	sta CURCOL
	ldx #<text2
	ldy #>text2
	jsr PRINT

	;Ask for name
	lda #$05
	sta CURCOL
	ldx #<text3
	ldy #>text3
	jsr PRINT

	;prompt 
	lda #$07
	sta $0286	; change cursor color to grey 
