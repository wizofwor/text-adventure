	SCREEN_RAM = $0400
	COLOR_RAM = $d800


	counter = $fb
	blink 	= $fc

	targetL	= $02
	targetH = $03

	;Music
	music		= $1000		;Müzik dosyasinin yuklenecegi adres
	musicPlay	= music+3	;Müzik player adresi