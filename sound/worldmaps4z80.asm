Level_Select_Menu_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Level_Select_Menu_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $02, $44

	smpsHeaderDAC       Level_Select_Menu_DAC
	smpsHeaderFM        Level_Select_Menu_FM1,	$F4, $10
	smpsHeaderFM        Level_Select_Menu_FM2,	$F4, $10
	smpsHeaderFM        Level_Select_Menu_FM3,	$00, $10
	smpsHeaderFM        Level_Select_Menu_FM4,	$F4, $10
	smpsHeaderFM        Level_Select_Menu_FM5,	$F4, $10
	smpsHeaderPSG       Level_Select_Menu_PSG1,	$D0+$0C, $02, $00, $00
	smpsHeaderPSG       Level_Select_Menu_PSG2,	$D0+$0C, $02, $00, $00
	smpsHeaderPSG       Level_Select_Menu_PSG3,	$DC, $02, $00, $00

; FM1 Data
Level_Select_Menu_FM1:
	smpsCall            Level_Select_Menu_Call0F
	smpsCall            Level_Select_Menu_Call10
	smpsCall            Level_Select_Menu_Call11
	smpsJump            Level_Select_Menu_FM1

; FM2 Data
Level_Select_Menu_FM2:
	smpsCall            Level_Select_Menu_Call0C
	smpsCall            Level_Select_Menu_Call0D
	smpsCall            Level_Select_Menu_Call0E
	smpsJump            Level_Select_Menu_FM2

; FM3 Data
Level_Select_Menu_FM3:
	smpsCall            Level_Select_Menu_Call09
	smpsCall            Level_Select_Menu_Call0A
	smpsCall            Level_Select_Menu_Call0B
	smpsJump            Level_Select_Menu_FM3

; FM4 Data
Level_Select_Menu_FM4:
	smpsCall            Level_Select_Menu_Call06
	smpsCall            Level_Select_Menu_Call07
	smpsCall            Level_Select_Menu_Call08
	smpsJump            Level_Select_Menu_FM4

; FM5 Data
Level_Select_Menu_FM5:
	smpsCall            Level_Select_Menu_Call03
	smpsCall            Level_Select_Menu_Call04
	smpsCall            Level_Select_Menu_Call05
	smpsJump            Level_Select_Menu_FM5

; PSG1 Data
Level_Select_Menu_PSG1:
	smpsCall            Level_Select_Menu_Call17
	smpsCall            Level_Select_Menu_Call18
	smpsCall            Level_Select_Menu_Call19
	smpsJump            Level_Select_Menu_PSG1

; PSG2 Data
Level_Select_Menu_PSG2:
	smpsCall            Level_Select_Menu_Call14
	smpsCall            Level_Select_Menu_Call15
	smpsCall            Level_Select_Menu_Call16
	smpsJump            Level_Select_Menu_PSG2

; PSG3 Data
Level_Select_Menu_PSG3:
	smpsPSGform         $E7
	smpsCall            Level_Select_Menu_Call12
	smpsCall            Level_Select_Menu_Call12
	smpsCall            Level_Select_Menu_Call13
	smpsJump            Level_Select_Menu_PSG3

; DAC Data
Level_Select_Menu_DAC:
	smpsCall            Level_Select_Menu_Call00
	smpsCall            Level_Select_Menu_Call01
	smpsCall            Level_Select_Menu_Call02
	smpsJump            Level_Select_Menu_DAC

Level_Select_Menu_Call0F:
	smpsSetvoice        $00
	dc.b	nA5, $03, nRst, $01, nA5, $04, nG5, nD5, nRst, nE5, nRst, nFs5
	dc.b	nRst, nG5, nRst, nA5, $08, nG5, $04, nFs5, nD5, nG5, $32, nRst
	dc.b	$04, nRst, $0A
	smpsReturn

Level_Select_Menu_Call10:
	dc.b	nA5, $03, nRst, $01, nA5, $04, nG5, nD5, nRst, nE5, nRst, nFs5
	dc.b	nRst, nG5, nRst, nA5, $08, nG5, $04, nFs5, nD5, nC6, $16, nRst
	dc.b	$02, nC6, $08, nB5, $10, nA5, $0C, nRst, $04
	smpsReturn

Level_Select_Menu_Call11:
	dc.b	nB5, $0C, nG5, $08, nRst, $04, nD6, $08, nCs6, $0C, nA5, $10
	dc.b	nRst, $04, nC6, $0C, nG5, $08, nRst, $04, nE6, $08, nD6, $04
	dc.b	nRst, nA5, nRst, nFs6, $03, nRst, $01, nFs6, $03, nRst, $01, nFs6
	dc.b	$03, nRst, $05
	smpsReturn

Level_Select_Menu_Call0C:
	smpsSetvoice        $00
	dc.b	nFs5, $03, nRst, $01, nFs5, $04, nE5, nA4, nRst, nCs5, nRst, nD5
	dc.b	nRst, nE5, nRst, nFs5, $08, nE5, $04, nD5, nA4, nC5, $10, nD5
	dc.b	nE5, $0C, nFs5, nG5, $08
	smpsReturn

Level_Select_Menu_Call0D:
	dc.b	nFs5, $03, nRst, $01, nFs5, $04, nE5, nA4, nRst, nCs5, nRst, nD5
	dc.b	nRst, nE5, nRst, nFs5, $08, nE5, $04, nD5, nA4, nG5, $0C, nA5
	dc.b	nFs5, $08, nG5, $10, nA5, $08, nD5
	smpsReturn

Level_Select_Menu_Call0E:
	dc.b	nG5, $0C, nD5, $08, nRst, $04, nB5, $08, nA5, $0C, nE5, $10
	dc.b	nRst, $04, nG5, $0C, nE5, $08, nRst, $04, nC6, $08, nA5, $04
	dc.b	nRst, nFs5, nRst, nA5, $03, nRst, $01, nA5, $03, nRst, $01, nA5
	dc.b	$03, nRst, $05
	smpsReturn

Level_Select_Menu_Call09:
	smpsSetvoice        $02
	dc.b	nD3, $08, nA2, $04, nD3, nRst, nD3, nA2, nD3, nRst, nD3, nA2
	dc.b	nD3, nA3, $02, nD3, nE3, $04, nFs3, nD3, nC3, $08, nG3, $04
	dc.b	nC3, nRst, nC3, nG2, nC3, $06, nRst, $02, nC3, $04, nD3, $02
	dc.b	nRst, nD3, $04, nE3, $02, nRst, nE3, $04, nFs3, nG3
	smpsReturn

Level_Select_Menu_Call0A:
	dc.b	nD3, $08, nA2, $04, nD3, nRst, nD3, nA2, nD3, nRst, nD3, nA2
	dc.b	nD3, nA3, $02, nD3, nE3, $04, nFs3, nD3, nC3, $08, nG3, $04
	dc.b	nC3, nRst, nC3, nG2, nC3, nB2, nD3, nG3, nD3, nCs3, $02, nG3
	dc.b	nC3, $04, nBb2, nA2
	smpsReturn

Level_Select_Menu_Call0B:
	dc.b	nG2, $02, nRst, nG3, $04, nD3, nG2, $05, nRst, $03, nG2, $04
	dc.b	nA2, nB2, nA2, $02, nRst, nA2, $04, nE3, nA2, $05, nRst, $03
	dc.b	nE3, $02, nA3, nD3, $04, nCs3, nC3, $02, nRst, nG2, $07, nRst
	dc.b	$01, nG3, $04, nF3, $02, nG3, nE3, $04, nD3, nC3, nD3, nA3
	dc.b	$03, nRst, $05, nA2, $04, nB2, nRst, nCs3, nE3
	smpsReturn

Level_Select_Menu_Call06:
	dc.b	nRst, $04
	smpsSetvoice        $00
	dc.b	nA5, $03, nRst, $01, nA5, $04, nG5, nD5, nRst, nE5, nRst, nFs5
	dc.b	nRst, nG5, nRst, nA5, $08, nG5, $04, nFs5, nD5, nG5, $32, nRst
	dc.b	$04, nRst, $06
	smpsReturn

Level_Select_Menu_Call07:
	dc.b	smpsNoAttack, nRst, $04, nA5, $03, nRst, $01, nA5, $04, nG5, nD5, nRst
	dc.b	nE5, nRst, nFs5, nRst, nG5, nRst, nA5, $08, nG5, $04, nFs5, nD5
	dc.b	nC6, $16, nRst, $02, nC6, $08, nB5, $10, nA5, $0C
	smpsReturn

Level_Select_Menu_Call08:
	dc.b	nRst, $04, nB5, $0C, nG5, $08, nRst, $04, nD6, $08, nCs6, $0C
	dc.b	nA5, $10, nRst, $04, nC6, $0C, nG5, $08, nRst, $04, nE6, $08
	dc.b	nD6, $04, nRst, nA5, nRst, nFs6, $03, nRst, $01, nFs6, $03, nRst
	dc.b	$01, nFs6, $03, nRst, $01
	smpsReturn

Level_Select_Menu_Call03:
	dc.b	nRst, $40
	smpsSetvoice        $00
	dc.b	nG4, $10, nB4, nC5, $0C, nD5, nE5, $08
	smpsReturn

Level_Select_Menu_Call04:
	dc.b	nRst, $40, nE5, $0C, nD5, nC5, $08, nD5, $10, nFs5
	smpsReturn

Level_Select_Menu_Call05:
	dc.b	nRst, $7F, smpsNoAttack, nRst, $01
	smpsReturn

Level_Select_Menu_Call17:
	dc.b	nRst, $60
	smpsPSGvoice        $00
	dc.b	nG5, $02, nC6, nE6, nG6, nC6, nE6, nG6, nC7, nE6, nG6, nC7
	dc.b	nE7, nG6, nC7, nE7, nG7
	smpsReturn

Level_Select_Menu_Call18:
	dc.b	nRst, $60, nB5, $02, nD6, nG6, nB6, nD6, nG6, nB6, nD7, nG6
	dc.b	nB6, nD7, nG7, nEb7, nD7, nCs7, nC7
	smpsReturn

Level_Select_Menu_Call19:
	dc.b	nG6, $02, nD6, nB5, nG6, nB6, nD6, nG6, nB5, nD6, nG6, nB6
	dc.b	nB5, nD6, nB6, nG6, nD6, nA6, nE6, nCs6, nA6, nCs7, nE6, nA6
	dc.b	nCs6, nE6, nA6, nCs7, nCs6, nE6, nCs7, nA6, nE6, nG6, nE6, nC6
	dc.b	nG6, nC7, nE6, nG6, nC6, nE6, nG6, nC7, nC6, nE6, nC7, nG6
	dc.b	nE6, nA6, nFs6, nD6, nA6, nD7, nFs6, nA6, nD6, nFs6, nA6, nD7
	dc.b	nA6, nFs6, nA6, nD7, nFs7
	smpsReturn

Level_Select_Menu_Call14:
	dc.b	nRst, $64
	smpsPSGvoice        $00
	dc.b	nG5, $02, nC6, nE6, nG6, nC6, nE6, nG6, nC7, nE6, nG6, nC7
	dc.b	nE7, nG6, nC7
	smpsReturn

Level_Select_Menu_Call15:
	dc.b	nE7, $02, nG7, nRst, $60, nB5, $02, nD6, nG6, nB6, nD6, nG6
	dc.b	nB6, nD7, nG6, nB6, nD7, nG7, nEb7, nD7
	smpsReturn

Level_Select_Menu_Call16:
	dc.b	nCs7, $02, nC7, nG6, nD6, nB5, nG6, nB6, nD6, nG6, nB5, nD6
	dc.b	nG6, nB6, nB5, nD6, nB6, nG6, nD6, nA6, nE6, nCs6, nA6, nCs7
	dc.b	nE6, nA6, nCs6, nE6, nA6, nCs7, nCs6, nE6, nCs7, nA6, nE6, nG6
	dc.b	nE6, nC6, nG6, nC7, nE6, nG6, nC6, nE6, nG6, nC7, nC6, nE6
	dc.b	nC7, nG6, nE6, nA6, nFs6, nD6, nA6, nD7, nFs6, nA6, nD6, nFs6
	dc.b	nA6, nD7, nA6, nFs6, nA6
	smpsReturn

Level_Select_Menu_Call12:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $04, nRst, nCs0, nCs0, nRst, nCs0, nCs0, nCs0, nRst, nCs0, nRst
	dc.b	nCs0, nRst, nCs0, nCs0, nCs0, nRst, nCs0, nRst, nCs0, nRst, nCs0, nCs0
	dc.b	nCs0, nCs0, nRst, nCs0, nCs0, nRst, nCs0, nCs0, nCs0
	smpsReturn

Level_Select_Menu_Call13:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $04, nCs0, nCs0, nCs0, nRst, nCs0, nCs0, nRst, nCs0, nCs0, nCs0
	dc.b	nCs0, nRst, nCs0, nRst, nCs0, nCs0, nCs0, nCs0, nCs0, nRst, nCs0, nRst
	dc.b	nCs0, nRst, nCs0, nRst, nCs0, nCs0, nCs0, nRst, nCs0
	smpsReturn

Level_Select_Menu_Call00:
	dc.b	dKick, $04, nRst, dSnare, nRst, dKick, dKick, dSnare, nRst, dKick, $08, dSnare
	dc.b	dKick, $04, dSnare, dSnare, dSnare, dKick, dKick, dSnare, dKick, nRst, dKick, dSnare
	dc.b	dKick, dSnare, dKick, dKick, dSnare, dKick, dSnare, dMidTom, dLowTom
	smpsReturn

Level_Select_Menu_Call01:
	dc.b	dKick, $04, nRst, dSnare, nRst, dKick, dKick, dSnare, dKick, nRst, dKick, dSnare
	dc.b	$08, dKick, $04, dSnare, dSnare, dSnare, dKick, dKick, dSnare, dKick, nRst, dKick
	dc.b	dSnare, dKick, dSnare, dKick, dKick, dSnare, dKick, dSnare, dMidTom, dLowTom
	smpsReturn

Level_Select_Menu_Call02:
	dc.b	dKick, $04, dKick, dSnare, dKick, nRst, dKick, dMidTom, dLowTom, dKick, dKick, dSnare
	dc.b	dKick, nRst, dKick, dMidTom, dLowTom, dSnare, dKick, dKick, dSnare, dKick, dKick, dSnare
	dc.b	dKick, dSnare, dSnare, dKick, dSnare, dKick, dSnare, dSnare, dSnare
	smpsReturn

Level_Select_Menu_Voices:
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

