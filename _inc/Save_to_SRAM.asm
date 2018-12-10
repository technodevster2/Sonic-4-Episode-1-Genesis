; d4 = 0 - save all
; d4 = 1 - save all with a predetermined level 
; d4 = 2 - only save the Time Attack, if was time attack flag set
; d5 = number of the predetermined level 
; ===========================================================================
; ---------------------------------------------------------------------------
; Subroutine to Save to SRAM the information needed to Load Auto Save and Time Attack
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Save_Progress:
		move.b	#1,(SRAM_access_flag).l		; enable SRAM (required)
		cmpi.b	#$64,($200001).l				; number of lives in sram is more than 99?
		bgt.w	Livesfix		; if yes, branch
		cmpi.b	#0,($200001).l				; number of lives in sram is more than 99?
		blt.w	Livesfix2		; if yes, branch
		cmpi.b	#$18,($FFFFF600).w ; is	scene number $18 (ending)?
		beq.w UnlockLevels
		move.b ($FFFFFE12).w,($200001).l
		move.b ($200001).l,($20011F).l
;		bra.w	Save_Progress_2

Save_Progress_2:		
		move.b	($FFFFFE56).w,($20012D).l ; save emeralds
		move.b	($FFFFFE57).w,($200121).l ; save emeralds
		move.b	($FFFFFE58).w,($200123).l ; save emeralds
		move.b	($FFFFFE59).w,($200125).l ; save emeralds
		move.b	($FFFFFE5A).w,($200127).l ; save emeralds
		move.b	($FFFFFE5B).w,($200129).l ; save emeralds
		move.b	($FFFFFE5C).w,($20012B).l ; save emeralds
		move.b	#0,(SRAM_access_flag).l		; enable SRAM (required)
		bra.s	Save_to_SRAM_rts
Livesfix:
		move.b	#1,(SRAM_access_flag).l		; enable SRAM (required)
		move.b	#$64,($200001).l ; set lives in sram to 99
		move.b	($200001).l,($20011F).l
		move.b	#0,(SRAM_access_flag).l		; enable SRAM (required)
		bra.w	Save_to_SRAM_rts
Livesfix2:
		move.b	#1,(SRAM_access_flag).l		; enable SRAM (required)
		move.b	#3,($200001).l ; set lives in sram to 99
		move.b	($200001).l,($20011F).l
		move.b	#0,(SRAM_access_flag).l		; enable SRAM (required)
		bra.s	Save_to_SRAM_rts
UnlockLevels:
		move.b	#1,(SRAM_access_flag).l		; enable SRAM (required)
		move.b 	#$01,($20002D).l			; add 1 to number of act in sram
		move.b	#0,(SRAM_access_flag).l		; enable SRAM (required)
;		bra.s	Save_to_SRAM_rts

Save_to_SRAM_rts:
		rts
; End of function Save_to_SRAM


; ---------------------------------------------------------------------------
; Time Attack Record Saving Routine.
; ---------------------------------------------------------------------------
TA_PreReturn:                                                               
        rts
Save_Time_Attack_Data:
Save_Time_Attack:                            ; Main controller depending on zone
        moveq   #0,d0
        move.b  ($FFFFFE10).w,d0
        add.w   d0,d0
        move.w  TA_Index(pc,d0.w),d0
        jmp     TA_Index(pc,d0.w)

TA_Index:
        dc.w TA_GHZ-TA_Index
        dc.w TA_LZ-TA_Index
        dc.w TA_MZ-TA_Index
        dc.w TA_SLZ-TA_Index
        dc.w TA_SYZ-TA_Index
        dc.w TA_SBZ-TA_Index
        dc.w TA_PreReturn-TA_Index
        dc.w TA_ABZ-TA_Index

TA:                             ; Pallet loading routine.
;        move.w  (a1)+,(a2)+
 ;       dbf     d0,TA_PalLoad
        rts

TA_GHZ:
                moveq   #0,d0
                move.b  ($FFFFFE11).w,d0
                add.w   d0,d0
                move.w  TimeAttack_GHZ_Index(pc,d0.w),d0
                jmp     TimeAttack_GHZ_Index(pc,d0.w)

TimeAttack_GHZ_Index: dc.w Save_Time_Attack_GHZ1-TimeAttack_GHZ_Index
                dc.w Save_Time_Attack_GHZ2-TimeAttack_GHZ_Index
                dc.w Save_Time_Attack_GHZ3-TimeAttack_GHZ_Index

;====================================================================

TA_LZ:
                moveq   #0,d0
                move.b  ($FFFFFE11).w,d0
                add.w   d0,d0
                move.w  TimeAttack_LZ_Index(pc,d0.w),d0
                jmp     TimeAttack_LZ_Index(pc,d0.w)

TimeAttack_LZ_Index: dc.w Save_Time_Attack_LZ1-TimeAttack_LZ_Index
                dc.w Save_Time_Attack_LZ2-TimeAttack_LZ_Index
                dc.w Save_Time_Attack_LZ3-TimeAttack_LZ_Index 
                dc.w Save_Time_Attack_LZ4-TimeAttack_LZ_Index 

;====================================================================

TA_MZ:
                moveq   #0,d0
                move.b  ($FFFFFE11).w,d0
                add.w   d0,d0
                move.w  TimeAttack_MZ_Index(pc,d0.w),d0
                jmp     TimeAttack_MZ_Index(pc,d0.w)

TimeAttack_MZ_Index: dc.w Save_Time_Attack_MZ1-TimeAttack_MZ_Index
                dc.w Save_Time_Attack_MZ2-TimeAttack_MZ_Index
                dc.w Save_Time_Attack_MZ3-TimeAttack_MZ_Index 

;====================================================================

TA_SLZ:
                moveq   #0,d0
                move.b  ($FFFFFE11).w,d0
                add.w   d0,d0
                move.w  TimeAttack_SLZ_Index(pc,d0.w),d0
                jmp     TimeAttack_SLZ_Index(pc,d0.w)

TimeAttack_SLZ_Index:        dc.w Save_Time_Attack_SLZ1-TimeAttack_SLZ_Index
                dc.w Save_Time_Attack_SLZ2-TimeAttack_SLZ_Index
                dc.w Save_Time_Attack_SLZ3-TimeAttack_SLZ_Index 

;====================================================================

TA_SYZ:
                moveq   #0,d0
                move.b  ($FFFFFE11).w,d0
                add.w   d0,d0
                move.w  TimeAttack_SYZ_Index(pc,d0.w),d0
                jmp     TimeAttack_SYZ_Index(pc,d0.w)

TimeAttack_SYZ_Index:        dc.w Save_Time_Attack_SYZ1-TimeAttack_SYZ_Index
                dc.w Save_Time_Attack_SYZ2-TimeAttack_SYZ_Index
                dc.w Save_Time_Attack_SYZ3-TimeAttack_SYZ_Index 

;====================================================================

TA_SBZ:
                moveq   #0,d0
                move.b  ($FFFFFE11).w,d0
                add.w   d0,d0
                move.w  TimeAttack_SBZ_Index(pc,d0.w),d0
                jmp     TimeAttack_SBZ_Index(pc,d0.w)

TimeAttack_SBZ_Index:        dc.w Save_Time_Attack_SBZ1-TimeAttack_SBZ_Index
                dc.w Save_Time_Attack_SBZ2-TimeAttack_SBZ_Index
                dc.w Save_Time_Attack_SBZ3-TimeAttack_SBZ_Index 

;====================================================================

TA_ABZ:
                moveq   #0,d0
                move.b  ($FFFFFE11).w,d0
                add.w   d0,d0
                move.w  TimeAttack_ABZ_Index(pc,d0.w),d0
                jmp     TimeAttack_ABZ_Index(pc,d0.w)

TimeAttack_ABZ_Index:        dc.w Save_Time_Attack_ABZ1-TimeAttack_ABZ_Index
                dc.w Save_Time_Attack_ABZ2-TimeAttack_ABZ_Index
                dc.w Save_Time_Attack_ABZ3-TimeAttack_ABZ_Index 
				
;====================================================================
; Dynamic TimeAttack_ on a zone basis:
;====================================================================

Save_Time_Attack_GHZ1:
		moveq	#0,d1
		move.l	($FFFFFE22).w,d1
		tst.l	($FFFFF300).w
		beq.s	Save_Time_Attack_GHZ1_2
		cmp.l	($FFFFF300).w,d1
		bgt.s	Save_Time_Attack_GHZ1_3
Save_Time_Attack_GHZ1_2:
		move.b	#1,(SRAM_access_flag).l		; enable SRAM (required)
		move.b	($FFFFFE22).w,($200031).l
		move.b	($FFFFFE23).w,($200033).l
		move.b	($FFFFFE24).w,($200035).l
		move.b	($FFFFFE25).w,($200037).l
		move.b	#0,(SRAM_access_flag).l		; enable SRAM (required)
Save_Time_Attack_GHZ1_3:
        rts
                
; --------------------------------------------------------------------

Save_Time_Attack_GHZ2:
		moveq	#0,d1
		move.l	($FFFFFE22).w,d1
		tst.l	($FFFFF304).w
		beq.s	Save_Time_Attack_GHZ2_2
		cmp.l	($FFFFF304).w,d1
		bgt.s	Save_Time_Attack_GHZ2_3
Save_Time_Attack_GHZ2_2:
		move.b	#1,(SRAM_access_flag).l		; enable SRAM (required)
		move.b	($FFFFFE22).w,($200039).l
		move.b	($FFFFFE23).w,($20003B).l
		move.b	($FFFFFE24).w,($20003D).l
		move.b	($FFFFFE25).w,($20003F).l
		move.b	#0,(SRAM_access_flag).l		; enable SRAM (required)
Save_Time_Attack_GHZ2_3:
        rts

; --------------------------------------------------------------------

Save_Time_Attack_GHZ3:
		moveq	#0,d1
		move.l	($FFFFFE22).w,d1
		tst.l	($FFFFF308).w
		beq.s	Save_Time_Attack_GHZ3_2
		cmp.l	($FFFFF308).w,d1
		bgt.s	Save_Time_Attack_GHZ3_3
Save_Time_Attack_GHZ3_2:
		move.b	#1,(SRAM_access_flag).l		; enable SRAM (required)
		move.b	($FFFFFE22).w,($200041).l
		move.b	($FFFFFE23).w,($200043).l
		move.b	($FFFFFE24).w,($200045).l
		move.b	($FFFFFE25).w,($200047).l
		move.b	#0,(SRAM_access_flag).l		; enable SRAM (required)
Save_Time_Attack_GHZ3_3:
        rts
                
; ====================================================================

Save_Time_Attack_MZ1:
		moveq	#0,d1
		move.l	($FFFFFE22).w,d1
		tst.l	($FFFFF30C).w
		beq.s	Save_Time_Attack_MZ1_2
		cmp.l	($FFFFF30C).w,d1
		bgt.s	Save_Time_Attack_MZ1_3
Save_Time_Attack_MZ1_2:
		move.b	#1,(SRAM_access_flag).l		; enable SRAM (required)
		move.b	($FFFFFE22).w,($200049).l
		move.b	($FFFFFE23).w,($20004B).l
		move.b	($FFFFFE24).w,($20004D).l
		move.b	($FFFFFE25).w,($20004F).l
		move.b	#0,(SRAM_access_flag).l		; enable SRAM (required)
Save_Time_Attack_MZ1_3:
        rts

; --------------------------------------------------------------------

Save_Time_Attack_MZ2:
		moveq	#0,d1
		move.l	($FFFFFE22).w,d1
		tst.l	($FFFFF310).w
		beq.s	Save_Time_Attack_MZ2_2
		cmp.l	($FFFFF310).w,d1
		bgt.s	Save_Time_Attack_MZ2_3
Save_Time_Attack_MZ2_2:
		move.b	#1,(SRAM_access_flag).l		; enable SRAM (required)
		move.b	($FFFFFE22).w,($200051).l
		move.b	($FFFFFE23).w,($200053).l
		move.b	($FFFFFE24).w,($200055).l
		move.b	($FFFFFE25).w,($200057).l
		move.b	#0,(SRAM_access_flag).l		; enable SRAM (required)
Save_Time_Attack_MZ2_3:
        rts

; --------------------------------------------------------------------

Save_Time_Attack_MZ3:
		moveq	#0,d1
		move.l	($FFFFFE22).w,d1
		tst.l	($FFFFF314).w
		beq.s	Save_Time_Attack_MZ3_2
		cmp.l	($FFFFF314).w,d1
		bgt.s	Save_Time_Attack_MZ3_3
Save_Time_Attack_MZ3_2:
		move.b	#1,(SRAM_access_flag).l		; enable SRAM (required)
		move.b	($FFFFFE22).w,($200059).l
		move.b	($FFFFFE23).w,($20005B).l
		move.b	($FFFFFE24).w,($20005D).l
		move.b	($FFFFFE25).w,($20005F).l
		move.b	#0,(SRAM_access_flag).l		; enable SRAM (required)
Save_Time_Attack_MZ3_3:
        rts
                
; ====================================================================

Save_Time_Attack_SYZ1:
		moveq	#0,d1
		move.l	($FFFFFE22).w,d1
		tst.l	($FFFFF318).w
		beq.s	Save_Time_Attack_SYZ1_2
		cmp.l	($FFFFF318).w,d1
		bgt.s	Save_Time_Attack_SYZ1_3
Save_Time_Attack_SYZ1_2:
		move.b	#1,(SRAM_access_flag).l		; enable SRAM (required)
		move.b	($FFFFFE22).w,($200061).l
		move.b	($FFFFFE23).w,($200063).l
		move.b	($FFFFFE24).w,($200065).l
		move.b	($FFFFFE25).w,($200067).l
		move.b	#0,(SRAM_access_flag).l		; enable SRAM (required)
Save_Time_Attack_SYZ1_3:
        rts

; --------------------------------------------------------------------

Save_Time_Attack_SYZ2:
		moveq	#0,d1
		move.l	($FFFFFE22).w,d1
		tst.l	($FFFFF31C).w
		beq.s	Save_Time_Attack_SYZ2_2
		cmp.l	($FFFFF31C).w,d1
		bgt.s	Save_Time_Attack_SYZ2_3
Save_Time_Attack_SYZ2_2:
		move.b	#1,(SRAM_access_flag).l		; enable SRAM (required)
		move.b	($FFFFFE22).w,($200069).l
		move.b	($FFFFFE23).w,($20006B).l
		move.b	($FFFFFE24).w,($20006D).l
		move.b	($FFFFFE25).w,($20006F).l
		move.b	#0,(SRAM_access_flag).l		; enable SRAM (required)
Save_Time_Attack_SYZ2_3:
        rts

; --------------------------------------------------------------------

Save_Time_Attack_SYZ3:
		moveq	#0,d1
		move.l	($FFFFFE22).w,d1
		tst.l	($FFFFF320).w
		beq.s	Save_Time_Attack_SYZ3_2
		cmp.l	($FFFFF320).w,d1
		bgt.s	Save_Time_Attack_SYZ3_3
Save_Time_Attack_SYZ3_2:
		move.b	#1,(SRAM_access_flag).l		; enable SRAM (required)
		move.b	($FFFFFE22).w,($200071).l
		move.b	($FFFFFE23).w,($200073).l
		move.b	($FFFFFE24).w,($200075).l
		move.b	($FFFFFE25).w,($200077).l
		move.b	#0,(SRAM_access_flag).l		; enable SRAM (required)
Save_Time_Attack_SYZ3_3:
        rts
                
; ====================================================================

Save_Time_Attack_LZ1:
		moveq	#0,d1
		move.l	($FFFFFE22).w,d1
		tst.l	($FFFFF324).w
		beq.s	Save_Time_Attack_LZ1_2
		cmp.l	($FFFFF324).w,d1
		bgt.s	Save_Time_Attack_LZ1_3
Save_Time_Attack_LZ1_2:
		move.b	#1,(SRAM_access_flag).l		; enable SRAM (required)
		move.b	($FFFFFE22).w,($200079).l
		move.b	($FFFFFE23).w,($20007B).l
		move.b	($FFFFFE24).w,($20007D).l
		move.b	($FFFFFE25).w,($20007F).l
		move.b	#0,(SRAM_access_flag).l		; enable SRAM (required)
Save_Time_Attack_LZ1_3:
        rts

; --------------------------------------------------------------------

Save_Time_Attack_LZ2:
		moveq	#0,d1
		move.l	($FFFFFE22).w,d1
		tst.l	($FFFFF328).w
		beq.s	Save_Time_Attack_LZ2_2
		cmp.l	($FFFFF328).w,d1
		bgt.s	Save_Time_Attack_LZ2_3
Save_Time_Attack_LZ2_2:
		move.b	#1,(SRAM_access_flag).l		; enable SRAM (required)
		move.b	($FFFFFE22).w,($200081).l
		move.b	($FFFFFE23).w,($200083).l
		move.b	($FFFFFE24).w,($200085).l
		move.b	($FFFFFE25).w,($200087).l
		move.b	#0,(SRAM_access_flag).l		; enable SRAM (required)
Save_Time_Attack_LZ2_3:
        rts

; --------------------------------------------------------------------

Save_Time_Attack_LZ3:
		moveq	#0,d1
		move.l	($FFFFFE22).w,d1
		tst.l	($FFFFF32C).w
		beq.s	Save_Time_Attack_LZ3_2
		cmp.l	($FFFFF32C).w,d1
		bgt.s	Save_Time_Attack_LZ3_3
Save_Time_Attack_LZ3_2:
		move.b	#1,(SRAM_access_flag).l		; enable SRAM (required)
		move.b	($FFFFFE22).w,($200089).l
		move.b	($FFFFFE23).w,($20008B).l
		move.b	($FFFFFE24).w,($20008D).l
		move.b	($FFFFFE25).w,($20008F).l
		move.b	#0,(SRAM_access_flag).l		; enable SRAM (required)
Save_Time_Attack_LZ3_3:
        rts
		
Save_Time_Attack_LZ4:
		moveq	#0,d1
		move.l	($FFFFFE22).w,d1
		tst.l	($FFFFF330).w
		beq.s	Save_Time_Attack_LZ4_2
		cmp.l	($FFFFF330).w,d1
		bgt.s	Save_Time_Attack_LZ4_3
Save_Time_Attack_LZ4_2:
		move.b	#1,(SRAM_access_flag).l		; enable SRAM (required)
		move.b	($FFFFFE22).w,($200091).l
		move.b	($FFFFFE23).w,($200093).l
		move.b	($FFFFFE24).w,($200095).l
		move.b	($FFFFFE25).w,($200097).l
		move.b	#0,(SRAM_access_flag).l		; enable SRAM (required)
Save_Time_Attack_LZ4_3:
        rts
                
; ====================================================================

Save_Time_Attack_SLZ1:
		moveq	#0,d1
		move.l	($FFFFFE22).w,d1
		tst.l	($FFFFF334).w
		beq.s	Save_Time_Attack_SLZ1_2
		cmp.l	($FFFFF334).w,d1
		bgt.s	Save_Time_Attack_SLZ1_3
Save_Time_Attack_SLZ1_2:
		move.b	#1,(SRAM_access_flag).l		; enable SRAM (required)
		move.b	($FFFFFE22).w,($200099).l
		move.b	($FFFFFE23).w,($20009B).l
		move.b	($FFFFFE24).w,($20009D).l
		move.b	($FFFFFE25).w,($20009F).l
		move.b	#0,(SRAM_access_flag).l		; enable SRAM (required)
Save_Time_Attack_SLZ1_3:
        rts

; --------------------------------------------------------------------

Save_Time_Attack_SLZ2:
		moveq	#0,d1
		move.l	($FFFFFE22).w,d1
		tst.l	($FFFFF338).w
		beq.s	Save_Time_Attack_SLZ2_2
		cmp.l	($FFFFF338).w,d1
		bgt.s	Save_Time_Attack_SLZ2_3
Save_Time_Attack_SLZ2_2:
		move.b	#1,(SRAM_access_flag).l		; enable SRAM (required)
		move.b	($FFFFFE22).w,($2000A1).l
		move.b	($FFFFFE23).w,($2000A3).l
		move.b	($FFFFFE24).w,($2000A5).l
		move.b	($FFFFFE25).w,($2000A7).l
		move.b	#0,(SRAM_access_flag).l		; enable SRAM (required)
Save_Time_Attack_SLZ2_3
        rts

; --------------------------------------------------------------------

Save_Time_Attack_SLZ3:
		moveq	#0,d1
		move.l	($FFFFFE22).w,d1
		tst.l	($FFFFF33C).w
		beq.s	Save_Time_Attack_SLZ3_2
		cmp.l	($FFFFF33C).w,d1
		bgt.s	Save_Time_Attack_SLZ3_3
Save_Time_Attack_SLZ3_2:
		move.b	#1,(SRAM_access_flag).l		; enable SRAM (required)
		move.b	($FFFFFE22).w,($2000A9).l
		move.b	($FFFFFE23).w,($2000AB).l
		move.b	($FFFFFE24).w,($2000AD).l
		move.b	($FFFFFE25).w,($2000AF).l
		move.b	#0,(SRAM_access_flag).l		; enable SRAM (required)
Save_Time_Attack_SLZ3_3:
        rts
                
; ====================================================================

Save_Time_Attack_SBZ1:
		moveq	#0,d1
		move.l	($FFFFFE22).w,d1
		tst.l	($FFFFF340).w
		beq.s	Save_Time_Attack_SBZ1_2
		cmp.l	($FFFFF340).w,d1
		bgt.s	Save_Time_Attack_SBZ1_3
Save_Time_Attack_SBZ1_2:
		move.b	#1,(SRAM_access_flag).l		; enable SRAM (required)
		move.b	($FFFFFE22).w,($2000B1).l
		move.b	($FFFFFE23).w,($2000B3).l
		move.b	($FFFFFE24).w,($2000B5).l
		move.b	($FFFFFE25).w,($2000B7).l
		move.b	#0,(SRAM_access_flag).l		; enable SRAM (required)
Save_Time_Attack_SBZ1_3:
        rts

; --------------------------------------------------------------------

Save_Time_Attack_SBZ2:
		moveq	#0,d1
		move.l	($FFFFFE22).w,d1
		tst.l	($FFFFF344).w
		beq.s	Save_Time_Attack_SBZ2_2
		cmp.l	($FFFFF344).w,d1
		bgt.s	Save_Time_Attack_SBZ2_3
Save_Time_Attack_SBZ2_2:
		move.b	#1,(SRAM_access_flag).l		; enable SRAM (required)
		move.b	($FFFFFE22).w,($2000B9).l
		move.b	($FFFFFE23).w,($2000BB).l
		move.b	($FFFFFE24).w,($2000BD).l
		move.b	($FFFFFE25).w,($2000BF).l
		move.b	#0,(SRAM_access_flag).l		; enable SRAM (required)
Save_Time_Attack_SBZ2_3:
        rts

; --------------------------------------------------------------------

Save_Time_Attack_SBZ3:	
		moveq	#0,d1
		move.l	($FFFFFE22).w,d1
		tst.l	($FFFFF348).w
		beq.s	Save_Time_Attack_SBZ3_2
		cmp.l	($FFFFF348).w,d1
		bgt.s	Save_Time_Attack_SBZ3_3
Save_Time_Attack_SBZ3_2:
		move.b	#1,(SRAM_access_flag).l		; enable SRAM (required)
		move.b	($FFFFFE22).w,($2000C1).l
		move.b	($FFFFFE23).w,($2000C3).l
		move.b	($FFFFFE24).w,($2000C5).l
		move.b	($FFFFFE25).w,($2000C7).l
		move.b	#0,(SRAM_access_flag).l		; enable SRAM (required)
Save_Time_Attack_SBZ3_3:
        rts

; ====================================================================

Save_Time_Attack_ABZ1:
        rts

; --------------------------------------------------------------------

Save_Time_Attack_ABZ2:
        rts

; --------------------------------------------------------------------

Save_Time_Attack_ABZ3:
        rts
		
; ====================================================================
		
