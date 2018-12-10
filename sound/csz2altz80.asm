Casino_Street_Zone_2_IOS_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Casino_Street_Zone_2_IOS_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $82

	smpsHeaderDAC       Casino_Street_Zone_2_IOS_DAC
	smpsHeaderFM        Casino_Street_Zone_2_IOS_FM1,	$0C, $10
	smpsHeaderFM        Casino_Street_Zone_2_IOS_FM2,	$00, $10
	smpsHeaderFM        Casino_Street_Zone_2_IOS_FM3,	$00, $10
	smpsHeaderFM        Casino_Street_Zone_2_IOS_FM4,	$00, $10
	smpsHeaderFM        Casino_Street_Zone_2_IOS_FM5,	$00, $10
	smpsHeaderPSG       Casino_Street_Zone_2_IOS_PSG1,	$DC+$0C, $02, $00, $00
	smpsHeaderPSG       Casino_Street_Zone_2_IOS_PSG2,	$DC+$0C, $02, $00, $00
	smpsHeaderPSG       Casino_Street_Zone_2_IOS_PSG3,	$D0+$0C, $02, $00, $00

; FM1 Data
Casino_Street_Zone_2_IOS_FM1:
	smpsCall            Casino_Street_Zone_2_IOS_Call19

Casino_Street_Zone_2_IOS_Jump05:
	smpsCall            Casino_Street_Zone_2_IOS_Call1A
	smpsCall            Casino_Street_Zone_2_IOS_Call1B
	smpsCall            Casino_Street_Zone_2_IOS_Call1A
	smpsCall            Casino_Street_Zone_2_IOS_Call1C
	smpsCall            Casino_Street_Zone_2_IOS_Call19
	smpsJump            Casino_Street_Zone_2_IOS_Jump05

; FM2 Data
Casino_Street_Zone_2_IOS_FM2:
	smpsCall            Casino_Street_Zone_2_IOS_Call14

Casino_Street_Zone_2_IOS_Jump04:
	smpsCall            Casino_Street_Zone_2_IOS_Call15
	smpsCall            Casino_Street_Zone_2_IOS_Call16
	smpsCall            Casino_Street_Zone_2_IOS_Call15
	smpsCall            Casino_Street_Zone_2_IOS_Call17
	smpsCall            Casino_Street_Zone_2_IOS_Call18
	smpsJump            Casino_Street_Zone_2_IOS_Jump04

; FM3 Data
Casino_Street_Zone_2_IOS_FM3:
	smpsCall            Casino_Street_Zone_2_IOS_Call0F

Casino_Street_Zone_2_IOS_Jump03:
	smpsCall            Casino_Street_Zone_2_IOS_Call10
	smpsCall            Casino_Street_Zone_2_IOS_Call11
	smpsCall            Casino_Street_Zone_2_IOS_Call10
	smpsCall            Casino_Street_Zone_2_IOS_Call12
	smpsCall            Casino_Street_Zone_2_IOS_Call13
	smpsJump            Casino_Street_Zone_2_IOS_Jump03

; FM4 Data
Casino_Street_Zone_2_IOS_FM4:
	smpsCall            Casino_Street_Zone_2_IOS_Call0A

Casino_Street_Zone_2_IOS_Jump02:
	smpsCall            Casino_Street_Zone_2_IOS_Call0B
	smpsCall            Casino_Street_Zone_2_IOS_Call0C
	smpsCall            Casino_Street_Zone_2_IOS_Call0B
	smpsCall            Casino_Street_Zone_2_IOS_Call0D
	smpsCall            Casino_Street_Zone_2_IOS_Call0E
	smpsJump            Casino_Street_Zone_2_IOS_Jump02

; FM5 Data
Casino_Street_Zone_2_IOS_FM5:
	smpsCall            Casino_Street_Zone_2_IOS_Call05

Casino_Street_Zone_2_IOS_Jump01:
	smpsCall            Casino_Street_Zone_2_IOS_Call06
	smpsCall            Casino_Street_Zone_2_IOS_Call07
	smpsCall            Casino_Street_Zone_2_IOS_Call06
	smpsCall            Casino_Street_Zone_2_IOS_Call08
	smpsCall            Casino_Street_Zone_2_IOS_Call09
	smpsJump            Casino_Street_Zone_2_IOS_Jump01

; PSG1 Data
Casino_Street_Zone_2_IOS_PSG1:
	smpsCall            Casino_Street_Zone_2_IOS_Call26

Casino_Street_Zone_2_IOS_Jump08:
	smpsCall            Casino_Street_Zone_2_IOS_Call27
	smpsCall            Casino_Street_Zone_2_IOS_Call28
	smpsCall            Casino_Street_Zone_2_IOS_Call29
	smpsCall            Casino_Street_Zone_2_IOS_Call2A
	smpsCall            Casino_Street_Zone_2_IOS_Call2B
	smpsJump            Casino_Street_Zone_2_IOS_Jump08

; PSG2 Data
Casino_Street_Zone_2_IOS_PSG2:
	smpsCall            Casino_Street_Zone_2_IOS_Call21

Casino_Street_Zone_2_IOS_Jump07:
	smpsCall            Casino_Street_Zone_2_IOS_Call22
	smpsCall            Casino_Street_Zone_2_IOS_Call23
	smpsCall            Casino_Street_Zone_2_IOS_Call24
	smpsCall            Casino_Street_Zone_2_IOS_Call25
	smpsCall            Casino_Street_Zone_2_IOS_Call21
	smpsJump            Casino_Street_Zone_2_IOS_Jump07

; PSG3 Data
Casino_Street_Zone_2_IOS_PSG3:
	smpsPSGform         $E7
	smpsCall            Casino_Street_Zone_2_IOS_Call1D

Casino_Street_Zone_2_IOS_Jump06:
	smpsCall            Casino_Street_Zone_2_IOS_Call1E
	smpsCall            Casino_Street_Zone_2_IOS_Call1F
	smpsCall            Casino_Street_Zone_2_IOS_Call1E
	smpsCall            Casino_Street_Zone_2_IOS_Call1E
	smpsCall            Casino_Street_Zone_2_IOS_Call20
	smpsJump            Casino_Street_Zone_2_IOS_Jump06

; DAC Data
Casino_Street_Zone_2_IOS_DAC:
	smpsCall            Casino_Street_Zone_2_IOS_Call00

Casino_Street_Zone_2_IOS_Jump00:
	smpsCall            Casino_Street_Zone_2_IOS_Call01
	smpsCall            Casino_Street_Zone_2_IOS_Call02
	smpsCall            Casino_Street_Zone_2_IOS_Call03
	smpsCall            Casino_Street_Zone_2_IOS_Call04
	smpsCall            Casino_Street_Zone_2_IOS_Call00
	smpsJump            Casino_Street_Zone_2_IOS_Jump00

Casino_Street_Zone_2_IOS_Call19:
	smpsSetvoice        $02
	dc.b	nF2, $08, nRst, $04, nF2, nA2, $08, nRst, $04, nA2, nBb2, $08
	dc.b	nRst, $04, nBb2, nB2, nRst, nB2, $08, nC3, $04, nC3, nRst, nC3
	dc.b	nRst, nC3, nRst, nF2, nRst, nA2, nRst, nBb2, nRst, nB2, nC3, $08
	smpsReturn

Casino_Street_Zone_2_IOS_Call1A:
	dc.b	nF2, $08, nRst, $04, nF2, nA2, $10, nBb2, $04, nRst, nBb2, $08
	dc.b	nA2, $04, nRst, nA2, $08, nG2, nRst, $04, nG2, nB2, $10, nC3
	dc.b	$04, nRst, nC3, $08, nBb2, $04, nRst, nBb2, $08
	smpsReturn

Casino_Street_Zone_2_IOS_Call1B:
	dc.b	nA2, $08, nRst, $04, nA2, nC3, nCs3, $0C, nD3, $08, nRst, $04
	dc.b	nD3, nC3, $08, nRst, $04, nC3, nBb2, $08, nRst, $04, nBb2, nB2
	dc.b	$10, nC3, $04, nRst, nC3, $0C, nA2, $04, nBb2, nC3
	smpsReturn

Casino_Street_Zone_2_IOS_Call1C:
	dc.b	nA2, $08, nRst, $04, nA2, nC3, nCs3, $0C, nD3, $08, nRst, $04
	dc.b	nD3, nC3, $08, nRst, $04, nC3, nBb2, nRst, nBb2, $08, nC3, $04
	dc.b	nRst, nC3, $08, nF2, $04, nRst, nF2, $0C, nG2, $04, nA2, nC3
	smpsReturn

Casino_Street_Zone_2_IOS_Call14:
	smpsSetvoice        $04
	dc.b	nA5, $10, nF5, nD5, nA5, nG5, $04, nF5, nRst, nE5, nRst, nC5
	dc.b	nRst, nF5, $24
	smpsReturn

Casino_Street_Zone_2_IOS_Call15:
	dc.b	nRst, $08, nF5, $04, nRst, nF5, nC5, $0C, nD5, $04, nRst, nG5
	dc.b	nF5, $14, nRst, $08, nF5, $04, nRst, nF5, nD5, $0C, nE5, $04
	dc.b	nRst, nA5, nG5, $14
	smpsReturn

Casino_Street_Zone_2_IOS_Call16:
	dc.b	nRst, $08, nG5, $04, nRst, nG5, nE5, $0C, nF5, $04, nRst, nG5
	dc.b	nRst, nA5, nRst, nC6, nRst, $08, nBb5, $04, nRst, nA5, nG5, $08
	dc.b	nF5, nA5, $0C, nG5, $14
	smpsReturn

Casino_Street_Zone_2_IOS_Call17:
	dc.b	nRst, $08, nG5, $04, nRst, nG5, nE5, $0C, nF5, $04, nRst, nG5
	dc.b	nRst, nA5, nRst, nC6, nRst, nBb5, $08, nA5, $04, nRst, nG5, nRst
	dc.b	nE5, nRst, nF5, $14, nG5, $04, nA5, nC6
	smpsReturn

Casino_Street_Zone_2_IOS_Call18:
	dc.b	nRst, $08, nA5, $04, nRst, nF5, $10, nD5, nA5, nG5, $04, nF5
	dc.b	nRst, nE5, nRst, nC5, nRst, nF5, $24
	smpsReturn

Casino_Street_Zone_2_IOS_Call0F:
	smpsSetvoice        $04
	dc.b	nC5, $10, nA4, nBb4, nB4, nC5, $04, nC5, nRst, nBb4, nRst, nBb4
	dc.b	nRst, nA4, $08, $04, nRst, nBb4, $08, nAb4, $04, nG4, $08
	smpsReturn

Casino_Street_Zone_2_IOS_Call10:
	dc.b	nRst, $08, nA4, $04, nRst, nA4, $10, nBb4, $04, nRst, nBb4, nA4
	dc.b	$14, nRst, $08, nB4, $04, nRst, nB4, $10, nC5, $04, nRst, nC5
	dc.b	nBb4, $14
	smpsReturn

Casino_Street_Zone_2_IOS_Call11:
	dc.b	nRst, $08, nC5, $04, nRst, nB4, nBb4, $0C, nA4, $04, nRst, nC5
	dc.b	nRst, nF5, nRst, nA5, nRst, $08, nD5, $04, nRst, nF5, nD5, $08
	dc.b	nB4, nC5, $0C, nBb4, $14
	smpsReturn

Casino_Street_Zone_2_IOS_Call12:
	dc.b	nRst, $08, nC5, $04, nRst, nB4, nBb4, $0C, nA4, $04, nRst, nC5
	dc.b	nRst, nF5, nRst, nA5, nRst, nD5, $08, nF5, $04, nRst, nC5, nRst
	dc.b	nBb4, nRst, nA4, $14, nE5, $04, nF5, nA5
	smpsReturn

Casino_Street_Zone_2_IOS_Call13:
	dc.b	nRst, $08, nC5, $04, nRst, nA4, $10, nBb4, nB4, nC5, $04, nC5
	dc.b	nRst, nBb4, nRst, nBb4, nRst, nA4, $08, $04, nRst, nBb4, $08, nAb4
	dc.b	$04, nG4, $08
	smpsReturn

Casino_Street_Zone_2_IOS_Call0A:
	smpsSetvoice        $02
	dc.b	nF3, $08, nF4, nA3, nF4, $04, nBb3, nRst, nBb3, nF4, $08, nB3
	dc.b	nG4, nE4, $04, nF4, nC4, nD4, $08, nE4, nF4, $04, nRst, nA3
	dc.b	$08, nBb3, nB3, $04, nC4, $08
	smpsReturn

Casino_Street_Zone_2_IOS_Call0B:
	smpsSetvoice        $02
	dc.b	nF3, $10, nA3, nBb3, $0C, nA3, $04, nRst, nA3, $0C, nG3, $10
	dc.b	nB3, nC4, $0C, nBb3, $04, nRst, nBb3, $0C
	smpsReturn

Casino_Street_Zone_2_IOS_Call0C:
	dc.b	nA3, $0C, nB3, $04, nC4, nCs4, $0C, nD4, $10, nC4, nBb3, nB3
	dc.b	nC4
	smpsSetvoice        $01
	dc.b	nF4, $04, nE4, nD4, nC4
	smpsReturn

Casino_Street_Zone_2_IOS_Call0D:
	dc.b	nA3, $0C, nB3, $04, nC4, nCs4, $0C, nD4, $10, nC4, nBb3, nC4
	smpsSetvoice        $01
	dc.b	nF4, $04, nE4, nD4, nC4, nBb3, nA3, nG3, nF3
	smpsReturn

Casino_Street_Zone_2_IOS_Call0E:
	smpsSetvoice        $02
	dc.b	nF3, $08, nF4, $04, nRst, nA3, $08, nF4, $04, nRst, $08, nBb3
	dc.b	$04, nF4, $08, nB3, nG4, nE4, $04, nF4, nC4, nD4, $08, nE4
	dc.b	nF4, $04, nRst, nA3, $08, nBb3, nB3, $04, nC4, $08
	smpsReturn

Casino_Street_Zone_2_IOS_Call05:
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $02
	dc.b	nF3, $08, nF4, nA3, nF4, $04, nBb3, $01, nRst, $07, nBb3, $04
	dc.b	nF4, $08, nB3, nG4, $01, nRst, $07, nE4, $04, nF4, nC4, nD4
	dc.b	$08, nE4, nF4, $04, nRst, nA3, $08, nBb3, nB3, $04, nC4, $01
	dc.b	nRst, $06
	smpsReturn

Casino_Street_Zone_2_IOS_Call06:
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $02
	dc.b	nF3, $10, nA3, $08, nRst, nBb3, $0C, nA3, $04, nRst, nA3, nRst
	dc.b	$08, nG3, $10, nB3, $08, nRst, nC4, $0C, nBb3, $04, nRst, nBb3
	dc.b	nRst, $07
	smpsReturn

Casino_Street_Zone_2_IOS_Call07:
	dc.b	smpsNoAttack, nRst, $01, nA3, $0C, nB3, $04, nC4, nCs4, nRst, $08, nD4
	dc.b	$10, nC4, $08, nRst, nBb3, $10, nB3, nC4
	smpsSetvoice        $01
	dc.b	nF4, $04, nE4, nD4, nC4, $03
	smpsReturn

Casino_Street_Zone_2_IOS_Call08:
	dc.b	smpsNoAttack, $01, nA3, $0C, nB3, $04, nC4, nCs4, nRst, $08, nD4, $10
	dc.b	nC4, $08, nRst, nBb3, $10, nC4
	smpsSetvoice        $01
	dc.b	nF4, $04, nE4, nD4, nC4, nBb3, nA3, nG3, nF3, $03
	smpsReturn

Casino_Street_Zone_2_IOS_Call09:
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $02
	dc.b	nF3, $08, nF4, $04, nRst, nA3, $08, nF4, $04, nRst, $08, nBb3
	dc.b	$04, nF4, $08, nB3, nG4, $01, nRst, $07, nE4, $04, nF4, nC4
	dc.b	nD4, $08, nE4, nF4, $04, nRst, nA3, $08, nBb3, nB3, $04, nC4
	dc.b	$01, nRst, $06
	smpsReturn

Casino_Street_Zone_2_IOS_Call26:
	dc.b	smpsNoAttack, nRst, $7F, smpsNoAttack, nRst, $01
	smpsReturn

Casino_Street_Zone_2_IOS_Call27:
	dc.b	smpsNoAttack, nRst, $08
	smpsPSGvoice        $00
	dc.b	nF3, nRst, nF3, nRst, nF3, nRst, nF3, nRst, nG3, nRst, nG3, nRst
	dc.b	nG3, nRst, nG3
	smpsReturn

Casino_Street_Zone_2_IOS_Call28:
	dc.b	nRst, $08, nA3, nRst, nA3, nRst, nA3, nRst, nA3, nRst, nBb3, nRst
	dc.b	nB3, nRst, nC4, nC4, $04, nA3, nG3, nE3
	smpsReturn

Casino_Street_Zone_2_IOS_Call29:
	dc.b	nRst, $08, nF3, nRst, nF3, nRst, nF3, nRst, nF3, nRst, nG3, nRst
	dc.b	nG3, nRst, nG3, nRst, nG3
	smpsReturn

Casino_Street_Zone_2_IOS_Call2A:
	dc.b	nRst, $08, nA3, nRst, nA3, nRst, nA3, nRst, nA3, nRst, nBb3, nRst
	dc.b	nC4, nC4, $04, nBb3, nA3, nF3, nD3, nC3, nA2, nF2
	smpsReturn

Casino_Street_Zone_2_IOS_Call2B:
	dc.b	nRst, $7F, smpsNoAttack, nRst, $01
	smpsReturn

Casino_Street_Zone_2_IOS_Call21:
	dc.b	smpsNoAttack, nRst, $7F, smpsNoAttack, nRst, $01
	smpsReturn

Casino_Street_Zone_2_IOS_Call22:
	dc.b	smpsNoAttack, nRst, $08
	smpsPSGvoice        $00
	dc.b	nC3, nRst, nC3, nRst, nD3, nRst, nC3, nRst, nD3, nRst, nD3, nRst
	dc.b	nE3, nRst, nE3
	smpsReturn

Casino_Street_Zone_2_IOS_Call23:
	dc.b	nRst, $08, nE3, nRst, nG3, nRst, nF3, nRst, nF3, nRst, nF3, nRst
	dc.b	nG3, nRst, nG3, nRst, $10
	smpsReturn

Casino_Street_Zone_2_IOS_Call24:
	dc.b	smpsNoAttack, nRst, $08, nC3, nRst, nC3, nRst, nD3, nRst, nC3, nRst, nD3
	dc.b	nRst, nD3, nRst, nE3, nRst, nE3
	smpsReturn

Casino_Street_Zone_2_IOS_Call25:
	dc.b	nRst, $08, nE3, nRst, nG3, nRst, nF3, nRst, nF3, nRst, nF3, nRst
	dc.b	nG3, nRst, $20
	smpsReturn

Casino_Street_Zone_2_IOS_Call1D:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $02, nRst, nCs0, nRst, nCs0, nRst, $0A, nCs0, $02, nRst, $06
	dc.b	nCs0, $02, nRst, $06, nCs0, $02, nRst, $06, nCs0, $02, nRst, nCs0
	dc.b	nRst, $06, nCs0, $02, nRst, $06, nCs0, $02, nRst, nCs0, nRst, $06
	dc.b	nCs0, $02, nRst, $06, nCs0, $02, nRst, $06, nCs0, $02, nRst, $06
	dc.b	nCs0, $02, nRst, $06, nCs0, $02, nRst, $06, nCs0, $02, nRst, $06
	dc.b	nCs0, $02, nRst
	smpsReturn

Casino_Street_Zone_2_IOS_Call1E:
	dc.b	smpsNoAttack, $08
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $02, nRst, $0A, nCs0, $02, nRst, nCs0, nRst, $0A, nCs0, $02
	dc.b	nRst, nCs0, nRst, $06, nCs0, $02, nRst, $06, nCs0, $02, nRst, $0E
	dc.b	nCs0, $02, nRst, $0A, nCs0, $02, nRst, nCs0, nRst, $0A, nCs0, $02
	dc.b	nRst, nCs0, nRst, $06, nCs0, $02, nRst, $06, nCs0, $02, nRst, $06
	smpsReturn

Casino_Street_Zone_2_IOS_Call1F:
	dc.b	smpsNoAttack, nRst, $08
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $02, nRst, $0A, nCs0, $02, nRst, nCs0, nRst, $0A, nCs0, $02
	dc.b	nRst, nCs0, nRst, $06, nCs0, $02, nRst, $06, nCs0, $02, nRst, $0E
	dc.b	nCs0, $02, nRst, $0A, nCs0, $02, nRst, nCs0, nRst, $0A, nCs0, $02
	dc.b	nRst, nCs0, nRst, $06, nCs0, $02, nRst, nCs0, nRst, nCs0, nRst, nCs0
	dc.b	nRst
	smpsReturn

Casino_Street_Zone_2_IOS_Call20:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $02, nRst, $06, nCs0, $02, nRst, $06, nCs0, $02, nRst, $06
	dc.b	nCs0, $02, nRst, nCs0, nRst, $06, nCs0, $02, nRst, $06, nCs0, $02
	dc.b	nRst, nCs0, nRst, $06, nCs0, $02, nRst, $06, nCs0, $02, nRst, nCs0
	dc.b	nRst, $06, nCs0, $02, nRst, $06, nCs0, $02, nRst, $06, nCs0, $02
	dc.b	nRst, $06, nCs0, $02, nRst, $06, nCs0, $02, nRst, $06, nCs0, $02
	dc.b	nRst, $06, nCs0, $02, nRst
	smpsReturn

Casino_Street_Zone_2_IOS_Call00:
	dc.b	dKick, $02, nRst, $06, dSnare, $02, nRst, $06, dKick, $02, nRst, $06
	dc.b	dSnare, $02, nRst, dKick, nRst, $06, dKick, $02, nRst, dSnare, nRst, $06
	dc.b	dKick, $02, nRst, $06, dSnare, $02, nRst, $06, dKick, $02, nRst, dKick
	dc.b	nRst, dKick, nRst, dSnare, nRst, $06, dKick, $02, nRst, dKick, nRst, dKick
	dc.b	nRst, $06, dSnare, $02, nRst, $06, dSnare, $02, nRst, dKick, nRst, dSnare
	dc.b	nRst, dSnare, nRst, $06
	smpsReturn

Casino_Street_Zone_2_IOS_Call01:
	dc.b	dKick, $02, nRst, $06, dSnare, $02, nRst, $06, dKick, $02, nRst, $06
	dc.b	dSnare, $02, nRst, $06, dKick, $02, nRst, $06, dSnare, $02, nRst, $06
	dc.b	dKick, $02, nRst, $06, dSnare, $02, nRst, $06, dKick, $02, nRst, $06
	dc.b	dSnare, $02, nRst, $06, dKick, $02, nRst, $06, dSnare, $02, nRst, $06
	dc.b	dKick, $02, nRst, $06, dSnare, $02, nRst, dSnare, nRst, dKick, nRst, $06
	dc.b	dSnare, $02, nRst, $06
	smpsReturn

Casino_Street_Zone_2_IOS_Call02:
	dc.b	dKick, $02, nRst, $06, dSnare, $02, nRst, $06, dKick, $02, nRst, $06
	dc.b	dSnare, $02, nRst, $06, dKick, $02, nRst, $06, dSnare, $02, nRst, $06
	dc.b	dKick, $02, nRst, $06, dSnare, $02, nRst, $06, dKick, $02, nRst, $06
	dc.b	dSnare, $02, nRst, $06, dKick, $02, nRst, $06, dSnare, $02, nRst, $06
	dc.b	dKick, $02, nRst, $06, dSnare, $02, nRst, $06, dKick, $02, nRst, $06
	dc.b	dSnare, $02, nRst, $06
	smpsReturn

Casino_Street_Zone_2_IOS_Call03:
	dc.b	dKick, $02, nRst, $06, dSnare, $02, nRst, $06, dKick, $02, nRst, $06
	dc.b	dSnare, $02, nRst, $06, dKick, $02, nRst, $06, dSnare, $02, nRst, $06
	dc.b	dKick, $02, nRst, dSnare, nRst, dSnare, nRst, $06, dKick, $02, nRst, $06
	dc.b	dSnare, $02, nRst, $06, dKick, $02, nRst, $06, dSnare, $02, nRst, $06
	dc.b	dKick, $02, nRst, $06, dSnare, $02, nRst, dSnare, nRst, dKick, nRst, dSnare
	dc.b	nRst, dSnare, nRst, $06
	smpsReturn

Casino_Street_Zone_2_IOS_Call04:
	dc.b	dKick, $02, nRst, $06, dSnare, $02, nRst, $06, dKick, $02, nRst, $06
	dc.b	dSnare, $02, nRst, $06, dKick, $02, nRst, $06, dSnare, $02, nRst, $06
	dc.b	dKick, $02, nRst, dSnare, nRst, dSnare, nRst, $06, dKick, $02, nRst, $06
	dc.b	dSnare, $02, nRst, $06, dKick, $02, nRst, $06, dSnare, $02, nRst, $06
	dc.b	dKick, $02, nRst, dSnare, nRst, $06, dSnare, $02, nRst, dKick, nRst, dSnare
	dc.b	nRst, dSnare, nRst, dSnare, nRst
	smpsReturn

Casino_Street_Zone_2_IOS_Voices:
;	Voice $00
;	$3C
;	$01, $02, $0F, $04, 	$8D, $52, $9F, $1F, 	$09, $00, $00, $0D
;	$00, $00, $00, $00, 	$23, $08, $02, $F7, 	$15, $80, $1D, $87
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $04, $0F, $02, $01
	smpsVcRateScale     $00, $02, $01, $02
	smpsVcAttackRate    $1F, $1F, $12, $0D
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $00, $00, $09
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $00, $00, $02
	smpsVcReleaseRate   $07, $02, $08, $03
	smpsVcTotalLevel    $07, $1D, $00, $15

;	Voice $01
;	$3A
;	$01, $07, $01, $01, 	$8E, $8E, $8D, $53, 	$0E, $0E, $0E, $03
;	$00, $00, $00, $07, 	$1F, $FF, $1F, $0F, 	$18, $28, $27, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $07, $01
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $13, $0D, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $0E, $0E, $0E
	smpsVcDecayRate2    $07, $00, $00, $00
	smpsVcDecayLevel    $00, $01, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $27, $28, $18

;	Voice $02
;	$20
;	$36, $35, $30, $31, 	$DF, $DF, $9F, $9F, 	$07, $06, $09, $06
;	$07, $06, $06, $08, 	$20, $10, $10, $F8, 	$19, $37, $13, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $01, $00, $05, $06
	smpsVcRateScale     $02, $02, $03, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $09, $06, $07
	smpsVcDecayRate2    $08, $06, $06, $07
	smpsVcDecayLevel    $0F, $01, $01, $02
	smpsVcReleaseRate   $08, $00, $00, $00
	smpsVcTotalLevel    $00, $13, $37, $19

;	Voice $03
;	$3E
;	$77, $71, $32, $31, 	$1F, $1F, $1F, $1F, 	$0D, $06, $00, $00
;	$08, $06, $00, $00, 	$15, $0A, $0A, $0A, 	$1B, $80, $80, $80
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $01, $02, $01, $07
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $06, $0D
	smpsVcDecayRate2    $00, $00, $06, $08
	smpsVcDecayLevel    $00, $00, $00, $01
	smpsVcReleaseRate   $0A, $0A, $0A, $05
	smpsVcTotalLevel    $00, $00, $00, $1B

;	Voice $04
;	$34
;	$33, $41, $7E, $74, 	$5B, $9F, $5F, $1F, 	$04, $07, $07, $08
;	$00, $00, $00, $00, 	$FF, $FF, $EF, $FF, 	$23, $80, $29, $87
	smpsVcAlgorithm     $04
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $07, $04, $03
	smpsVcCoarseFreq    $04, $0E, $01, $03
	smpsVcRateScale     $00, $01, $02, $01
	smpsVcAttackRate    $1F, $1F, $1F, $1B
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $07, $07, $04
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0E, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $07, $29, $00, $23

