; ---------------------------------------------------------------------------
; Horizontal Insta-kill Object (Ported from S3K)
; ---------------------------------------------------------------------------

Obj_InvisibleHurtBlockHorizontal:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	ObjHurtHoriz_Index(pc,d0.w),d1
		jmp	ObjHurtHoriz_Index(pc,d1.w)
; ===========================================================================
ObjHurtHoriz_Index:	dc.w ObjHurtHoriz_Main-ObjHurtHoriz_Index
		dc.w loc_1F4C4-ObjHurtHoriz_Index
		dc.w loc_1F528-ObjHurtHoriz_Index
		dc.w loc_1F45E-ObjHurtHoriz_Index
;		dc.w loc_1F4C4-ObjHurtHoriz_Index
ObjHurtHoriz_Main:
		addq.b	#2,$24(a0)
		move.l	#Map_Obj71,mappings(a0)
		move.w	#$8680,art_tile(a0)
		ori.b	#4,render_flags(a0)
		move.w	#$200,priority(a0)
		bset	#7,status(a0)
		move.b	subtype(a0),d0
		move.b	d0,d1
		andi.w	#$F0,d0
		addi.w	#$10,d0
		lsr.w	#1,d0
		move.b	d0,width_pixels(a0)
		andi.w	#$F,d1
		addq.w	#1,d1
		lsl.w	#3,d1
		move.b	d1,$16(a0)
		btst	#0,status(a0)
		beq.s	loc_1F448
		rts
; ---------------------------------------------------------------------------

loc_1F448:
		btst	#1,status(a0)
		beq.s	loc_1F458
		addq.b	#2,$24(a0)
		rts
; ---------------------------------------------------------------------------

loc_1F458:
		addq.b	#2,$24(a0)

loc_1F45E:
		moveq	#0,d1
		move.b	width_pixels(a0),d1
		addi.w	#$B,d1
		moveq	#0,d2
		move.b	$16(a0),d2
		move.w	d2,d3
		addq.w	#1,d3
		move.w	x_pos(a0),d4
		bsr.w	SolidObject71
		move.b	status(a0),d6
		andi.b	#$18,d6
		beq.s	loc_1F4A2
		move.b	d6,d0
		andi.b	#8,d0
		beq.s	loc_1F494
		lea	(MainCharacter).w,a1
		bsr.w	SolidObject71

loc_1F494:
;		andi.b	#$10,d6
;		beq.s	loc_1F4A2
;		lea	(Player_2).w,a1
;		bsr.w	SolidObject71

loc_1F4A2:

		move.w	x_pos(a0),d0
		move.w	($FFFFF700).w,d1
		subi.w	#$80,d1
		andi.w	#$FF80,d1
		sub.w	d1,d0
		cmpi.w	#$280,d0
		bhi.w	loc_1EBAA
		tst.w	(Debug_placement_mode).w
		beq.s	locret_1F4C2
		jmp	(DisplaySprite).l
; ---------------------------------------------------------------------------

loc_1EBAA
		move.w	respawn_index(a0),d0
		beq.s	loc_1EBB6
		movea.w	d0,a2
		bclr	#7,(a2)

loc_1EBB6:
		jmp	(DeleteObject).l

locret_1F4C2:
		rts
; ---------------------------------------------------------------------------

loc_1F4C4:
		moveq	#0,d1
		move.b	width_pixels(a0),d1
		addi.w	#$B,d1
		moveq	#0,d2
		move.b	$16(a0),d2
		move.w	d2,d3
		addq.w	#1,d3
		move.w	x_pos(a0),d4
		bsr.w	SolidObject71
		swap	d6
		andi.w	#3,d6
		beq.s	loc_1F506
		move.b	d6,d0
		andi.b	#1,d0
		beq.s	loc_1F4F8
		lea	(MainCharacter).w,a1
		bsr.w	SolidObject71

loc_1F4F8:
;		andi.b	#2,d6
;		beq.s	loc_1F506
;		lea	(Player_2).w,a1
;		bsr.w	SolidObject71

loc_1F506:

		move.w	x_pos(a0),d0
		andi.w	#$FF80,d0
		sub.w	(Camera_X_pos_coarse).w,d0
		cmpi.w	#$280,d0
		bhi.w	loc_1EBAA
		tst.w	(Debug_placement_mode).w
		beq.s	locret_1F526
		jmp	(DisplaySprite).l
; ---------------------------------------------------------------------------

locret_1F526:
		rts
; ---------------------------------------------------------------------------

loc_1F528:
		moveq	#0,d1
		move.b	width_pixels(a0),d1
		addi.w	#$B,d1
		moveq	#0,d2
		move.b	$16(a0),d2
		move.w	d2,d3
		addq.w	#1,d3
		move.w	x_pos(a0),d4
		bsr.w	SolidObject71
		swap	d6
		andi.w	#$C,d6
		beq.s	loc_1F56A
		move.b	d6,d0
		andi.b	#4,d0
		beq.s	loc_1F55C
		lea	(MainCharacter).w,a1
		bsr.w	sub_1F58C

loc_1F55C:
;		andi.b	#8,d6
;		beq.s	loc_1F56A
;		lea	(Player_2).w,a1
;		bsr.w	sub_1F58C

loc_1F56A:

		move.w	x_pos(a0),d0
		move.w	($FFFFF700).w,d1
		subi.w	#$80,d1
		andi.w	#$FF80,d1
		sub.w	d1,d0
		cmpi.w	#$280,d0
		bhi.w	loc_1EBAA
		tst.w	(Debug_placement_mode).w
		beq.s	locret_1F58A
		jmp	(DisplaySprite).l
; ---------------------------------------------------------------------------

locret_1F58A:
		rts

; =============== S U B R O U T I N E =======================================


sub_1F58C:

;		move.b	$2B(a0),d0
;		andi.b	#$73,d0
;		and.b	$2B(a1),d0
;		bne.s	locret_1F59E
		jsr	Touch_ChkHurt

;locret_1F59E:
		rts
; End of function sub_1F58C

; ---------------------------------------------------------------------------

; ---------------------------------------------------------------------------
; Vertical Insta-kill Object (Ported from S3K)
; ---------------------------------------------------------------------------

Obj_InvisibleHurtBlockVertical:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	ObjHurtVert_Index(pc,d0.w),d1
		jmp	ObjHurtVert_Index(pc,d1.w)
; ===========================================================================
ObjHurtVert_Index:	dc.w ObjHurtVert_Main-ObjHurtVert_Index
		dc.w loc_1F66C-ObjHurtVert_Index
		dc.w loc_1F6D0-ObjHurtVert_Index
		dc.w loc_1F606-ObjHurtVert_Index
;		dc.w loc_1F4C4-ObjHurtHoriz_Index
ObjHurtVert_Main:
		addq.b	#2,$24(a0)
		move.l	#Map_Obj71,mappings(a0)
		move.w	#$8680,art_tile(a0)
		ori.b	#4,render_flags(a0)
		move.w	#$200,priority(a0)
		bset	#7,status(a0)
		move.b	subtype(a0),d0
		move.b	d0,d1
		andi.w	#$F0,d0
		addi.w	#$10,d0
		lsr.w	#1,d0
		move.b	d0,width_pixels(a0)
		andi.w	#$F,d1
		addq.w	#1,d1
		lsl.w	#3,d1
		move.b	d1,$16(a0)
		btst	#0,status(a0)
		beq.s	loc_1F5F0
;		move.l	#loc_1F66C,(a0)
		rts
; ---------------------------------------------------------------------------

loc_1F5F0:
		btst	#1,status(a0)
		beq.s	loc_1F600
;		move.l	#loc_1F6D0,(a0)
		addq.b	#2,$24(a0)
		rts
; ---------------------------------------------------------------------------

loc_1F600:
		addq.b	#2,$24(a0)
;		move.l	#loc_1F606,(a0)

loc_1F606:
		moveq	#0,d1
		move.b	width_pixels(a0),d1
		addi.w	#$B,d1
		moveq	#0,d2
		move.b	$16(a0),d2
		move.w	d2,d3
		addq.w	#1,d3
		move.w	x_pos(a0),d4
		bsr.w	SolidObject71
		move.b	status(a0),d6
		andi.b	#$18,d6
		beq.s	loc_1F64A
		move.b	d6,d0
		andi.b	#8,d0
		beq.s	loc_1F63C
		lea	(MainCharacter).w,a1
		bsr.w	sub_1F734

loc_1F63C:
;		andi.b	#$10,d6
;		beq.s	loc_1F64A
;		lea	(Player_2).w,a1
;		bsr.w	sub_1F734

loc_1F64A:

		move.w	x_pos(a0),d0
		andi.w	#$FF80,d0
		sub.w	(Camera_X_pos_coarse).w,d0
		cmpi.w	#$280,d0
		bhi.w	loc_1EBAA
		tst.w	($FFFFFE08).w
		beq.s	locret_1F66A
		jmp	(DisplaySprite).l
; ---------------------------------------------------------------------------

locret_1F66A:
		rts
; ---------------------------------------------------------------------------

loc_1F66C:
		moveq	#0,d1
		move.b	width_pixels(a0),d1
		addi.w	#$B,d1
		moveq	#0,d2
		move.b	$16(a0),d2
		move.w	d2,d3
		addq.w	#1,d3
		move.w	x_pos(a0),d4
		bsr.w	SolidObject71
		swap	d6
		andi.w	#3,d6
		beq.s	loc_1F6AE
		move.b	d6,d0
		andi.b	#1,d0
		beq.s	loc_1F6A0
		lea	(MainCharacter).w,a1
		bsr.w	sub_1F734

loc_1F6A0:
;		andi.b	#2,d6
;		beq.s	loc_1F6AE
;		lea	(Player_2).w,a1
;		bsr.w	sub_1F734

loc_1F6AE:

		move.w	x_pos(a0),d0
		andi.w	#$FF80,d0
		sub.w	(Camera_X_pos_coarse).w,d0
		cmpi.w	#$280,d0
		bhi.w	loc_1EBAA
		tst.w	($FFFFFE08).w
		beq.s	locret_1F6CE
		jmp	(DisplaySprite).l
; ---------------------------------------------------------------------------

locret_1F6CE:
		rts
; ---------------------------------------------------------------------------

loc_1F6D0:
		moveq	#0,d1
		move.b	width_pixels(a0),d1
		addi.w	#$B,d1
		moveq	#0,d2
		move.b	$16(a0),d2
		move.w	d2,d3
		addq.w	#1,d3
		move.w	x_pos(a0),d4
		bsr.w	SolidObject71
		swap	d6
		andi.w	#$C,d6
		beq.s	loc_1F712
		move.b	d6,d0
		andi.b	#4,d0
		beq.s	loc_1F704
		lea	(MainCharacter).w,a1
		bsr.w	sub_1F734

loc_1F704:
;		andi.b	#8,d6
;		beq.s	loc_1F712
;		lea	(Player_2).w,a1
;		bsr.w	sub_1F734

loc_1F712:

		move.w	x_pos(a0),d0
		andi.w	#$FF80,d0
		sub.w	(Camera_X_pos_coarse).w,d0
		cmpi.w	#$280,d0
		bhi.w	loc_1EBAA
		tst.w	($FFFFFE08).w
		beq.s	locret_1F732
		jmp	(DisplaySprite).l
; ---------------------------------------------------------------------------

locret_1F732:
		rts

; =============== S U B R O U T I N E =======================================


sub_1F734:

		move.w	d6,-(sp)
		move.l	a0,-(sp)
		movea.l	a1,a0
		jsr	(KillCharacter).l
		movea.l	(sp)+,a0
		move.w	(sp)+,d6
		rts
; End of function sub_1F734