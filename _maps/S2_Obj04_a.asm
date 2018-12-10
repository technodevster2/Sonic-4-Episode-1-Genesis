; --------------------------------------------------------------------------------
; Sprite mappings - output from SonMapEd - Sonic 1 format
; --------------------------------------------------------------------------------

SME_B_v8d:	
		dc.w SME_B_v8d_C-SME_B_v8d, SME_B_v8d_1C-SME_B_v8d	
		dc.w SME_B_v8d_2C-SME_B_v8d, SME_B_v8d_3C-SME_B_v8d	
		dc.w SME_B_v8d_5B-SME_B_v8d, SME_B_v8d_7A-SME_B_v8d	
SME_B_v8d_C:	dc.b 3	
		dc.b $F8, $D, 0, 0, $A0	
		dc.b $F8, $D, 0, 0, $E0	
		dc.b $F8, $D, 0, 0, $20	
SME_B_v8d_1C:	dc.b 3	
		dc.b $F8, $D, 0, 8, $A0	
		dc.b $F8, $D, 0, 8, $E0	
		dc.b $F8, $D, 0, 8, $20	
SME_B_v8d_2C:	dc.b 3	
		dc.b $F8, $D, 0, $10, $A0	
		dc.b $F8, $D, 0, $10, $E0	
		dc.b $F8, $D, 0, $10, $20	
SME_B_v8d_3C:	dc.b 6	
		dc.b $F8, $D, 0, 0, $A0	
		dc.b $F8, $D, 0, 8, $C0	
		dc.b $F8, $D, 0, 0, $E0	
		dc.b $F8, $D, 0, 8, 0	
		dc.b $F8, $D, 0, 0, $20	
		dc.b $F8, $D, 0, 8, $40	
SME_B_v8d_5B:	dc.b 6	
		dc.b $F8, $D, 0, 8, $A0	
		dc.b $F8, $D, 0, $10, $C0	
		dc.b $F8, $D, 0, 8, $E0	
		dc.b $F8, $D, 0, $10, 0	
		dc.b $F8, $D, 0, 8, $20	
		dc.b $F8, $D, 0, $10, $40	
SME_B_v8d_7A:	dc.b 6	
		dc.b $F8, $D, 0, $10, $A0	
		dc.b $F8, $D, 0, 8, $C0	
		dc.b $F8, $D, 0, $10, $E0	
		dc.b $F8, $D, 0, 8, 0	
		dc.b $F8, $D, 0, $10, $20	
		dc.b $F8, $D, 0, 8, $40	
		even