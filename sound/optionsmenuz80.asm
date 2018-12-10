Title_Options_Menu_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Title_Options_Menu_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $02, $5B

	smpsHeaderDAC       Title_Options_Menu_DAC
	smpsHeaderFM        Title_Options_Menu_FM1,	$00, $10
	smpsHeaderFM        Title_Options_Menu_FM2,	$F4, $10
	smpsHeaderFM        Title_Options_Menu_FM3,	$F4, $10
	smpsHeaderFM        Title_Options_Menu_FM4,	$F4, $10
	smpsHeaderFM        Title_Options_Menu_FM5,	$F4, $10
	smpsHeaderPSG       Title_Options_Menu_PSG1,	$D0+$0C, $02, $00, $00
	smpsHeaderPSG       Title_Options_Menu_PSG2,	$D0+$0C, $02, $00, $00
	smpsHeaderPSG       Title_Options_Menu_PSG3,	$DC, $02, $00, $00

; FM1 Data
Title_Options_Menu_FM1:
	smpsCall            Title_Options_Menu_Call0F
	smpsCall            Title_Options_Menu_Call0F
	smpsCall            Title_Options_Menu_Call10
	smpsCall            Title_Options_Menu_Call10
	smpsJump            Title_Options_Menu_FM1

; FM2 Data
Title_Options_Menu_FM2:
	smpsCall            Title_Options_Menu_Call0C
	smpsCall            Title_Options_Menu_Call0D
	smpsCall            Title_Options_Menu_Call0E
	smpsCall            Title_Options_Menu_Call0E
	smpsJump            Title_Options_Menu_FM2

; FM3 Data
Title_Options_Menu_FM3:
	smpsCall            Title_Options_Menu_Call09
	smpsCall            Title_Options_Menu_Call0A
	smpsCall            Title_Options_Menu_Call0B
	smpsCall            Title_Options_Menu_Call0B
	smpsJump            Title_Options_Menu_FM3

; FM4 Data
Title_Options_Menu_FM4:
	smpsCall            Title_Options_Menu_Call06
	smpsCall            Title_Options_Menu_Call07
	smpsCall            Title_Options_Menu_Call08
	smpsCall            Title_Options_Menu_Call08
	smpsJump            Title_Options_Menu_FM4

; FM5 Data
Title_Options_Menu_FM5:
	smpsCall            Title_Options_Menu_Call03
	smpsCall            Title_Options_Menu_Call04
	smpsCall            Title_Options_Menu_Call05
	smpsCall            Title_Options_Menu_Call05
	smpsJump            Title_Options_Menu_FM5

; PSG1 Data
Title_Options_Menu_PSG1:
	smpsCall            Title_Options_Menu_Call17
	smpsCall            Title_Options_Menu_Call18
	smpsCall            Title_Options_Menu_Call19
	smpsCall            Title_Options_Menu_Call1A
	smpsJump            Title_Options_Menu_PSG1

; PSG2 Data
Title_Options_Menu_PSG2:
	smpsCall            Title_Options_Menu_Call14
	smpsCall            Title_Options_Menu_Call15
	smpsCall            Title_Options_Menu_Call16
	smpsCall            Title_Options_Menu_Call16
	smpsJump            Title_Options_Menu_PSG2

; PSG3 Data
Title_Options_Menu_PSG3:
	smpsPSGform         $E7
	smpsCall            Title_Options_Menu_Call11
	smpsCall            Title_Options_Menu_Call12
	smpsCall            Title_Options_Menu_Call13
	smpsCall            Title_Options_Menu_Call13
	smpsJump            Title_Options_Menu_PSG3

; DAC Data
Title_Options_Menu_DAC:
	smpsCall            Title_Options_Menu_Call00
	smpsCall            Title_Options_Menu_Call01
	smpsCall            Title_Options_Menu_Call02
	smpsCall            Title_Options_Menu_Call02
	smpsJump            Title_Options_Menu_DAC

Title_Options_Menu_Call0F:
	smpsSetvoice        $02
	dc.b	nC3, $04, nRst, nC3, $08, nB2, $04, nRst, nB2, $08, nA2, $04
	dc.b	nRst, nA2, $08, nG2, $04, nRst, nG2, $08, nF3, $04, nRst, nF3
	dc.b	$08, nC3, $04, nRst, nC3, $08, nD3, $04, nRst, nD3, $08, nG2
	dc.b	$02, nRst, nG2, $04, nA2, nB2
	smpsReturn

Title_Options_Menu_Call10:
	dc.b	nF2, $02, nRst, nF2, $08, nC3, $04, nRst, nC3, $06, nRst, $02
	dc.b	nC3, $04, nG2, $02, nRst, nG2, $08, nA2, $04, nRst, nA2, nB2
	dc.b	nC3, nF2, $02, nRst, nF2, $08, nC3, $04, nRst, nE3, nB2, nC3
	dc.b	nB2, $02, nRst, nG2, $08, nC3, $04, nRst, nF3, nE3, nC3
	smpsReturn

Title_Options_Menu_Call0C:
	dc.b	smpsNoAttack, $04
	smpsSetvoice        $00
	dc.b	nG5, $02, nA5, nG5, nRst, nC6, nRst, nD6, $06, nC6, $02, nRst
	dc.b	$0C, nC5, $02, nA5, nG5, nRst, nC6, nRst, nD6, $06, nC6, $02
	dc.b	nRst, $04, nG5, nA5, $06, nE6, $02, nRst, $04, nC6, nG6, $06
	dc.b	nC6, $02, nRst, $04, nE6, nA5, $0C, nB5, $02, nRst, $06, nB5
	dc.b	$04, nG5, $08
	smpsReturn

Title_Options_Menu_Call0D:
	dc.b	nRst, $04, nG5, $02, nA5, nG5, nRst, nC6, nRst, nD6, $06, nG5
	dc.b	$02, nRst, $0C, nC5, $02, nA5, nC6, nRst, nC6, nRst, nD6, $06
	dc.b	nE6, $02, nRst, $04, nC6, nF6, $06, nE6, $02, nRst, $04, nC6
	dc.b	nG5, $06, nF6, $02, nRst, $04, nE6, nA5, $0C, nB5, $02, nRst
	dc.b	$06, nB5, $04, nG5, $08
	smpsReturn

Title_Options_Menu_Call0E:
	dc.b	nA6, $04, nG6, nD6, nC6, $08, $04, nB5, nE6, nB5, $0C, nA5
	dc.b	$10, nRst, $04, nC6, nB5, nF6, nE6, $08, nC6, $04, nD6, nA5
	dc.b	nD6, $0C, nC6, nRst, $08
	smpsReturn

Title_Options_Menu_Call09:
	dc.b	smpsNoAttack, nRst, $04
	smpsSetvoice        $00
	dc.b	nC5, $02, nE5, nC6, nRst, nG5, nRst, nB5, $06, nG5, $02, nRst
	dc.b	$0C, nG5, $02, nE5, nC6, nRst, nG5, nRst, nB5, $06, nE6, $02
	dc.b	nRst, $04, nC6, nF6, $06, nC6, $02, nRst, $04, nA5, nG5, $06
	dc.b	nF6, $02, nRst, $04, nG5, nD6, $14, nRst, $0C
	smpsReturn

Title_Options_Menu_Call0A:
	dc.b	smpsNoAttack, nRst, $04, nC5, $02, nE5, nC6, nRst, nG5, nRst, nB5, $06
	dc.b	nC6, $02, nRst, $0C, nG5, $02, nE5, nG5, nRst, nG5, nRst, nB5
	dc.b	$06, nC6, $02, nRst, $04, nG5, nA5, $06, nC6, $02, nRst, $04
	dc.b	nA5, nG6, $06, nC6, $02, nRst, $04, nG5, nD6, $14, nRst, $0C
	smpsReturn

Title_Options_Menu_Call0B:
	dc.b	nF6, $04, nE6, nF6, nE6, $08, nG5, $04, nD6, nC6, nD6, $0C
	dc.b	nE6, $10, nRst, $04, nA6, nG6, nA5, nG5, $08, nE5, $04, nG5
	dc.b	nE6, nB5, $0C, nG5, nRst, $08
	smpsReturn

Title_Options_Menu_Call06:
	dc.b	smpsNoAttack, nRst, $04
	smpsSetvoice        $00
	dc.b	nC5, $02, nA5, nC6, nRst, nC6, nRst, nD6, $06, nC6, $02, nRst
	dc.b	$0C, nC5, $02, nA5, nC6, nRst, nC6, nRst, nD6, $06, nE6, $02
	dc.b	nRst, $04, nG5, nA5, $06, nE6, $02, nRst, $04, nC6, nG6, $06
	dc.b	nC6, $02, nRst, $04, nE6, nD6, $14, nB5, $04, nG5, nRst
	smpsReturn

Title_Options_Menu_Call07:
	dc.b	smpsNoAttack, $04, nG5, $02, nA5, nC6, nRst, nC6, nRst, nD6, $06, nG5
	dc.b	$02, nRst, $0C, nC5, $02, nA5, nG5, nRst, nC6, nRst, nD6, $06
	dc.b	nC6, $02, nRst, $04, nC6, nF6, $06, nE6, $02, nRst, $04, nC6
	dc.b	nG5, $06, nF6, $02, nRst, $04, nG5, nD6, $14, nB5, $04, nG5
	dc.b	$08
	smpsReturn

Title_Options_Menu_Call08:
	dc.b	nF6, $04, nE6, nD6, nC6, $08, $04, nB5, nE6, nB5, $0C, nA5
	dc.b	$10, nRst, $04, nC6, nG6, nF6, nG5, $08, nE5, $04, nD6, nE6
	dc.b	nB5, $0C, nG5, nRst, $08
	smpsReturn

Title_Options_Menu_Call03:
	dc.b	smpsNoAttack, nRst, $04
	smpsSetvoice        $00
	dc.b	nG5, $02, nE5, nG5, nRst, nG5, nRst, nB5, $06, nG5, $02, nRst
	dc.b	$0C, nG5, $02, nE5, nG5, nRst, nG5, nRst, nB5, $06, nC6, $02
	dc.b	nRst, $04, nC6, nF6, $06, nC6, $02, nRst, $04, nA5, nG5, $06
	dc.b	nF6, $02, nRst, $04, nG5, nA5, $0C, nB5, $02, nRst, $12
	smpsReturn

Title_Options_Menu_Call04:
	dc.b	smpsNoAttack, nRst, $04, nC5, $02, nE5, nG5, nRst, nG5, nRst, nB5, $06
	dc.b	nC6, $02, nRst, $0C, nG5, $02, nE5, nC6, nRst, nG5, nRst, nB5
	dc.b	$06, nE6, $02, nRst, $04, nG5, nA5, $06, nC6, $02, nRst, $04
	dc.b	nA5, nG6, $06, nC6, $02, nRst, $04, nE6, nA5, $0C, nB5, $02
	dc.b	nRst, $12
	smpsReturn

Title_Options_Menu_Call05:
	dc.b	nA6, $04, nG6, nF6, nE6, $08, nG5, $04, nD6, nC6, nD6, $0C
	dc.b	nE6, $10, nRst, $04, nA6, nB5, nA5, nE6, $08, nC6, $04, nG5
	dc.b	nA5, nD6, $0C, nC6, nRst, $08
	smpsReturn

Title_Options_Menu_Call17:
	dc.b	smpsNoAttack, nRst, $60
	smpsPSGvoice        $00
	dc.b	nA6, $02, nG6, nF6, nE6, nA6, nG6, nF6, nE6, nB6, nA6, nG6
	dc.b	nF6, nG6, nF6, nE6, nD6
	smpsReturn

Title_Options_Menu_Call18:
	dc.b	nRst, $60, nA6, $02, nG6, nF6, nE6, nA6, nG6, nF6, nE6, nB6
	dc.b	nA6, nG6, nF6, nG6, nA6, nB6, nD7
	smpsReturn

Title_Options_Menu_Call19:
	dc.b	nRst, $0C, nC6, nA5, $04, nC6, nB5, nC6, nB5, nA5, $08, nE7
	dc.b	$02, nD7, nC7, nRst, nA6, nRst, $0A, nC6, $0C, nG5, $04, nA5
	dc.b	nC6, nD6, nB5, nD6, nC6, $08, nF7, $02, nD7, nE7, nRst, nC7
	dc.b	nRst
	smpsReturn

Title_Options_Menu_Call1A:
	dc.b	smpsNoAttack, $0C, nC6, nA5, $04, nC6, nB5, nC6, nB5, nA5, $0A, nE7
	dc.b	$02, nC7, nRst, nA6, nRst, $0A, nC6, $0C, nG5, $04, nA5, nC6
	dc.b	nD6, nB5, nD6, nC6, $08, nF7, $02, nD7, nE7, nRst, nC7, nRst
	smpsReturn

Title_Options_Menu_Call14:
	dc.b	smpsNoAttack, $64
	smpsPSGvoice        $00
	dc.b	nA6, $02, nG6, nF6, nE6, nA6, nG6, nF6, nE6, nB6, nA6, nG6
	dc.b	nF6, nG6, nF6
	smpsReturn

Title_Options_Menu_Call15:
	dc.b	nE6, $02, nD6, nRst, $60, nA6, $02, nG6, nF6, nE6, nA6, nG6
	dc.b	nF6, nE6, nB6, nA6, nG6, nF6, nG6, nA6
	smpsReturn

Title_Options_Menu_Call16:
	dc.b	nA6, $02, nRst, $36, nE7, $02, nD7, nC7, nRst, nA6, nRst, $36
	dc.b	nF7, $02, nD7, nE7, nRst
	smpsReturn

Title_Options_Menu_Call11:
	dc.b	nRst, $04
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $08, nCs0, nCs0, nCs0, $02, $06, $08, nCs0, nCs0, nCs0, $02
	dc.b	$06, $08, nCs0, nCs0, nCs0, $02, $06, $08, nCs0, nCs0, nCs0, $02
	dc.b	nCs0
	smpsReturn

Title_Options_Menu_Call12:
	dc.b	smpsNoAttack, $04
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $08, nCs0, nCs0, nCs0, $02, $06, $08, nCs0, nCs0, nCs0, $02
	dc.b	$06, $08, nCs0, nCs0, nCs0, $02, $06, $08, nCs0, nCs0, nCs0, $02
	dc.b	nCs0
	smpsReturn

Title_Options_Menu_Call13:
	dc.b	smpsNoAttack, $04
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $08, $02, $06, $02, nRst, $06, nCs0, $08, nCs0, nCs0, $02
	dc.b	$06, $08, nCs0, nCs0, nCs0, $02, $06, $08, nCs0, nCs0, nCs0, $02
	dc.b	$06, $08, $04
	smpsReturn

Title_Options_Menu_Call00:
	dc.b	dKick, $08, dSnare, $06, $02, dKick, $04, $02, nRst, dSnare, $08, dKick
	dc.b	dSnare, $06, $02, dKick, $04, $02, nRst, dSnare, $08, dKick, dSnare, $06
	dc.b	$02, dKick, $04, $02, nRst, dSnare, $08, dKick, dSnare, $06, $02, dKick
	dc.b	$04, $02, nRst, dSnare, $04, $02, dSnare
	smpsReturn

Title_Options_Menu_Call01:
	dc.b	dKick, $06, nRst, $02, dSnare, $06, $02, dKick, $04, $02, nRst, dSnare
	dc.b	$08, dKick, dSnare, $06, $02, dKick, $04, $02, nRst, dSnare, $08, dKick
	dc.b	dSnare, $06, $02, dKick, $04, $02, nRst, dSnare, $08, dKick, $04, dSnare
	dc.b	dSnare, $06, $02, dKick, $04, dSnare, dSnare, $02, dSnare, dSnare, dSnare
	smpsReturn

Title_Options_Menu_Call02:
	dc.b	dKick, $06, nRst, $02, dSnare, $06, $02, dKick, $04, dKick, dSnare, $08
	dc.b	dKick, dSnare, $06, $02, dKick, $04, $02, nRst, dSnare, $08, dKick, dSnare
	dc.b	$06, $02, dKick, $04, $02, nRst, dSnare, $08, dKick, dSnare, dSnare, $02
	dc.b	dSnare, dSnare, $04, $08
	smpsReturn

Title_Options_Menu_Voices:
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

