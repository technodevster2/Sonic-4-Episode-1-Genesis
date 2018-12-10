invincibilitys4_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     invincibilitys4_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $02, $58

	smpsHeaderDAC       invincibilitys4_DAC
	smpsHeaderFM        invincibilitys4_FM1,	$02, $0A
	smpsHeaderFM        invincibilitys4_FM2,	$F6, $10
	smpsHeaderFM        invincibilitys4_FM3,	$F6, $10
	smpsHeaderFM        invincibilitys4_FM4,	$F6, $10
	smpsHeaderFM        invincibilitys4_FM5,	$F6, $10
	smpsHeaderPSG       invincibilitys4_PSG1,	$D2+$0C, $06, $00, $00
	smpsHeaderPSG       invincibilitys4_PSG2,	$D2+$0C, $02, $00, $00
	smpsHeaderPSG       invincibilitys4_PSG3,	$D2+$0C, $02, $00, $00

; FM1 Data
invincibilitys4_FM1:
	smpsCall            invincibilitys4_Call14

invincibilitys4_Jump05:
	smpsCall            invincibilitys4_Call15
	smpsCall            invincibilitys4_Call16
	smpsCall            invincibilitys4_Call17
	smpsJump            invincibilitys4_Jump05

; FM2 Data
invincibilitys4_FM2:
	smpsCall            invincibilitys4_Call10

invincibilitys4_Jump04:
	smpsCall            invincibilitys4_Call11
	smpsCall            invincibilitys4_Call12
	smpsCall            invincibilitys4_Call13
	smpsJump            invincibilitys4_Jump04

; FM3 Data
invincibilitys4_FM3:
	smpsCall            invincibilitys4_Call0C

invincibilitys4_Jump03:
	smpsCall            invincibilitys4_Call0D
	smpsCall            invincibilitys4_Call0E
	smpsCall            invincibilitys4_Call0F
	smpsJump            invincibilitys4_Jump03

; FM4 Data
invincibilitys4_FM4:
	smpsCall            invincibilitys4_Call08

invincibilitys4_Jump02:
	smpsCall            invincibilitys4_Call09
	smpsCall            invincibilitys4_Call0A
	smpsCall            invincibilitys4_Call0B
	smpsJump            invincibilitys4_Jump02

; FM5 Data
invincibilitys4_FM5:
	smpsCall            invincibilitys4_Call04

invincibilitys4_Jump01:
	smpsCall            invincibilitys4_Call05
	smpsCall            invincibilitys4_Call06
	smpsCall            invincibilitys4_Call07
	smpsJump            invincibilitys4_Jump01

; PSG1 Data
invincibilitys4_PSG1:
	smpsCall            invincibilitys4_Call20

invincibilitys4_Jump08:
	smpsCall            invincibilitys4_Call21
	smpsCall            invincibilitys4_Call22
	smpsCall            invincibilitys4_Call23
	smpsJump            invincibilitys4_Jump08

; PSG2 Data
invincibilitys4_PSG2:
	smpsCall            invincibilitys4_Call1C

invincibilitys4_Jump07:
	smpsCall            invincibilitys4_Call1D
	smpsCall            invincibilitys4_Call1E
	smpsCall            invincibilitys4_Call1F
	smpsJump            invincibilitys4_Jump07

; PSG3 Data
invincibilitys4_PSG3:
	smpsPSGform         $E7
	smpsCall            invincibilitys4_Call18

invincibilitys4_Jump06:
	smpsCall            invincibilitys4_Call19
	smpsCall            invincibilitys4_Call1A
	smpsCall            invincibilitys4_Call1B
	smpsJump            invincibilitys4_Jump06

; DAC Data
invincibilitys4_DAC:
	smpsCall            invincibilitys4_Call00

invincibilitys4_Jump00:
	smpsCall            invincibilitys4_Call01
	smpsCall            invincibilitys4_Call02
	smpsCall            invincibilitys4_Call03
	smpsJump            invincibilitys4_Jump00

invincibilitys4_Call14:
	smpsSetvoice        $00
	dc.b	nF2, $04, nC3, $02, nF2, $05, nRst, $01, nF2, $04, nG2, nD3
	dc.b	$02, nG2, $05, nRst, $01, nG2, $04, nAb2, nEb3, $02, nAb2, $05
	dc.b	nRst, $01, nAb2, $04, nBb2, nF3, $02, nBb2, $05, nRst, $01, nBb2
	dc.b	$04, nC3, $05, nRst, $01, nC3, $02, nG2, $04, nC3, $05, nRst
	dc.b	$03, nC3, $04, nG2, $02, nG3, nC3, nC4, nF4, nBb2, nBb3, nF3
	dc.b	nF2, nRst, nF3, nF2, nBb2, nRst, nBb2, nBb3, nF2, nF3, nBb2, nBb3
	smpsReturn

invincibilitys4_Call15:
	dc.b	nA2, $05, nRst, $01, nA2, $02, nE2, $04, nA2, $05, nRst, $03
	dc.b	nA2, $04, nE2, $02, nE3, nA2, nA3, nD4, nG4, nG3, nD3, nG3
	dc.b	nRst, nD3, nD2, nG2, nRst, nG2, nG3, nB2, nC3, nCs3, nD3, nC3
	dc.b	$05, nRst, $01, nC3, $02, nG2, $04, nC3, $05, nRst, $03, nC3
	dc.b	$04, nG2, $02, nG3, nC3, nC4, nF4, nBb2, nBb3, nF3, nF2, nRst
	dc.b	nF3, nF2, nBb2, nRst, nBb2, nBb3, nF2, nF3, nBb2, nBb3
	smpsReturn

invincibilitys4_Call16:
	dc.b	nA2, $05, nRst, $01, nA2, $02, nE2, $04, nA2, $05, nRst, $03
	dc.b	nA2, $04, nE2, $02, nE3, nA2, nA3, nD4, nG4, nG3, nD3, nG3
	dc.b	nRst, nD3, nD2, nG2, nRst, nG2, nG3, nB2, nC3, nCs3, nD3, nF2
	dc.b	$04, nC3, $02, nF2, $06, nF3, $03, nRst, $01, nG2, $04, nD3
	dc.b	$02, nG2, $06, nG3, $03, nRst, $01, nAb2, $04, nEb3, $02, nAb2
	dc.b	$06, nAb3, $03, nRst, $01, nBb2, $04, nF3, $02, nBb2, $06, nBb3
	dc.b	$03, nRst, $01
	smpsReturn

invincibilitys4_Call17:
	dc.b	nC3, $05, nRst, $01, nC3, $02, nG2, $04, nC3, $05, nRst, $03
	dc.b	nC3, $04, nG2, $02, nG3, nC3, nC4, nF4, nBb2, nBb3, nF3, nF2
	dc.b	nRst, nF3, nF2, nBb2, nRst, nBb2, nBb3, nF2, nF3, nBb2, nBb3
	smpsReturn

invincibilitys4_Call10:
	smpsSetvoice        $02
	dc.b	nBb5, $05, nRst, $01, nA5, $04, nG5, $02, nF5, nRst, nC6, $05
	dc.b	nRst, $01, nB5, $04, nA5, $02, nG5, nRst, nCs6, $05, nRst, $01
	dc.b	nC6, $04, nBb5, $02, nAb5, nRst, nBb5, $05, nRst, $01, nD6, $04
	dc.b	nC6, $02, nBb5, nRst, nC6, $04, nRst, $02, nC6, nD6, nRst, nF6
	dc.b	$04, nRst, nE6, nRst, nD6, nRst, nD6, nE6, nC6, $12, nRst, $02
	smpsReturn

invincibilitys4_Call11:
	dc.b	nC6, $04, nRst, $02, nC6, nD6, nRst, nF6, $04, nRst, nE6, nRst
	dc.b	nB5, $1C, nRst, $08, nC6, $04, nRst, $02, nC6, nD6, nRst, nF6
	dc.b	$04, nRst, nE6, nRst, nD6, nRst, nD6, nE6, nC6, $12, nRst, $02
	smpsReturn

invincibilitys4_Call12:
	dc.b	nC6, $04, nRst, $02, nC6, nD6, nRst, nF6, $04, nRst, nC6, nRst
	dc.b	nB5, $1C, nRst, $08, nA5, $02, nB5, nC6, nA5, $04, nB5, $02
	dc.b	nC6, $03, nRst, $01, nB5, $02, nC6, nD6, nB5, $04, nC6, $02
	dc.b	nD6, $03, nRst, $01, nC6, $02, nD6, nEb6, nC6, $04, nD6, $02
	dc.b	nEb6, $03, nRst, $01, nD6, $02, nEb6, nF6, nD6, $04, nEb6, $02
	dc.b	nF6, nD6
	smpsReturn

invincibilitys4_Call13:
	dc.b	nC6, $04, nRst, $02, nC6, nD6, nRst, nF6, $04, nRst, nE6, nRst
	dc.b	nD6, nRst, nD6, nE6, nC6, $12, nRst, $02
	smpsReturn

invincibilitys4_Call0C:
	smpsSetvoice        $02
	dc.b	nF5, $05, nRst, $0B, nG5, $05, nRst, $0B, nAb5, $05, nRst, $0B
	dc.b	nEb6, $05, nRst, $4B
	smpsReturn

invincibilitys4_Call0D:
	dc.b	smpsNoAttack, nRst, $0C
	smpsSetvoice        $02
	dc.b	nC6, $04, nRst, nC6, nRst, nD6, $1C, nRst, $48
	smpsReturn

invincibilitys4_Call0E:
	dc.b	smpsNoAttack, nRst, $0C, nC6, $04, nRst, nE6, nRst, nD6, $1C, nRst, $48
	smpsReturn

invincibilitys4_Call0F:
	dc.b	smpsNoAttack, nRst, $40
	smpsReturn

invincibilitys4_Call08:
	smpsSetvoice        $01
	dc.b	nBb4, $05, nRst, $01, nA4, $04, nG4, $02, nF4, nRst, nC5, $05
	dc.b	nRst, $01, nB4, $04, nA4, $02, nG4, nRst, nCs5, $05, nRst, $01
	dc.b	nC5, $04, nBb4, $02, nAb4, nRst, nBb4, $05, nRst, $01, nD5, $04
	dc.b	nC5, $02, nBb4, nRst, nC5, $04, nRst, $02, nC5, nD5, nRst, nF5
	dc.b	$04, nRst, nE5, nRst, nD5, nRst, nD5, nE5, nC5, $12, nRst, $02
	smpsReturn

invincibilitys4_Call09:
	dc.b	nC5, $04, nRst, $02, nC5, nD5, nRst, nF5, $04, nRst, nE5, nRst
	dc.b	nB4, $1C, nRst, $08, nC5, $04, nRst, $02, nC5, nD5, nRst, nF5
	dc.b	$04, nRst, nE5, nRst, nD5, nRst, nD5, nE5, nC5, $12, nRst, $02
	smpsReturn

invincibilitys4_Call0A:
	dc.b	nC5, $04, nRst, $02, nC5, nD5, nRst, nF5, $04, nRst, nC5, nRst
	dc.b	nB4, $1C, nRst, $08, nA4, $02, nB4, nC5, nA4, $04, nB4, $02
	dc.b	nC5, $03, nRst, $01, nB4, $02, nC5, nD5, nB4, $04, nC5, $02
	dc.b	nD5, $03, nRst, $01, nC5, $02, nD5, nEb5, nC5, $04, nD5, $02
	dc.b	nEb5, $03, nRst, $01, nD5, $02, nEb5, nF5, nD5, $04, nEb5, $02
	dc.b	nF5, nD5
	smpsReturn

invincibilitys4_Call0B:
	dc.b	nC5, $04, nRst, $02, nC5, nD5, nRst, nF5, $04, nRst, nE5, nRst
	dc.b	nD5, nRst, nD5, nE5, nC5, $12, nRst, $02
	smpsReturn

invincibilitys4_Call04:
	smpsSetvoice        $01
	dc.b	nF4, $05, nRst, $0B, nG4, $05, nRst, $0B, nAb4, $05, nRst, $0B
	dc.b	nEb5, $05, nRst, $4B
	smpsReturn

invincibilitys4_Call05:
	dc.b	smpsNoAttack, nRst, $0C
	smpsSetvoice        $01
	dc.b	nC5, $04, nRst, nC5, nRst, nD5, $1C, nRst, $48
	smpsReturn

invincibilitys4_Call06:
	dc.b	smpsNoAttack, nRst, $0C, nC5, $04, nRst, nE5, nRst, nD5, $1C, nRst, $48
	smpsReturn

invincibilitys4_Call07:
	dc.b	smpsNoAttack, nRst, $40
	smpsReturn

invincibilitys4_Call20:
	dc.b	smpsNoAttack, nRst, $04
	smpsPSGvoice        $00
	dc.b	nBb5, $05, nRst, $01, nA5, $04, nG5, $02, nF5, nRst, nC6, $05
	dc.b	nRst, $01, nB5, $04, nA5, $02, nG5, nRst, nCs6, $05, nRst, $01
	dc.b	nC6, $04, nBb5, $02, nAb5, nRst, nBb5, $05, nRst, $01, nD6, $04
	dc.b	nC6, $02, nBb5, nRst, nC6, $04, nRst, $02, nC6, nD6, nRst, nF6
	dc.b	$04, nRst, nE6, nRst, nD6, nRst, nD6, nE6, nC6, $02, nRst, $0E
	smpsReturn

invincibilitys4_Call21:
	dc.b	smpsNoAttack, nRst, $04, nC6, nRst, $02, nC6, nD6, nRst, nF6, $04, nRst
	dc.b	nE6, nRst, nB5, $1C, nRst, $08, nC6, $04, nRst, $02, nC6, nD6
	dc.b	nRst, nF6, $04, nRst, nE6, nRst, nD6, nRst, nD6, nE6, nC6, $02
	dc.b	nRst, $0E
	smpsReturn

invincibilitys4_Call22:
	dc.b	smpsNoAttack, nRst, $04, nC6, nRst, $02, nC6, nD6, nRst, nF6, $04, nRst
	dc.b	nC6, nRst, nB5, $1C, nRst, $08, nA5, $02, nB5, nC6, nA5, $04
	dc.b	nB5, $02, nC6, $03, nRst, $01, nB5, $02, nC6, nD6, nB5, $04
	dc.b	nC6, $02, nD6, $03, nRst, $01, nC6, $02, nD6, nEb6, nC6, $04
	dc.b	nD6, $02, nEb6, $03, nRst, $01, nD6, $02, nEb6, nF6, nD6, $04
	dc.b	nEb6, $02
	smpsReturn

invincibilitys4_Call23:
	dc.b	nF6, $02, nD6, nC6, $04, nRst, $02, nC6, nD6, nRst, nF6, $04
	dc.b	nRst, nE6, nRst, nD6, nRst, nD6, nE6, nC6, $10
	smpsReturn

invincibilitys4_Call1C:
	dc.b	smpsNoAttack, $06
	smpsPSGvoice        $00
	dc.b	nC5, $09, nRst, $01, nD5, $05, nRst, $01, nD5, $09, nRst, $01
	dc.b	nEb5, $05, nRst, $01, nEb5, $09, nRst, $01, nF5, $05, nRst, $01
	dc.b	nF5, $09, nRst, $01, nG5, $0A, nRst, $02, nG5, $04, nRst, nG5
	dc.b	nRst, nBb5, nRst, nBb5, nRst, nBb5, $08, nA5, $04, nG5, nF5
	smpsReturn

invincibilitys4_Call1D:
	dc.b	nA5, $0A, nRst, $02, nA5, $04, nRst, nA5, nRst, nG5, $1C, nRst
	dc.b	$08, nG5, $0A, nRst, $02, nG5, $04, nRst, nG5, nRst, nBb5, nRst
	dc.b	nBb5, nRst, nBb5, $08, nA5, $04, nG5, nF5
	smpsReturn

invincibilitys4_Call1E:
	dc.b	nA5, $0A, nRst, $02, nA5, $04, nRst, nA5, nRst, nG5, $18, nRst
	dc.b	$0C, nF5, $02, nRst, $04, nF5, $06, nRst, $04, nG5, $02, nRst
	dc.b	$04, nG5, $06, nRst, $04, nAb5, $02, nRst, $04, nAb5, $06, nRst
	dc.b	$04, nBb5, $02, nRst, $04, nBb5, $06, nRst, $04
	smpsReturn

invincibilitys4_Call1F:
	dc.b	nG5, $0A, nRst, $02, nG5, $04, nRst, nG5, nRst, nBb5, nRst, nBb5
	dc.b	nRst, nBb5, $08, nA5, $04, nG5, nF5
	smpsReturn

invincibilitys4_Call18:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $04, $02, $04, $02, nCs0, nRst, nCs0, $04, $02, $04, $02
	dc.b	nCs0, nRst, nCs0, $04, $02, $04, $02, nCs0, nRst, nCs0, $04, $02
	dc.b	$04, $02, nCs0, nCs0, nCs0, $04, $02, $04, $02, $04, $02, nCs0
	dc.b	nCs0, $04, nCs0, nCs0, nCs0, nCs0, $02, nCs0, nRst, nCs0, nCs0, $04
	dc.b	$02, $04, $02, $04, nCs0
	smpsReturn

invincibilitys4_Call19:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $04, $02, nCs0, nRst, nCs0, nCs0, $04, $02, nCs0, nCs0, $04
	dc.b	nCs0, nCs0, nCs0, nCs0, $02, nCs0, nRst, nCs0, nCs0, $04, $02, $04
	dc.b	$02, nCs0, nRst, nCs0, $04, nCs0, nCs0, $02, nCs0, nRst, nCs0, nCs0
	dc.b	$04, $02, nCs0, nCs0, $04, nCs0, nCs0, nCs0, nCs0, $02, $04, $02
	dc.b	$04, $02, $04, $02, $04, nCs0
	smpsReturn

invincibilitys4_Call1A:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $04, $02, nCs0, nRst, nCs0, nCs0, $04, $02, nCs0, nCs0, $04
	dc.b	nCs0, nCs0, nCs0, nCs0, $02, nCs0, nRst, nCs0, nCs0, $04, $02, $04
	dc.b	$02, nCs0, nRst, nCs0, $04, nCs0, nCs0, $02, $04, $02, nCs0, nRst
	dc.b	nCs0, $04, $02, $04, $02, nCs0, nRst, nCs0, $04, $02, $04, $02
	dc.b	nCs0, nRst, nCs0, $04, nCs0, nCs0, nCs0, $02, nCs0
	smpsReturn

invincibilitys4_Call1B:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $04, $02, $04, $02, $04, $02, nCs0, nCs0, $04, nCs0, nCs0
	dc.b	nCs0, nCs0, $02, nCs0, nRst, nCs0, nCs0, $04, $02, nCs0, nRst, nCs0
	dc.b	nCs0, nRst, nCs0, $04
	smpsReturn

invincibilitys4_Call00:
	dc.b	dKick, $04, dSnare, $02, dKick, $06, dSnare, $02, nRst, dKick, $04, dSnare
	dc.b	$02, dKick, $06, dSnare, $04, dKick, dSnare, $02, dKick, $06, dSnare, $04
	dc.b	dKick, dSnare, $02, dKick, $04, dSnare, $02, dSnare, nRst, dKick, $04, dSnare
	dc.b	dKick, dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare
	dc.b	dKick, $02, dSnare, dSnare, $04
	smpsReturn

invincibilitys4_Call01:
	dc.b	dKick, $04, dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare, dKick
	dc.b	$02, dSnare, dSnare, $04, dKick, dSnare, dKick, $02, dSnare, dSnare, dSnare, dKick
	dc.b	$04, dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare
	dc.b	dKick, dSnare, dKick, $02, dSnare, dSnare, $04
	smpsReturn

invincibilitys4_Call02:
	dc.b	dKick, $04, dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare, dKick
	dc.b	$02, dSnare, dSnare, $04, dKick, dSnare, dKick, $02, dSnare, dSnare, dSnare, dKick
	dc.b	$04, dSnare, $02, dKick, $06, dSnare, $02, nRst, dKick, $04, dSnare, $02
	dc.b	dKick, $06, dSnare, $04, dKick, dSnare, $02, dKick, $06, dSnare, $04, dKick
	dc.b	dSnare, $02, dKick, $04, dSnare, $02, dSnare, dSnare
	smpsReturn

invincibilitys4_Call03:
	dc.b	dKick, $04, dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare, dKick
	dc.b	dSnare, dKick, dSnare, dKick, $02, dSnare, dSnare, $04
	smpsReturn

invincibilitys4_Voices:
;	Voice $00
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

;	Voice $01
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

;	Voice $02
;	$3D
;	$01, $01, $01, $11, 	$1C, $18, $18, $1B, 	$06, $05, $04, $05
;	$06, $05, $06, $06, 	$60, $89, $59, $79, 	$18, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1B, $18, $18, $1C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $04, $05, $06
	smpsVcDecayRate2    $06, $06, $05, $06
	smpsVcDecayLevel    $07, $05, $08, $06
	smpsVcReleaseRate   $09, $09, $09, $00
	smpsVcTotalLevel    $00, $00, $00, $18

