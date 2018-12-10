; =============== S U B R O U T I N E =======================================


Render_Sprites:
;		tst.w	(Competition_mode).w
;		bne.w	Render_Sprites_CompetitionMode
		moveq	#$4F,d7
		moveq	#0,d0
		lea	(Sprite_table_input).w,a4
		lea	(Camera_X_pos_copy).w,a1
		lea	($FFFFF800).w,a2
		tst.b	(Level_started_flag).w
		beq.s	loc_1Ad1A
		bsr.w	JmpTo_BuildHUD
		bsr.w	BuildRings
loc_1Ad1A:	; +
		tst.w	(a4)
		beq.w	Render_Sprites_NextLevel
		lea	2(a4),a4

loc_1AD54:
		movea.w	(a4)+,a0 ; a0=object
		andi.b	#$7F,render_flags(a0)	; clear on-screen flag
		move.b	render_flags(a0),d0
		move.b	d0,d4
		move.w	x_pos(a0),d3
		move.w	y_pos(a0),d2
		btst	#6,d0		; is the multi-draw flag set?
		bne.w	loc_1AE58	; if it is, branch
		btst	#2,d0		; is this to be positioned by screen coordinates?
		beq.s	loc_1ADB2	; if it is, branch
		moveq	#0,d0
		move.b	width_pixels(a0),d0
		sub.w	(a1),d3
		move.w	d3,d3
		add.w	d0,d3		; is the object right edge to the left of the screen?
		bmi.s	Render_Sprites_NextObj	; if it is, branch
		move.w	d3,d3
		sub.w	d0,d3
		cmpi.w	#320,d3		; is the object left edge to the right of the screen?
		bge.s	Render_Sprites_NextObj	; if it is, branch
		addi.w	#128,d3
		sub.w	4(a1),d2
		move.b	y_radius(a0),d0
		add.w	d0,d2
		and.w	#$7FF,d2
		move.w	d0,d3
		add.w	d0,d0
		addi.w	#224,d0
		cmp.w	d0,d2
		bhs.s	Render_Sprites_NextObj	; if the object is below the screen
		addi.w	#128,d2
		sub.w	d3,d2

loc_1ADB2:
		ori.b	#$80,render_flags(a0)	; set on-screen flag
		tst.w	d7
		bmi.s	Render_Sprites_NextObj
		movea.l	mappings(a0),a1
		moveq	#0,d1
		btst	#5,d0		; is the static mappings flag set?
		bne.s	loc_1ADD8	; if it is, branch
		move.b	mapping_frame(a0),d1
		add.w	d1,d1
		adda.w	(a1,d1.w),a1
		move.b	(a1)+,d1
		subq.b	#1,d1		; get number of pieces
		bmi.s	Render_Sprites_NextObj	; if there are 0 pieces, branch

loc_1ADD8:
		move.w	art_tile(a0),a3
		jsr	sub_1AF6C(pc)

; loc_1ADE0:
Render_Sprites_NextObj:					; Render_Sprites+6Cj ...
		subq.w	#2,(a4)		; decrement object count
		bne.w	loc_1AD54	; if there are objects left, repeat

; loc_1ADE6:
Render_Sprites_NextLevel:
;		cmpa.l	#Sprite_table_input,a4
;		bne.s	loc_1ADFC
;		cmpi.b	#9,(Current_zone).w	; LRZ?
;		bne.s	loc_1ADFC
;		jsr	(sub_1CB68).l

;loc_1ADFC:
					; Render_Sprites+d1j
		lea	$80(a4),a4	; load next priority level
		cmpa.l	#$FFFFd300,a4
		blo.w	loc_1Ad1A
		move.w	d7,d0
		bmi.s	loc_1AE18
		moveq	#0,d3

loc_1AE10:
		move.w	d3,(a2)
		addq.w	#8,a2
		dbf	d7,loc_1AE10

loc_1AE18:
		subi.w	#$4F,d0
		neg.w	d0
		move.b	d0,($FFFFF62C).w
;		tst.w	($FFFFEF3A).w
;		beq.s	locret_1AE56
;		cmpi.b	#6,($FFFFd324).w
;		bhs.s	loc_1AE34
;		clr.w	($FFFFEF3A).w

;loc_1AE34:
;		lea	($FFFFF800-4).w,a0
;		move.w	#$7C0,d3
;		moveq	#$4E,d2

;loc_1AE3E:
					; Render_Sprites+134j
;		addq.w	#8,a0
;		cmp.w	(a0),d3
;		dbeq	d2,loc_1AE3E
;		bne.s	locret_1AE56
;		move.w	#1,2(a0)
;		clr.w	art_tile(a0)
;		subq.w	#1,d2
;		bpl.s	loc_1AE3E

locret_1AE56:
					; Render_Sprites+126j
		rts
; ---------------------------------------------------------------------------

loc_1AE58:
		btst	#2,d0		; is this to be positioned by screen coordinates?
		bne.s	loc_1AEA2	; if it is, branch
		moveq	#0,d0

		; check if object is within X bounds
		move.b	width_pixels(a0),d0
		subi.w	#128,d3
		move.w	d3,d3
		add.w	d0,d3
		bmi.w	Render_Sprites_NextObj
		move.w	d3,d3
		sub.w	d0,d3
		cmpi.w	#320,d3
		bge.w	Render_Sprites_NextObj
		addi.w	#128,d3

		; check if object is within Y bounds
		move.b	y_radius(a0),d0
		subi.w	#128,d2
		move.w	d2,d3
		add.w	d0,d3
		bmi.w	Render_Sprites_NextObj
		move.w	d2,d3
		sub.w	d0,d3
		cmpi.w	#224,d3
		bge.w	Render_Sprites_NextObj
		addi.w	#128,d2
		bra.s	loc_1AEE4
; ---------------------------------------------------------------------------

loc_1AEA2:
		moveq	#0,d0
		move.b	width_pixels(a0),d0
		sub.w	(a1),d3
		move.w	d3,d3
		add.w	d0,d3
		bmi.w	Render_Sprites_NextObj
		move.w	d3,d3
		sub.w	d0,d3
		cmpi.w	#$140,d3
		bge.w	Render_Sprites_NextObj
		addi.w	#$80,d3
		sub.w	4(a1),d2
		move.b	y_radius(a0),d0
		add.w	d0,d2
		and.w	#$7FF,d2
		move.w	d0,d3
		add.w	d0,d0
		addi.w	#$E0,d0
		cmp.w	d0,d2
		bhs.w	Render_Sprites_NextObj
		addi.w	#$80,d2
		sub.w	d3,d2

loc_1AEE4:
		ori.b	#$80,4(a0)
		tst.w	d7
		bmi.w	Render_Sprites_NextObj
		move.w	art_tile(a0),a3
		movea.l	mappings(a0),a2
		moveq	#0,d1
		move.b	mapping_frame(a0),d1
		beq.s	loc_1AF1C
		add.w	d1,d1
		lea	(a2),a1
		adda.w	(a1,d1.w),a1
		move.b	(a1)+,d1
		subq.b	#1,d1
		bmi.s	loc_1AF1C
		move.w	d0,d3
		jsr	sub_1B070(pc)
		move.w	d3,d0
		tst.w	d7
		bmi.w	Render_Sprites_NextObj

loc_1AF1C:
					; Render_Sprites+1ECj
		move.w	mainspr_childsprites(a0),d3
		subq.w	#1,d3
		bcs.w	Render_Sprites_NextObj
		lea	$18(a0),a0

loc_1AF2A:
		move.w	(a0)+,d3
		move.w	(a0)+,d2
		btst	#2,d0
		beq.s	loc_1AF46
		sub.w	(a1),d3
		addi.w	#$80,d3
		sub.w	4(a1),d2
		addi.w	#$80,d2
		and.w	#$7FF,d2

loc_1AF46:
		addq.w	#1,a0
		moveq	#0,d1
		move.b	(a0)+,d1
		add.w	d1,d1
		lea	(a2),a1
		adda.w	(a1,d1.w),a1
		move.b	(a1)+,d1
		subq.b	#1,d1
		bmi.s	loc_1AF62
		move.w	d0,-(sp)
		jsr	sub_1B070(pc)
		move.w	(sp)+,d0

loc_1AF62:
		tst.w	d7
		dbmi	d3,loc_1AF2A
		bra.w	Render_Sprites_NextObj
; End of function Render_Sprites


; =============== S U B R O U T I N E =======================================


sub_1AF6C:

		lsr.b	#1,d0
		bcs.s	loc_1AF9E
		lsr.b	#1,d0
		bcs.w	loc_1B038

loc_1AF76:
		move.b	(a1)+,d0
		ext.w	d0
		add.w	d2,d0
		move.w	d0,(a2)+
		move.b	(a1)+,(a2)+
		addq.w	#1,a2
		move.w	(a1)+,d0
		add.w	d5,d0
		move.w	d0,(a2)+
		move.w	(a1)+,d0
		add.w	d3,d0
		andi.w	#$1FF,d0
		bne.s	loc_1AF94
		addq.w	#1,d0

loc_1AF94:
		move.w	d0,(a2)+
		subq.w	#1,d7
		dbmi	d1,loc_1AF76
		rts
; ---------------------------------------------------------------------------

loc_1AF9E:
		lsr.b	#1,d0
		bcs.s	loc_1AFE8

loc_1AFA2:
		move.b	(a1)+,d0
		ext.w	d0
		add.w	d2,d0
		move.w	d0,(a2)+
		move.b	(a1)+,d0
		move.b	d0,(a2)+
		addq.w	#1,a2
		move.w	(a1)+,d0
		add.w	d5,d0
		eori.w	#$800,d0
		move.w	d0,(a2)+
		move.w	(a1)+,d0
		neg.w	d0
		move.b	byte_1AFD8(pc,d0.w),d0
		sub.w	d0,d0
		add.w	d3,d0
		andi.w	#$1FF,d0
		bne.s	loc_1AFCE
		addq.w	#1,d0

loc_1AFCE:
		move.w	d0,(a2)+
		subq.w	#1,d7
		dbmi	d1,loc_1AFA2
		rts
; ---------------------------------------------------------------------------
byte_1AFD8:	dc.b 8
		dc.b 8
		dc.b 8
		dc.b 8
		dc.b $10
		dc.b $10
		dc.b $10
		dc.b $10
		dc.b $18
		dc.b $18
		dc.b $18
		dc.b $18
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
; ---------------------------------------------------------------------------

loc_1AFE8:

		move.b	(a1)+,d0
		ext.w	d0
		neg.w	d0
		move.b	(a1),d0
		move.b	byte_1B028(pc,d0.w),d0
		sub.w	d0,d0
		add.w	d2,d0
		move.w	d0,(a2)+
		move.b	(a1)+,d0
		move.b	d0,(a2)+
		addq.w	#1,a2
		move.w	(a1)+,d0
		add.w	d5,d0
		eori.w	#$1800,d0
		move.w	d0,(a2)+
		move.w	(a1)+,d0
		neg.w	d0
		move.b	byte_1AFD8(pc,d0.w),d0
		sub.w	d0,d0
		add.w	d3,d0
		andi.w	#$1FF,d0
		bne.s	loc_1B01E
		addq.w	#1,d0

loc_1B01E:
		move.w	d0,(a2)+
		subq.w	#1,d7
		dbmi	d1,loc_1AFE8
		rts
; ---------------------------------------------------------------------------
byte_1B028:	dc.b 8
		dc.b $10
		dc.b $18
		dc.b $20
		dc.b 8
		dc.b $10
		dc.b $18
		dc.b $20
		dc.b 8
		dc.b $10
		dc.b $18
		dc.b $20
		dc.b 8
		dc.b $10
		dc.b $18
		dc.b $20
; ---------------------------------------------------------------------------

loc_1B038:

		move.b	(a1)+,d0
		ext.w	d0
		neg.w	d0
		move.b	(a1)+,d0
		move.b	d0,2(a2)
		move.b	byte_1B028(pc,d0.w),d0
		sub.w	d0,d0
		add.w	d2,d0
		move.w	d0,(a2)+
		addq.w	#2,a2
		move.w	(a1)+,d0
		add.w	d5,d0
		eori.w	#$1000,d0
		move.w	d0,(a2)+
		move.w	(a1)+,d0
		add.w	d3,d0
		andi.w	#$1FF,d0
		bne.s	loc_1B066
		addq.w	#1,d0

loc_1B066:
		move.w	d0,(a2)+
		subq.w	#1,d7
		dbmi	d1,loc_1B038
		rts
; End of function sub_1AF6C


; =============== S U B R O U T I N E =======================================


sub_1B070:
					; Render_Sprites+23Ct ...
		lsr.b	#1,d0
		bcs.s	loc_1B0C2
		lsr.b	#1,d0
		bcs.w	loc_1B19C

loc_1B07A:

		move.b	(a1)+,d0
		ext.w	d0
		add.w	d2,d0
		cmpi.w	#$60,d0
		bls.s	loc_1B0BA
		cmpi.w	#$160,d0
		bhs.s	loc_1B0BA
		move.w	d0,(a2)+
		move.b	(a1)+,(a2)+
		addq.w	#1,a2
		move.w	(a1)+,d0
		add.w	d5,d0
		move.w	d0,(a2)+
		move.w	(a1)+,d0
		add.w	d3,d0
		cmpi.w	#$60,d0
		bls.s	loc_1B0B2
		cmpi.w	#$1C0,d0
		bhs.s	loc_1B0B2
		move.w	d0,(a2)+
		subq.w	#1,d7
		dbmi	d1,loc_1B07A
		rts
; ---------------------------------------------------------------------------

loc_1B0B2:

		subq.w	#6,a2
		dbf	d1,loc_1B07A
		rts
; ---------------------------------------------------------------------------

loc_1B0BA:

		addq.w	#5,a1
		dbf	d1,loc_1B07A
		rts
; ---------------------------------------------------------------------------

loc_1B0C2:
		lsr.b	#1,d0
		bcs.s	loc_1B12C

loc_1B0C6:

		move.b	(a1)+,d0
		ext.w	d0
		add.w	d2,d0
		cmpi.w	#$60,d0
		bls.s	loc_1B114
		cmpi.w	#$160,d0
		bhs.s	loc_1B114
		move.w	d0,(a2)+
		move.b	(a1)+,d0
		move.b	d0,(a2)+
		addq.w	#1,a2
		move.w	(a1)+,d0
		add.w	d5,d0
		eori.w	#$800,d0
		move.w	d0,(a2)+
		move.w	(a1)+,d0
		neg.w	d0
		move.b	byte_1B11C(pc,d0.w),d0
		sub.w	d0,d0
		add.w	d3,d0
		cmpi.w	#$60,d0
		bls.s	loc_1B10C
		cmpi.w	#$1C0,d0
		bhs.s	loc_1B10C
		move.w	d0,(a2)+
		subq.w	#1,d7
		dbmi	d1,loc_1B0C6
		rts
; ---------------------------------------------------------------------------

loc_1B10C:

		subq.w	#6,a2
		dbf	d1,loc_1B0C6
		rts
; ---------------------------------------------------------------------------

loc_1B114:

		addq.w	#5,a1
		dbf	d1,loc_1B0C6
		rts
; ---------------------------------------------------------------------------
byte_1B11C:	dc.b 8
		dc.b 8
		dc.b 8
		dc.b 8
		dc.b $10
		dc.b $10
		dc.b $10
		dc.b $10
		dc.b $18
		dc.b $18
		dc.b $18
		dc.b $18
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
; ---------------------------------------------------------------------------

loc_1B12C:

		move.b	(a1)+,d0
		ext.w	d0
		neg.w	d0
		move.b	(a1),d0
		move.b	byte_1B18C(pc,d0.w),d0
		sub.w	d0,d0
		add.w	d2,d0
		cmpi.w	#$60,d0
		bls.s	loc_1B184
		cmpi.w	#$160,d0
		bhs.s	loc_1B184
		move.w	d0,(a2)+
		move.b	(a1)+,d0
		move.b	d0,(a2)+
		addq.w	#1,a2
		move.w	(a1)+,d0
		add.w	d5,d0
		eori.w	#$1800,d0
		move.w	d0,(a2)+
		move.w	(a1)+,d0
		neg.w	d0
		move.b	byte_1B11C(pc,d0.w),d0
		sub.w	d0,d0
		add.w	d3,d0
		cmpi.w	#$60,d0
		bls.s	loc_1B17C
		cmpi.w	#$1C0,d0
		bhs.s	loc_1B17C
		move.w	d0,(a2)+
		subq.w	#1,d7
		dbmi	d1,loc_1B12C
		rts
; ---------------------------------------------------------------------------

loc_1B17C:

		subq.w	#6,a2
		dbf	d1,loc_1B12C
		rts
; ---------------------------------------------------------------------------

loc_1B184:

		addq.w	#5,a1
		dbf	d1,loc_1B12C
		rts
; ---------------------------------------------------------------------------
byte_1B18C:	dc.b 8
		dc.b $10
		dc.b $18
		dc.b $20
		dc.b 8
		dc.b $10
		dc.b $18
		dc.b $20
		dc.b 8
		dc.b $10
		dc.b $18
		dc.b $20
		dc.b 8
		dc.b $10
		dc.b $18
		dc.b $20
; ---------------------------------------------------------------------------

loc_1B19C:

		move.b	(a1)+,d0
		ext.w	d0
		neg.w	d0
		move.b	(a1)+,d0
		move.b	d0,2(a2)
		move.b	byte_1B18C(pc,d0.w),d0
		sub.w	d0,d0
		add.w	d2,d0
		cmpi.w	#$60,d0
		bls.s	loc_1B1EC
		cmpi.w	#$160,d0
		bhs.s	loc_1B1EC
		move.w	d0,(a2)+
		addq.w	#2,a2
		move.w	(a1)+,d0
		add.w	d5,d0
		eori.w	#$1000,d0
		move.w	d0,(a2)+
		move.w	(a1)+,d0
		add.w	d3,d0
		cmpi.w	#$60,d0
		bls.s	loc_1B1E4
		cmpi.w	#$1C0,d0
		bhs.s	loc_1B1E4
		move.w	d0,(a2)+
		subq.w	#1,d7
		dbmi	d1,loc_1B19C
		rts
; ---------------------------------------------------------------------------

loc_1B1E4:

		subq.w	#6,a2
		dbf	d1,loc_1B19C
		rts
; ---------------------------------------------------------------------------

loc_1B1EC:

		addq.w	#4,a1
		dbf	d1,loc_1B19C
		rts
; End of function sub_1B070