
SRScreen:

; ---------------------------------------------------------------------------

RetroScreen:				
		move.w	#0,($FFFFFF38).w
		move.b	#$E4,d0
		jsr	PlaySound_Special
		jsr	ClearPLC
		jsr	Pal_FadeFrom
;		jsr	VDP_ClrCRAM
		move	#$2700,sr
		lea	($FFFFD000).w,a1
		moveq	#0,d0
		move.w	#$7FF,d1

Retro_1:
		move.l	#0,(a1)+
		dbf	d1,Retro_1
		move	#$2300,sr
		clr.w	($FFFFC800).w				;	clear the VDP buffer to prevent a minor bug that causes glitchy tiles
		move.l	#$FFFFC800,($FFFFC8FC).w	;	from the level select to appear on the Splash Screen star emblem
		move.l	#$40000000,($C00004).l
		lea	(RetroBack).l,a0
		jsr	NemDec
		move.l	#$60400000,($C00004).l
		lea	(RetroEmerald).l,a0
		jsr	NemDec
		move.l	#$6AE00000,($C00004).l
		lea	(RetroSonic).l,a0
		jsr	NemDec
		jsr	ClearScreen
		move	#$2300,sr
		moveq	#0,d0
		lea	(RMapData).l,a1
;		lsl.w	#3,d0
;		adda.w	d0,a1
;		movea.l	(a1)+,a2
;		movea.w	(a1)+,a3
;		adda.w	#$80,a3
;		move.w	(a1)+,d7

		move.b	#$19,d0
		jsr	PlaySound
		bsr.w	Retro_5
		lea     (PalPointRetro).l,a1
		jsr	PalLoad1_Cont
		move.b	#1,($FFFFD000).w
		move.b	#0,($FFFFD028).w
		move.b	#1,($FFFFD040).w
		move.b	#1,($FFFFD068).w
		move.b	#1,($FFFFD080).w
		move.b	#2,($FFFFD0A8).w
		jsr	(ObjectsLoad_Retro).l
		jsr	BuildSprites
		jsr	Pal_FadeTo

Retro_3:
		move.b	#$16,($FFFFF62A).w
		jsr	DelayProgram
		addq.w	#1,($FFFFFF38).w
		jsr	(ObjectsLoad_Retro).l
		jsr	BuildSprites
		moveq	#0,d1
		move.b	#$50,d1	; 'P'
		cmpi.w	#$340,($FFFFFF38).w
		bge.s	Retro_4
		moveq	#0,d1
		move.b	#$50,d1
		move.b	($FFFFF605).w,d0
		btst	#4,d0
		bne.w	Retro_4
		btst	#5,d0
		bne.w	Retro_4
		btst	#6,d0
		bne.w	Retro_4
		btst	#7,d0
		bne.w	Retro_4
		bra.w	Retro_3
; ---------------------------------------------------------------------------

Retro_4:
		move.w	#0,($FFFFFF38).w
		move.b	#$24,($FFFFF600).w	; go to title screen
		rts

; =============== S U B	R O U T	I N E =======================================


Retro_5:
		lea	(RData1).l,a1
		lea	($C00000).l,a6
		move.l	#$40000003,d4
		moveq	#$1B,d1

Retro_6:
		move.l	d4,4(a6)
		bsr.w	Retro_7
		addi.l	#$800000,d4
		dbf	d1,Retro_6
		rts
; End of function Retro_5


; =============== S U B	R O U T	I N E =======================================


Retro_7:
		moveq	#$27,d2	; '''

Retro_8:
		moveq	#0,d0
		move.w	(a1)+,d0
		bpl.s	Retro_9
		move.w	#0,(a6)
		dbf	d2,Retro_8
		rts
; ---------------------------------------------------------------------------

Retro_9:
		move.w	d0,(a6)
		dbf	d2,Retro_8
		rts
; End of function Retro_7

PalPointRetro:  
	dc.l Pal_Retro
	dc.w $FB00
	dc.w $1F
	even
Pal_Retro:
	incbin pallet/RetroScreen.bin
	even

; ---------------------------------------------------------------------------
RData1:	incbin	AsciiMaybe.bin
		even
RMapData:	incbin	SRMappings.bin
		even
; ---------------------------------------------------------------------------

ObjectsLoad_Retro:
		lea	($FFFFD000).w,a0
		moveq	#$7F,d7
		moveq	#0,d0

Retro_10:
		move.b	(a0),d0
		beq.s	Retro_11
		add.w	d0,d0
		add.w	d0,d0
		movea.l	RetroObj_Idx-4(pc,d0.w),a1
		jsr	(a1)
		moveq	#0,d0

Retro_11:
		lea	$40(a0),a0

Retro_12:
		dbf	d7,Retro_10
		rts
; ---------------------------------------------------------------------------
RetroObj_Idx:	dc.l Retro_ObjTableCall
; ---------------------------------------------------------------------------

Retro_ObjTableCall:
		moveq	#0,d0
		move.b	$28(a0),d0
		add.w	d0,d0
		add.w	d0,d0
		jmp	Retro_ObjTable(pc,d0.w)
; ---------------------------------------------------------------------------
		rts
; ---------------------------------------------------------------------------

Retro_ObjTable:
		bra.w	Retro_Obj01
; ---------------------------------------------------------------------------
		bra.w	Retro_Obj02
; ---------------------------------------------------------------------------
		bra.w	Retro_Obj03
; ---------------------------------------------------------------------------

Retro_Obj01:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	Retro_Obj01_idx(pc,d0.w),d1
		jmp	Retro_Obj01_idx(pc,d1.w)
; ---------------------------------------------------------------------------
Retro_Obj01_idx:	dc.w RObj01_Main-Retro_Obj01_idx
		dc.w RObj01_Disp-Retro_Obj01_idx
; ---------------------------------------------------------------------------

RObj01_Main:
		addq.b	#2,$24(a0)
		move.w	#$193,8(a0)
		move.w	#$102,$A(a0)
		move.l	#Map_RObj01,4(a0)
		move.w	#$2102,2(a0)
		move.b	#0,1(a0)
		move.w	#$200,priority(a0)

RObj01_Disp:
		jmp	DisplaySprite
; ---------------------------------------------------------------------------

Retro_Obj02:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	RObj02_Index(pc,d0.w),d1
		jmp	RObj02_Index(pc,d1.w)
; ---------------------------------------------------------------------------
RObj02_Index:	dc.w RObj02_Main-RObj02_Index
		dc.w RObj02_Main2-RObj02_Index
; ---------------------------------------------------------------------------

RObj02_Main:
		addq.b	#2,$24(a0)
		move.w	#$191,8(a0)
		move.w	#$E2,$A(a0)
		move.l	#Map_RObj02,4(a0)
		move.w	#$4157,2(a0)
		move.b	#0,1(a0)
		move.w	#$180,priority(a0)

RObj02_Main2:
		addq.b	#1,$31(a0)
		cmpi.b	#$B,$31(a0)
		blt.w	RObj02_Disp
		move.b	#0,$31(a0)
		addq.b	#1,$30(a0)
		cmpi.b	#2,$30(a0)
		bne.w	RObj02_Disp
		move.b	#0,$30(a0)

RObj02_Disp:
		move.b	$30(a0),$1A(a0)
		jmp	DisplaySprite
; ---------------------------------------------------------------------------

Retro_Obj03:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	RObj03_Index(pc,d0.w),d1
		jmp	RObj03_Index(pc,d1.w)
; ---------------------------------------------------------------------------
RObj03_Index:	dc.w RObj03_Main-RObj03_Index
		dc.w RObj03_Disp-RObj03_Index
; ---------------------------------------------------------------------------

RObj03_Main:
		addq.b	#2,$24(a0)
		move.w	#$124,8(a0)
		move.w	#$FF,$A(a0)
		move.l	#Map_RObj03,4(a0)
		move.w	#0,2(a0)
		move.b	#0,1(a0)
		move.b	#0,priority(a0)

RObj03_Disp:
		jmp	DisplaySprite
; ---------------------------------------------------------------------------
Map_RObj03:	include		map1.asm
Map_RObj01:	include		map2.asm
Map_RObj02:	include		map3.asm
RetroBack:	incbin	SRBack.bin
		even
RetroEmerald:	incbin	masteremerald.bin
		even
RetroSonic:	incbin SonicOnRetro.bin
		even
