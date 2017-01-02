;setIRQ

	sei 

	lda #$7f
	sta $dc0d
	sta $dd0d	; turn off the cia interrupts
	
	lda #$01
	sta $d01a	; enable raster interrupt

	lda $d011
	and #$7f
	sta $d011	; clear high bit of raster line

	lda #$ff
	sta $d012	; set raster line

	lda #<irq 
	sta 788
	lda #>irq
	sta 789

	cli	