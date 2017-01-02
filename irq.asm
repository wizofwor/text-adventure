irq:

!zone cursor_blink {
; --- constants
	WAIT = 50		; counter max
	BLINKCHAR = $e4
	BLANKCHAR = $20

	inc counter
	lda counter
	cmp #WAIT
	bne .end

	lda #00
	sta counter		;reset counter

	lda blink
	eor #$01
	sta blink

	cmp #$01
	bne .blinkOff 

.blinkON
	lda #BLINKCHAR
	jmp +

.blinkOff
	lda #BLANKCHAR
+	

	jsr CHROUT

	sec
	jsr PLOT	; get cursor row and column
	clc
	dey
	jsr PLOT	; move cursor back

.end	

}

!zone irq_return {
	dec $d019	;acknowledge IRQ register
	jmp $ea31	;return to kernel
}