; --------------------------------------------------------------------------------
; Sprite mappings - output from SonMapEd - Sonic 1 format
; --------------------------------------------------------------------------------

SME_Bs9WQ:	
		dc.w SME_Bs9WQ_E-SME_Bs9WQ, SME_Bs9WQ_14-SME_Bs9WQ	
		dc.w SME_Bs9WQ_1A-SME_Bs9WQ, SME_Bs9WQ_20-SME_Bs9WQ	
		dc.w SME_Bs9WQ_2B-SME_Bs9WQ, SME_Bs9WQ_31-SME_Bs9WQ	
		dc.w SME_Bs9WQ_3C-SME_Bs9WQ	
SME_Bs9WQ_E:	dc.b 1	
		dc.b $F8, 5, 0, 2, $F8	
SME_Bs9WQ_14:	dc.b 1	
		dc.b $F8, 5, 0, 6, $F8	
SME_Bs9WQ_1A:	dc.b 1	
		dc.b $F8, 5, 0, $A, $F8	
SME_Bs9WQ_20:	dc.b 2	
		dc.b $F8, 1, 0, 0, $F8	
		dc.b $F8, 5, 0, $E, 0	
SME_Bs9WQ_2B:	dc.b 1	
		dc.b $F8, 1, 0, 0, $FC	
SME_Bs9WQ_31:	dc.b 2	
		dc.b $F8, 5, 0, 2, $F0	
		dc.b $F8, 5, 0, $E, 0	
SME_Bs9WQ_3C:	dc.b 2	
		dc.b $F8, 5, 0, $A, $F0	
		dc.b $F8, 5, 0, $E, 0	
		even