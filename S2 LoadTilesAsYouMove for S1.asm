; ---------------------------------------------------------------------------
; Subroutine to display correct tiles as you move
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||
; loc_DA5C:
LoadTilesAsYouMove:
	lea	($C00004).l,a5
	lea	($C00000).l,a6
	lea	($FFFFFF32).w,a2
	lea	($FFFFFF18).w,a3
	lea	($FFFFA440).w,a4
	move.w	#$6000,d2
	bsr.w	sub_DBC2
	lea	($FFFFFF34).w,a2
	lea	($FFFFFF20).w,a3
	bsr.w	sub_DC92
	lea	($FFFFFF36).w,a2
	lea	($FFFFFF28).w,a3
	bsr.w	sub_DD82
;	jmp	loc_DAAE					;	This code here is for 2P mode in S2. 
									;	We don't need this since multiplayer 
									;	mode doesn't exist in S1.
;	lea	(Scroll_flags_copy_P2).w,a2
;	lea	($FFFFEE80).w,a3
;	lea	($FFFFA400).w,a4
;	move.w	#$6000,d2
;	bsr.w	sub_DB5C

;loc_DAAE:
	lea	($FFFFFF30).w,a2
	lea	($FFFFFF10).w,a3
	lea	($FFFFA400).w,a4
	move.w	#$4000,d2
	tst.b	($FFFFF745).w

	; comment out this line to disable blast processing
	beq.s	Draw_FG

	move.b	#0,($FFFFF745).w
	moveq	#-$10,d4
	moveq	#$F,d6
; loc_DACE:
Draw_All:
	movem.l	d4-d6,-(sp)	; This whole routine basically redraws the whole
	moveq	#-$10,d5	; area instead of merely a line of tiles
	move.w	d4,d1
	bsr.w	Calc_VRAM_Pos
	move.w	d1,d4
	moveq	#-$10,d5
	bsr.w	DrawTiles_Vertical1
	movem.l	(sp)+,d4-d6
	addi.w	#$10,d4
	dbf	d6,Draw_All
	move.b	#0,($FFFFFF30).w
	rts
; ===========================================================================
; loc_DAF6:
Draw_FG:
	tst.b	(a2)
	beq.s	return_DB5A
	bclr	#0,(a2)
	beq.s	loc_DB10
	moveq	#-$10,d4
	moveq	#-$10,d5
	bsr.w	Calc_VRAM_Pos
	moveq	#-$10,d4
	moveq	#-$10,d5
	bsr.w	DrawTiles_Vertical1

loc_DB10:
	bclr	#1,(a2)
	beq.s	loc_DB2A
	move.w	#$E0,d4
	moveq	#$0,d5
	bsr.w	Calc_VRAM_Pos
	move.w	#$E0,d4
	moveq	#$0,d5
	bsr.w	DrawTiles_Vertical1

loc_DB2A:
	bclr	#2,(a2)
	beq.s	loc_DB40
	moveq	#-$10,d4
	moveq	#$0,d5
	bsr.w	Calc_VRAM_Pos
	moveq	#-$10,d4
	moveq	#$0,d5
	bsr.w	sub_DF04

loc_DB40:
	bclr	#3,(a2)
	beq.s	return_DB5A
	moveq	#-$10,d4
	move.w	#320,d5
	bsr.w	Calc_VRAM_Pos
	moveq	#-$10,d4
	move.w	#320,d5
	bsr.w	sub_DF04

return_DB5A:

	rts

; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||


sub_DB5C:
	tst.b	(a2)
	beq.s	return_DBC0
	bclr	#0,(a2)
	beq.s	loc_DB76
	moveq	#-$10,d4
	moveq	#-$10,d5
	bsr.w	loc_E2C2
	moveq	#-$10,d4
	moveq	#-$10,d5
	bsr.w	DrawTiles_Vertical1

loc_DB76:
	bclr	#1,(a2)
	beq.s	loc_DB90
	move.w	#$E0,d4
	moveq	#-$10,d5
	bsr.w	loc_E2C2
	move.w	#$E0,d4
	moveq	#-$10,d5
	bsr.w	DrawTiles_Vertical1

loc_DB90:
	bclr	#2,(a2)
	beq.s	loc_DBA6
	moveq	#-$10,d4
	moveq	#-$10,d5
	bsr.w	loc_E2C2
	moveq	#-$10,d4
	moveq	#-$10,d5
	bsr.w	sub_DF04

loc_DBA6:
	bclr	#3,(a2)
	beq.s	return_DBC0
	moveq	#-$10,d4
	move.w	#320,d5
	bsr.w	loc_E2C2
	moveq	#-$10,d4
	move.w	#320,d5
	bsr.w	sub_DF04

return_DBC0:
	rts
; End of function sub_DB5C


; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||


sub_DBC2:

	tst.b	(a2)
	beq.w	return_DC90
	bclr	#0,(a2)
	beq.s	loc_DBDE
	moveq	#-$10,d4
	moveq	#-$10,d5
	bsr.w	Calc_VRAM_Pos
	moveq	#-$10,d4
	moveq	#-$10,d5
	bsr.w	DrawTiles_Vertical1

loc_DBDE:
	bclr	#1,(a2)
	beq.s	loc_DBF8
	move.w	#$E0,d4
	moveq	#-$10,d5
	bsr.w	Calc_VRAM_Pos
	move.w	#$E0,d4
	moveq	#-$10,d5
	bsr.w	DrawTiles_Vertical1

loc_DBF8:
	bclr	#2,(a2)
	beq.s	loc_DC0E
	moveq	#-$10,d4
	moveq	#-$10,d5
	bsr.w	Calc_VRAM_Pos
	moveq	#-$10,d4
	moveq	#-$10,d5
	bsr.w	sub_DF04

loc_DC0E:
	bclr	#3,(a2)
	beq.s	loc_DC28
	moveq	#-$10,d4
	move.w	#320,d5
	bsr.w	Calc_VRAM_Pos
	moveq	#-$10,d4
	move.w	#320,d5
	bsr.w	sub_DF04

loc_DC28:
	bclr	#4,(a2)
	beq.s	loc_DC40
	moveq	#-$10,d4
	moveq	#0,d5
	bsr.w	loc_E288
	moveq	#-$10,d4
	moveq	#0,d5
	moveq	#$1F,d6
	bsr.w	DrawTiles_Vertical2

loc_DC40:
	bclr	#5,(a2)
	beq.s	loc_DC5C
	move.w	#$E0,d4
	moveq	#0,d5
	bsr.w	loc_E288
	move.w	#$E0,d4
	moveq	#0,d5
	moveq	#$1F,d6
	bsr.w	DrawTiles_Vertical2

loc_DC5C:
	bclr	#6,(a2)
	beq.s	loc_DC74
	moveq	#-$10,d4
	moveq	#-$10,d5
	bsr.w	Calc_VRAM_Pos
	moveq	#-$10,d4
	moveq	#-$10,d5
	moveq	#$1F,d6
	bsr.w	DrawTiles_Vertical

loc_DC74:
	bclr	#7,(a2)
	beq.s	return_DC90
	move.w	#$E0,d4
	moveq	#-$10,d5
	bsr.w	Calc_VRAM_Pos
	move.w	#$E0,d4
	moveq	#-$10,d5
	moveq	#$1F,d6
	bsr.w	DrawTiles_Vertical

return_DC90:
	rts
; End of function sub_DBC2


; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||


sub_DC92:

	tst.b	(a2)
	beq.w	return_DCD4
	bclr	#0,(a2)
	beq.s	loc_DCB4
	move.w	#$70,d4
	moveq	#-$10,d5
	bsr.w	Calc_VRAM_Pos
	move.w	#$70,d4
	moveq	#-$10,d5
	moveq	#2,d6
	bsr.w	loc_DF06

loc_DCB4:
	bclr	#1,(a2)
	beq.s	return_DCD4
	move.w	#$70,d4
	move.w	#320,d5
	bsr.w	Calc_VRAM_Pos
	move.w	#$70,d4
	move.w	#320,d5
	moveq	#2,d6
	bsr.w	loc_DF06

return_DCD4:
	rts
; End of function sub_DC92

; ===========================================================================
byte_DCD6:
	dc.b   0
byte_DCD7:
	dc.b   0
	dc.b   0	; 1
	dc.b   0	; 2
	dc.b   0	; 3
	dc.b   6	; 4
	dc.b   6	; 5
	dc.b   6	; 6
	dc.b   6	; 7
	dc.b   6	; 8
	dc.b   6	; 9
	dc.b   6	; 10
	dc.b   6	; 11
	dc.b   6	; 12
	dc.b   6	; 13
	dc.b   4	; 14
	dc.b   4	; 15
	dc.b   4	; 16
	dc.b   4	; 17
	dc.b   4	; 18
	dc.b   4	; 19
	dc.b   4	; 20
	dc.b   2	; 21
	dc.b   2	; 22
	dc.b   2	; 23
	dc.b   2	; 24
	dc.b   2	; 25
	dc.b   2	; 26
	dc.b   2	; 27
	dc.b   2	; 28
	dc.b   2	; 29
	dc.b   2	; 30
	dc.b   2	; 31
	dc.b   0	; 32
; ===========================================================================
	moveq	#-$10,d4
	bclr	#0,(a2)
	bne.s	loc_DD0A
	bclr	#1,(a2)
	beq.s	loc_DD52
	move.w	#$E0,d4

loc_DD0A:
	lea	byte_DCD7(pc),a0
	move.w	($FFFFF70C).w,d0
	add.w	d4,d0
	andi.w	#$1F0,d0
	lsr.w	#4,d0
	move.b	(a0,d0.w),d0
	lea	(word_DE7E).l,a3
	movea.w	(a3,d0.w),a3
	beq.s	loc_DD3E
	moveq	#-$10,d5
	movem.l	d4-d5,-(sp)
	bsr.w	Calc_VRAM_Pos
	movem.l	(sp)+,d4-d5
	bsr.w	DrawTiles_Vertical1
	bra.s	loc_DD52
; ===========================================================================

loc_DD3E:
	moveq	#0,d5
	movem.l	d4-d5,-(sp)
	bsr.w	loc_E288
	movem.l	(sp)+,d4-d5
	moveq	#$1F,d6
	bsr.w	DrawTiles_Vertical2

loc_DD52:

	tst.b	(a2)
	bne.s	loc_DD58
	rts
; ===========================================================================

loc_DD58:
	moveq	#-$10,d4
	moveq	#-$10,d5
	move.b	(a2),d0
	andi.b	#-$58,d0
	beq.s	loc_DD6C
	lsr.b	#1,d0
	move.b	d0,(a2)
	move.w	#320,d5

loc_DD6C:
	lea	byte_DCD6(pc),a0
	move.w	($FFFFF70C).w,d0
	andi.w	#$1F0,d0
	lsr.w	#4,d0
	lea	(a0,d0.w),a0
	bra.w	loc_DE86

; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||


sub_DD82:
	tst.b	(a2)
	beq.w	return_DDCE
	cmpi.b	#$D,($FFFFFE10).w
	beq.w	loc_DE12
	bclr	#0,(a2)
	beq.s	loc_DDAE
	move.w	#$40,d4
	moveq	#-$10,d5
	bsr.w	Calc_VRAM_Pos
	move.w	#$40,d4
	moveq	#-$10,d5
	moveq	#2,d6
	bsr.w	loc_DF06

loc_DDAE:
	bclr	#1,(a2)
	beq.s	return_DDCE
	move.w	#$40,d4
	move.w	#320,d5
	bsr.w	Calc_VRAM_Pos
	move.w	#$40,d4
	move.w	#320,d5
	moveq	#2,d6
	bsr.w	loc_DF06

return_DDCE:
	rts
; ===========================================================================
byte_DDD0:
	dc.b 2
byte_DDD1:
	dc.b   2

	dc.b   2	; 1
	dc.b   2	; 2
	dc.b   2	; 3
	dc.b   2	; 4
	dc.b   2	; 5
	dc.b   2	; 6
	dc.b   2	; 7
	dc.b   2	; 8
	dc.b   2	; 9
	dc.b   2	; 10
	dc.b   2	; 11
	dc.b   2	; 12
	dc.b   2	; 13
	dc.b   2	; 14
	dc.b   2	; 15
	dc.b   2	; 16
	dc.b   2	; 17
	dc.b   2	; 18
	dc.b   4	; 19
	dc.b   4	; 20
	dc.b   4	; 21
	dc.b   4	; 22
	dc.b   4	; 23
	dc.b   4	; 24
	dc.b   4	; 25
	dc.b   4	; 26
	dc.b   4	; 27
	dc.b   4	; 28
	dc.b   4	; 29
	dc.b   4	; 30
	dc.b   4	; 31
	dc.b   4	; 32
	dc.b   4	; 33
	dc.b   4	; 34
	dc.b   4	; 35
	dc.b   4	; 36
	dc.b   4	; 37
	dc.b   4	; 38
	dc.b   4	; 39
	dc.b   4	; 40
	dc.b   4	; 41
	dc.b   4	; 42
	dc.b   4	; 43
	dc.b   4	; 44
	dc.b   4
	dc.b   4	; 1
	dc.b   4	; 2
	dc.b   4	; 3
	dc.b   4	; 4
	dc.b   4	; 5
	dc.b   4	; 6
	dc.b   4	; 7
	dc.b   4	; 8
	dc.b   4	; 9
	dc.b   4	; 10
	dc.b   4	; 11
	dc.b   4	; 12
	dc.b   4	; 13
	dc.b   4	; 14
	dc.b   4	; 15
	dc.b   4	; 16
	dc.b   4	; 17
	dc.b   4	; 18
	dc.b   0	; 19
; ===========================================================================

loc_DE12:
	moveq	#-$10,d4
	bclr	#0,(a2)
	bne.s	loc_DE24
	bclr	#1,(a2)
	beq.s	loc_DE4E
	move.w	#$E0,d4

loc_DE24:
	lea	byte_DDD1(pc),a0
	move.w	($FFFFF70C).w,d0
	add.w	d4,d0
	andi.w	#$3F0,d0
	lsr.w	#4,d0
	move.b	(a0,d0.w),d0
	movea.w	word_DE7E(pc,d0.w),a3
	moveq	#-$10,d5
	movem.l	d4-d5,-(sp)
	bsr.w	Calc_VRAM_Pos
	movem.l	(sp)+,d4-d5
	bsr.w	DrawTiles_Vertical1

loc_DE4E:
	tst.b	(a2)
	bne.s	loc_DE54
	rts
; ===========================================================================

loc_DE54:
	moveq	#-$10,d4
	moveq	#-$10,d5
	move.b	(a2),d0
	andi.b	#-$58,d0
	beq.s	loc_DE68
	lsr.b	#1,d0
	move.b	d0,(a2)
	move.w	#320,d5

loc_DE68:
	lea	byte_DDD0(pc),a0
	move.w	($FFFFF70C).w,d0
	andi.w	#$7F0,d0
	lsr.w	#4,d0
	lea	(a0,d0.w),a0
	bra.w	loc_DE86
; ===========================================================================
word_DE7E:
	dc.w $FF18
	dc.w $FF18	; 1
	dc.w $FF20	; 2
	dc.w $FF28	; 3
; ===========================================================================

loc_DE86:

;	tst.w	(Two_player_mode).w
;	bne.s	loc_DEC8
	moveq	#$F,d6
	move.l	#$800000,d7

loc_DE94:
	moveq	#0,d0
	move.b	(a0)+,d0
	btst	d0,(a2)
	beq.s	loc_DEBC
	movea.w	word_DE7E(pc,d0.w),a3
	movem.l	d4-d5/a0,-(sp)
	movem.l	d4-d5,-(sp)
	bsr.w	sub_E244
	movem.l	(sp)+,d4-d5
	bsr.w	Calc_VRAM_Pos
	bsr.w	sub_E174
	movem.l	(sp)+,d4-d5/a0

loc_DEBC:
	addi.w	#$10,d4
	dbf	d6,loc_DE94
	clr.b	(a2)
	rts
; ===========================================================================

loc_DEC8:
	moveq	#$F,d6
	move.l	#$800000,d7

loc_DED0:
	moveq	#0,d0
	move.b	(a0)+,d0
	btst	d0,(a2)
	beq.s	loc_DEF8
	movea.w	word_DE7E(pc,d0.w),a3
	movem.l	d4-d5/a0,-(sp)
	movem.l	d4-d5,-(sp)
	bsr.w	sub_E244
	movem.l	(sp)+,d4-d5
	bsr.w	Calc_VRAM_Pos
	bsr.w	sub_E1FA
	movem.l	(sp)+,d4-d5/a0

loc_DEF8:
	addi.w	#$10,d4
	dbf	d6,loc_DED0
	clr.b	(a2)
	rts
; End of function sub_DD82


; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||


sub_DF04:

	moveq	#$F,d6

loc_DF06:
	add.w	(a3),d5
	add.w	4(a3),d4
	move.l	#$800000,d7
	move.l	d0,d1
	bsr.w	sub_E09E
;	tst.w	(Two_player_mode).w
;	bne.s	loc_DF54

loc_DF1E:
	move.w	(a0),d3
	andi.w	#$3FF,d3
	lsl.w	#3,d3
	lea	($FFFFB000).w,a1
	adda.w	d3,a1
	move.l	d1,d0
	bsr.w	sub_E174
	adda.w	#$10,a0
	addi.w	#$100,d1
	andi.w	#$FFF,d1
	addi.w	#$10,d4
	move.w	d4,d0
	andi.w	#$70,d0
	bne.s	loc_DF4E
	bsr.w	sub_E09E

loc_DF4E:
	dbf	d6,loc_DF1E
	rts
; ===========================================================================

; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||

; sub_DF8A:
DrawTiles_Vertical:
	add.w	(a3),d5
	add.w	4(a3),d4
	bra.s	DrawTiles_Vertical3
; End of function DrawTiles_Vertical


; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||

; sub_DF92:
DrawTiles_Vertical1:
	moveq	#$16,d6
	add.w	(a3),d5
; loc_DF96:
DrawTiles_Vertical2:
	add.w	4(a3),d4
; loc_DF9A:
DrawTiles_Vertical3:
;	tst.w	(Two_player_mode).w
;	bne.s	loc_E018
	move.l	a2,-(sp)
	move.w	d6,-(sp)
	lea	($FFFFFF80).w,a2
	move.l	d0,d1
	or.w	d2,d1
	swap	d1
	move.l	d1,-(sp)
	move.l	d1,(a5)
	swap	d1
	bsr.w	sub_E09E

loc_DFB8:
	move.w	(a0),d3
	andi.w	#$3FF,d3
	lsl.w	#3,d3
	lea	($FFFFB000).w,a1
	adda.w	d3,a1
	bsr.w	sub_E0D4
	addq.w	#2,a0
	addq.b	#4,d1
	bpl.s	loc_DFDA
	andi.b	#$7F,d1
	swap	d1
	move.l	d1,(a5)
	swap	d1

loc_DFDA:
	addi.w	#$10,d5
	move.w	d5,d0
	andi.w	#$70,d0
	bne.s	loc_DFEA
	bsr.w	sub_E09E

loc_DFEA:
	dbf	d6,loc_DFB8
	move.l	(sp)+,d1
	addi.l	#$800000,d1
	lea	($FFFFFF80).w,a2
	move.l	d1,(a5)
	swap	d1
	move.w	(sp)+,d6

loc_E000:
	move.l	(a2)+,(a6)
	addq.b	#4,d1
	bmi.s	loc_E010
	ori.b	#$80,d1
	swap	d1
	move.l	d1,(a5)
	swap	d1

loc_E010:
	dbf	d6,loc_E000
	movea.l	(sp)+,a2
	rts
; ===========================================================================

loc_E018:
	move.l	d0,d1
	or.w	d2,d1
	swap	d1
	move.l	d1,(a5)
	swap	d1
	tst.b	d1
	bmi.s	loc_E062
	bsr.w	sub_E09E

loc_E02A:
	move.w	(a0),d3
	andi.w	#$3FF,d3
	lsl.w	#3,d3
	lea	($FFFFB000).w,a1
	adda.w	d3,a1
	bsr.w	sub_E136
	addq.w	#2,a0
	addq.b	#4,d1
	bpl.s	loc_E04C
	andi.b	#$7F,d1
	swap	d1
	move.l	d1,(a5)
	swap	d1

loc_E04C:
	addi.w	#$10,d5
	move.w	d5,d0
	andi.w	#$70,d0
	bne.s	loc_E05C
	bsr.w	sub_E09E

loc_E05C:
	dbf	d6,loc_E02A
	rts
; ===========================================================================

loc_E062:
	bsr.w	sub_E09E

loc_E066:
	move.w	(a0),d3
	andi.w	#$3FF,d3
	lsl.w	#3,d3
	lea	($FFFFB000).w,a1
	adda.w	d3,a1
	bsr.w	sub_E136
	addq.w	#2,a0
	addq.b	#4,d1
	bmi.s	loc_E088
	ori.b	#$80,d1
	swap	d1
	move.l	d1,(a5)
	swap	d1

loc_E088:
	addi.w	#$10,d5
	move.w	d5,d0
	andi.w	#$70,d0
	bne.s	loc_E098
	bsr.w	sub_E09E

loc_E098:
	dbf	d6,loc_E066
	rts
; End of function DrawTiles_Vertical1


; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||


sub_E09E:
	movem.l	d4-d5,-(sp)
	move.w	d4,d3
	add.w	d3,d3
	andi.w	#$F00,d3
	lsr.w	#3,d5
	move.w	d5,d0
	lsr.w	#4,d0
	andi.w	#$7F,d0
	add.w	d3,d0
	moveq	#-1,d3
	clr.w	d3
	move.b	(a4,d0.w),d3
	lsl.w	#7,d3
	andi.w	#$70,d4
	andi.w	#$E,d5
	add.w	d4,d3
	add.w	d5,d3
	movea.l	d3,a0
	movem.l	(sp)+,d4-d5
	rts
; End of function sub_E09E


; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||


sub_E0D4:
	btst	#3,(a0)
	bne.s	loc_E100
	btst	#2,(a0)
	bne.s	loc_E0E6
	move.l	(a1)+,(a6)
	move.l	(a1)+,(a2)+
	rts
; ===========================================================================

loc_E0E6:
	move.l	(a1)+,d3
	eori.l	#$8000800,d3
	swap	d3
	move.l	d3,(a6)
	move.l	(a1)+,d3
	eori.l	#$8000800,d3
	swap	d3
	move.l	d3,(a2)+
	rts
; ===========================================================================

loc_E100:
	btst	#2,(a0)
	bne.s	loc_E11C
	move.l	(a1)+,d0
	move.l	(a1)+,d3
	eori.l	#$10001000,d3
	move.l	d3,(a6)
	eori.l	#$10001000,d0
	move.l	d0,(a2)+
	rts
; ===========================================================================

loc_E11C:
	move.l	(a1)+,d0
	move.l	(a1)+,d3
	eori.l	#$18001800,d3
	swap	d3
	move.l	d3,(a6)
	eori.l	#$18001800,d0
	swap	d0
	move.l	d0,(a2)+
	rts
; End of function sub_E0D4


; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||


sub_E136:
	btst	#3,(a0)
	bne.s	loc_E154
	btst	#2,(a0)
	bne.s	loc_E146
	move.l	(a1)+,(a6)
	rts
; ===========================================================================

loc_E146:
	move.l	(a1)+,d3
	eori.l	#$8000800,d3
	swap	d3
	move.l	d3,(a6)
	rts
; ===========================================================================

loc_E154:
	btst	#2,(a0)
	bne.s	loc_E166
	move.l	(a1)+,d3
	eori.l	#$10001000,d3
	move.l	d3,(a6)
	rts
; ===========================================================================

loc_E166:
	move.l	(a1)+,d3
	eori.l	#$18001800,d3
	swap	d3
	move.l	d3,(a6)
	rts
; End of function sub_E136


; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||


sub_E174:

	or.w	d2,d0
	swap	d0
	btst	#3,(a0)
	bne.s	loc_E1B0
	btst	#2,(a0)
	bne.s	loc_E190
	move.l	d0,(a5)
	move.l	(a1)+,(a6)
	add.l	d7,d0
	move.l	d0,(a5)
	move.l	(a1)+,(a6)
	rts
; ===========================================================================

loc_E190:
	move.l	d0,(a5)
	move.l	(a1)+,d3
	eori.l	#$8000800,d3
	swap	d3
	move.l	d3,(a6)
	add.l	d7,d0
	move.l	d0,(a5)
	move.l	(a1)+,d3
	eori.l	#$8000800,d3
	swap	d3
	move.l	d3,(a6)
	rts
; ===========================================================================

loc_E1B0:
	btst	#2,(a0)
	bne.s	loc_E1D6
	move.l	d5,-(sp)
	move.l	d0,(a5)
	move.l	(a1)+,d5
	move.l	(a1)+,d3
	eori.l	#$10001000,d3
	move.l	d3,(a6)
	add.l	d7,d0
	move.l	d0,(a5)
	eori.l	#$10001000,d5
	move.l	d5,(a6)
	move.l	(sp)+,d5
	rts
; ===========================================================================

loc_E1D6:
	move.l	d5,-(sp)
	move.l	d0,(a5)
	move.l	(a1)+,d5
	move.l	(a1)+,d3
	eori.l	#$18001800,d3
	swap	d3
	move.l	d3,(a6)
	add.l	d7,d0
	move.l	d0,(a5)
	eori.l	#$18001800,d5
	swap	d5
	move.l	d5,(a6)
	move.l	(sp)+,d5
	rts
; End of function sub_E174


; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||


sub_E1FA:

	or.w	d2,d0
	swap	d0
	btst	#3,(a0)
	bne.s	loc_E220
	btst	#2,(a0)
	bne.s	loc_E210
	move.l	d0,(a5)
	move.l	(a1)+,(a6)
	rts
; ===========================================================================

loc_E210:
	move.l	d0,(a5)
	move.l	(a1)+,d3
	eori.l	#$8000800,d3
	swap	d3
	move.l	d3,(a6)
	rts
; ===========================================================================

loc_E220:
	btst	#2,(a0)
	bne.s	loc_E234
	move.l	d0,(a5)
	move.l	(a1)+,d3
	eori.l	#$10001000,d3
	move.l	d3,(a6)
	rts
; ===========================================================================

loc_E234:
	move.l	d0,(a5)
	move.l	(a1)+,d3
	eori.l	#$18001800,d3
	swap	d3
	move.l	d3,(a6)
	rts
; End of function sub_E1FA


; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||


sub_E244:

	add.w	(a3),d5
	add.w	4(a3),d4
	lea	($FFFFB000).w,a1
	move.w	d4,d3
	add.w	d3,d3
	andi.w	#$F00,d3
	lsr.w	#3,d5
	move.w	d5,d0
	lsr.w	#4,d0
	andi.w	#$7F,d0
	add.w	d3,d0
	moveq	#-1,d3
	clr.w	d3
	move.b	(a4,d0.w),d3
	lsl.w	#7,d3
	andi.w	#$70,d4
	andi.w	#$E,d5
	add.w	d4,d3
	add.w	d5,d3
	movea.l	d3,a0
	move.w	(a0),d3
	andi.w	#$3FF,d3
	lsl.w	#3,d3
	adda.w	d3,a1
	rts
; End of function sub_E244


; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||

; sub_E286:
Calc_VRAM_Pos:

	add.w	(a3),d5

loc_E288:
;	tst.w	(Two_player_mode).w
;	bne.s	loc_E2A8
	add.w	4(a3),d4
	andi.w	#$F0,d4
	andi.w	#$1F0,d5
	lsl.w	#4,d4
	lsr.w	#2,d5
	add.w	d5,d4
	moveq	#3,d0
	swap	d0
	move.w	d4,d0
	rts
; ===========================================================================

loc_E2A8:
	add.w	4(a3),d4

loc_E2AC:
	andi.w	#$1F0,d4
	andi.w	#$1F0,d5
	lsl.w	#3,d4
	lsr.w	#2,d5
	add.w	d5,d4
	moveq	#3,d0
	swap	d0
	move.w	d4,d0
	rts
; End of function Calc_VRAM_Pos


; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||


loc_E2C2:
;	tst.w	(Two_player_mode).w
;	bne.s	loc_E2E4
	add.w	4(a3),d4
	add.w	(a3),d5
	andi.w	#$F0,d4
	andi.w	#$1F0,d5
	lsl.w	#4,d4
	lsr.w	#2,d5
	add.w	d5,d4
	moveq	#2,d0
	swap	d0
	move.w	d4,d0
	rts
; ===========================================================================
; interestingly, this subroutine was in the sonic 1 rom, unused
loc_E2E4:
	add.w	4(a3),d4
	add.w	(a3),d5
	andi.w	#$1F0,d4
	andi.w	#$1F0,d5
	lsl.w	#3,d4
	lsr.w	#2,d5
	add.w	d5,d4
	moveq	#2,d0
	swap	d0
	move.w	d4,d0
	rts
; End of function k

; ===========================================================================

;loc_E300:
LoadTilesFromStart:
	lea	(VDP_control_port).l,a5
	lea	(VDP_data_port).l,a6
	lea	(Camera_BG_X_pos).w,a3
	lea	($FFFFA440).w,a4
	move.w	#$6000,d2
	moveq	#0,d4
	cmpi.b	#$C,($FFFFFE10).w
	beq.w	loc_E338
	bsr.w	loc_E336
	cmpi.b	#$B,($FFFFFE10).w
	beq.w	loc_E396

loc_E336:
	moveq	#-$10,d4

loc_E338:
	moveq	#$F,d6

loc_E33A:
	movem.l	d4-d6,-(sp)
	moveq	#0,d5
	move.w	d4,d1
	bsr.w	Calc_VRAM_Pos
	move.w	d1,d4
	moveq	#0,d5
	moveq	#$1F,d6
	move	#$2700,sr
	bsr.w	DrawTiles_Vertical
	move	#$2300,sr
	movem.l	(sp)+,d4-d6
	addi.w	#$10,d4
	dbf	d6,loc_E33A
	rts
; ===========================================================================
	moveq	#-$10,d4
	moveq	#$F,d6

loc_E36A:
	movem.l	d4-d6,-(sp)
	moveq	#0,d5
	move.w	d4,d1
	bsr.w	loc_E2C2
	move.w	d1,d4
	moveq	#0,d5
	moveq	#$1F,d6
	move	#$2700,sr
	bsr.w	DrawTiles_Vertical
	move	#$2300,sr
	movem.l	(sp)+,d4-d6
	addi.w	#$10,d4
	dbf	d6,loc_E36A
	rts
; ===========================================================================

loc_E396:
	moveq	#0,d4
	moveq	#$1F,d6

loc_E39A:
	movem.l	d4-d6,-(sp)
	moveq	#0,d5
	move.w	d4,d1
	bsr.w	loc_E2AC
	move.w	d1,d4
	moveq	#0,d5
	moveq	#$1F,d6
	move	#$2700,sr
	bsr.w	DrawTiles_Vertical3
	move	#$2300,sr
	movem.l	(sp)+,d4-d6
	addi.w	#$10,d4
	dbf	d6,loc_E39A
	rts
; ===========================================================================