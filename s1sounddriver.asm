; ---------------------------------------------------------------------------
; Subroutine to	load the sound driver
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


SoundDriverLoad:            ; XREF: GameClrRAM; TitleScreen
LoadZ80drv:
		nop
		stopZ80a
		resetZ80
		lea		(RomEndLoc).l,a0
		move.l	(a0),d0
		addq.l	#1,d0
		movea.l	d0,a0
		lea	($A00000).l,a1
		jsr   KosDec
; 		lea	(DriverResetData).l,a0
;		lea	($A01C8A).l,a1									; z80 ram start of variables (A01C00 in older version)
;		move.w	#DriverResetDataEnd-DriverResetData,d0
 
;DriverResetDataLoadLoop:
;		move.b	(a0)+,(a1)+
;		dbf	d0,DriverResetDataLoadLoop
	btst	#0,($C00005).l	; check video mode
		sne		($A01C02).l          					; set PAL mode flag 

		resetZ80a
		nop
		nop	
		nop	
		nop	
		resetZ80
		startZ80
		rts
; End of function SoundDriverLoad
 
DriverResetData:
		dc.b	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
DriverResetDataEnd:
;        endif

;End of function SoundDriverLoad
