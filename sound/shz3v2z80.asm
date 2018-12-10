Splash_Hill_Zone_Act_3_norm_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Splash_Hill_Zone_Act_3_norm_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $02, $5C

	smpsHeaderDAC       Splash_Hill_Zone_Act_3_norm_DAC
	smpsHeaderFM        Splash_Hill_Zone_Act_3_norm_FM1,	$F6, $10
	smpsHeaderFM        Splash_Hill_Zone_Act_3_norm_FM2,	$02, $10
	smpsHeaderFM        Splash_Hill_Zone_Act_3_norm_FM3,	$F6, $10
	smpsHeaderFM        Splash_Hill_Zone_Act_3_norm_FM4,	$F6, $14
	smpsHeaderFM        Splash_Hill_Zone_Act_3_norm_FM5,	$F6, $14
	smpsHeaderPSG       Splash_Hill_Zone_Act_3_norm_PSG1,	$D2+$0C, $04, $00, $00
	smpsHeaderPSG       Splash_Hill_Zone_Act_3_norm_PSG2,	$D2+$0C, $04, $00, $00
	smpsHeaderPSG       Splash_Hill_Zone_Act_3_norm_PSG3,	$D0, $01, $00, $00

; FM1 Data
Splash_Hill_Zone_Act_3_norm_FM1:
	smpsCall            Splash_Hill_Zone_Act_3_norm_Call1C

Splash_Hill_Zone_Act_3_norm_Jump05:
	smpsCall            Splash_Hill_Zone_Act_3_norm_Call1D
	smpsCall            Splash_Hill_Zone_Act_3_norm_Call1E
	smpsCall            Splash_Hill_Zone_Act_3_norm_Call1F
	smpsCall            Splash_Hill_Zone_Act_3_norm_Call20
	smpsCall            Splash_Hill_Zone_Act_3_norm_Call21
	smpsJump            Splash_Hill_Zone_Act_3_norm_Jump05

; FM2 Data
Splash_Hill_Zone_Act_3_norm_FM2:
	smpsCall            Splash_Hill_Zone_Act_3_norm_Call17

Splash_Hill_Zone_Act_3_norm_Jump04:
	smpsCall            Splash_Hill_Zone_Act_3_norm_Call18
	smpsCall            Splash_Hill_Zone_Act_3_norm_Call19
	smpsCall            Splash_Hill_Zone_Act_3_norm_Call1A
	smpsCall            Splash_Hill_Zone_Act_3_norm_Call19
	smpsCall            Splash_Hill_Zone_Act_3_norm_Call1B
	smpsJump            Splash_Hill_Zone_Act_3_norm_Jump04

; FM3 Data
Splash_Hill_Zone_Act_3_norm_FM3:
	smpsCall            Splash_Hill_Zone_Act_3_norm_Call12

Splash_Hill_Zone_Act_3_norm_Jump03:
	smpsCall            Splash_Hill_Zone_Act_3_norm_Call13
	smpsCall            Splash_Hill_Zone_Act_3_norm_Call14
	smpsCall            Splash_Hill_Zone_Act_3_norm_Call13
	smpsCall            Splash_Hill_Zone_Act_3_norm_Call15
	smpsCall            Splash_Hill_Zone_Act_3_norm_Call16
	smpsJump            Splash_Hill_Zone_Act_3_norm_Jump03

; FM4 Data
Splash_Hill_Zone_Act_3_norm_FM4:
	smpsCall            Splash_Hill_Zone_Act_3_norm_Call0C

Splash_Hill_Zone_Act_3_norm_Jump02:
	smpsCall            Splash_Hill_Zone_Act_3_norm_Call0D
	smpsCall            Splash_Hill_Zone_Act_3_norm_Call0E
	smpsCall            Splash_Hill_Zone_Act_3_norm_Call0F
	smpsCall            Splash_Hill_Zone_Act_3_norm_Call10
	smpsCall            Splash_Hill_Zone_Act_3_norm_Call11
	smpsJump            Splash_Hill_Zone_Act_3_norm_Jump02

; FM5 Data
Splash_Hill_Zone_Act_3_norm_FM5:
	smpsCall            Splash_Hill_Zone_Act_3_norm_Call06

Splash_Hill_Zone_Act_3_norm_Jump01:
	smpsCall            Splash_Hill_Zone_Act_3_norm_Call07
	smpsCall            Splash_Hill_Zone_Act_3_norm_Call08
	smpsCall            Splash_Hill_Zone_Act_3_norm_Call09
	smpsCall            Splash_Hill_Zone_Act_3_norm_Call0A
	smpsCall            Splash_Hill_Zone_Act_3_norm_Call0B
	smpsJump            Splash_Hill_Zone_Act_3_norm_Jump01

; PSG1 Data
Splash_Hill_Zone_Act_3_norm_PSG1:
	smpsCall            Splash_Hill_Zone_Act_3_norm_Call2D

Splash_Hill_Zone_Act_3_norm_Jump08:
	smpsCall            Splash_Hill_Zone_Act_3_norm_Call2E
	smpsCall            Splash_Hill_Zone_Act_3_norm_Call2F
	smpsCall            Splash_Hill_Zone_Act_3_norm_Call30
	smpsCall            Splash_Hill_Zone_Act_3_norm_Call2F
	smpsCall            Splash_Hill_Zone_Act_3_norm_Call2D
	smpsJump            Splash_Hill_Zone_Act_3_norm_Jump08

; PSG2 Data
Splash_Hill_Zone_Act_3_norm_PSG2:
	smpsCall            Splash_Hill_Zone_Act_3_norm_Call28

Splash_Hill_Zone_Act_3_norm_Jump07:
	smpsCall            Splash_Hill_Zone_Act_3_norm_Call29
	smpsCall            Splash_Hill_Zone_Act_3_norm_Call2A
	smpsCall            Splash_Hill_Zone_Act_3_norm_Call2B
	smpsCall            Splash_Hill_Zone_Act_3_norm_Call2C
	smpsCall            Splash_Hill_Zone_Act_3_norm_Call28
	smpsJump            Splash_Hill_Zone_Act_3_norm_Jump07

; PSG3 Data
Splash_Hill_Zone_Act_3_norm_PSG3:
	smpsPSGform         $E7
	smpsCall            Splash_Hill_Zone_Act_3_norm_Call22

Splash_Hill_Zone_Act_3_norm_Jump06:
	smpsCall            Splash_Hill_Zone_Act_3_norm_Call23
	smpsCall            Splash_Hill_Zone_Act_3_norm_Call24
	smpsCall            Splash_Hill_Zone_Act_3_norm_Call25
	smpsCall            Splash_Hill_Zone_Act_3_norm_Call26
	smpsCall            Splash_Hill_Zone_Act_3_norm_Call27
	smpsJump            Splash_Hill_Zone_Act_3_norm_Jump06

; DAC Data
Splash_Hill_Zone_Act_3_norm_DAC:
	smpsCall            Splash_Hill_Zone_Act_3_norm_Call00

Splash_Hill_Zone_Act_3_norm_Jump00:
	smpsCall            Splash_Hill_Zone_Act_3_norm_Call01
	smpsCall            Splash_Hill_Zone_Act_3_norm_Call02
	smpsCall            Splash_Hill_Zone_Act_3_norm_Call03
	smpsCall            Splash_Hill_Zone_Act_3_norm_Call04
	smpsCall            Splash_Hill_Zone_Act_3_norm_Call05
	smpsJump            Splash_Hill_Zone_Act_3_norm_Jump00

Splash_Hill_Zone_Act_3_norm_Call1C:
	smpsSetvoice        $02
	dc.b	nBb4, $02, nD5, nF5, nBb5, nA5, $04, nF5, nRst, nD5, nG5, nF5
	dc.b	nRst, nD5, nEb5, nD5, nEb5, nF5, $0C, nBb4, $02, nD5, nF5, nBb5
	dc.b	nA5, $04, nF5, nRst, nD5, nG5, nF5, nRst, nD5, nEb5, nD5, nC5
	dc.b	nBb4, $08, nF5, $04
	smpsReturn

Splash_Hill_Zone_Act_3_norm_Call1D:
	dc.b	nA5, $02, nRst, nBb5, nRst, $06, nBb5, $04, nC6, $02, nRst, nD6
	dc.b	$08, nBb5, $04, nC6, $02, nRst, nD6, $04, nC6, nA5, $02, nRst
	dc.b	nA5, $04, nF5, nRst, nF5, nC6, $02, nRst, nBb5, $04, nRst, nG5
	dc.b	nC6, $02, nRst, nBb5, $06, nRst, $02, nG5, $04, nA5, $02, nRst
	dc.b	nBb5, $04, nC6, $02, nRst, nBb5, $04, nD6, nBb5, nF5, nRst
	smpsReturn

Splash_Hill_Zone_Act_3_norm_Call1E:
	dc.b	nAb5, $08, nG5, $06, nRst, $02, nG5, nRst, nG5, $04, nRst, nBb5
	dc.b	nRst, nA5, nRst, nG5, $08, nF5, $04, nRst, nG5, nA5, $02, nRst
	dc.b	nF5, nRst, nG5, $08, nF5, $04, nEb5, nRst, nBb5, nRst, nA5, nRst
	dc.b	nG5, $02, nRst, nF5, $0A, nRst, $02, nA5, $04
	smpsReturn

Splash_Hill_Zone_Act_3_norm_Call1F:
	dc.b	nF5, $02, nRst, nBb5, nRst, $06, nF5, $04, nC6, $02, nRst, nBb5
	dc.b	$08, nF5, $04, nC6, $02, nRst, nBb5, $04, nC6, nA5, $02, nRst
	dc.b	nA5, $04, nF5, nRst, nF5, nC6, $02, nRst, nBb5, $04, nRst, nG5
	dc.b	nC6, $02, nRst, nBb5, $06, nRst, $02, nG5, $04, nA5, $02, nRst
	dc.b	nBb5, $04, nAb5, $02, nRst, nC6, $04, nBb5, $02, nRst, nBb5, $04
	dc.b	nAb5, nRst
	smpsReturn

Splash_Hill_Zone_Act_3_norm_Call20:
	dc.b	nAb5, $08, nBb5, $06, nRst, $02, nG5, nRst, nG5, $04, nRst, nBb5
	dc.b	nRst, nA5, nRst, nBb5, $02, nRst, nA5, $08, nG5, $02, nRst, nF5
	dc.b	$04, nA5, $02, nRst, nF5, nRst, nG5, $06, nRst, $02, nBb5, nRst
	dc.b	nG5, $04, nRst, nEb6, nRst, nA5, nRst, nBb5, $02, nRst, nC6, $0A
	dc.b	nRst, $06
	smpsReturn

Splash_Hill_Zone_Act_3_norm_Call21:
	dc.b	nBb4, $02, nD5, nF5, nBb5, nA5, $04, nF5, nRst, nD5, nG5, nF5
	dc.b	nRst, nD5, nEb5, nD5, nEb5, nF5, $0C, nBb4, $02, nD5, nF5, nBb5
	dc.b	nA5, $04, nF5, nRst, nD5, nG5, nF5, nRst, nD5, nEb5, nD5, nC5
	dc.b	nBb4, $08, nF5, $04
	smpsReturn

Splash_Hill_Zone_Act_3_norm_Call17:
	dc.b	smpsNoAttack, $08
	smpsSetvoice        $01
	dc.b	nBb2, $06, $02, nBb3, nRst, nBb3, nBb2, nD2, $06, $02, nD3, nRst
	dc.b	nD3, nD2, nEb2, $06, $02, nEb3, nRst, nEb3, nEb2, nF2, nRst, nF2
	dc.b	nF3, nD3, nBb2, nA2, nF2, nG2, $06, $02, nG3, nRst, nG3, nG2
	dc.b	nD2, $06, $02, nD3, nRst, nD3, nD2, nEb3, $04, $02, nF3, nF2
	dc.b	nF3, nBb2, $06, nBb3, $02, nD3, nEb3
	smpsReturn

Splash_Hill_Zone_Act_3_norm_Call18:
	dc.b	nE3, $02, nF3, nF2, $04, nBb2, $06, nRst, $02, nBb2, $04, $02
	dc.b	nF2, nBb2, nRst, nBb2, $04, nRst, $02, nBb2, nC3, $04, nD3, $06
	dc.b	nC3, $02, nA2, $06, nF2, $02, nD2, $04, nD3, nRst, $02, nD3
	dc.b	nF2, $04, nG2, $06, nRst, $02, nG2, $04, $02, nD2, nG2, nRst
	dc.b	nG2, $04, nRst, $02, nG2, nBb2, $04, nAb2, $06, $02, $06, nBb2
	dc.b	$02, nAb2, nRst, nAb2, $04
	smpsReturn

Splash_Hill_Zone_Act_3_norm_Call19:
	dc.b	nG2, $02, nRst, nF2, $04, nEb2, $06, $02, $06, nF2, $02, nEb2
	dc.b	nRst, nC3, nBb2, nA2, nRst, nF2, nRst, $04, nF2, $02, nF3, nF2
	dc.b	nG2, nF2, $06, nA2, $02, nF2, nC3, $04, nBb2, $02, nA2, nG2
	dc.b	nF2, nC3, $06, nBb2, $02, nC3, $06, nD3, $02, nC3, $04, nBb2
	dc.b	$02, nA2, nG2, nRst, nF2, $04, nRst, nF3, $02, nF2, nRst, nF2
	dc.b	nC3, nF2, nBb2, nA2, nBb2, nC3
	smpsReturn

Splash_Hill_Zone_Act_3_norm_Call1A:
	dc.b	nF3, $02, nA2, nG2, nF2, nBb2, $06, nRst, $02, nBb2, $04, $02
	dc.b	nF2, nBb2, nRst, nBb2, $04, nRst, $02, nBb2, nC3, $04, nD3, $06
	dc.b	nC3, $02, nA2, $06, nF2, $02, nD2, $04, nD3, nRst, $02, nD3
	dc.b	nF2, $04, nG2, $06, nRst, $02, nG2, $04, $02, nD2, nG2, nRst
	dc.b	nG2, $04, nRst, $02, nG2, nBb2, $04, nAb2, $06, $02, $06, nBb2
	dc.b	$02, nAb2, nRst, nAb2, $04
	smpsReturn

Splash_Hill_Zone_Act_3_norm_Call1B:
	dc.b	nF3, $02, nA2, nG2, nF2, nBb2, $06, $02, nBb3, nRst, nBb3, nBb2
	dc.b	nD2, $06, $02, nD3, nRst, nD3, nD2, nEb2, $06, $02, nEb3, nRst
	dc.b	nEb3, nEb2, nF2, nRst, nF2, nF3, nD3, nBb2, nA2, nF2, nG2, $06
	dc.b	$02, nG3, nRst, nG3, nG2, nD2, $06, $02, nD3, nRst, nD3, nD2
	dc.b	nEb3, $04, $02, nF3, nF2, nF3, nBb2, $06, nBb3, $02, nD3, nEb3
	smpsReturn

Splash_Hill_Zone_Act_3_norm_Call12:
	dc.b	smpsNoAttack, $08
	smpsSetvoice        $03
	dc.b	nF5, $04, nD5, nRst, nBb4, nEb5, nD5, nRst, nBb4, nG4, nBb4, nG4
	dc.b	nC5, $0C, nRst, $08, nF5, $04, nD5, nRst, nG4, nEb5, nD5, nRst
	dc.b	nBb4, nG4, nBb4, nA4, nF4, $08
	smpsSetvoice        $00
	dc.b	nD5, $04
	smpsReturn

Splash_Hill_Zone_Act_3_norm_Call13:
	dc.b	nEb5, $02, nRst, nF5, $04, nRst, nD5, nEb5, $02, nRst, nF5, $08
	dc.b	nD5, $04, nEb5, $02, nRst, nF5, $04, nG5, nF5, nD5, nBb4, nRst
	dc.b	nD5, nEb5, $02, nRst, nF5, $04, nRst, nD5, nEb5, $02, nRst, nF5
	dc.b	$08, nD5, $04, nEb5, $02, nRst, nF5, $04, nG5, $02, nRst, nG5
	dc.b	$04, nF5, nD5, nBb4, nRst
	smpsReturn

Splash_Hill_Zone_Act_3_norm_Call14:
	dc.b	nD5, $08, nEb5, nD5, $04, nBb4, nRst, nD5, nRst, nC5, $0C, nRst
	dc.b	nBb4, $04, nC5, $02, nRst, nD5, nRst, nEb5, $08, nD5, $04, nBb4
	dc.b	nRst, nG5, nRst, nF5, $10, nRst, $08, nD5, $04
	smpsReturn

Splash_Hill_Zone_Act_3_norm_Call15:
	dc.b	nD5, $08, nEb5, nD5, $04, nBb4, nRst, nD5, nRst, nC5, $0C, nRst
	dc.b	nBb4, $04, nC5, $02, nRst, nD5, nRst, nEb5, $08, nD5, $04, nBb4
	dc.b	nRst, nG5, nRst, nF5, $10, nRst, $0C
	smpsReturn

Splash_Hill_Zone_Act_3_norm_Call16:
	dc.b	smpsNoAttack, nRst, $08
	smpsSetvoice        $03
	dc.b	nF5, $04, nD5, nRst, nBb4, nEb5, nD5, nRst, nBb4, nG4, nBb4, nG4
	dc.b	nC5, $0C, nRst, $08, nF5, $04, nD5, nRst, nG4, nEb5, nD5, nRst
	dc.b	nBb4, nG4, nBb4, nA4, nF4, $08
	smpsSetvoice        $00
	dc.b	nD5, $04
	smpsReturn

Splash_Hill_Zone_Act_3_norm_Call0C:
	dc.b	smpsNoAttack, $10
	smpsSetvoice        $00
	dc.b	nF6, $02, nRst, $0E, nD6, $02, nRst, $0A, nEb6, $02, nRst, $06
	dc.b	nF6, $0E, nRst, nF6, $02, nRst, $0E, nD6, $02, nRst, $0A, nEb6
	dc.b	$02, nRst, $06, nD6, $0C
	smpsReturn

Splash_Hill_Zone_Act_3_norm_Call0D:
	dc.b	smpsNoAttack, $02, nRst, $0A, nBb5, $02, nRst, nBb5, $06, nRst, $02, nBb5
	dc.b	$03, nRst, nBb5, nRst, nBb5, nRst, $05, nA5, $02, nRst, nA5, $06
	dc.b	nRst, $02, nA5, $03, nRst, nA5, nRst, nA5, nRst, $05, nBb5, $02
	dc.b	nRst, nBb5, $06, nRst, $02, nBb5, $03, nRst, nBb5, nRst, nBb5, nRst
	dc.b	$05, nBb5, $02, nRst, nAb5, $06, nRst, $02, nAb5, $03, nRst, nAb5
	dc.b	$02
	smpsReturn

Splash_Hill_Zone_Act_3_norm_Call0E:
	dc.b	smpsNoAttack, $01, nRst, $03, nAb5, nRst, $05, nBb5, $02, nRst, nBb5, $08
	dc.b	nRst, $04, nBb5, $02, nRst, $06, nA5, $04, nRst, nG5, $02, nRst
	dc.b	nA5, $06, nRst, $02, nA5, $03, nRst, nA5, nRst, nA5, nRst, $05
	dc.b	nBb5, $02, nRst, nBb5, $08, nRst, $04, nBb5, $02, nRst, $06, nA5
	dc.b	$04, nRst, nG5, $02, nRst, nA5, $06, nRst, $0A
	smpsReturn

Splash_Hill_Zone_Act_3_norm_Call0F:
	dc.b	nC6, $02, nD6, nEb6, nF6, nRst, $04, nBb5, $02, nRst, nBb5, $06
	dc.b	nRst, $02, nBb5, $03, nRst, nBb5, nRst, nBb5, nRst, $05, nA5, $02
	dc.b	nRst, nA5, $06, nRst, $02, nA5, $03, nRst, nA5, nRst, nA5, nRst
	dc.b	$05, nBb5, $02, nRst, nBb5, $06, nRst, $02, nBb5, $03, nRst, nBb5
	dc.b	nRst, nBb5, nRst, $05, nBb5, $02, nRst, nAb5, $06, nRst, $02, nAb5
	dc.b	$03, nRst, nAb5, $02
	smpsReturn

Splash_Hill_Zone_Act_3_norm_Call10:
	dc.b	smpsNoAttack, $01, nRst, $03, nAb5, nRst, $05, nBb5, $02, nRst, nBb5, $08
	dc.b	nRst, $04, nBb5, $02, nRst, $06, nA5, $04, nRst, nG5, $02, nRst
	dc.b	nA5, $06, nRst, $02, nA5, $03, nRst, nA5, nRst, nA5, nRst, $05
	dc.b	nBb5, $02, nRst, nBb5, $08, nRst, $04, nBb5, $02, nRst, $06, nA5
	dc.b	$04, nRst, nG5, $02, nRst, nA5, $06, nRst, $02, nC6, nD6, nEb6
	dc.b	nF6
	smpsReturn

Splash_Hill_Zone_Act_3_norm_Call11:
	dc.b	nRst, $10, nF6, $02, nRst, $0E, nD6, $02, nRst, $0A, nEb6, $02
	dc.b	nRst, $06, nF6, $0E, nRst, nF6, $02, nRst, $0E, nD6, $02, nRst
	dc.b	$0A, nEb6, $02, nRst, $06, nD6, $0C
	smpsReturn

Splash_Hill_Zone_Act_3_norm_Call06:
	dc.b	smpsNoAttack, $10
	smpsSetvoice        $00
	dc.b	nBb5, $02, nRst, $0E, nBb5, $02, nRst, $0A, nBb5, $02, nRst, $06
	dc.b	nA5, $0E, nRst, nBb5, $02, nRst, $0E, nBb5, $02, nRst, $0A, nBb5
	dc.b	$02, nRst, $06, nBb5, $0C
	smpsReturn

Splash_Hill_Zone_Act_3_norm_Call07:
	dc.b	smpsNoAttack, $02, nRst, $0A, nF5, $02, nRst, nF5, $06, nRst, $02, nF5
	dc.b	$03, nRst, nF5, nRst, nF5, nRst, $05, nF5, $02, nRst, nF5, $06
	dc.b	nRst, $02, nF5, $03, nRst, nF5, nRst, nF5, nRst, $05, nF5, $02
	dc.b	nRst, nF5, $06, nRst, $02, nF5, $03, nRst, nF5, nRst, nF5, nRst
	dc.b	$05, nF5, $02, nRst, nF5, $06, nRst, $02, nF5, $03, nRst, nF5
	dc.b	$02
	smpsReturn

Splash_Hill_Zone_Act_3_norm_Call08:
	dc.b	smpsNoAttack, $01, nRst, $03, nF5, nRst, $05, nEb5, $02, nRst, nEb5, $08
	dc.b	nRst, $04, nEb5, $02, nRst, $06, nF5, $04, nRst, nF5, $02, nRst
	dc.b	nF5, $06, nRst, $02, nF5, $03, nRst, nF5, nRst, nF5, nRst, $05
	dc.b	nEb5, $02, nRst, nEb5, $08, nRst, $04, nEb5, $02, nRst, $06, nF5
	dc.b	$04, nRst, nF5, $02, nRst, nF5, $06, nRst, $02, nF5, nG5, nA5
	dc.b	nBb5
	smpsReturn

Splash_Hill_Zone_Act_3_norm_Call09:
	dc.b	nRst, $0C, nF5, $02, nRst, nF5, $06, nRst, $02, nF5, $03, nRst
	dc.b	nF5, nRst, nF5, nRst, $05, nF5, $02, nRst, nF5, $06, nRst, $02
	dc.b	nF5, $03, nRst, nF5, nRst, nF5, nRst, $05, nF5, $02, nRst, nF5
	dc.b	$06, nRst, $02, nF5, $03, nRst, nF5, nRst, nF5, nRst, $05, nF5
	dc.b	$02, nRst, nF5, $06, nRst, $02, nF5, $03, nRst, nF5, $02
	smpsReturn

Splash_Hill_Zone_Act_3_norm_Call0A:
	dc.b	smpsNoAttack, $01, nRst, $03, nF5, nRst, $05, nEb5, $02, nRst, nEb5, $08
	dc.b	nRst, $04, nEb5, $02, nRst, $06, nF5, $04, nRst, nF5, $02, nRst
	dc.b	nF5, $06, nRst, $02, nF5, $03, nRst, nF5, nRst, nF5, nRst, $05
	dc.b	nEb5, $02, nRst, nEb5, $08, nRst, $04, nEb5, $02, nRst, $06, nF5
	dc.b	$04, nRst, nF5, $02, nRst, nF5, nG5, nA5, nBb5, nRst, $08
	smpsReturn

Splash_Hill_Zone_Act_3_norm_Call0B:
	dc.b	smpsNoAttack, nRst, $10, nBb5, $02, nRst, $0E, nBb5, $02, nRst, $0A, nBb5
	dc.b	$02, nRst, $06, nA5, $0E, nRst, nBb5, $02, nRst, $0E, nBb5, $02
	dc.b	nRst, $0A, nBb5, $02, nRst, $06, nBb5, $0C
	smpsReturn

Splash_Hill_Zone_Act_3_norm_Call2D:
	dc.b	smpsNoAttack, $7F, smpsNoAttack, $01
	smpsReturn

Splash_Hill_Zone_Act_3_norm_Call2E:
	smpsPSGvoice        $00
	dc.b	nD5, $04, nEb5, $02, nRst, nF5, $08, nD5, $04, nEb5, $02, nRst
	dc.b	nF5, $08, nD5, $04, nEb5, $02, nRst, nF5, $04, nG5, nF5, nD5
	dc.b	nBb4, nRst, nD5, nEb5, $02, nRst, nF5, $08, nD5, $04, nEb5, $02
	dc.b	nRst, nF5, $08, nD5, $04, nEb5, $02, nRst, nF5, $04, nG5, $02
	dc.b	nRst, nG5, $04, nF5, nD5, nBb4
	smpsReturn

Splash_Hill_Zone_Act_3_norm_Call2F:
	dc.b	nRst, $04, nD5, nRst, nEb5, $08, nD5, $04, nBb4, nRst, nD5, nRst
	dc.b	nC5, $10, nRst, $08, nBb4, $04, nC5, $02, nRst, nD5, nRst, nEb5
	dc.b	$08, nD5, $04, nBb4, nRst, nG5, nRst, nF5, $14, nRst, $04
	smpsReturn

Splash_Hill_Zone_Act_3_norm_Call30:
	dc.b	nD5, $04, nEb5, $02, nRst, nF5, $08, nD5, $04, nEb5, $02, nRst
	dc.b	nF5, $08, nD5, $04, nEb5, $02, nRst, nF5, $04, nG5, nF5, nD5
	dc.b	nBb4, nRst, nD5, nEb5, $02, nRst, nF5, $08, nD5, $04, nEb5, $02
	dc.b	nRst, nF5, $08, nD5, $04, nEb5, $02, nRst, nF5, $04, nG5, $02
	dc.b	nRst, nG5, $04, nF5, nD5, nBb4
	smpsReturn

Splash_Hill_Zone_Act_3_norm_Call28:
	dc.b	smpsNoAttack, $7F, smpsNoAttack, $01
	smpsReturn

Splash_Hill_Zone_Act_3_norm_Call29:
	smpsPSGvoice        $00
	dc.b	nF5, $04, nA5, $02, nRst, nBb5, $06, nRst, $02, nBb5, $04, nC6
	dc.b	$02, nRst, nD6, $08, nBb5, $04, nC6, $02, nRst, nD6, $04, nC6
	dc.b	nA5, $02, nRst, nA5, $04, nF5, nRst, nF5, nC6, $02, nRst, nBb5
	dc.b	$08, nG5, $04, nC6, $02, nRst, nBb5, $06, nRst, $02, nG5, $04
	dc.b	nA5, $02, nRst, nBb5, $04, nC6, $02, nRst, nBb5, $04, nD6, nBb5
	dc.b	nF5
	smpsReturn

Splash_Hill_Zone_Act_3_norm_Call2A:
	dc.b	nRst, $04, nAb5, nRst, nG5, $06, nRst, $02, nG5, nRst, nG5, $04
	dc.b	nRst, nBb5, nRst, nA5, $08, nG5, nF5, $04, nRst, nG5, nA5, $02
	dc.b	nRst, nF5, nRst, nG5, $08, nF5, $04, nEb5, nRst, nBb5, nRst, nA5
	dc.b	$08, nG5, $02, nRst, nF5, $0A, nRst, $02
	smpsReturn

Splash_Hill_Zone_Act_3_norm_Call2B:
	dc.b	nA5, $04, nF5, $02, nRst, nBb5, $06, nRst, $02, nF5, $04, nC6
	dc.b	$02, nRst, nBb5, $08, nF5, $04, nC6, $02, nRst, nBb5, $04, nC6
	dc.b	nA5, $02, nRst, nA5, $04, nF5, nRst, nF5, nC6, $02, nRst, nBb5
	dc.b	$08, nG5, $04, nC6, $02, nRst, nBb5, $06, nRst, $02, nG5, $04
	dc.b	nA5, $02, nRst, nBb5, $04, nAb5, $02, nRst, nC6, $04, nBb5, $02
	dc.b	nRst, nBb5, $04, nAb5
	smpsReturn

Splash_Hill_Zone_Act_3_norm_Call2C:
	dc.b	nRst, $04, nAb5, nRst, nBb5, $06, nRst, $02, nG5, nRst, nG5, $04
	dc.b	nRst, nBb5, nRst, nA5, $08, nBb5, $02, nRst, nA5, $08, nG5, $02
	dc.b	nRst, nF5, $04, nA5, $02, nRst, nF5, nRst, nG5, $06, nRst, $02
	dc.b	nBb5, nRst, nG5, $04, nRst, nEb6, nRst, nA5, $08, nBb5, $02, nRst
	dc.b	nC6, $0A, nRst, $02
	smpsReturn

Splash_Hill_Zone_Act_3_norm_Call22:
	dc.b	smpsNoAttack, nRst, $0C
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $02, nRst, $04, nCs0, $02, $08, $02, nRst, $04, nCs0, $02
	dc.b	$08, $04, nRst, $02, nCs0, nCs0, $04, nRst, nCs0, $02, nRst, $04
	dc.b	nCs0, $02, $08, $02, nRst, $04, nCs0, $02, $08, $04, nRst, $02
	dc.b	nCs0, nCs0, $08, $04, nRst, $02, nCs0, nCs0, $04, nRst, nCs0
	smpsReturn

Splash_Hill_Zone_Act_3_norm_Call23:
	dc.b	nRst, $02
	smpsPSGvoice        fTone_02
	dc.b	nCs0, nCs0, nRst, $06, nCs0, $02, nRst, $04, nCs0, $02, $08, $04
	dc.b	nRst, $02, nCs0, nCs0, $08, $02, nRst, $04, nCs0, $02, $08, $02
	dc.b	nRst, $04, nCs0, $02, nCs0, nRst, $06, nCs0, $02, nRst, $04, nCs0
	dc.b	$02, $08, $04, nRst, $02, nCs0, nCs0, $08, $06, $02, $08, $04
	smpsReturn

Splash_Hill_Zone_Act_3_norm_Call24:
	dc.b	smpsNoAttack, $02
	smpsPSGvoice        fTone_02
	dc.b	nCs0, nCs0, $08, $06, $02, $08, $04, nRst, $02, nCs0, nCs0, nRst
	dc.b	$06, nCs0, $02, nRst, $04, nCs0, $02, $08, $04, nRst, $02, nCs0
	dc.b	nCs0, $08, $02, nRst, $04, nCs0, $02, $08, $04, nRst, $02, nCs0
	dc.b	nCs0, nRst, $06, nCs0, $02, nRst, $04, nCs0, $02, $08, $04
	smpsReturn

Splash_Hill_Zone_Act_3_norm_Call25:
	dc.b	smpsNoAttack, $02
	smpsPSGvoice        fTone_02
	dc.b	nCs0, nCs0, $08, $02, nRst, $04, nCs0, $02, $08, $04, nRst, $02
	dc.b	nCs0, nCs0, $08, $06, $02, $08, $04, nRst, $02, nCs0, nCs0, nRst
	dc.b	$06, nCs0, $02, nRst, $04, nCs0, $02, $08, $04, nRst, $02, nCs0
	dc.b	nCs0, $08, $06, $02, $08, $02, nRst
	smpsReturn

Splash_Hill_Zone_Act_3_norm_Call26:
	dc.b	smpsNoAttack, $02
	smpsPSGvoice        fTone_02
	dc.b	nCs0, nCs0, $08, $02, nRst, $04, nCs0, $02, $08, $04, nRst, $02
	dc.b	nCs0, nCs0, nRst, $06, nCs0, $04, nRst, $02, nCs0, nCs0, $08, $02
	dc.b	nRst, $04, nCs0, $02, $08, $02, nRst, $04, nCs0, $02, $08, $04
	dc.b	nRst, $02, nCs0, nCs0, $04, nRst, nCs0, $06, $02, $08, $04
	smpsReturn

Splash_Hill_Zone_Act_3_norm_Call27:
	dc.b	nRst, $02
	smpsPSGvoice        fTone_02
	dc.b	nCs0, nCs0, nRst, $0C, nCs0, $02, $08, $02, nRst, $04, nCs0, $02
	dc.b	$08, $04, nRst, $02, nCs0, nCs0, $04, nRst, nCs0, nRst, $02, nCs0
	dc.b	nCs0, nRst, $06, nCs0, $02, nRst, $04, nCs0, $02, $08, $04, nRst
	dc.b	$02, nCs0, nCs0, $08, $04, nRst, $02, nCs0, nCs0, $04, nRst, nCs0
	smpsReturn

Splash_Hill_Zone_Act_3_norm_Call00:
	dc.b	dSnare, $04, $02, dSnare, dKick, $08, dSnare, $06, $02, dKick, $04, dKick
	dc.b	dSnare, $06, $02, dKick, nRst, dKick, $04, dSnare, dKick, nRst, dKick, dSnare
	dc.b	dSnare, $02, dSnare, dKick, $08, dSnare, $06, $02, dKick, nRst, dKick, $04
	dc.b	dSnare, $06, $02, dKick, nRst, dSnare, $04, dSnare, dKick, dSnare, $02, dSnare
	dc.b	dKick, dSnare
	smpsReturn

Splash_Hill_Zone_Act_3_norm_Call01:
	dc.b	dSnare, $04, dSnare, dKick, $08, dSnare, $06, $02, dKick, nRst, dKick, $04
	dc.b	dSnare, $06, nRst, $02, dKick, $08, dSnare, $06, $02, dKick, $04, dKick
	dc.b	dSnare, $08, dKick, dSnare, $06, $02, dKick, nRst, dKick, $04, dSnare, $06
	dc.b	nRst, $02, dKick, $06, nRst, $02, dSnare, $06, $02, dKick, nRst, dKick
	dc.b	$04
	smpsReturn

Splash_Hill_Zone_Act_3_norm_Call02:
	dc.b	dSnare, $06, nRst, $02, dKick, $06, nRst, $02, dSnare, $06, $02, dKick
	dc.b	nRst, dSnare, $04, dSnare, dKick, dKick, $08, dSnare, $06, $02, dKick, nRst
	dc.b	dKick, $04, dSnare, $06, $02, dKick, nRst, $06, dSnare, dSnare, $02, dKick
	dc.b	nRst, dSnare, $04, dSnare, dKick, nRst, dKick, dSnare, $06, $02, dKick, nRst
	dc.b	dKick, $04
	smpsReturn

Splash_Hill_Zone_Act_3_norm_Call03:
	dc.b	dSnare, $02, dSnare, dSnare, dSnare, dKick, $08, dSnare, $06, $02, dKick, nRst
	dc.b	dKick, $04, dSnare, $06, nRst, $02, dKick, $06, nRst, $02, dSnare, $06
	dc.b	$02, dKick, nRst, dKick, $04, dSnare, $08, dKick, dSnare, $06, $02, dKick
	dc.b	nRst, dKick, $04, dSnare, $06, nRst, $02, dKick, $06, nRst, $02, dSnare
	dc.b	$06, $02, dKick, $04, dKick
	smpsReturn

Splash_Hill_Zone_Act_3_norm_Call04:
	dc.b	dSnare, $06, nRst, $02, dKick, $08, dSnare, $06, $02, dKick, nRst, dSnare
	dc.b	$04, dSnare, dKick, $08, $04, dSnare, $06, $02, dKick, $04, dKick, dSnare
	dc.b	$06, $02, dKick, $04, nRst, dSnare, $06, $02, dKick, nRst, dSnare, $04
	dc.b	dSnare, dKick, nRst, dKick, dSnare, $06, $02, dKick, nRst, dKick, $04
	smpsReturn

Splash_Hill_Zone_Act_3_norm_Call05:
	dc.b	dSnare, $02, dSnare, dSnare, dSnare, dKick, $04, $02, nRst, dSnare, $06, $02
	dc.b	dKick, $04, dKick, dSnare, $06, $02, dKick, nRst, dKick, $04, dSnare, dKick
	dc.b	nRst, dKick, dSnare, dSnare, $02, dSnare, dKick, $08, dSnare, $06, $02, dKick
	dc.b	nRst, dKick, $04, dSnare, $06, $02, dKick, nRst, dSnare, $04, dSnare, dKick
	dc.b	dSnare, $02, dSnare, dKick, dSnare
	smpsReturn

Splash_Hill_Zone_Act_3_norm_Voices:
;	Voice $00
;	$3D
;	$12, $21, $51, $12, 	$12, $14, $14, $0F, 	$0A, $05, $05, $05
;	$00, $00, $00, $00, 	$2B, $2B, $2B, $1B, 	$19, $00, $00, $00
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $05, $02, $01
	smpsVcCoarseFreq    $02, $01, $01, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $0F, $14, $14, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $05, $05, $0A
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $01, $02, $02, $02
	smpsVcReleaseRate   $0B, $0B, $0B, $0B
	smpsVcTotalLevel    $00, $00, $00, $19

;	Voice $01
;	$08
;	$0A, $70, $30, $00, 	$1F, $1F, $5F, $5F, 	$12, $0E, $0A, $0A
;	$00, $04, $04, $03, 	$2F, $2F, $2F, $2F, 	$24, $2D, $13, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $01
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $07, $00
	smpsVcCoarseFreq    $00, $00, $00, $0A
	smpsVcRateScale     $01, $01, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0A, $0E, $12
	smpsVcDecayRate2    $03, $04, $04, $00
	smpsVcDecayLevel    $02, $02, $02, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $13, $2D, $24

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

;	Voice $03
;	$07
;	$34, $74, $32, $71, 	$1F, $1F, $1F, $1F, 	$0A, $0A, $05, $03
;	$00, $00, $00, $00, 	$3F, $3F, $2F, $2F, 	$8A, $8A, $8A, $80
	smpsVcAlgorithm     $07
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $03, $07, $03
	smpsVcCoarseFreq    $01, $02, $04, $04
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $05, $0A, $0A
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $02, $02, $03, $03
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $0A, $0A, $0A

