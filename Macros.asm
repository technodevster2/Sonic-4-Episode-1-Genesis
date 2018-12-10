SonicControl	equ	$FFFFF602
Joypad		equ	$FFFFF604

Held		equ	0
Press		equ	1

iStart		equ 	7
iA		equ 	6
iC		equ 	5
iB		equ 	4
iRight		equ 	3
iLeft		equ 	2
iDown		equ 	1
iUp		equ 	0

MaskStart		equ 	1<<7
MaskA		equ 	1<<6
MaskC		equ 	1<<5
MaskB		equ 	1<<4
MaskRight		equ 	1<<3
MaskLeft		equ 	1<<2
MaskDown		equ 	1<<1
MaskUp		equ 	1

; =============================================================
; Macro to check button presses
; Arguments:	1 - buttons to check
;		2 - bitfield to check
; -------------------------------------------------------------
tpress	macro
	move.b	(\2+1),d0
	andi.b	#\1,d0
	endm

; =============================================================
; Macro to check if buttons are held
; Arguments:	1 - buttons to check
;		2 - bitfield to check
; -------------------------------------------------------------
theld	macro
	move.b	\2,d0
	andi.b	#\1,d0
	endm


; ---------------------------------------------------------------------------
; Align and pad
; input: length to align to, value to use as padding (default is 0)
; ---------------------------------------------------------------------------

align:	macro
	if (narg=1)
	dcb.b \1-(*%\1),0
	else
	dcb.b \1-(*%\1),\2
	endc
	endm

; ---------------------------------------------------------------------------
; Set a VRAM address via the VDP control port.
; input: 16-bit VRAM address, control port (default is ($C00004).l)
; ---------------------------------------------------------------------------

locVRAM:	macro loc,controlport
		if (narg=1)
		move.l	#($40000000+((loc&$3FFF)<<16)+((loc&$C000)>>14)),($C00004).l
		else
		move.l	#($40000000+((loc&$3FFF)<<16)+((loc&$C000)>>14)),controlport
		endc
		endm

; ---------------------------------------------------------------------------
; DMA copy data from 68K (ROM/RAM) to the VRAM
; input: source, length, destination
; ---------------------------------------------------------------------------

writeVRAM:	macro
		lea	(vdp_control_port).l,a5
		move.l	#$94000000+(((\2>>1)&$FF00)<<8)+$9300+((\2>>1)&$FF),(a5)
		move.l	#$96000000+(((\1>>1)&$FF00)<<8)+$9500+((\1>>1)&$FF),(a5)
		move.w	#$9700+((((\1>>1)&$FF0000)>>16)&$7F),(a5)
		move.w	#$4000+(\3&$3FFF),(a5)
		move.w	#$80+((\3&$C000)>>14),(v_vdp_buffer2).w
		move.w	(v_vdp_buffer2).w,(a5)
		endm

; ---------------------------------------------------------------------------
; DMA copy data from 68K (ROM/RAM) to the CRAM
; input: source, length, destination
; ---------------------------------------------------------------------------

writeCRAM:	macro
		lea	(vdp_control_port).l,a5
		move.l	#$94000000+(((\2>>1)&$FF00)<<8)+$9300+((\2>>1)&$FF),(a5)
		move.l	#$96000000+(((\1>>1)&$FF00)<<8)+$9500+((\1>>1)&$FF),(a5)
		move.w	#$9700+((((\1>>1)&$FF0000)>>16)&$7F),(a5)
		move.w	#$C000+(\3&$3FFF),(a5)
		move.w	#$80+((\3&$C000)>>14),(v_vdp_buffer2).w
		move.w	(v_vdp_buffer2).w,(a5)
		endm

; ---------------------------------------------------------------------------
; DMA fill VRAM with a value
; input: value, length, destination
; ---------------------------------------------------------------------------

fillVRAM:	macro value,length,loc
		lea	(vdp_control_port).l,a5
		move.w	#$8F01,(a5)
		move.l	#$94000000+((length&$FF00)<<8)+$9300+(length&$FF),(a5)
		move.w	#$9780,(a5)
		move.l	#$40000080+((loc&$3FFF)<<16)+((loc&$C000)>>14),(a5)
		move.w	#value,(vdp_data_port).l
		endm

; ---------------------------------------------------------------------------
; Copy a tilemap from 68K (ROM/RAM) to the VRAM without using DMA
; input: source, destination, width [cells], height [cells]
; ---------------------------------------------------------------------------

copyTilemap:	macro source,loc,width,height
		lea	(source).l,a1
		move.l	#$40000000+((loc&$3FFF)<<16)+((loc&$C000)>>14),d0
		moveq	#width,d1
		moveq	#height,d2
		bsr.w	TilemapToVRAM
		endm

; ---------------------------------------------------------------------------
; stop the Z80
; ---------------------------------------------------------------------------

stopZ80:	macro
		move.w	#$100,(z80_bus_request).l
@wait:	btst	#0,(z80_bus_request).l
		bne.s	@wait
		endm
; ---------------------------------------------------------------------------
; wait for Z80 to stop
; ---------------------------------------------------------------------------

waitZ80:	macro
	@wait:	btst	#0,($A11100).l
		bne.s	@wait
		endm
		
stopZ80a:	macro
		move.w	#$100,(z80_bus_request).l
		endm
; ---------------------------------------------------------------------------
; reset the Z80
; ---------------------------------------------------------------------------

resetZ80:	macro
		move.w	#$100,(z80_reset).l
		endm

resetZ80a:	macro
		move.w	#0,(z80_reset).l
		endm

; ---------------------------------------------------------------------------
; start the Z80
; ---------------------------------------------------------------------------

startZ80:	macro
		move.w	#0,(z80_bus_request).l
		endm

; ---------------------------------------------------------------------------
; disable interrupts
; ---------------------------------------------------------------------------

disable_ints:	macro
		move	#$2700,sr
		endm

; ---------------------------------------------------------------------------
; enable interrupts
; ---------------------------------------------------------------------------

enable_ints:	macro
		move	#$2300,sr
		endm



; ---------------------------------------------------------------------------
; check if object moves out of range
; input: location to jump to if out of range, x-axis pos (obX(a0) by default)
; ---------------------------------------------------------------------------

obRange:	macro exit,pos
		if (narg=2)
		move.w	pos,d0		; get object position (if specified as not obX)
		else
		move.w	obX(a0),d0	; get object position
		endc
		andi.w	#$FF80,d0	; get chunk object is in
		sub.w	(Camera_X_pos_coarse).w,d0	; compare to camera position
		cmpi.w	#128+320+192,d0
		bhi.w	exit		; if object moves out of range, branch
		endm

obRanges:	macro exit,pos
		if (narg=2)
		move.w	pos,d0		; get object position (if specified as not obX)
		else
		move.w	obX(a0),d0	; get object position
		endc
		andi.w	#$FF80,d0	; get chunk object is in
		sub.w	(Camera_X_pos_coarse).w,d0	; compare to camera position
		cmpi.w	#128+320+192,d0
		bhi.s	exit		; if object moves out of range, branch
		endm

; ---------------------------------------------------------------------------
; play a sound effect or music
; input: track, terminate routine (leave blank to not terminate)
; ---------------------------------------------------------------------------

music:		macro track,terminate
		move.w	#track,d0
		if (narg=1)
		jsr	(PlaySound).l
		else
		jmp	(PlaySound).l
		endc
		endm

sfx:		macro track,terminate
		move.w	#track,d0
		if (narg=1)
		jsr	(PlaySound_Special).l
		else
		jmp	(PlaySound_Special).l
		endc
		endm


; ---------------------------------------------------------------------------
; bankswitch between SRAM and ROM
; (remember to enable SRAM in the header first!)
; ---------------------------------------------------------------------------

gotoSRAM:	macro
		move.b  #1,($A130F1).l
		endm

gotoROM:	macro
		move.b  #0,($A130F1).l
		endm

		
waitYM		macro
@wait\@:	move.b	($A04000).l,d2
		btst	#7,d2
		bne.s	@wait\@
		endm
		
; =============================================================
; Macro to raise an error in vectors
; Arguments:	1 - error number
;		2 - branch location
;		3 - if exists, adds 2 to stack pointer
; -------------------------------------------------------------
raise	macro
	move.b	#\1,($FFFFFC44).w
	if narg=3
		addq.l	#2,2(sp)
	endc
	bra.s	\2
	endm	
	
	
Kos_RunBitStream	macro
	dbf	d2,@skip\@
	moveq	#7,d2
	move.b	d1,d0
	swap	d3
	bpl.s	@skip\@
	move.b  (a0)+,d0                        ; get desc. bitfield
	move.b  (a0)+,d1                        ;
	move.b  (a4,d0.w),d0                    ; reload converted desc. bitfield from a LUT
	move.b  (a4,d1.w),d1                    ;
@skip\@:
	endm
	
	
; fills a region of 68k RAM with 0 (4 bytes at a time)
clearRAM macro addr,length,number
;    if length&3
;	fatal "clearRAM len must be divisible by 4, but was length"
 ;   endif
	lea	(addr).w,a1
	moveq	#0,d0
	move.w	#number,number>>2-1(length),d1
@loop:	move.l	d0,(a1)+
	dbf	d1,@loop
    endm
	
; ---------------------------------------------------------------------------
; change an objects status in the respawn table
; ---------------------------------------------------------------------------

obMarkGone      macro
;        if S3KObjectManager=1
		moveq	#0,d0
                move.w	respawn_index(a0),d0	; get address in respawn table
	        beq.s	@dontremember		; if it's zero, don't remember object
	        movea.w	d0,a2	; load address into a2
	        bclr	#7,(a2)	; clear respawn table entry, so object can be loaded again           
            @dontremember:

 ;       else
;		lea	(v_objstate).w,a2
;		moveq	#0,d0
;		move.b	obRespawnNo(a0),d0
;		bclr	#7,2(a2,d0.w)
 ;       endif
                endm
				
; this macro is created to emulate enum in AS
enum	macro	num, lable
; copy initial number for referencing later
.num	= num

	rept narg-1
\lable		set .num
.num =	.num+1
	shift
	endr
    endm