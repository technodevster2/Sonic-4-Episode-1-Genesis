csz1_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     csz1_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $03

	smpsHeaderDAC       csz1_DAC
	smpsHeaderFM        csz1_FM1,	$00, $00
	smpsHeaderFM        csz1_FM2,	$00, $00
	smpsHeaderFM        csz1_FM3,	$00, $00
	smpsHeaderFM        csz1_FM4,	$00, $00
	smpsHeaderFM        csz1_FM5,	$00, $00
	smpsHeaderPSG       csz1_PSG1,	$DC, $02, $00, $00
	smpsHeaderPSG       csz1_PSG2,	$DC, $02, $00, $00
	smpsHeaderPSG       csz1_PSG3,	$D0, $02, $00, $00

; FM1 Data
csz1_FM1:
	smpsCall            csz1_Call45
	smpsCall            csz1_Call46

csz1_Jump05:
	smpsCall            csz1_Call47
	smpsCall            csz1_Call46
	smpsCall            csz1_Call48
	smpsCall            csz1_Call49
	smpsCall            csz1_Call4A
	smpsCall            csz1_Call4B
	smpsCall            csz1_Call4C
	smpsCall            csz1_Call46
	smpsCall            csz1_Call47
	smpsCall            csz1_Call46
	smpsCall            csz1_Call48
	smpsCall            csz1_Call49
	smpsCall            csz1_Call4A
	smpsCall            csz1_Call4B
	smpsCall            csz1_Call4D
	smpsCall            csz1_Call4E
	smpsCall            csz1_Call4F
	smpsJump            csz1_Jump05

; FM2 Data
csz1_FM2:
	smpsCall            csz1_Call32
	smpsCall            csz1_Call33

csz1_Jump04:
	smpsCall            csz1_Call34
	smpsCall            csz1_Call35
	smpsCall            csz1_Call36
	smpsCall            csz1_Call37
	smpsCall            csz1_Call38
	smpsCall            csz1_Call39
	smpsCall            csz1_Call3A
	smpsCall            csz1_Call3B
	smpsCall            csz1_Call3C
	smpsCall            csz1_Call3D
	smpsCall            csz1_Call3E
	smpsCall            csz1_Call3F
	smpsCall            csz1_Call40
	smpsCall            csz1_Call41
	smpsCall            csz1_Call42
	smpsCall            csz1_Call43
	smpsCall            csz1_Call44
	smpsJump            csz1_Jump04

; FM3 Data
csz1_FM3:
	smpsCall            csz1_Call1F
	smpsCall            csz1_Call20

csz1_Jump03:
	smpsCall            csz1_Call21
	smpsCall            csz1_Call22
	smpsCall            csz1_Call23
	smpsCall            csz1_Call24
	smpsCall            csz1_Call25
	smpsCall            csz1_Call26
	smpsCall            csz1_Call27
	smpsCall            csz1_Call28
	smpsCall            csz1_Call29
	smpsCall            csz1_Call2A
	smpsCall            csz1_Call2B
	smpsCall            csz1_Call2C
	smpsCall            csz1_Call2D
	smpsCall            csz1_Call2E
	smpsCall            csz1_Call2F
	smpsCall            csz1_Call30
	smpsCall            csz1_Call31
	smpsJump            csz1_Jump03

; FM4 Data
csz1_FM4:
	smpsCall            csz1_Call13
	smpsCall            csz1_Call14

csz1_Jump02:
	smpsCall            csz1_Call15
	smpsCall            csz1_Call14
	smpsCall            csz1_Call16
	smpsCall            csz1_Call17
	smpsCall            csz1_Call18
	smpsCall            csz1_Call19
	smpsCall            csz1_Call1A
	smpsCall            csz1_Call14
	smpsCall            csz1_Call15
	smpsCall            csz1_Call14
	smpsCall            csz1_Call16
	smpsCall            csz1_Call1B
	smpsCall            csz1_Call18
	smpsCall            csz1_Call19
	smpsCall            csz1_Call1C
	smpsCall            csz1_Call1D
	smpsCall            csz1_Call1E
	smpsJump            csz1_Jump02

; FM5 Data
csz1_FM5:
	smpsCall            csz1_Call07
	smpsCall            csz1_Call08

csz1_Jump01:
	smpsCall            csz1_Call09
	smpsCall            csz1_Call08
	smpsCall            csz1_Call0A
	smpsCall            csz1_Call0B
	smpsCall            csz1_Call0C
	smpsCall            csz1_Call0D
	smpsCall            csz1_Call0E
	smpsCall            csz1_Call08
	smpsCall            csz1_Call09
	smpsCall            csz1_Call08
	smpsCall            csz1_Call0A
	smpsCall            csz1_Call0F
	smpsCall            csz1_Call0C
	smpsCall            csz1_Call0D
	smpsCall            csz1_Call10
	smpsCall            csz1_Call11
	smpsCall            csz1_Call12
	smpsJump            csz1_Jump01

; PSG1 Data
csz1_PSG1:
	smpsCall            csz1_Call64
	smpsCall            csz1_Call65

csz1_Jump08:
	smpsCall            csz1_Call66
	smpsCall            csz1_Call65
	smpsCall            csz1_Call67
	smpsCall            csz1_Call68
	smpsCall            csz1_Call69
	smpsCall            csz1_Call6A
	smpsCall            csz1_Call6B
	smpsCall            csz1_Call65
	smpsCall            csz1_Call66
	smpsCall            csz1_Call65
	smpsCall            csz1_Call67
	smpsCall            csz1_Call68
	smpsCall            csz1_Call69
	smpsCall            csz1_Call6A
	smpsCall            csz1_Call6C
	smpsCall            csz1_Call6D
	smpsCall            csz1_Call6E
	smpsJump            csz1_Jump08

; PSG2 Data
csz1_PSG2:
	smpsCall            csz1_Call59
	smpsCall            csz1_Call5A

csz1_Jump07:
	smpsCall            csz1_Call5B
	smpsCall            csz1_Call5C
	smpsCall            csz1_Call5B
	smpsCall            csz1_Call5D
	smpsCall            csz1_Call5D
	smpsCall            csz1_Call5E
	smpsCall            csz1_Call5F
	smpsCall            csz1_Call5A
	smpsCall            csz1_Call5B
	smpsCall            csz1_Call5C
	smpsCall            csz1_Call5B
	smpsCall            csz1_Call60
	smpsCall            csz1_Call61
	smpsCall            csz1_Call5E
	smpsCall            csz1_Call5E
	smpsCall            csz1_Call62
	smpsCall            csz1_Call63
	smpsJump            csz1_Jump07

; PSG3 Data
csz1_PSG3:
	smpsPSGform         $E7
	smpsCall            csz1_Call50
	smpsCall            csz1_Call51

csz1_Jump06:
	smpsCall            csz1_Call51
	smpsCall            csz1_Call51
	smpsCall            csz1_Call52
	smpsCall            csz1_Call53
	smpsCall            csz1_Call54
	smpsCall            csz1_Call55
	smpsCall            csz1_Call56
	smpsCall            csz1_Call51
	smpsCall            csz1_Call51
	smpsCall            csz1_Call51
	smpsCall            csz1_Call52
	smpsCall            csz1_Call53
	smpsCall            csz1_Call54
	smpsCall            csz1_Call55
	smpsCall            csz1_Call57
	smpsCall            csz1_Call51
	smpsCall            csz1_Call58
	smpsJump            csz1_Jump06

; DAC Data
csz1_DAC:
	smpsCall            csz1_Call00
	smpsCall            csz1_Call01

csz1_Jump00:
	smpsCall            csz1_Call02
	smpsCall            csz1_Call01
	smpsCall            csz1_Call03
	smpsCall            csz1_Call01
	smpsCall            csz1_Call02
	smpsCall            csz1_Call01
	smpsCall            csz1_Call03
	smpsCall            csz1_Call01
	smpsCall            csz1_Call02
	smpsCall            csz1_Call01
	smpsCall            csz1_Call03
	smpsCall            csz1_Call01
	smpsCall            csz1_Call02
	smpsCall            csz1_Call01
	smpsCall            csz1_Call04
	smpsCall            csz1_Call05
	smpsCall            csz1_Call06
	smpsJump            csz1_Jump00

csz1_Call45:
	dc.b	smpsNoAttack, $1B
	smpsSetvoice        $00
	dc.b	nE3, $05, nD3, $0B, nC3, $05, nB2, $0B, nG2, $05, nC3, $16
	dc.b	nRst, $05, nC3, nG2, $16, nRst, $05, nG2
	smpsReturn

csz1_Call46:
	dc.b	nE2, $16, nRst, $05, nE2, nB2, $16, nRst, $05, nB2, nA2, $16
	dc.b	nRst, $05, nA2, nC3, $16, nRst, $05, nC3
	smpsReturn

csz1_Call47:
	dc.b	nA2, $06, nRst, $05, nA2, nA2, $0B, nB2, nRst, $05, nB2, nG2
	dc.b	$10, nC3, $16, nRst, $05, nC3, nG2, $16, nRst, $05, nG2
	smpsReturn

csz1_Call48:
	dc.b	nA2, $06, nRst, $05, nA2, nA2, $0B, nB2, $05, nRst, $0B, nB2
	dc.b	$05, nG2, $10, nA2, $0B, nRst, $05, nA2, $10, nB2, $0B, nRst
	dc.b	$05, nC3, $10
	smpsReturn

csz1_Call49:
	dc.b	nE3, $0B, nRst, $05, nD3, $10, nE3, $0B, nRst, $05, nG3, $10
	dc.b	nF3, $0B, nRst, $05, nA2, $10, nC3, $0B, nRst, $05, nD3, $10
	smpsReturn

csz1_Call4A:
	dc.b	nE3, $0B, nRst, $05, nC3, $10, nA2, $0B, nRst, $05, nC3, $10
	dc.b	nD3, $0B, nRst, $05, nD3, $10, nC3, $0B, nRst, $05, nC3, $10
	smpsReturn

csz1_Call4B:
	dc.b	nB2, $0B, nRst, $05, nB2, $10, nA2, $0B, nRst, $05, nD3, $10
	dc.b	nG3, $0B, nG2, nRst, $05, nG2, nF3, $0B, nG2, nRst, $05, nG2
	smpsReturn

csz1_Call4C:
	dc.b	nE3, $0B, nG2, nRst, $05, nG2, nD3, $0B, nE3, $05, nD3, $10
	dc.b	nC3, $16, nRst, $05, nC3, nG2, $16, nRst, $05, nG2
	smpsReturn

csz1_Call4D:
	dc.b	nE3, $0B, nG2, nRst, $05, nG2, nD3, $0B, nE3, $05, nD3, $10
	dc.b	nRst, $1B, nE3, $05, nD3, $0B, nC3, $05, nB2, $0B, nG2, $05
	smpsReturn

csz1_Call4E:
	dc.b	nC3, $16, nRst, $05, nC3, nG2, $16, nRst, $05, nG2, nE2, $16
	dc.b	nRst, $05, nE2, nB2, $16, nRst, $05, nB2
	smpsReturn

csz1_Call4F:
	dc.b	nA2, $16, nRst, $05, nA2, nC3, $16, nRst, $05, nC3
	smpsReturn

csz1_Call32:
	dc.b	smpsNoAttack, $40
	smpsSetvoice        $01
	dc.b	nC4, $06, nRst, $05, nC4, nE4, $0B, nF4, $05, nG4, $0B, nRst
	dc.b	$05, nC5, $10
	smpsReturn

csz1_Call33:
	dc.b	nB4, $1B, nG4, $0B, nRst, $0A, nE4, $10, nA4, $1B, nE4, $25
	smpsReturn

csz1_Call34:
	dc.b	smpsNoAttack, $0D, nRst, $1B, $18, nC4, $06, nRst, $05, nC4, nE4, $0B
	dc.b	nF4, $05, nG4, $0B, nRst, $05, nC5, $10
	smpsReturn

csz1_Call35:
	dc.b	nB4, $1B, nG4, $0B, nRst, $0A, nE4, $10, nA4, $1B, nE5, $25
	smpsReturn

csz1_Call36:
	dc.b	smpsNoAttack, $0D, nRst, $13, $10, nC5, $0B, nD5, $05, nE5, $08, nRst
	dc.b	nE5, $10, nD5, $08, nRst, nC5, $10
	smpsReturn

csz1_Call37:
	dc.b	nB4, $28, nRst, $08, nE4, $10, nA4, $08, nRst, nA4, $10, nG4
	dc.b	$08, nRst, nF4, $10
	smpsReturn

csz1_Call38:
	dc.b	nG4, $20, nE4, $08, nRst, nC4, $10, nD4, $08, nRst, nE4, $10
	dc.b	nD4, $08, nRst, nE4, $10
	smpsReturn

csz1_Call39:
	dc.b	nD4, $0B, nRst, $05, nE4, $0B, nFs4, $05, nRst, $0B, nFs4, $05
	dc.b	nA4, $10, nG4, $32, nRst, $0E
	smpsReturn

csz1_Call3A:
	dc.b	smpsNoAttack, $28, nRst, $18, nC4, $06, nRst, $05, nC4, nE4, $06, nF4
	dc.b	$05, nFs4, nG4, $0B, nRst, $05, nC5, $10
	smpsReturn

csz1_Call3B:
	dc.b	nB4, $0B, nC5, $05, nB4, $0B, nG4, $05, nRst, $0B, nG4, $05
	dc.b	nE4, $10, nA4, $0B, nAb4, $05, nA4, $0B, nE4, $25
	smpsReturn

csz1_Call3C:
	dc.b	smpsNoAttack, $0D, nRst, $1B, $18, nC4, $06, nRst, $05, nC4, nE4, $06
	dc.b	nF4, $05, nFs4, nG4, $0B, nRst, $05, nC5, $10
	smpsReturn

csz1_Call3D:
	dc.b	nB4, $0B, nC5, $05, nB4, $0B, nG4, $05, nRst, $0B, nG4, $05
	dc.b	nE4, $10, nA4, $0B, nAb4, $05, nA4, $0B, nE5, $25
	smpsReturn

csz1_Call3E:
	dc.b	smpsNoAttack, $0D, nRst, $13, $0B, nB4, $05, nC5, $0B, nD5, $05, nE5
	dc.b	$06, nRst, $05, nF5, nE5, $10, nD5, $08, nRst, nC5, $10
	smpsReturn

csz1_Call3F:
	dc.b	nB4, $0B, nBb4, $05, nB4, $0B, nE4, $15, nG4, $10, nA4, $06
	dc.b	nRst, $05, nG4, nA4, $10, nG4, $08, nRst, nF4, $10
	smpsReturn

csz1_Call40:
	dc.b	nG4, $0B, nFs4, $05, nG4, $10, nE4, $08, nRst, nC4, $10, nD4
	dc.b	$06, nRst, $05, nD4, nE4, $10, nD4, $08, nRst, nE4, $10
	smpsReturn

csz1_Call41:
	dc.b	nD4, $06, nRst, $05, nD4, nE4, $0B, nFs4, $05, nRst, $0B, nFs4
	dc.b	$05, nA4, $10, nG4, $32, nRst, $09, $05
	smpsReturn

csz1_Call42:
	dc.b	nG4, $06, nA4, $05, nB4, nA4, $06, nB4, $05, nC5, nB4, $06
	dc.b	nC5, $05, nD5, nE5, $06, nF5, $05, nG5, nRst, $40
	smpsReturn

csz1_Call43:
	dc.b	nC4, $06, nRst, $05, nC4, nE4, $0B, nF4, $05, nG4, $0B, nRst
	dc.b	$05, nC5, $10, nB4, $1B, nG4, $0B, nRst, $0A, nE4, $10
	smpsReturn

csz1_Call44:
	dc.b	nA4, $1B, nE4, $25
	smpsReturn

csz1_Call1F:
	dc.b	smpsNoAttack, $40
	smpsSetvoice        $01
	dc.b	nG3, $06, nRst, $05, nG3, nC4, $0B, nD4, $05, nE4, $0B, nRst
	dc.b	$05, nE4, $10
	smpsReturn

csz1_Call20:
	dc.b	nG4, $1B, nE4, $0B, nRst, $0A, nB3, $10, nE4, $1B, nC4, $25
	smpsReturn

csz1_Call21:
	dc.b	smpsNoAttack, $0D, nRst, $1B, $18, nG3, $06, nRst, $05, nG3, nC4, $0B
	dc.b	nD4, $05, nE4, $0B, nRst, $05, nA4, $10
	smpsReturn

csz1_Call22:
	dc.b	nG4, $1B, nE4, $0B, nRst, $0A, nB3, $10, nC4, $1B, nA4, $25
	smpsReturn

csz1_Call23:
	dc.b	smpsNoAttack, $0D, nRst, $13, $10, nE4, $0B, nG4, $05, nA4, $08, nRst
	dc.b	nA4, $10, nG4, $08, nRst, nE4, $10
	smpsReturn

csz1_Call24:
	dc.b	nG4, $28, nRst, $08, nB3, $10, nF4, $08, nRst, nF4, $10, nE4
	dc.b	$08, nRst, nD4, $10
	smpsReturn

csz1_Call25:
	dc.b	nE4, $20, nC4, $08, nRst, nG3, $10, nA3, $08, nRst, nC4, $10
	dc.b	nA3, $08, nRst, nC4, $10
	smpsReturn

csz1_Call26:
	dc.b	nA3, $0B, nRst, $05, nC4, $0B, nA3, $05, nRst, $0B, nD4, $05
	dc.b	nFs4, $10, nD4, $32, nRst, $0E
	smpsReturn

csz1_Call27:
	dc.b	smpsNoAttack, $28, nRst, $18, nG3, $06, nRst, $05, nG3, nC4, $06, nD4
	dc.b	$05, nEb4, nE4, $0B, nRst, $05, nE4, $10
	smpsReturn

csz1_Call28:
	dc.b	nG4, $0B, nF4, $05, nE4, $0B, nB3, $05, nRst, $0B, nB3, $05
	dc.b	nD4, $10, nC4, $0B, nB3, $05, nC4, $0B, nA3, $25
	smpsReturn

csz1_Call29:
	dc.b	smpsNoAttack, $0D, nRst, $1B, $18, nG3, $06, nRst, $05, nG3, nC4, $06
	dc.b	nD4, $05, nEb4, nE4, $0B, nRst, $05, nE4, $10
	smpsReturn

csz1_Call2A:
	dc.b	nG4, $0B, nF4, $05, nE4, $0B, nB3, $05, nRst, $0B, nB3, $05
	dc.b	nD4, $10, nC4, $0B, nB3, $05, nC4, $0B, nA4, $25
	smpsReturn

csz1_Call2B:
	dc.b	smpsNoAttack, $0D, nRst, $13, $0B, nD4, $05, nE4, $0B, nG4, $05, nA4
	dc.b	$06, nRst, $05, nA4, nA4, $10, nB4, $08, nRst, nA4, $10
	smpsReturn

csz1_Call2C:
	dc.b	nG4, $0B, nFs4, $05, nG4, $0B, nB3, $15, nD4, $10, nF4, $06
	dc.b	nRst, $05, nE4, nF4, $10, nE4, $08, nRst, nD4, $10
	smpsReturn

csz1_Call2D:
	dc.b	nE4, $0B, nEb4, $05, nE4, $10, nC4, $08, nRst, nA3, $10, $06
	dc.b	nRst, $05, nA3, nC4, $10, nA3, $08, nRst, nC4, $10
	smpsReturn

csz1_Call2E:
	dc.b	nA3, $06, nRst, $05, nA3, nC4, $0B, nD4, $05, nRst, $0B, nD4
	dc.b	$05, nFs4, $10, nD4, $32, nRst, $09, $05
	smpsReturn

csz1_Call2F:
	dc.b	nD4, $06, nE4, $05, nG4, nD4, $06, nG4, $05, nA4, nG4, $06
	dc.b	nA4, $05, nB4, nA4, $06, nF4, $05, nG4, nRst, $40
	smpsReturn

csz1_Call30:
	dc.b	nG3, $06, nRst, $05, nG3, nC4, $0B, nD4, $05, nE4, $0B, nRst
	dc.b	$05, nE4, $10, nG4, $1B, nE4, $0B, nRst, $0A, nB3, $10
	smpsReturn

csz1_Call31:
	dc.b	nE4, $1B, nC4, $25
	smpsReturn

csz1_Call13:
	dc.b	smpsNoAttack, $40
	smpsSetvoice        $02
	dc.b	nC3, $20, nG2
	smpsReturn

csz1_Call14:
	dc.b	nE3, $20, nB2, nA2, nC3
	smpsReturn

csz1_Call15:
	dc.b	nA2, $0B, nA3, $05, nA2, $0B, nG3, $05, nRst, $0B, nG3, $05
	dc.b	nF3, $06, nE3, $05, nD3, nC3, $20, nG2
	smpsReturn

csz1_Call16:
	dc.b	nA2, $0B, nA3, $05, nA2, $0B, nG3, $05, nRst, $0B, nG3, $05
	dc.b	$10, nA2, $0B, nRst, $05, nC4, $10, nB2, $0B, nRst, $05, nC4
	dc.b	$10
	smpsReturn

csz1_Call17:
	dc.b	nE3, $1B, nB2, $05, nRst, $0B, nB2, $05, nB3, $10, nF3, $0B
	dc.b	nRst, $05, nC4, $10, nE3, $0B, nRst, $05, nC4, $10
	smpsReturn

csz1_Call18:
	dc.b	nC3, $20, nA2, $0B, nB2, $05, nC4, $10, nA3, $06, nRst, $0A
	dc.b	nA3, $16, nRst, $0A, nA3, $06, nRst, $0A
	smpsReturn

csz1_Call19:
	dc.b	smpsNoAttack, $10, nA3, $0B, nC4, $05, nRst, $0B, nA3, $05, nC4, $10
	dc.b	nG3, $06, nRst, $0A, nD4, $10, nF3, $06, nRst, $0A, nD4, $10
	smpsReturn

csz1_Call1A:
	dc.b	nE3, $06, nRst, $0A, nD4, $0B, nD3, $05, nRst, $0B, nD3, $05
	dc.b	nD4, $10, nC3, $20, nG2
	smpsReturn

csz1_Call1B:
	dc.b	nE3, $1B, nB2, $05, nRst, $0B, nB2, $05, nB3, $10, nF3, $0B
	dc.b	nRst, $05, nC4, $10, nE3, $0B, nRst, $05, nC4, $10
	smpsReturn

csz1_Call1C:
	dc.b	nE3, $06, nRst, $0A, nD4, $0B, nD3, $05, nRst, $0B, nD3, $05
	dc.b	nD4, $10, nRst, $40
	smpsReturn

csz1_Call1D:
	dc.b	nC3, $20, nG2, nE3, nB2
	smpsReturn

csz1_Call1E:
	dc.b	nA2, $20, nC3
	smpsReturn

csz1_Call07:
	dc.b	smpsNoAttack, $40
	smpsSetvoice        $02
	dc.b	nC3, $20, nG2
	smpsReturn

csz1_Call08:
	dc.b	nE3, $20, nB2, nA2, nC3
	smpsReturn

csz1_Call09:
	dc.b	nA2, $0B, nE3, $05, nA2, $0B, nB2, $05, nRst, $0B, nB2, $05
	dc.b	nG2, $10, nC3, $20, nG2
	smpsReturn

csz1_Call0A:
	dc.b	nA2, $0B, nE3, $05, nA2, $0B, nB2, $05, nRst, $0B, nB2, $05
	dc.b	nG2, $10, nA2, $0B, nRst, $05, nE3, $10, nB2, $0B, nRst, $05
	dc.b	nA3, $10
	smpsReturn

csz1_Call0B:
	dc.b	nE3, $1B, nB2, $05, nRst, $0B, nB2, $05, nG3, $10, nF3, $0B
	dc.b	nRst, $05, nA3, $10, nE3, $0B, nRst, $05, nA3, $10
	smpsReturn

csz1_Call0C:
	dc.b	nC3, $20, nA2, $0B, nB2, $05, nG3, $10, nD3, $06, nRst, $0A
	dc.b	nD3, $10, nE3, $06, nRst, $0A, nE3, $10
	smpsReturn

csz1_Call0D:
	dc.b	nFs3, $06, nRst, $0A, nFs3, $0B, $05, nRst, $0B, nA3, $05, nFs3
	dc.b	$10, nG3, $06, nRst, $0A, nB3, $10, nF3, $06, nRst, $0A, nB3
	dc.b	$10
	smpsReturn

csz1_Call0E:
	dc.b	nE3, $06, nRst, $0A, nB3, $0B, nD3, $05, nRst, $0B, nD3, $05
	dc.b	nB3, $10, nC3, $20, nG2
	smpsReturn

csz1_Call0F:
	dc.b	nE3, $1B, nB2, $05, nRst, $0B, nB2, $05, nG3, $10, nF3, $0B
	dc.b	nRst, $05, nA3, $10, nE3, $0B, nRst, $05, nA3, $10
	smpsReturn

csz1_Call10:
	dc.b	nE3, $06, nRst, $0A, nB3, $0B, nD3, $05, nRst, $0B, nD3, $05
	dc.b	nB3, $10, nRst, $40
	smpsReturn

csz1_Call11:
	dc.b	nC3, $20, nG2, nE3, nB2
	smpsReturn

csz1_Call12:
	dc.b	nA2, $20, nC3
	smpsReturn

csz1_Call64:
	dc.b	smpsNoAttack, $50
	smpsPSGvoice        $00
	dc.b	nG3, $10, nRst, nG3
	smpsReturn

csz1_Call65:
	dc.b	nRst, $10, nB3, nRst, nB3, nRst, nA3, nRst, nA3
	smpsReturn

csz1_Call66:
	dc.b	nRst, $50, nE3, $10, nRst, nE3
	smpsReturn

csz1_Call67:
	dc.b	nRst, $50, nA2, $10, nRst, nC3
	smpsReturn

csz1_Call68:
	dc.b	nRst, $10, nB3, nRst, nB2, nRst, nF3, nRst, nD3
	smpsReturn

csz1_Call69:
	dc.b	nRst, $10, nC4, nRst, nC3, nRst, $40
	smpsReturn

csz1_Call6A:
	dc.b	smpsNoAttack, $50, nG3, $10, nRst, nF3
	smpsReturn

csz1_Call6B:
	dc.b	nRst, $10, nE3, $0B, nRst, $15, nD3, $10, nRst, nG3, nRst, nG3
	smpsReturn

csz1_Call6C:
	dc.b	nRst, $10, nE3, $0B, nRst, $15, nD3, $10, nRst, $40
	smpsReturn

csz1_Call6D:
	dc.b	smpsNoAttack, $10, nG3, nRst, nG3, nRst, nB3, nRst, nB3
	smpsReturn

csz1_Call6E:
	dc.b	nRst, $10, nA3, nRst, nA3
	smpsReturn

csz1_Call59:
	dc.b	smpsNoAttack, $50
	smpsPSGvoice        $00
	dc.b	nE3, $10, nRst, nE3
	smpsReturn

csz1_Call5A:
	dc.b	nRst, $10, nG3, nRst, nG3, nRst, nE3, nRst, nE3
	smpsReturn

csz1_Call5B:
	dc.b	nRst, $7F, smpsNoAttack, $01
	smpsReturn

csz1_Call5C:
	dc.b	smpsNoAttack, $10
	smpsPSGvoice        $00
	dc.b	nG3, nRst, nG3, nRst, nE3, nRst, nE3
	smpsReturn

csz1_Call5D:
	dc.b	smpsNoAttack, $10
	smpsPSGvoice        $00
	dc.b	nG3, nRst, $60
	smpsReturn

csz1_Call5E:
	dc.b	smpsNoAttack, $7F, smpsNoAttack, $01
	smpsReturn

csz1_Call5F:
	dc.b	smpsNoAttack, $50
	smpsPSGvoice        $00
	dc.b	nE3, $10, nRst, nE3
	smpsReturn

csz1_Call60:
	dc.b	smpsNoAttack, $10
	smpsPSGvoice        $00
	dc.b	nG3, nRst, $40, $20
	smpsReturn

csz1_Call61:
	dc.b	nRst, $10, nG3, nRst, $20, $40
	smpsReturn

csz1_Call62:
	dc.b	smpsNoAttack, $10
	smpsPSGvoice        $00
	dc.b	nE3, nRst, nE3, nRst, nG3, nRst, nG3
	smpsReturn

csz1_Call63:
	dc.b	nRst, $10, nE3, nRst, nE3
	smpsReturn

csz1_Call50:
	smpsPSGvoice        fTone_04
	dc.b	nCs0, $03, nRst, $0D, nCs0, $03, nRst, $0D, nCs0, $03, nRst, nCs0
	dc.b	$02, nRst, $03, nCs0, nRst, $02, nCs0, $03, nRst, $0D, nCs0, $03
	dc.b	nRst, $0D, nCs0, $03, nRst, $08, nCs0, $03, nRst, $02, nCs0, $03
	dc.b	nRst, $0D, nCs0, $03, nRst, $08, nCs0, $03, nRst, $02
	smpsReturn

csz1_Call51:
	smpsPSGvoice        fTone_04
	dc.b	nCs0, $03, nRst, $0D, nCs0, $03, nRst, $08, nCs0, $03, nRst, $02
	dc.b	nCs0, $03, nRst, $0D, nCs0, $03, nRst, $08, nCs0, $03, nRst, $02
	dc.b	nCs0, $03, nRst, $0D, nCs0, $03, nRst, $08, nCs0, $03, nRst, $02
	dc.b	nCs0, $03, nRst, $0D, nCs0, $03, nRst, $08, nCs0, $03, nRst, $02
	smpsReturn

csz1_Call52:
	smpsPSGvoice        fTone_04
	dc.b	nCs0, $03, nRst, $08, nCs0, $03, nRst, $02, nCs0, $03, nRst, $0D
	dc.b	nCs0, $03, nRst, $0D, nCs0, $03, nRst, $0D, nCs0, $03, nRst, $08
	dc.b	nCs0, $03, nRst, $02, nCs0, $03, nRst, $08, nCs0, $03, nRst, $02
	dc.b	nCs0, $03, nRst, $0D, nCs0, $03, nRst, $0D
	smpsReturn

csz1_Call53:
	smpsPSGvoice        fTone_04
	dc.b	nCs0, $03, nRst, $08, nCs0, $03, nRst, $02, nCs0, $03, nRst, $08
	dc.b	nCs0, $03, nRst, $02, nCs0, $03, nRst, $0D, nCs0, $03, nRst, $0D
	dc.b	nCs0, $03, nRst, $08, nCs0, $03, nRst, $02, nCs0, $03, nRst, $08
	dc.b	nCs0, $03, nRst, $02, nCs0, $03, nRst, $0D, nCs0, $03, nRst, $0D
	smpsReturn

csz1_Call54:
	smpsPSGvoice        fTone_04
	dc.b	nCs0, $03, nRst, $08, nCs0, $03, nRst, $02, nCs0, $03, nRst, $08
	dc.b	nCs0, $03, nRst, $02, nCs0, $03, nRst, $0D, nCs0, $03, nRst, $0D
	dc.b	nCs0, $03, nRst, $08, nCs0, $03, nRst, $02, nCs0, $03, nRst, $0D
	dc.b	nCs0, $03, nRst, $08, nCs0, $03, nRst, $02, nCs0, $03, nRst, $0D
	smpsReturn

csz1_Call55:
	smpsPSGvoice        fTone_04
	dc.b	nCs0, $03, nRst, $08, nCs0, $03, nRst, $02, nCs0, $03, nRst, $0D
	dc.b	nCs0, $03, nRst, $08, nCs0, $03, nRst, $02, nCs0, $03, nRst, $0D
	dc.b	nCs0, $03, nRst, $08, nCs0, $03, nRst, $02, nCs0, $03, nRst, $0D
	dc.b	nCs0, $03, nRst, $08, nCs0, $03, nRst, $02, nCs0, $03, nRst, $0D
	smpsReturn

csz1_Call56:
	smpsPSGvoice        fTone_04
	dc.b	nCs0, $03, nRst, $08, nCs0, $03, nRst, $02, nCs0, $03, nRst, $0D
	dc.b	nCs0, $03, nRst, $0D, nCs0, $03, nRst, $0D, nCs0, $03, nRst, $0D
	dc.b	nCs0, $03, nRst, $08, nCs0, $03, nRst, $02, nCs0, $03, nRst, $0D
	dc.b	nCs0, $03, nRst, $08, nCs0, $03, nRst, $02
	smpsReturn

csz1_Call57:
	smpsPSGvoice        fTone_04
	dc.b	nCs0, $03, nRst, $08, nCs0, $03, nRst, $02, nCs0, $03, nRst, $0D
	dc.b	nCs0, $03, nRst, $0D, nCs0, $03, nRst, $0D, nCs0, $03, nRst, $0D
	dc.b	nCs0, $03, nRst, $08, nCs0, $03, nRst, $02, nCs0, $03, nRst, nCs0
	dc.b	$02, nRst, $03, nCs0, nRst, $02, nCs0, $03, nRst, $0D
	smpsReturn

csz1_Call58:
	smpsPSGvoice        fTone_04
	dc.b	nCs0, $03, nRst, $0D, nCs0, $03, nRst, $08, nCs0, $03, nRst, $02
	dc.b	nCs0, $03, nRst, $0D, nCs0, $03, nRst, $08, nCs0, $03, nRst, $02
	smpsReturn

csz1_Call00:
	dc.b	dSnare, $03, nRst, dSnare, $02, nRst, $03, dSnare, nRst, $02, dSnare, $03
	dc.b	nRst, $08, dKick, $03, nRst, $02, dSnare, $03, nRst, $08, dKick, $03
	dc.b	nRst, $12, dKick, $03, nRst, $0D, dSnare, $03, nRst, $0D, dKick, $03
	dc.b	nRst, $0D, dSnare, $03, nRst, $0D
	smpsReturn

csz1_Call01:
	dc.b	dKick, $03, nRst, $0D, dSnare, $03, nRst, $0D, dKick, $03, nRst, $08
	dc.b	dSnare, $03, nRst, $02, dSnare, $03, nRst, $0D, dKick, $03, nRst, $0D
	dc.b	dSnare, $03, nRst, $0D, dKick, $03, nRst, $0D, dSnare, $03, nRst, $0D
	smpsReturn

csz1_Call02:
	dc.b	dKick, $03, nRst, $0D, dSnare, $03, nRst, $0D, dKick, $03, nRst, $08
	dc.b	dSnare, $03, nRst, $02, dSnare, $03, nRst, $08, dSnare, $03, nRst, $02
	dc.b	dKick, $03, nRst, $0D, dSnare, $03, nRst, $0D, dKick, $03, nRst, $0D
	dc.b	dSnare, $03, nRst, $0D
	smpsReturn

csz1_Call03:
	dc.b	dKick, $03, nRst, $0D, dSnare, $03, nRst, $08, dSnare, $03, nRst, $02
	dc.b	dKick, $03, nRst, dSnare, $02, nRst, $08, dSnare, $03, nRst, $08, dSnare
	dc.b	$03, nRst, $02, dKick, $03, nRst, $0D, dSnare, $03, nRst, $0D, dKick
	dc.b	$03, nRst, $0D, dSnare, $03, nRst, $0D
	smpsReturn

csz1_Call04:
	dc.b	dKick, $03, nRst, $0D, dSnare, $03, nRst, $08, dSnare, $03, nRst, $02
	dc.b	dKick, $03, nRst, dSnare, $02, nRst, $08, dSnare, $03, nRst, $08, dSnare
	dc.b	$03, nRst, $02, dSnare, $03, nRst, dSnare, $02, nRst, $03, dSnare, nRst
	dc.b	$02, dSnare, $03, nRst, $0D, dSnare, $03, nRst, $08, dKick, $03, nRst
	dc.b	$12
	smpsReturn

csz1_Call05:
	dc.b	dKick, $03, nRst, $0D, dSnare, $03, nRst, $0D, dKick, $03, nRst, $0D
	dc.b	dSnare, $03, nRst, $0D, dKick, $03, nRst, $0D, dSnare, $03, nRst, $0D
	dc.b	dKick, $03, nRst, $08, dSnare, $03, nRst, $02, dSnare, $03, nRst, $0D
	smpsReturn

csz1_Call06:
	dc.b	dKick, $03, nRst, $0D, dSnare, $03, nRst, $0D, dKick, $03, nRst, $0D
	dc.b	dSnare, $03, nRst, $0D
	smpsReturn

csz1_Voices:
;	Voice $00
;	$2A
;	$30, $70, $08, $01, 	$1F, $1F, $1F, $1F, 	$08, $10, $0E, $0C
;	$00, $03, $06, $05, 	$30, $20, $29, $28, 	$22, $14, $2A, $0F
	smpsVcAlgorithm     $02
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $07, $03
	smpsVcCoarseFreq    $01, $08, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $0E, $10, $08
	smpsVcDecayRate2    $05, $06, $03, $00
	smpsVcDecayLevel    $02, $02, $02, $03
	smpsVcReleaseRate   $08, $09, $00, $00
	smpsVcTotalLevel    $0F, $2A, $14, $22

;	Voice $01
;	$3A
;	$01, $07, $31, $71, 	$8E, $8E, $8D, $53, 	$0E, $0E, $0E, $06
;	$00, $00, $00, $00, 	$1F, $FF, $1F, $2F, 	$18, $28, $27, $0F
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $03, $00, $00
	smpsVcCoarseFreq    $01, $01, $07, $01
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $13, $0D, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $0E, $0E, $0E
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $02, $01, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $0F, $27, $28, $18

;	Voice $02
;	$3A
;	$01, $07, $31, $71, 	$8E, $8E, $8D, $53, 	$0E, $0E, $0E, $06
;	$00, $00, $00, $00, 	$1F, $FF, $1F, $2F, 	$18, $28, $27, $14
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $03, $00, $00
	smpsVcCoarseFreq    $01, $01, $07, $01
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $13, $0D, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $0E, $0E, $0E
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $02, $01, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $14, $27, $28, $18

