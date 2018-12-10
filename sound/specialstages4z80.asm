Special_Stage_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Special_Stage_Voices
	smpsHeaderChan      $07, $03
	smpsHeaderTempo     $01, $65

	smpsHeaderDAC       Special_Stage_DAC,	$00, $F2
	smpsHeaderFM        Special_Stage_FM1,	$00, $10
	smpsHeaderFM        Special_Stage_FM2,	$00, $10
	smpsHeaderFM        Special_Stage_FM3,	$00, $10
	smpsHeaderFM        Special_Stage_FM4,	$00, $10
	smpsHeaderFM        Special_Stage_FM5,	$00, $10
	smpsHeaderFM        Special_Stage_FM6,	$00, $10
	smpsHeaderPSG       Special_Stage_PSG1,	$DC, $02, $00, $00
	smpsHeaderPSG       Special_Stage_PSG2,	$DC, $02, $00, $00
	smpsHeaderPSG       Special_Stage_PSG3,	$DC, $02, $00, $00

; FM1 Data
Special_Stage_FM1:
	smpsCall            Special_Stage_Call79
	smpsCall            Special_Stage_Call7A
	smpsCall            Special_Stage_Call7B
	smpsCall            Special_Stage_Call7C
	smpsCall            Special_Stage_Call7D
	smpsCall            Special_Stage_Call7E
	smpsCall            Special_Stage_Call7F
	smpsCall            Special_Stage_Call80
	smpsCall            Special_Stage_Call81
	smpsCall            Special_Stage_Call82
	smpsCall            Special_Stage_Call83
	smpsCall            Special_Stage_Call81
	smpsCall            Special_Stage_Call82
	smpsCall            Special_Stage_Call84
	smpsCall            Special_Stage_Call85
	smpsCall            Special_Stage_Call86
	smpsCall            Special_Stage_Call87
	smpsCall            Special_Stage_Call88
	smpsCall            Special_Stage_Call89
	smpsCall            Special_Stage_Call8A
	smpsCall            Special_Stage_Call8B
	smpsCall            Special_Stage_Call8C
	smpsCall            Special_Stage_Call8D
	smpsCall            Special_Stage_Call8E
	smpsCall            Special_Stage_Call8F
	smpsCall            Special_Stage_Call90
	smpsCall            Special_Stage_Call91
	smpsJump            Special_Stage_FM1

; FM2 Data
Special_Stage_FM2:
	smpsCall            Special_Stage_Call60
	smpsCall            Special_Stage_Call61
	smpsCall            Special_Stage_Call62
	smpsCall            Special_Stage_Call63
	smpsCall            Special_Stage_Call64
	smpsCall            Special_Stage_Call65
	smpsCall            Special_Stage_Call66
	smpsCall            Special_Stage_Call67
	smpsCall            Special_Stage_Call68
	smpsCall            Special_Stage_Call69
	smpsCall            Special_Stage_Call6A
	smpsCall            Special_Stage_Call68
	smpsCall            Special_Stage_Call69
	smpsCall            Special_Stage_Call6B
	smpsCall            Special_Stage_Call6C
	smpsCall            Special_Stage_Call6D
	smpsCall            Special_Stage_Call6E
	smpsCall            Special_Stage_Call6F
	smpsCall            Special_Stage_Call70
	smpsCall            Special_Stage_Call71
	smpsCall            Special_Stage_Call72
	smpsCall            Special_Stage_Call73
	smpsCall            Special_Stage_Call74
	smpsCall            Special_Stage_Call75
	smpsCall            Special_Stage_Call76
	smpsCall            Special_Stage_Call77
	smpsCall            Special_Stage_Call78
	smpsJump            Special_Stage_FM2

; FM3 Data
Special_Stage_FM3:
	smpsCall            Special_Stage_Call47
	smpsCall            Special_Stage_Call48
	smpsCall            Special_Stage_Call49
	smpsCall            Special_Stage_Call4A
	smpsCall            Special_Stage_Call4B
	smpsCall            Special_Stage_Call4C
	smpsCall            Special_Stage_Call4D
	smpsCall            Special_Stage_Call4E
	smpsCall            Special_Stage_Call4F
	smpsCall            Special_Stage_Call50
	smpsCall            Special_Stage_Call51
	smpsCall            Special_Stage_Call4F
	smpsCall            Special_Stage_Call50
	smpsCall            Special_Stage_Call52
	smpsCall            Special_Stage_Call53
	smpsCall            Special_Stage_Call54
	smpsCall            Special_Stage_Call55
	smpsCall            Special_Stage_Call56
	smpsCall            Special_Stage_Call57
	smpsCall            Special_Stage_Call58
	smpsCall            Special_Stage_Call59
	smpsCall            Special_Stage_Call5A
	smpsCall            Special_Stage_Call5B
	smpsCall            Special_Stage_Call5C
	smpsCall            Special_Stage_Call5D
	smpsCall            Special_Stage_Call5E
	smpsCall            Special_Stage_Call5F
	smpsJump            Special_Stage_FM3

; FM4 Data
Special_Stage_FM4:
	smpsCall            Special_Stage_Call2E
	smpsCall            Special_Stage_Call2F
	smpsCall            Special_Stage_Call30
	smpsCall            Special_Stage_Call31
	smpsCall            Special_Stage_Call32
	smpsCall            Special_Stage_Call33
	smpsCall            Special_Stage_Call34
	smpsCall            Special_Stage_Call35
	smpsCall            Special_Stage_Call36
	smpsCall            Special_Stage_Call37
	smpsCall            Special_Stage_Call38
	smpsCall            Special_Stage_Call36
	smpsCall            Special_Stage_Call37
	smpsCall            Special_Stage_Call39
	smpsCall            Special_Stage_Call3A
	smpsCall            Special_Stage_Call3B
	smpsCall            Special_Stage_Call3C
	smpsCall            Special_Stage_Call3D
	smpsCall            Special_Stage_Call3E
	smpsCall            Special_Stage_Call3F
	smpsCall            Special_Stage_Call40
	smpsCall            Special_Stage_Call41
	smpsCall            Special_Stage_Call42
	smpsCall            Special_Stage_Call43
	smpsCall            Special_Stage_Call44
	smpsCall            Special_Stage_Call45
	smpsCall            Special_Stage_Call46
	smpsJump            Special_Stage_FM4

; FM5 Data
Special_Stage_FM5:
	smpsCall            Special_Stage_Call15
	smpsCall            Special_Stage_Call16
	smpsCall            Special_Stage_Call17
	smpsCall            Special_Stage_Call18
	smpsCall            Special_Stage_Call19
	smpsCall            Special_Stage_Call1A
	smpsCall            Special_Stage_Call1B
	smpsCall            Special_Stage_Call1C
	smpsCall            Special_Stage_Call1D
	smpsCall            Special_Stage_Call1E
	smpsCall            Special_Stage_Call1F
	smpsCall            Special_Stage_Call1D
	smpsCall            Special_Stage_Call1E
	smpsCall            Special_Stage_Call20
	smpsCall            Special_Stage_Call21
	smpsCall            Special_Stage_Call22
	smpsCall            Special_Stage_Call23
	smpsCall            Special_Stage_Call24
	smpsCall            Special_Stage_Call25
	smpsCall            Special_Stage_Call26
	smpsCall            Special_Stage_Call27
	smpsCall            Special_Stage_Call28
	smpsCall            Special_Stage_Call29
	smpsCall            Special_Stage_Call2A
	smpsCall            Special_Stage_Call2B
	smpsCall            Special_Stage_Call2C
	smpsCall            Special_Stage_Call2D
	smpsJump            Special_Stage_FM5

; FM6 Data
Special_Stage_FM6:
	smpsCall            Special_Stage_Call00
	smpsCall            Special_Stage_Call01
	smpsCall            Special_Stage_Call02
	smpsCall            Special_Stage_Call03
	smpsCall            Special_Stage_Call04
	smpsCall            Special_Stage_Call05
	smpsCall            Special_Stage_Call06
	smpsCall            Special_Stage_Call07
	smpsCall            Special_Stage_Call08
	smpsCall            Special_Stage_Call09
	smpsCall            Special_Stage_Call0A
	smpsCall            Special_Stage_Call08
	smpsCall            Special_Stage_Call09
	smpsCall            Special_Stage_Call0B
	smpsCall            Special_Stage_Call0C
	smpsCall            Special_Stage_Call0D
	smpsCall            Special_Stage_Call0E
	smpsCall            Special_Stage_Call08
	smpsCall            Special_Stage_Call09
	smpsCall            Special_Stage_Call0A
	smpsCall            Special_Stage_Call08
	smpsCall            Special_Stage_Call0F
	smpsCall            Special_Stage_Call10
	smpsCall            Special_Stage_Call11
	smpsCall            Special_Stage_Call12
	smpsCall            Special_Stage_Call13
	smpsCall            Special_Stage_Call14
	smpsJump            Special_Stage_FM6

	

; PSG1 Data
Special_Stage_PSG1:
	dc.b	nRst, $7F, smpsNoAttack, $01
	smpsJump 	Special_Stage_PSG1
; DAC Data
Special_Stage_DAC:
; PSG2 Data
Special_Stage_PSG2:
	smpsStop

; PSG3 Data
Special_Stage_PSG3:
	smpsPSGform         $E7
	smpsCall            Special_Stage_Call92
	smpsCall            Special_Stage_Call93
	smpsCall            Special_Stage_Call94
	smpsCall            Special_Stage_Call95
	smpsCall            Special_Stage_Call92
	smpsCall            Special_Stage_Call94
	smpsCall            Special_Stage_Call95
	smpsCall            Special_Stage_Call92
	smpsCall            Special_Stage_Call94
	smpsCall            Special_Stage_Call95
	smpsCall            Special_Stage_Call92
	smpsCall            Special_Stage_Call94
	smpsCall            Special_Stage_Call95
	smpsCall            Special_Stage_Call92
	smpsCall            Special_Stage_Call94
	smpsCall            Special_Stage_Call95
	smpsCall            Special_Stage_Call92
	smpsCall            Special_Stage_Call94
	smpsCall            Special_Stage_Call95
	smpsCall            Special_Stage_Call92
	smpsCall            Special_Stage_Call94
	smpsCall            Special_Stage_Call95
	smpsCall            Special_Stage_Call92
	smpsCall            Special_Stage_Call94
	smpsCall            Special_Stage_Call95
	smpsCall            Special_Stage_Call92
	smpsCall            Special_Stage_Call96
	smpsJump            Special_Stage_PSG3

Special_Stage_Call79:
	smpsSetvoice        $00
	dc.b	nF3, $2C, nRst, $04, nE3, $2C, nRst, $04, nD3, $20
	smpsReturn

Special_Stage_Call7A:
	dc.b	smpsNoAttack, $0C, nRst, $04, nC3, $06, nRst, $0A, nD3, $06, nRst, $0A
	smpsReturn

Special_Stage_Call7B:
	dc.b	nE3, $06, nRst, $0A, nF3, $2C, nRst, $04, nE3, $2C, nRst, $04
	dc.b	nF3, $0C, nRst, $04
	smpsReturn

Special_Stage_Call7C:
	dc.b	nG3, $08, nRst, nB3, nRst, nC4, $0A, nRst, $06, nG3, nRst, $0A
	dc.b	nC3, $06, nRst, $0A, nD3, $20, nG5, $0E, nRst, $02
	smpsReturn

Special_Stage_Call7D:
	dc.b	nF3, $20, nF5, $0E, nRst, $02, nE3, $32, nRst, $0E, nB3, $10
	smpsReturn

Special_Stage_Call7E:
	dc.b	smpsNoAttack, $02, nRst, $0E, nF3, $32, nRst, $0E, nC4, $12, nRst, $0E
	dc.b	nG3, $10
	smpsReturn

Special_Stage_Call7F:
	dc.b	smpsNoAttack, $10, nG4, $12, nRst, $0E, nD4, $10, nG4, nG3, $28, nB4
	dc.b	$08
	smpsReturn

Special_Stage_Call80:
	dc.b	nRst, $02, $0E, nG5, $08, nRst, nB5, $0C, nRst, $04, nF3, $2C
	dc.b	nRst, $04, nE3, $20
	smpsReturn

Special_Stage_Call81:
	dc.b	smpsNoAttack, $0C, nRst, $04, nD3, $2C, nRst, $04, nC3, $06, nRst, $0A
	dc.b	nD3, $06, nRst, $0A, nE3, $0C, nRst, $04, nF3, $10
	smpsReturn

Special_Stage_Call82:
	dc.b	smpsNoAttack, $1C, nRst, $04, nE3, $2C, nRst, $04, nF3, $0C, nRst, $04
	dc.b	nG3, $08, nRst, nB3, nRst
	smpsReturn

Special_Stage_Call83:
	dc.b	nC4, $0A, nRst, $06, nG3, nRst, $0A, nC3, $06, nRst, $0A, nF3
	dc.b	$2C, nRst, $04, nE3, $20
	smpsReturn

Special_Stage_Call84:
	dc.b	nC4, $0A, nRst, $06, nG3, nRst, $0A, nC3, $06, nRst, $0A, nD3
	dc.b	$30, nF3, $20
	smpsReturn

Special_Stage_Call85:
	dc.b	smpsNoAttack, $02, nRst, $0E, nE3, $32, nRst, $0E, nC4, $12, nRst, $0E
	dc.b	nF3, $10
	smpsReturn

Special_Stage_Call86:
	dc.b	smpsNoAttack, $22, nRst, $0E, nC4, $12, nRst, $0E, nG4, $30
	smpsReturn

Special_Stage_Call87:
	dc.b	smpsNoAttack, $02, nRst, $0E, nA3, $08, nRst, nB3, $02, nRst, $0E, nF3
	dc.b	$2A, nRst, $06, nE3, $20
	smpsReturn

Special_Stage_Call88:
	dc.b	smpsNoAttack, $0A, nRst, $06, nD3, $2B, nRst, $05, nC3, $08, nRst, nD3
	dc.b	nRst, nE3, nRst, nF3, $10
	smpsReturn

Special_Stage_Call89:
	dc.b	smpsNoAttack, $02, nRst, $06, nA4, $12, nRst, $06, nE3, $12, nRst, $06
	dc.b	nG4, $12, nRst, $06, nF3, $0C, nRst, $04, nG3, $0E, nRst, $02
	dc.b	nB3, $0C, nRst, $04
	smpsReturn

Special_Stage_Call8A:
	dc.b	nC4, $2E, nRst, $02, nF3, $12, nRst, $06, nA4, $12, nRst, $06
	dc.b	nE3, $12, nRst, $06, nG4, $08
	smpsReturn

Special_Stage_Call8B:
	dc.b	smpsNoAttack, $0A, nRst, $06, nD3, $12, nRst, $06, nF4, $12, nRst, $06
	dc.b	nC3, $08, nRst, nD3, nRst, nE3, nRst, nF3, $10
	smpsReturn

Special_Stage_Call8C:
	dc.b	smpsNoAttack, $02, nRst, $06, nA4, $12, nRst, $06, nE3, $12, nRst, $06
	dc.b	nG4, $12, nRst, $06, nD3, $0A, nRst, $06, nE3, $0A, nRst, $06
	dc.b	nF3, $10
	smpsReturn

Special_Stage_Call8D:
	dc.b	nG3, $08, nRst, nG3, $10, nC3, nBb3, $20, nD4, $10, nC4, $20
	smpsReturn

Special_Stage_Call8E:
	dc.b	smpsNoAttack, $02, nRst, $0E, nD3, $30, nG3, $20, nD4, $10, nF3
	smpsReturn

Special_Stage_Call8F:
	dc.b	smpsNoAttack, $20, nG3, $30, nAb3
	smpsReturn

Special_Stage_Call90:
	dc.b	nBb3, $30, nG3, $32, nRst, $06, nD4, $18
	smpsReturn

Special_Stage_Call91:
	dc.b	smpsNoAttack, $0A, nRst, $06, nG3, $28, nB4, $08, nRst, $02, $0E, nG5
	dc.b	$08, nRst, nB5, $0C, nRst, $04
	smpsReturn

Special_Stage_Call60:
	smpsSetvoice        $00
	dc.b	nF5, $04, nRst, nF5, $0A, nRst, $0E, nF4, $10, nE5, $04, nRst
	dc.b	nE5, $0A, nRst, $0E, nE4, $10, nD5, $04, nRst, nD5, $0A, nRst
	dc.b	$0E
	smpsReturn

Special_Stage_Call61:
	dc.b	nD4, $10, nC4, $06, nRst, $0A, nD4, $06, nRst, $0A
	smpsReturn

Special_Stage_Call62:
	dc.b	nE4, $06, nRst, $0A, nF5, $04, nRst, nF5, $0A, nRst, $0E, nF4
	dc.b	$10, nE5, $04, nRst, nE5, $0A, nRst, $0E, nE4, $0C, nRst, $04
	dc.b	nD5, $10
	smpsReturn

Special_Stage_Call63:
	dc.b	nC5, $0A, nRst, $06, nB4, $08, nRst, nG4, $20, nC4, $06, nRst
	dc.b	$1A, nA3, $10, nD4
	smpsReturn

Special_Stage_Call64:
	dc.b	nF5, $10, nG5, $12, nRst, $0E, nE5, $2C, nRst, $04, nG3, $20
	smpsReturn

Special_Stage_Call65:
	dc.b	smpsNoAttack, $02, nRst, $0E, nC5, $20, nG5, $10, nA3, $22, nRst, $0E
	dc.b	nD5, $10
	smpsReturn

Special_Stage_Call66:
	dc.b	smpsNoAttack, $18, nRst, $08, nB3, $22, nRst, $16, nA3, $28
	smpsReturn

Special_Stage_Call67:
	dc.b	nD5, $08, nRst, $28, nF5, $04, nRst, nF5, $0A, nRst, $0E, nF4
	dc.b	$10, nE5, $04, nRst, nE5, $0A, nRst, $0E
	smpsReturn

Special_Stage_Call68:
	dc.b	nE4, $10, nD5, $04, nRst, nD5, $0A, nRst, $0E, nD4, $10, nC4
	dc.b	$06, nRst, $0A, nD4, $06, nRst, $10, nG3, $08, nRst, $02, nF5
	dc.b	$04, nRst, nF5, $08
	smpsReturn

Special_Stage_Call69:
	dc.b	smpsNoAttack, $02, nRst, $0E, nF4, $10, nE5, $04, nRst, nE5, $0A, nRst
	dc.b	$0E, nE4, $0C, nRst, $04, nD5, $10, nC5, $0A, nRst, $06, nB4
	dc.b	$08, nRst
	smpsReturn

Special_Stage_Call6A:
	dc.b	nG4, $20, nC4, $06, nRst, $0A, nF5, $04, nRst, nF5, $0A, nRst
	dc.b	$0E, nF4, $10, nE5, $04, nRst, nE5, $0A, nRst, $0E
	smpsReturn

Special_Stage_Call6B:
	dc.b	nG4, $30, nD5, $0A, nRst, $06, nA3, $10, nF5, $0A, nRst, $06
	dc.b	nA5, $12, nRst, $0E
	smpsReturn

Special_Stage_Call6C:
	dc.b	nD4, $10, nC5, $18, nRst, $08, nE4, $10, nG3, $22, nRst, $0E
	dc.b	nA5, $10
	smpsReturn

Special_Stage_Call6D:
	dc.b	smpsNoAttack, $02, nRst, $06, nG5, $08, nF4, $10, nA3, $22, nRst, $0E
	dc.b	nG5, $20, nB5, $08, nRst
	smpsReturn

Special_Stage_Call6E:
	dc.b	nG3, $12, nRst, $0E, nG4, $10, nF5, $12, nRst, $06, nA5, $12
	dc.b	nRst, $06, nE5, $12, nRst, $06, nG5, $08
	smpsReturn

Special_Stage_Call6F:
	dc.b	smpsNoAttack, $04, nRst, nE5, $08, nD5, $11, nRst, $07, nD5, $0C, nRst
	dc.b	$04, nD5, $06, nRst, $02, nC4, $08, nRst, nC4, nRst, nC4, nRst
	dc.b	nF5, $10
	smpsReturn

Special_Stage_Call70:
	dc.b	smpsNoAttack, $0A, nRst, $06, nC5, $10, nE5, $1A, nRst, $06, nB4, $10
	dc.b	nF5, $0C, nRst, $04, nE5, $0A, nRst, $06, nD5, $0C, nRst, $04
	smpsReturn

Special_Stage_Call71:
	dc.b	nC5, $22, nRst, $0E, nF5, $1A, nRst, $06, nC5, $10, nE5, $1A
	dc.b	nRst, $06
	smpsReturn

Special_Stage_Call72:
	dc.b	nB4, $10, nD5, $1A, nRst, $06, nA4, $10, nC4, $08, nRst, nD4
	dc.b	nRst, nE4, $0C, nRst, $04, nF5, $10
	smpsReturn

Special_Stage_Call73:
	dc.b	smpsNoAttack, $0A, nRst, $06, nC5, $10, nE5, $1A, nRst, $06, nB4, $10
	dc.b	nD4, $0A, nRst, $06, nE4, $0A, nRst, $06, nF4, $0A, nRst, $06
	smpsReturn

Special_Stage_Call74:
	dc.b	nG4, $22, nRst, $1E, nF3, $20, nE5, $0C, nRst, $04, nG3, $10
	smpsReturn

Special_Stage_Call75:
	dc.b	smpsNoAttack, $10, nRst, nA3, nC6, $0A, nRst, $06, nG5, $0C, nRst, $04
	dc.b	nD3, $20, nRst, $10
	smpsReturn

Special_Stage_Call76:
	dc.b	nC4, $10, nC6, $0A, nRst, $06, $10, nD4, nD6, $0A, nRst, $06
	dc.b	$10, nEb4, nEb6, $0A, nRst, $06
	smpsReturn

Special_Stage_Call77:
	dc.b	nBb5, $06, nRst, $0A, nF4, $10, nC6, $0A, nRst, $06, nG5, $1A
	dc.b	nRst, $06, nB5, $0C, nRst, $04, nG5, $20
	smpsReturn

Special_Stage_Call78:
	dc.b	smpsNoAttack, $0A, nRst, $0E, nA3, $28, nD5, $08, nRst, $28
	smpsReturn

Special_Stage_Call47:
	smpsSetvoice        $00
	dc.b	nC6, $04, nRst, nC6, $0A, nRst, $0E, nF5, $10, nB5, $04, nRst
	dc.b	nB5, $0A, nRst, $0E, nE5, $10, nA5, $04, nRst, nA5, $0A, nRst
	dc.b	$0E
	smpsReturn

Special_Stage_Call48:
	dc.b	nD5, $10, nC5, $08, nRst, nD5, $10
	smpsReturn

Special_Stage_Call49:
	dc.b	smpsNoAttack, $0E, nRst, $02, nC6, $04, nRst, nC6, $0A, nRst, $0E, nF5
	dc.b	$10, nB5, $04, nRst, nB5, $0A, nRst, $0E, nE5, $0C, nRst, $04
	dc.b	nF5, $10
	smpsReturn

Special_Stage_Call4A:
	dc.b	nE5, $0A, nRst, $06, nD5, $08, nRst, nC5, $32, nRst, $0E, nD5
	dc.b	$10, nE5, $0E, nRst, $02
	smpsReturn

Special_Stage_Call4B:
	dc.b	nA5, $12, nRst, $0E, nD5, $08, nRst, nG5, $2C, nRst, $04, nE5
	dc.b	$20
	smpsReturn

Special_Stage_Call4C:
	dc.b	smpsNoAttack, $04, nRst, $1C, nC4, $20, nF5, $2C, nRst, $04, nG5, $10
	smpsReturn

Special_Stage_Call4D:
	dc.b	smpsNoAttack, $18, nRst, $08, nD5, $28, nRst, $18, nB3, $20
	smpsReturn

Special_Stage_Call4E:
	dc.b	smpsNoAttack, $12, nRst, $1A, $04, nC6, nRst, nC6, $0A, nRst, $0E, nF5
	dc.b	$10, nB5, $04, nRst, nB5, $0A, nRst, $0E
	smpsReturn

Special_Stage_Call4F:
	dc.b	nE5, $10, nA5, $04, nRst, nA5, $0A, nRst, $0E, nD5, $10, nC5
	dc.b	$08, nRst, nD5, $1E, nRst, $02, nC6, $04, nRst, nC6, $08
	smpsReturn

Special_Stage_Call50:
	dc.b	smpsNoAttack, $02, nRst, $0E, nF5, $10, nB5, $04, nRst, nB5, $0A, nRst
	dc.b	$0E, nE5, $0C, nRst, $04, nF5, $10, nE5, $0A, nRst, $06, nD5
	dc.b	$08, nRst
	smpsReturn

Special_Stage_Call51:
	dc.b	nC5, $20, nRst, $10, nC6, $04, nRst, nC6, $0A, nRst, $0E, nF5
	dc.b	$10, nB5, $04, nRst, nB5, $0A, nRst, $0E
	smpsReturn

Special_Stage_Call52:
	dc.b	nC5, $30, nF5, $10, nD5, $32, nRst, $0E
	smpsReturn

Special_Stage_Call53:
	dc.b	nF5, $02, nRst, $0E, nG5, $20, nE5, nRst, $10, nE4, nRst
	smpsReturn

Special_Stage_Call54:
	dc.b	nC4, $20, nF6, $0C, nRst, $04, nC6, $0C, nRst, $04, nF4, $10
	dc.b	nD6, $12, nRst, $0E, nG3, $0C, nRst, $04
	smpsReturn

Special_Stage_Call55:
	dc.b	nD5, $0C, nRst, $04, nD5, $10, nB5, $08, nRst, nC6, $12, nRst
	dc.b	$16, nF5, $0A, nRst, $06, nC4, $18
	smpsReturn

Special_Stage_Call56:
	dc.b	smpsNoAttack, $0A, nRst, $06, nA5, $11, nRst, $07, nF5, $0C, nRst, nC5
	dc.b	$08, nRst, nC5, $10, nRst, nC6
	smpsReturn

Special_Stage_Call57:
	dc.b	smpsNoAttack, $0A, nRst, $0E, nF5, $08, nB5, $1A, nRst, $0E, nE5, $08
	dc.b	nA5, $0C, nRst, $04, nG5, $0A, nRst, $06, nF5, $0C, nRst, $04
	smpsReturn

Special_Stage_Call58:
	dc.b	nE5, $22, nRst, $0E, nC6, $1A, nRst, $0E, nF5, $08, nB5, $1A
	dc.b	nRst, $06
	smpsReturn

Special_Stage_Call59:
	dc.b	smpsNoAttack, $08, nE5, nA5, $1A, nRst, $0E, nD5, $08, nC5, $0A, nRst
	dc.b	$06, nC5, $1C, nRst, $04, nC6, $10
	smpsReturn

Special_Stage_Call5A:
	dc.b	smpsNoAttack, $0A, nRst, $0E, nF5, $08, nB5, $1A, nRst, $0E, nE5, $08
	dc.b	nD5, $0A, nRst, $06, nC5, $0A, nRst, $06, nB4, $10
	smpsReturn

Special_Stage_Call5B:
	dc.b	nC5, $22, nRst, $1E, nD5, nRst, $02, nG5, $0A, nRst, $06, nE5
	dc.b	$10
	smpsReturn

Special_Stage_Call5C:
	dc.b	smpsNoAttack, $12, nRst, $0E, nF5, $19, nRst, $07, nD6, $0C, nRst, $04
	dc.b	nG5, $22, nRst, $0E
	smpsReturn

Special_Stage_Call5D:
	dc.b	nF5, $18, nA5, $08, nRst, $10, nG5, $18, nB5, $08, nRst, $10
	dc.b	nAb5, $18, nC6, $08
	smpsReturn

Special_Stage_Call5E:
	dc.b	nD6, $06, nRst, $0A, nG6, $16, nRst, $02, nB5, $0A, nRst, $0E
	dc.b	nB3, $30, nG4, $10
	smpsReturn

Special_Stage_Call5F:
	dc.b	smpsNoAttack, $0A, nRst, $16, nB3, $32, nRst, $1A, $04
	smpsReturn

Special_Stage_Call2E:
	dc.b	smpsNoAttack, $10
	smpsSetvoice        $00
	dc.b	nC4, $20, nRst, $10, nG3, nRst, $20, nA3, $10
	smpsReturn

Special_Stage_Call2F:
	dc.b	smpsNoAttack, $10, nE5, $0E, nRst, $02, nG5, $10
	smpsReturn

Special_Stage_Call30:
	dc.b	smpsNoAttack, $0C, nRst, $14, nC4, $20, nRst, $10, nG3, $1C, nRst, $14
	smpsReturn

Special_Stage_Call31:
	dc.b	smpsNoAttack, $60, nF5, $12, nRst, $0E
	smpsReturn

Special_Stage_Call32:
	dc.b	smpsNoAttack, $10, nA3, $20, nRst, $10, nB3, $20, nC6
	smpsReturn

Special_Stage_Call33:
	dc.b	smpsNoAttack, $0E, nRst, $12, nF5, nRst, $0E, nA5, $08, nRst, nB5, $10
	dc.b	nC6, $0C, nRst, $04, nC6, $10
	smpsReturn

Special_Stage_Call34:
	dc.b	smpsNoAttack, $18, nRst, $08, nG5, $28, nRst, $20, nD4, $18
	smpsReturn

Special_Stage_Call35:
	dc.b	smpsNoAttack, $1A, nRst, $12, $14, nC4, $20, nRst, $10, nG3
	smpsReturn

Special_Stage_Call36:
	dc.b	smpsNoAttack, $10, nRst, nA3, $20, nE5, $0E, nRst, $02, nG5, $1C, nRst
	dc.b	$14
	smpsReturn

Special_Stage_Call37:
	dc.b	nC4, $20, nRst, $10, nG3, $1C, nRst, $34
	smpsReturn

Special_Stage_Call38:
	dc.b	smpsNoAttack, $40, nC4, $20, nRst, $10, nG3
	smpsReturn

Special_Stage_Call39:
	dc.b	smpsNoAttack, $20, nC4, $06, nRst, $0A, nA5, $10, nRst, $08, nE5, $0A
	dc.b	nRst, $06, nG5, $0A, nRst, $0E, nA3, $10
	smpsReturn

Special_Stage_Call3A:
	dc.b	smpsNoAttack, $10, nRst, nC4, $20, nC6, $1A, nRst, $06, nG5, $0A, nRst
	dc.b	$16
	smpsReturn

Special_Stage_Call3B:
	dc.b	nF5, $28, nRst, $18, nA5, $0A, nRst, $16, nD4, $12, nRst, $0E
	smpsReturn

Special_Stage_Call3C:
	dc.b	nG5, $12, nRst, $0E, nG5, $08, nRst, $10, nC4, $22, nRst, $06
	dc.b	nB5, $12, nRst, $0E
	smpsReturn

Special_Stage_Call3D:
	dc.b	smpsNoAttack, $18, nA3, $22, nRst, $06, nE5, $08, nRst, nG5, $10, nRst
	dc.b	$18, nC4, $08
	smpsReturn

Special_Stage_Call3E:
	dc.b	smpsNoAttack, $02, nRst, $06, nA5, $0A, nRst, $16, nB3, $0A, nRst, $06
	dc.b	nG5, $10, nRst, $38
	smpsReturn

Special_Stage_Call3F:
	dc.b	smpsNoAttack, $10, nG3, $12, nRst, $16, nC4, $0A, nRst, $06, nA5, $0A
	dc.b	nRst, $16, nB3, $0A, nRst, $06, nG5, $08
	smpsReturn

Special_Stage_Call40:
	dc.b	smpsNoAttack, $08, nRst, $10, nA3, $0A, nRst, $06, nF5, $10, nRst, $08
	dc.b	nE5, $0A, nRst, $06, nG5, $1C, nRst, $0C, nC4, $08
	smpsReturn

Special_Stage_Call41:
	dc.b	smpsNoAttack, $02, nRst, $06, nA5, $0A, nRst, $16, nB3, $0A, nRst, $06
	dc.b	nG5, $10, nRst, $08, nF5, $12, nRst, $0E, nD5, $0A, nRst, $06
	smpsReturn

Special_Stage_Call42:
	dc.b	smpsNoAttack, $20, nC4, $10, nRst, nF5, $0A, nRst, $06, nA5, $0A, nRst
	dc.b	$16, nC6, $10
	smpsReturn

Special_Stage_Call43:
	dc.b	smpsNoAttack, $12, nRst, $0E, nA5, $0A, nRst, $06, nD4, $10, nRst, $40
	smpsReturn

Special_Stage_Call44:
	dc.b	nA5, $0A, nRst, $06, nF4, $10, nRst, nB5, $0A, nRst, $06, nG4
	dc.b	$10, nRst, nC6, $0A, nRst, $06, nAb4, $10
	smpsReturn

Special_Stage_Call45:
	dc.b	nRst, $18, nD6, $0A, nRst, $0E, nC6, $22, nRst, $26, nB4, $08
	smpsReturn

Special_Stage_Call46:
	dc.b	smpsNoAttack, $02, nRst, $26, nD4, $32, nRst, $12, $04
	smpsReturn

Special_Stage_Call15:
	dc.b	smpsNoAttack, $10
	smpsSetvoice        $00
	dc.b	nA5, nRst, $20, nG5, $10, nRst, $20, nF5, $10
	smpsReturn

Special_Stage_Call16:
	dc.b	nRst, $30
	smpsReturn

Special_Stage_Call17:
	dc.b	smpsNoAttack, $20
	smpsSetvoice        $00
	dc.b	nA5, $10, nRst, $20, nG5, $10, nRst, $20
	smpsReturn

Special_Stage_Call18:
	dc.b	smpsNoAttack, $7F, smpsNoAttack, $01
	smpsReturn

Special_Stage_Call19:
	dc.b	nRst, $10
	smpsSetvoice        $00
	dc.b	nE5, $12, nRst, $2E, nE4, $10, nRst, $20
	smpsReturn

Special_Stage_Call1A:
	dc.b	nE4, $10, nRst, $20, nF4, $10, nRst, $20, nF4, $10, nRst
	smpsReturn

Special_Stage_Call1B:
	dc.b	nD4, $20, nB5, $28, nRst, nG4, $10
	smpsReturn

Special_Stage_Call1C:
	dc.b	smpsNoAttack, $22, nRst, $0A, $14, nA5, $10, nRst, $20, nG5, $10
	smpsReturn

Special_Stage_Call1D:
	dc.b	nRst, $20, nF5, $10, nRst, $3B, nC4, $05, nRst, $10
	smpsReturn

Special_Stage_Call1E:
	smpsSetvoice        $00
	dc.b	nA5, $10, nRst, $20, nG5, $10, nRst, $40
	smpsReturn

Special_Stage_Call1F:
	dc.b	smpsNoAttack, $40, nA5, $10, nRst, $20, nG5, $10
	smpsReturn

Special_Stage_Call20:
	dc.b	smpsNoAttack, $50, nD4, $10, nRst, nG5
	smpsReturn

Special_Stage_Call21:
	dc.b	smpsNoAttack, $02, nRst, $36, nG5, $1C, nRst, $2C
	smpsReturn

Special_Stage_Call22:
	dc.b	smpsNoAttack, $10, nA5, $08, nC6, nRst, $40, nC6, $12, nRst, $0E
	smpsReturn

Special_Stage_Call23:
	dc.b	smpsNoAttack, $10, nA5, $12, nRst, $1E, nF4, $1A, nRst, $16, nE4, $10
	smpsReturn

Special_Stage_Call24:
	dc.b	smpsNoAttack, $0A, nRst, $16, nD4, $1A, nRst, $46
	smpsReturn

Special_Stage_Call25:
	dc.b	nF4, $0A, nRst, $26, nE4, $0A, nRst, $46
	smpsReturn

Special_Stage_Call26:
	dc.b	smpsNoAttack, $20, nC3, $06, nRst, $1A, nF4, $0A, nRst, $26, nE4, $0A
	dc.b	nRst, $06
	smpsReturn

Special_Stage_Call27:
	dc.b	smpsNoAttack, $20, nD4, $0A, nRst, $56
	smpsReturn

Special_Stage_Call28:
	dc.b	nF4, $0A, nRst, $26, nE4, $0A, nRst, $26, nE5, $10, nRst
	smpsReturn

Special_Stage_Call29:
	dc.b	smpsNoAttack, $48, nG5, $0A, nRst, $06, nF5, $08, nRst, $20
	smpsReturn

Special_Stage_Call2A:
	dc.b	nC3, $10, nRst, $18, nB5, $0A, nRst, $06, nA5, $08, nRst, $40
	smpsReturn

Special_Stage_Call2B:
	dc.b	smpsNoAttack, $08, nB5, $0A, nRst, $26, nC6, $0A, nRst, $26, nD6, $0A
	dc.b	nRst, $0E
	smpsReturn

Special_Stage_Call2C:
	dc.b	smpsNoAttack, $20, nBb4, $10, nRst, $50
	smpsReturn

Special_Stage_Call2D:
	dc.b	nD5, $0E, nRst, $22, nG4, $32, nRst, $0A, $04
	smpsReturn

Special_Stage_Call00:
	dc.b	smpsNoAttack, $30
	smpsSetvoice        $00
	dc.b	nE3, $28, nRst, $08, nD3, $20
	smpsReturn

Special_Stage_Call01:
	dc.b	smpsNoAttack, $0C, nRst, $04, nC3, $0C, nRst, $04, nD3, $0C, nRst, $04
	smpsReturn

Special_Stage_Call02:
	dc.b	nE3, $0C, nRst, $04, nF3, $28, nRst, $08, nE3, $28, nRst, $08
	dc.b	nF3, $10
	smpsReturn

Special_Stage_Call03:
	dc.b	nG3, $1C, nRst, $04, nC3, $10, nC4, $1C, nRst, $04, nD3, $28
	dc.b	nRst, $08
	smpsReturn

Special_Stage_Call04:
	dc.b	nF3, $28, nRst, $08, nE3, $28, nRst, $08, nG3, $0C, nRst, $04
	dc.b	nF3, $0C, nRst, $04
	smpsReturn

Special_Stage_Call05:
	dc.b	nE3, $0C, nRst, $04, nF3, $28, nRst, $08, nD3, $28, nRst, $08
	dc.b	nG3, $10
	smpsReturn

Special_Stage_Call06:
	dc.b	smpsNoAttack, $18, nRst, $08, nG3, $0C, nRst, $04, nA3, $0C, nRst, $04
	dc.b	nB3, $0C, nRst, $04, nD4, $0C, nRst, $04, nC4, $0C, nRst, $04
	dc.b	nB3, $0C, nRst, $04
	smpsReturn

Special_Stage_Call07:
	dc.b	nG3, $10, nG2, $18, nRst, $08, nF3, $28, nRst, $08, nE3, $20
	smpsReturn

Special_Stage_Call08:
	dc.b	smpsNoAttack, $08, nRst, nD3, $28, nRst, $08, nC3, $0C, nRst, $04, nD3
	dc.b	$0C, nRst, $04, nE3, $0C, nRst, $04, nF3, $10
	smpsReturn

Special_Stage_Call09:
	dc.b	smpsNoAttack, $18, nRst, $08, nE3, $28, nRst, $08, nF3, $10, nG3, $1C
	dc.b	nRst, $04
	smpsReturn

Special_Stage_Call0A:
	dc.b	nC3, $10, nC4, $1C, nRst, $04, nF3, $28, nRst, $08, nE3, $20
	smpsReturn

Special_Stage_Call0B:
	dc.b	nC3, $10, nC4, $1C, nRst, $04, nD3, $28, nRst, $08, nF3, $20
	smpsReturn

Special_Stage_Call0C:
	dc.b	smpsNoAttack, $08, nRst, nE3, $28, nRst, $08, nG3, $0C, nRst, $04, nF3
	dc.b	$0C, nRst, $04, nE3, $0C, nRst, $04, nF3, $10
	smpsReturn

Special_Stage_Call0D:
	dc.b	smpsNoAttack, $18, nRst, $08, nF3, $28, nRst, $08, nG3, $28, nRst, $08
	smpsReturn

Special_Stage_Call0E:
	dc.b	nB3, $0C, nRst, $04, nA3, $0C, nRst, $04, nG3, $0C, nRst, $04
	dc.b	nF3, $28, nRst, $08, nE3, $20
	smpsReturn

Special_Stage_Call0F:
	dc.b	smpsNoAttack, $18, nRst, $08, nE3, $28, nRst, $08, nD3, $0C, nRst, $04
	dc.b	nE3, $0C, nRst, $04, nF3, $0C, nRst, $04
	smpsReturn

Special_Stage_Call10:
	dc.b	nC4, $10, nC3, $1C, nRst, $04, nBb3, $28, nRst, $08, nC4, $10
	dc.b	nC3
	smpsReturn

Special_Stage_Call11:
	dc.b	smpsNoAttack, $0C, nRst, $04, nD3, $28, nRst, $08, nG3, $10, nG2, $1C
	dc.b	nRst, $04, nF3, $10
	smpsReturn

Special_Stage_Call12:
	dc.b	smpsNoAttack, $10, nC3, nG3, $20, nD3, $10, nAb3, $20, nEb3, $10
	smpsReturn

Special_Stage_Call13:
	dc.b	nBb3, $20, nF3, $10, nG3, nA3, nB3, nD4, nC4
	smpsReturn

Special_Stage_Call14:
	dc.b	nB3, $10, nG3, $20, nA3, $10, nG3, nG2, $18, nRst, $08
	smpsReturn

Special_Stage_Call9B:
	dc.b	nRst, $7F, smpsNoAttack, $01
	smpsReturn

Special_Stage_Call9C:
	dc.b	smpsNoAttack, $30
	smpsReturn

Special_Stage_Call9D:
	dc.b	smpsNoAttack, $7F, smpsNoAttack, $01
	smpsReturn

Special_Stage_Call9E:
	dc.b	smpsNoAttack, $70
	smpsReturn

Special_Stage_Call97:
	dc.b	nRst, $7F, smpsNoAttack, $01
	smpsReturn

Special_Stage_Call98:
	dc.b	smpsNoAttack, $30
	smpsReturn

Special_Stage_Call99:
	dc.b	smpsNoAttack, $7F, smpsNoAttack, $01
	smpsReturn

Special_Stage_Call9A:
	dc.b	smpsNoAttack, $70
	smpsReturn

Special_Stage_Call92:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $10, nCs0, nRst, nCs0, nCs0, nRst, nCs0, nCs0
	smpsReturn

Special_Stage_Call93:
	dc.b	nRst, $10
	smpsPSGvoice        fTone_02
	dc.b	nCs0, nCs0
	smpsReturn

Special_Stage_Call94:
	dc.b	nRst, $10
	smpsPSGvoice        fTone_02
	dc.b	nCs0, nCs0, nRst, nCs0, nCs0, nRst, nCs0
	smpsReturn

Special_Stage_Call95:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $10, nRst, nCs0, nCs0, nRst, nCs0, nCs0, nRst
	smpsReturn

Special_Stage_Call96:
	dc.b	nRst, $10
	smpsPSGvoice        fTone_02
	dc.b	nCs0, nCs0, nRst, nCs0, nCs0, nRst
	smpsReturn

Special_Stage_Voices:
;	Voice $00
;	$1F
;	$03, $06, $31, $01, 	$1F, $1F, $1F, $1F, 	$0D, $12, $1F, $1F
;	$01, $0E, $01, $01, 	$FA, $09, $09, $09, 	$13, $14, $17, $16
	smpsVcAlgorithm     $07
	smpsVcFeedback      $03
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $00, $00
	smpsVcCoarseFreq    $01, $01, $06, $03
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $1F, $1F, $12, $0D
	smpsVcDecayRate2    $01, $01, $0E, $01
	smpsVcDecayLevel    $00, $00, $00, $0F
	smpsVcReleaseRate   $09, $09, $09, $0A
	smpsVcTotalLevel    $16, $17, $14, $13

