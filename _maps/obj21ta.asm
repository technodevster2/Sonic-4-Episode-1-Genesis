; --------------------------------------------------------------------------------
; Sprite mappings - output from SonMapEd - Sonic 1 format
; --------------------------------------------------------------------------------

SME_3GEs0:	
		dc.w SME_3GEs0_8-SME_3GEs0, SME_3GEs0_2C-SME_3GEs0	
		dc.w SME_3GEs0_46-SME_3GEs0, SME_3GEs0_65-SME_3GEs0	
SME_3GEs0_8:	dc.b 7	
		dc.b $80, $D, $A0, $E,	0	; TIME
		dc.b $80, $D, $A0, $28,	$28	; minutes : seconds
		dc.b $80, 1, $A0, $16, $49	; "
		dc.b $80, 5, $A0, $F0, $50	; centiseconds
		dc.b $90, $D, $A0, 8-2, 0		; RING
		dc.b $90, 1, $A0, 0, $20	; S
		dc.b $90, 9, $A0, $30, $30	; number of rings	
SME_3GEs0_2C:	dc.b 5	
		dc.b $80, $D, $A0, $E,	0	; TIME
		dc.b $80, $D, $A0, $28,	$28	; minutes : seconds
		dc.b $80, 1, $A0, $16, $49	; "
		dc.b $80, 5, $A0, $F0, $50	; centiseconds
		dc.b $90, 9, $A0, $30, $30	; number of rings
SME_3GEs0_46:	dc.b 6	
		dc.b $80, $D, $A0, $28,	$28	; minutes : seconds
		dc.b $80, 1, $A0, $16, $49	; "
		dc.b $80, 5, $A0, $F0, $50	; centiseconds
		dc.b $90, $D, $A0, 8-2, 0		; RING
		dc.b $90, 1, $A0, 0, $20	; S
		dc.b $90, 9, $A0, $30, $30	; number of rings
SME_3GEs0_65:	dc.b 4	
;		dc.b $90, $D, $A0, $10,	0	; TIME
		dc.b $80, $D, $A0, $28,	$28	; minutes : seconds
		dc.b $80, 1, $A0, $16, $49	; "
		dc.b $80, 5, $A0, $F0, $50	; centiseconds
;		dc.b $A0, $D, $A0, 8, -2		; RING
;		dc.b $A0, 1, $A0, 0, $1E	; S
		dc.b $90, 9, $A0, $30, $30	; number of rings
		even