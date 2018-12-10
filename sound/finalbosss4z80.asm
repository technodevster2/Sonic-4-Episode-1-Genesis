Final_Boss_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     Final_Boss_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $4B

	smpsHeaderDAC       Final_Boss_DAC
	smpsHeaderFM        Final_Boss_FM1,	$00, $10
	smpsHeaderFM        Final_Boss_FM2,	$F4, $10
	smpsHeaderFM        Final_Boss_FM3,	$F4, $10
	smpsHeaderFM        Final_Boss_FM4,	$F4, $14
	smpsHeaderFM        Final_Boss_FM5,	$00, $10
	smpsHeaderPSG       Final_Boss_PSG1,	$D0, $02, $00, $00
	smpsHeaderPSG       Final_Boss_PSG2,	$D0, $02, $00, $00
	smpsHeaderPSG       Final_Boss_PSG3,	$DC, $02, $00, $00

; FM1 Data
Final_Boss_FM1:
	smpsCall            Final_Boss_Call23
	smpsCall            Final_Boss_Call24

Final_Boss_Jump05:
	smpsCall            Final_Boss_Call25
	smpsCall            Final_Boss_Call24
	smpsCall            Final_Boss_Call26
	smpsCall            Final_Boss_Call27
	smpsCall            Final_Boss_Call24
	smpsCall            Final_Boss_Call25
	smpsCall            Final_Boss_Call24
	smpsCall            Final_Boss_Call26
	smpsCall            Final_Boss_Call28
	smpsCall            Final_Boss_Call29
	smpsCall            Final_Boss_Call2A
	smpsCall            Final_Boss_Call25
	smpsCall            Final_Boss_Call24
	smpsCall            Final_Boss_Call26
	smpsCall            Final_Boss_Call27
	smpsCall            Final_Boss_Call24
	smpsCall            Final_Boss_Call25
	smpsCall            Final_Boss_Call24
	smpsCall            Final_Boss_Call26
	smpsCall            Final_Boss_Call28
	smpsCall            Final_Boss_Call29
	smpsCall            Final_Boss_Call2A
	smpsJump            Final_Boss_Jump05

; FM2 Data
Final_Boss_FM2:
	smpsCall            Final_Boss_Call1B
	smpsCall            Final_Boss_Call1C

Final_Boss_Jump04:
	smpsCall            Final_Boss_Call1D
	smpsCall            Final_Boss_Call1C
	smpsCall            Final_Boss_Call1E
	smpsCall            Final_Boss_Call1F
	smpsCall            Final_Boss_Call1C
	smpsCall            Final_Boss_Call1D
	smpsCall            Final_Boss_Call1C
	smpsCall            Final_Boss_Call1E
	smpsCall            Final_Boss_Call20
	smpsCall            Final_Boss_Call21
	smpsCall            Final_Boss_Call22
	smpsCall            Final_Boss_Call1D
	smpsCall            Final_Boss_Call1C
	smpsCall            Final_Boss_Call1E
	smpsCall            Final_Boss_Call1F
	smpsCall            Final_Boss_Call1C
	smpsCall            Final_Boss_Call1D
	smpsCall            Final_Boss_Call1C
	smpsCall            Final_Boss_Call1E
	smpsCall            Final_Boss_Call20
	smpsCall            Final_Boss_Call21
	smpsCall            Final_Boss_Call22
	smpsJump            Final_Boss_Jump04

; FM3 Data
Final_Boss_FM3:
	smpsCall            Final_Boss_Call13
	smpsCall            Final_Boss_Call14

Final_Boss_Jump03:
	smpsCall            Final_Boss_Call15
	smpsCall            Final_Boss_Call14
	smpsCall            Final_Boss_Call16
	smpsCall            Final_Boss_Call17
	smpsCall            Final_Boss_Call14
	smpsCall            Final_Boss_Call15
	smpsCall            Final_Boss_Call14
	smpsCall            Final_Boss_Call16
	smpsCall            Final_Boss_Call18
	smpsCall            Final_Boss_Call19
	smpsCall            Final_Boss_Call1A
	smpsCall            Final_Boss_Call15
	smpsCall            Final_Boss_Call14
	smpsCall            Final_Boss_Call16
	smpsCall            Final_Boss_Call17
	smpsCall            Final_Boss_Call14
	smpsCall            Final_Boss_Call15
	smpsCall            Final_Boss_Call14
	smpsCall            Final_Boss_Call16
	smpsCall            Final_Boss_Call18
	smpsCall            Final_Boss_Call19
	smpsCall            Final_Boss_Call1A
	smpsJump            Final_Boss_Jump03

; FM4 Data
Final_Boss_FM4:
	smpsCall            Final_Boss_Call0D
	smpsCall            Final_Boss_Call0E

Final_Boss_Jump02:
	smpsCall            Final_Boss_Call0F
	smpsCall            Final_Boss_Call10
	smpsCall            Final_Boss_Call0F
	smpsCall            Final_Boss_Call0D
	smpsCall            Final_Boss_Call10
	smpsCall            Final_Boss_Call0F
	smpsCall            Final_Boss_Call10
	smpsCall            Final_Boss_Call0F
	smpsCall            Final_Boss_Call0D
	smpsCall            Final_Boss_Call11
	smpsCall            Final_Boss_Call12
	smpsCall            Final_Boss_Call0F
	smpsCall            Final_Boss_Call10
	smpsCall            Final_Boss_Call0F
	smpsCall            Final_Boss_Call0D
	smpsCall            Final_Boss_Call10
	smpsCall            Final_Boss_Call0F
	smpsCall            Final_Boss_Call10
	smpsCall            Final_Boss_Call0F
	smpsCall            Final_Boss_Call0D
	smpsCall            Final_Boss_Call11
	smpsCall            Final_Boss_Call12
	smpsJump            Final_Boss_Jump02

; FM5 Data
Final_Boss_FM5:
	smpsCall            Final_Boss_Call07
	smpsCall            Final_Boss_Call08

Final_Boss_Jump01:
	smpsCall            Final_Boss_Call09
	smpsCall            Final_Boss_Call08
	smpsCall            Final_Boss_Call09
	smpsCall            Final_Boss_Call07
	smpsCall            Final_Boss_Call08
	smpsCall            Final_Boss_Call09
	smpsCall            Final_Boss_Call08
	smpsCall            Final_Boss_Call09
	smpsCall            Final_Boss_Call0A
	smpsCall            Final_Boss_Call0B
	smpsCall            Final_Boss_Call0C
	smpsCall            Final_Boss_Call09
	smpsCall            Final_Boss_Call08
	smpsCall            Final_Boss_Call09
	smpsCall            Final_Boss_Call07
	smpsCall            Final_Boss_Call08
	smpsCall            Final_Boss_Call09
	smpsCall            Final_Boss_Call08
	smpsCall            Final_Boss_Call09
	smpsCall            Final_Boss_Call0A
	smpsCall            Final_Boss_Call0B
	smpsCall            Final_Boss_Call0C
	smpsJump            Final_Boss_Jump01

; PSG1 Data
Final_Boss_PSG1:
	smpsCall            Final_Boss_Call39
	smpsCall            Final_Boss_Call3A

Final_Boss_Jump08:
	smpsCall            Final_Boss_Call3B
	smpsCall            Final_Boss_Call3C
	smpsCall            Final_Boss_Call3B
	smpsCall            Final_Boss_Call3D
	smpsCall            Final_Boss_Call3C
	smpsCall            Final_Boss_Call3B
	smpsCall            Final_Boss_Call3C
	smpsCall            Final_Boss_Call3B
	smpsCall            Final_Boss_Call3D
	smpsCall            Final_Boss_Call3E
	smpsCall            Final_Boss_Call3F
	smpsCall            Final_Boss_Call3B
	smpsCall            Final_Boss_Call3C
	smpsCall            Final_Boss_Call3B
	smpsCall            Final_Boss_Call3D
	smpsCall            Final_Boss_Call3C
	smpsCall            Final_Boss_Call3B
	smpsCall            Final_Boss_Call3C
	smpsCall            Final_Boss_Call3B
	smpsCall            Final_Boss_Call3D
	smpsCall            Final_Boss_Call3E
	smpsCall            Final_Boss_Call3F
	smpsJump            Final_Boss_Jump08

; PSG2 Data
Final_Boss_PSG2:
	smpsCall            Final_Boss_Call32
	smpsCall            Final_Boss_Call33

Final_Boss_Jump07:
	smpsCall            Final_Boss_Call34
	smpsCall            Final_Boss_Call35
	smpsCall            Final_Boss_Call34
	smpsCall            Final_Boss_Call36
	smpsCall            Final_Boss_Call35
	smpsCall            Final_Boss_Call34
	smpsCall            Final_Boss_Call35
	smpsCall            Final_Boss_Call34
	smpsCall            Final_Boss_Call36
	smpsCall            Final_Boss_Call37
	smpsCall            Final_Boss_Call38
	smpsCall            Final_Boss_Call34
	smpsCall            Final_Boss_Call35
	smpsCall            Final_Boss_Call34
	smpsCall            Final_Boss_Call36
	smpsCall            Final_Boss_Call35
	smpsCall            Final_Boss_Call34
	smpsCall            Final_Boss_Call35
	smpsCall            Final_Boss_Call34
	smpsCall            Final_Boss_Call36
	smpsCall            Final_Boss_Call37
	smpsCall            Final_Boss_Call38
	smpsJump            Final_Boss_Jump07

; PSG3 Data
Final_Boss_PSG3:
	smpsCall            Final_Boss_Call2B
	smpsCall            Final_Boss_Call2C

Final_Boss_Jump06:
	smpsCall            Final_Boss_Call2D
	smpsCall            Final_Boss_Call2C
	smpsCall            Final_Boss_Call2E
	smpsCall            Final_Boss_Call2F
	smpsCall            Final_Boss_Call2C
	smpsCall            Final_Boss_Call2D
	smpsCall            Final_Boss_Call2C
	smpsCall            Final_Boss_Call2E
	smpsCall            Final_Boss_Call2F
	smpsCall            Final_Boss_Call30
	smpsCall            Final_Boss_Call31
	smpsCall            Final_Boss_Call2D
	smpsCall            Final_Boss_Call2C
	smpsCall            Final_Boss_Call2E
	smpsCall            Final_Boss_Call2F
	smpsCall            Final_Boss_Call2C
	smpsCall            Final_Boss_Call2D
	smpsCall            Final_Boss_Call2C
	smpsCall            Final_Boss_Call2E
	smpsCall            Final_Boss_Call2F
	smpsCall            Final_Boss_Call30
	smpsCall            Final_Boss_Call31
	smpsJump            Final_Boss_Jump06

; DAC Data
Final_Boss_DAC:
	smpsCall            Final_Boss_Call00
	smpsCall            Final_Boss_Call01

Final_Boss_Jump00:
	smpsCall            Final_Boss_Call02
	smpsCall            Final_Boss_Call01
	smpsCall            Final_Boss_Call02
	smpsCall            Final_Boss_Call00
	smpsCall            Final_Boss_Call01
	smpsCall            Final_Boss_Call02
	smpsCall            Final_Boss_Call01
	smpsCall            Final_Boss_Call02
	smpsCall            Final_Boss_Call00
	smpsCall            Final_Boss_Call03
	smpsCall            Final_Boss_Call04
	smpsCall            Final_Boss_Call02
	smpsCall            Final_Boss_Call01
	smpsCall            Final_Boss_Call02
	smpsCall            Final_Boss_Call00
	smpsCall            Final_Boss_Call01
	smpsCall            Final_Boss_Call02
	smpsCall            Final_Boss_Call01
	smpsCall            Final_Boss_Call02
	smpsCall            Final_Boss_Call05
	smpsCall            Final_Boss_Call06
	smpsCall            Final_Boss_Call04
	smpsJump            Final_Boss_Jump00

Final_Boss_Call23:
	dc.b	smpsNoAttack, $70
	smpsSetvoice        $02
	dc.b	nA2, $0C, nRst, $04
	smpsReturn

Final_Boss_Call24:
	smpsSetvoice        $02
	dc.b	nA2, $18, nRst, $08, nB2, $10, nC3, $0C, nRst, $04, nG2, $10
	dc.b	nA2, $08, nB2, nC3, $10, nD3
	smpsReturn

Final_Boss_Call25:
	smpsSetvoice        $02
	dc.b	nD2, $18, nRst, $08, nF2, $18, nRst, $08, nF2, $10, nG2, $08
	dc.b	nG3, nC3, $10, nA2, $0C, nRst, $04
	smpsReturn

Final_Boss_Call26:
	smpsSetvoice        $02
	dc.b	nD2, $18, nRst, $08, nF2, $18, nRst, $08, nF2, $10, nG2, $08
	dc.b	nG3, nC3, $10, nE3, $08, nRst
	smpsReturn

Final_Boss_Call27:
	smpsSetvoice        $02
	dc.b	nB2, $10, nE3, $08, nRst, nB2, $10, nEb3, $08, nRst, nBb2, $10
	dc.b	nD3, $08, nRst, nC3, $10, nA2, $0C, nRst, $04
	smpsReturn

Final_Boss_Call28:
	smpsSetvoice        $02
	dc.b	nB2, $10, nE3, $08, nRst, nB2, $10, nEb3, $08, nRst, nBb2, $10
	dc.b	nD3, $08, nRst, nC3, $10, nRst
	smpsReturn

Final_Boss_Call29:
	dc.b	smpsNoAttack, $30
	smpsSetvoice        $02
	dc.b	nA2, $0C, nRst, $04, nA2, $18, nRst, $08, nB2, $10, nC3, $0C
	dc.b	nRst, $04
	smpsReturn

Final_Boss_Call2A:
	smpsSetvoice        $02
	dc.b	nG2, $10, nA2, $08, nB2, nC3, $10, nD3
	smpsReturn

Final_Boss_Call1B:
	dc.b	smpsNoAttack, $70
	smpsSetvoice        $00
	dc.b	nA5, $10
	smpsReturn

Final_Boss_Call1C:
	smpsSetvoice        $00
	dc.b	nE5, $10, nRst, nA5, nG5, nD5, nRst, nG5, nFs5
	smpsReturn

Final_Boss_Call1D:
	dc.b	smpsNoAttack, $10
	smpsSetvoice        $00
	dc.b	nG5, nF5, $20, nE5, $10, nD5, $20, nA5, $10
	smpsReturn

Final_Boss_Call1E:
	dc.b	smpsNoAttack, $10
	smpsSetvoice        $00
	dc.b	nG5, nF5, $20, nE5, $10, nD5, $20, nRst, $10
	smpsReturn

Final_Boss_Call1F:
	dc.b	smpsNoAttack, nRst, $70
	smpsSetvoice        $00
	dc.b	nA5, $10
	smpsReturn

Final_Boss_Call20:
	dc.b	smpsNoAttack, $7F, smpsNoAttack, $01
	smpsReturn

Final_Boss_Call21:
	dc.b	smpsNoAttack, $30
	smpsSetvoice        $00
	dc.b	nA5, $10, nE5, nRst, nA5, nG5
	smpsReturn

Final_Boss_Call22:
	smpsSetvoice        $00
	dc.b	nD5, $10, nRst, nG5, nFs5
	smpsReturn

Final_Boss_Call13:
	dc.b	smpsNoAttack, $70
	smpsSetvoice        $00
	dc.b	nE5, $10
	smpsReturn

Final_Boss_Call14:
	smpsSetvoice        $00
	dc.b	nC5, $10, nRst, nE5, nC5, nG4, nRst, nC5, nD5
	smpsReturn

Final_Boss_Call15:
	dc.b	smpsNoAttack, $10
	smpsSetvoice        $00
	dc.b	nE5, nC5, $20, nA4, $10, nB4, $20, nE5, $10
	smpsReturn

Final_Boss_Call16:
	dc.b	smpsNoAttack, $10
	smpsSetvoice        $00
	dc.b	nE5, nC5, $20, nA4, $10, nB4, $20, nRst, $10
	smpsReturn

Final_Boss_Call17:
	dc.b	smpsNoAttack, nRst, $70
	smpsSetvoice        $00
	dc.b	nE5, $10
	smpsReturn

Final_Boss_Call18:
	dc.b	smpsNoAttack, $7F, smpsNoAttack, $01
	smpsReturn

Final_Boss_Call19:
	dc.b	smpsNoAttack, $30
	smpsSetvoice        $00
	dc.b	nE5, $10, nC5, nRst, nE5, nC5
	smpsReturn

Final_Boss_Call1A:
	smpsSetvoice        $00
	dc.b	nG4, $10, nRst, nC5, nD5
	smpsReturn

Final_Boss_Call0D:
	dc.b	smpsNoAttack, $7F, smpsNoAttack, $01
	smpsReturn

Final_Boss_Call0E:
	smpsSetvoice        $00
	dc.b	nA5, $10, nE5, nRst, nA5, nG5, nD5, nRst, nG5
	smpsReturn

Final_Boss_Call0F:
	smpsSetvoice        $00
	dc.b	nFs5, $20, nG5, $10, nF5, $20, nE5, $10, nD5, nRst
	smpsReturn

Final_Boss_Call10:
	smpsSetvoice        $00
	dc.b	nA5, $10, nE5, nRst, nA5, nG5, nD5, nRst, nG5
	smpsReturn

Final_Boss_Call11:
	dc.b	smpsNoAttack, $40
	smpsSetvoice        $00
	dc.b	nA5, $10, nE5, nRst, nA5
	smpsReturn

Final_Boss_Call12:
	smpsSetvoice        $00
	dc.b	nG5, $10, nD5, nRst, nG5
	smpsReturn

Final_Boss_Call07:
	dc.b	smpsNoAttack, $10
	smpsSetvoice        $03
	dc.b	nC2, $20, nC2, nC2, $10, nC2, nC2
	smpsReturn

Final_Boss_Call08:
	smpsSetvoice        $03
	dc.b	nC2, $30, $10, $20, nRst, $10, nC2
	smpsReturn

Final_Boss_Call09:
	smpsSetvoice        $03
	dc.b	nC2, $30, $10, $30, $10
	smpsReturn

Final_Boss_Call0A:
	dc.b	smpsNoAttack, $10
	smpsSetvoice        $03
	dc.b	nC2, $20, nC2, nC2, $10, $20
	smpsReturn

Final_Boss_Call0B:
	dc.b	smpsNoAttack, $30
	smpsSetvoice        $03
	dc.b	nC2, $10, $30, $10
	smpsReturn

Final_Boss_Call0C:
	smpsSetvoice        $03
	dc.b	nC2, $20, nRst, $10, nC2
	smpsReturn

Final_Boss_Call39:
	dc.b	smpsNoAttack, $7F, smpsNoAttack, $01
	smpsReturn

Final_Boss_Call3A:
	smpsPSGvoice        fTone_01
	dc.b	nA5, $08, nRst, nA5, nRst, $18, nG5, $08, nRst, nG5, nRst, $38
	smpsReturn

Final_Boss_Call3B:
	smpsPSGvoice        fTone_01
	dc.b	nFs5, $08, nRst, nG5, nRst, $18, nF5, $08, nRst, nE5, nRst, $38
	smpsReturn

Final_Boss_Call3C:
	smpsPSGvoice        fTone_01
	dc.b	nA5, $08, nRst, nA5, nRst, $18, nG5, $08, nRst, nG5, nRst, $38
	smpsReturn

Final_Boss_Call3D:
	smpsPSGvoice        fTone_01
	dc.b	nE5, $08, nRst, nE5, nRst, $18, nEb5, $08, nRst, $18, nD5, $08
	dc.b	nRst, nC5, nRst, $18
	smpsReturn

Final_Boss_Call3E:
	dc.b	smpsNoAttack, nRst, $40
	smpsPSGvoice        fTone_01
	dc.b	nA5, $08, nRst, nA5, nRst, $18, nG5, $08, nRst
	smpsReturn

Final_Boss_Call3F:
	smpsPSGvoice        fTone_01
	dc.b	nG5, $08, nRst, $38
	smpsReturn

Final_Boss_Call32:
	dc.b	smpsNoAttack, nRst, $7F, smpsNoAttack, nRst, $01
	smpsReturn

Final_Boss_Call33:
	smpsPSGvoice        fTone_01
	dc.b	nE5, $08, nRst, nE5, nRst, $18, nE5, $08, nRst, nE5, nRst, $38
	smpsReturn

Final_Boss_Call34:
	smpsPSGvoice        fTone_01
	dc.b	nD5, $08, nRst, nD5, nRst, $18, nC5, $08, nRst, nC5, nRst, $38
	smpsReturn

Final_Boss_Call35:
	smpsPSGvoice        fTone_01
	dc.b	nE5, $08, nRst, nE5, nRst, $18, nE5, $08, nRst, nE5, nRst, $38
	smpsReturn

Final_Boss_Call36:
	smpsPSGvoice        fTone_01
	dc.b	nB4, $08, nRst, nB4, nRst, $18, nBb4, $08, nRst, $18, nA4, $08
	dc.b	nRst, nG4, nRst, $18
	smpsReturn

Final_Boss_Call37:
	dc.b	smpsNoAttack, nRst, $40
	smpsPSGvoice        fTone_01
	dc.b	nE5, $08, nRst, nE5, nRst, $18, nE5, $08, nRst
	smpsReturn

Final_Boss_Call38:
	smpsPSGvoice        fTone_01
	dc.b	nE5, $08, nRst, $38
	smpsReturn

Final_Boss_Call2B:
	dc.b	smpsNoAttack, nRst, $7F, smpsNoAttack, nRst, $01
	smpsReturn

Final_Boss_Call2C:
	dc.b	smpsNoAttack, nRst, $10
	smpsPSGvoice        fTone_01
	dc.b	nE5, $08, nA5, nE6, nA6, nG6, nE6, nD6, nG5, nRst, $30
	smpsReturn

Final_Boss_Call2D:
	smpsPSGvoice        fTone_01
	dc.b	nFs6, $08, nD6, nG6, nFs6, nD6, nA5, nRst, $10, nG5, $08, nRst
	dc.b	nB4, nD5, nB5, nG5, nRst, $10
	smpsReturn

Final_Boss_Call2E:
	smpsPSGvoice        fTone_01
	dc.b	nFs6, $08, nD6, nG6, nFs6, nD6, nA5, nRst, $10, nG5, $08, nRst
	dc.b	nB4, nD5, nB5, nG5, nRst, nD5
	smpsReturn

Final_Boss_Call2F:
	smpsPSGvoice        fTone_01
	dc.b	nE5, $08, nB5, nD6, nA5, nB5, nE6, nBb6, nEb6, nBb5, nA6, nD6
	dc.b	nA5, nE6, nC6, nRst, $10
	smpsReturn

Final_Boss_Call30:
	dc.b	smpsNoAttack, nRst, $50
	smpsPSGvoice        fTone_01
	dc.b	nE5, $08, nA5, nE6, nA6, nG6, nE6
	smpsReturn

Final_Boss_Call31:
	smpsPSGvoice        fTone_01
	dc.b	nD6, $08, nG5, nRst, $30
	smpsReturn

Final_Boss_Call00:
	dc.b	dSnare, $06, $05, dSnare, dSnare, $10, $06, $05, dSnare, dSnare, $10, $06
	dc.b	$05, dSnare, dSnare, $10, dSnare, dSnare
	smpsReturn

Final_Boss_Call01:
	dc.b	dSnare, $10, $08, dSnare, dSnare, dSnare, dSnare, $10, $20, nRst, $10, dSnare
	smpsReturn

Final_Boss_Call02:
	dc.b	dSnare, $10, $08, dSnare, dSnare, dSnare, dSnare, $10, $20, $08, dSnare, dSnare
	dc.b	$10
	smpsReturn

Final_Boss_Call03:
	dc.b	dSnare, $08, dSnare, dSnare, dSnare, dSnare, dSnare, dSnare, $10, dSnare, dSnare, $08
	dc.b	dSnare, dSnare, dSnare, dSnare, $10
	smpsReturn

Final_Boss_Call04:
	dc.b	dSnare, $20, nRst, $10, dSnare
	smpsReturn

Final_Boss_Call05:
	dc.b	dSnare, $06, $05, dSnare, dSnare, $10, $06, $05, dSnare, dSnare, $10, $06
	dc.b	$05, dSnare, dSnare, $10, dSnare, dSnare, $08, dSnare
	smpsReturn

Final_Boss_Call06:
	dc.b	nRst, $08, dSnare, dSnare, dSnare, dSnare, $10, dSnare, dSnare, dSnare, $08, dSnare
	dc.b	dSnare, dSnare, dSnare, $10
	smpsReturn

Final_Boss_Voices:
;	Voice $00
;	$3B
;	$51, $71, $61, $41, 	$51, $16, $18, $1A, 	$05, $01, $01, $00
;	$09, $01, $01, $01, 	$17, $97, $27, $87, 	$1C, $22, $15, $7F
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $06, $07, $05
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $01
	smpsVcAttackRate    $1A, $18, $16, $11
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $01, $01, $05
	smpsVcDecayRate2    $01, $01, $01, $09
	smpsVcDecayLevel    $08, $02, $09, $01
	smpsVcReleaseRate   $07, $07, $07, $07
	smpsVcTotalLevel    $7F, $15, $22, $1C

;	Voice $01
;	$3A
;	$7B, $5B, $40, $40, 	$9F, $1F, $1F, $1F, 	$0F, $0B, $05, $0C
;	$0F, $19, $0C, $13, 	$F9, $F5, $F9, $06, 	$21, $01, $01, $7F
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $04, $05, $07
	smpsVcCoarseFreq    $00, $00, $0B, $0B
	smpsVcRateScale     $00, $00, $00, $02
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $05, $0B, $0F
	smpsVcDecayRate2    $13, $0C, $19, $0F
	smpsVcDecayLevel    $00, $0F, $0F, $0F
	smpsVcReleaseRate   $06, $09, $05, $09
	smpsVcTotalLevel    $7F, $01, $01, $21

;	Voice $02
;	$10
;	$09, $00, $00, $00, 	$1F, $1F, $5F, $5F, 	$12, $0E, $0A, $0A
;	$00, $04, $04, $03, 	$2F, $2F, $2F, $2F, 	$25, $30, $13, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $02
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $00, $09
	smpsVcRateScale     $01, $01, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0A, $0E, $12
	smpsVcDecayRate2    $03, $04, $04, $00
	smpsVcDecayLevel    $02, $02, $02, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $13, $30, $25

;	Voice $03
;	$00
;	$01, $00, $3F, $00, 	$1E, $1E, $1E, $1E, 	$1A, $10, $1C, $10
;	$00, $00, $00, $00, 	$FD, $F8, $FE, $F8, 	$1A, $05, $25, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $00, $00
	smpsVcCoarseFreq    $00, $0F, $00, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1E, $1E, $1E, $1E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $10, $1C, $10, $1A
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $08, $0E, $08, $0D
	smpsVcTotalLevel    $00, $25, $05, $1A

