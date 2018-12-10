oki_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     oki_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       oki_DAC
	smpsHeaderFM        oki_FM1,	$02, $0D
	smpsHeaderFM        oki_FM2,	$02, $08
	smpsHeaderFM        oki_FM3,	$02, $0C
	smpsHeaderFM        oki_FM4,	$02, $08
	smpsHeaderFM        oki_FM5,	$02, $0C
	smpsHeaderPSG       oki_PSG1,	$02, $05, $00, $00
	smpsHeaderPSG       oki_PSG2,	$02, $05, $00, $00
	smpsHeaderPSG       oki_PSG3,	$02, $0A, $00, $00

; DAC Data
oki_DAC:
	dc.b	$90, $04, $91, $92, $86, $06, $06, dSnareS3, dSnareS3, dSnareS3, $86

oki_Loop00:
	dc.b	$0C, $06, $0C, dSnareS3, $12, $86, $0C, $06, $0C, dSnareS3, $86, $06
	dc.b	$06, $06, $06, $0C, dSnareS3, $12, $86, $0C, $06, $18, $06
	smpsLoop            $00, $03, oki_Loop00
	dc.b	$0C, $06, $0C, dSnareS3, $12, $86

oki_Loop01:
	dc.b	$0C, $06, $0C, dSnareS3, $86, $06
	smpsLoop            $00, $02, oki_Loop01
	dc.b	$06, $06, dSnareS3, dSnareS3, dSnareS3, $86, dSnareS3, $12

oki_Jump00:
	dc.b	$86, $12, $06, dSnareS3, $24
	smpsPan             panCenter, $00

oki_Loop02:
	dc.b	$86, $0C, dSnareS3, $12, $86, $06, $06, $0C, $06, dSnareS3, $18, $86
	dc.b	$06, $06, $06, $06, dSnareS3, $18, $86, $12, $06, dSnareS3, $24
	smpsLoop            $00, $02, oki_Loop02
	smpsPan             panCenter, $00
	dc.b	$86, $0C, dSnareS3, $12, $86, $06, $06, $0C, $06, dSnareS3, $18, $86
	dc.b	$01, nRst, $05, $86, $06, $06, $06, dSnareS3, $18, $86, $12, $06
	dc.b	dSnareS3, $24
	smpsPan             panCenter, $00
	dc.b	$86, $0C, dSnareS3, $12, $86, $06, $06, $0C, $06, dSnareS3, $1E, $90
	dc.b	$06, $91, $92, $93, $86, $0C, $93, $06

oki_Loop03:
	dc.b	$86, $2A, $0C, $06, $0C, dSnareS3, $18, $86, $06, $12, dSnareS3, $1E
	dc.b	$86, $06, $06, $06, dSnareS3, $18
	smpsLoop            $00, $03, oki_Loop03
	dc.b	$86, $06, $12, dSnareS3, $86, $0C, $06, $06, $06, dSnareS3, $0C, $86
	dc.b	$06, $0C, $12, $1B, $90, $03, $03, $03, $06, $91, $92, $92
	dc.b	$93, $93, $86, $12, $06, dSnareS3, $0C, $86, $12, $0C, $06, dSnareS3
	dc.b	$1E, $86, $06, $0C, dSnareS3, $86, $86, $12, $06, dSnareS3, $12, $86
	dc.b	$06, $12, $06, dSnareS3, $0C, $86, $12, $0C, $06, dSnareS3, $1E, $86
	dc.b	$06, $0C, dSnareS3, $18, $86, $06, $06, $06, $06, dSnareS3, $12, $86
	dc.b	$06, $12, $06, dSnareS3, $0C, $86, $12, $0C, $06, dSnareS3, $1E, $86
	dc.b	$06, $0C, dSnareS3, $86, $86, $12, $06, dSnareS3, $12, $86, $06, $12
	dc.b	$06, dSnareS3, $0C, $86, $12, $0C, $06, dSnareS3, $18, $86, $06, $0C
	dc.b	$06, dSnareS3, $0C, $86, $06, $91, $0C, $06, $92, $0C, $93, $86
	dc.b	$06, $0C, $90, $03, $03, $06, $91, $92, $92, $92, $92, $93
	dc.b	$93, $93, $93

oki_Loop04:
	dc.b	$86
	smpsLoop            $00, $08, oki_Loop04
	dc.b	dSnareS3, $12, $86, $0C, $06, $0C, dSnareS3, $86, $06, $06, $06, $12
	dc.b	dSnareS3, $1E, $86, $06, $06, $06, dSnareS3, $18, $86, $06, $06, $06
	dc.b	$06, dSnareS3, $12, $86, $0C, $06, $0C, dSnareS3, $86, $06, $06, $06
	dc.b	$12, dSnareS3, $0F, $86, $03, $03, $03, $06, $06, $06, $06, dSnareS3
	dc.b	$18, $86, $06, $06, $06, $06, dSnareS3, $12, $86, $0C, $06, $0C
	dc.b	dSnareS3, $86, $06, $06, $06, $12, dSnareS3, $1E, $86, $06, $06, $06
	dc.b	dSnareS3, $18, $86, $06, $06, $06, $06, dSnareS3, $12, $86, $0C, $91
	dc.b	$06, $92, $0C, dSnareS3, $06, $06, $06, $06, $86, $86, $0C, $06
	dc.b	dSnareS3, $86, $86, $86, $91, $92, $0C, $93, $06, $87, $87, dSnareS3
	dc.b	$86
	smpsJump            oki_Jump00

; FM1 Data
oki_FM1:
	dc.b	nRst, $01
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	smpsModOff
	dc.b	$29, nBb2, $06, $06, nRst, nBb2, $7F, smpsNoAttack, $2F, nAb2, $06, $06
	dc.b	nRst, nAb2, $7F, smpsNoAttack, $2F, nG2, $06, $06, nRst, nG2, $7F, smpsNoAttack
	dc.b	$2F, nFs2, $06, $06, nRst, nFs2, $7E, $06, $06, $06, $06, $0C
	dc.b	nAb2, nAb2, $06

oki_Jump05:
	smpsAlterNote       $00

oki_Loop46:
	dc.b	nBb2, $06, nBb3, nG2, nG3, nAb2, nAb3, nAb2, nAb3

oki_Loop45:
	dc.b	nAb3, nG3, nRst, nAb3, nRst, nG2, nAb2, nBb2
	smpsLoop            $00, $02, oki_Loop45
	dc.b	nAb3, nG3, nRst, nAb3, nRst, nC3, nD3, nEb3, nD2, nD3, nBb2, nRst
	dc.b	nBb2, nRst, nG2, nRst, nBb2, nC3, nRst, nBb2, nRst, nF2, nG2, nBb2
	dc.b	nBb2, $0C, nBb3, $06, nG2, nRst, nAb2, nAb2, nRst, nAb2, nAb2, nAb3
	dc.b	nBb3, nEb4, nD4, nBb3, nC4
	smpsLoop            $01, $02, oki_Loop46
	dc.b	nBb2, $0C, nRst, nG2, $06, nBb2, nRst, nBb2, $0C, nRst, $12, nG2
	dc.b	$06, nBb2, nRst, nBb2, $0C, nRst, $18, nG2, $0C, nBb2, $06, nD3
	dc.b	$12, nBb2, $06, nRst, nBb2, nG2, nBb2, nFs2, $0C, nRst, nF2, $06
	dc.b	nFs2, nRst, nFs2, $0C, nRst, $12, nF2, $06, nFs2, nRst, nFs2, $0C
	dc.b	nRst, $18, nF2, $0C, nFs2, $06, nAb2, $12, nFs2, $06, nRst, $18
	dc.b	nEb2, $12, $06, nRst, $0C, nD2, $06, $06, nEb2, nD2, nRst, nEb2
	dc.b	nRst, nA2, nBb2, nC3, nD3, $12, nEb3, $0C, $06, nD3, nEb3, nF3
	dc.b	nF4, nEb3, nEb4, nC3, nC4, nEb3, nEb4, nBb2, nBb2, nRst, nBb2, nRst
	dc.b	nF2, nG2, nAb2, nBb2, $0C, $0C, nG2, $06, nBb2, $12, $06, nBb3
	dc.b	nRst, nBb2, nRst, nAb2, nG2, nF2, nRst, nD2, nEb2, nF2, nD3, nBb2
	dc.b	nC3, nG2, nBb2, nBb3, nRst, nAb2, nRst, nAb2, nAb3, nAb2, nAb2, nAb2
	dc.b	nG2, nG3, nF2, nF3, nEb2, nEb3, nD3, nEb3, nF3, nBb2, nD3, $18
	dc.b	nBb2, $06, nBb3, nRst, $0C, nBb2, $06, nBb3, nRst, $0C, nBb2, $06
	dc.b	nBb3, nRst, nAb2, nRst, nAb2, nAb3, nAb2, nAb2, nAb2, nG2, nG3, nF2
	dc.b	nF3, nEb2, nEb3, nD3, nEb3, nF3, nBb2, nRst, $48, nBb2, $06, nBb3
	dc.b	nRst, nAb2, nRst, nAb2, nAb3, nAb2, nAb2, nAb2, nG2, nG3, nF2, nF3
	dc.b	nEb2, nEb3, nD3, nEb3, nF3, nBb2, nD3, $18, nBb2, $06, nBb3, nRst
	dc.b	$0C, nBb2, $06, nBb3, nRst, $0C, nBb2, $06, nBb3, nRst, nBb2, nRst
	dc.b	nF2, nG2, nAb2, $0C, nAb3, $06, nG2, nG3, nF2, nF3, nEb2, nEb3
	dc.b	nG2, nA2, nRst, nA2, nRst, nG2, nA2, $0C, nRst, nC3, $06, nRst
	dc.b	nA2, nG2, $12, $06, nA2, nRst, nC2, nRst, nC2, nD2, nF2, nBb2
	dc.b	nBb3, nA2, nA3, nG2, nF2, $12, $06, nAb2, nC3, nEb3, nRst, nD3
	dc.b	nRst, nBb2, nRst, nC3, nRst, nAb2, nAb2, $0C, nBb2, $06, nRst, nG2
	dc.b	$12, nAb2, $06, nRst, $48, nF2, $06, nAb2, nC3, nEb3, nRst, nD3
	dc.b	nRst, nBb2, nRst, nC3, nRst, nAb2, nAb2, $0C, nBb2, $06, nRst

oki_Loop47:
	dc.b	nG2, $0C, $06, nAb2, nRst, $0C
	smpsLoop            $00, $02, oki_Loop47
	dc.b	nG2, nG2, $06, nAb2, nF2, nAb2, nC3, nEb3, nRst, nD3, nRst, nBb2
	dc.b	nRst, nC3, nRst, nAb2, nAb2, $0C, nBb2, $06, nRst, nG2, $12, nAb2
	dc.b	$06, nRst, $48, nF2, $06, nAb2, nC3, nEb3, nRst, nD3, nRst, nBb2
	dc.b	nRst, nC3, nRst, nAb2, nAb2, $0C, nBb2, $06, nRst, nG2, $12, nAb2
	dc.b	$06, nRst, $48
	smpsJump            oki_Jump05

; FM2 Data
oki_FM2:
	smpsSetvoice        $00
	smpsPan             panLeft, $00
	smpsModOff
	dc.b	nRst, $2F, nC4, $06, $06, nRst, nC4, $7F

oki_Loop43:
	dc.b	smpsNoAttack, $2F, nBb3, $06, $06, nRst, nBb3, $7F
	smpsLoop            $00, $02, oki_Loop43
	dc.b	smpsNoAttack, $2F, $06, $06, nRst, nBb3, $7E, $06, $06, $06, $06, $06
	dc.b	$12, nAb4, $01

oki_Jump04:
	dc.b	smpsNoAttack, $05, nC4, $06
	smpsAlterNote       $00
	dc.b	nD4, nEb4, nF4, nG4, nRst, nBb4, $1E, $03
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $E7
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $DF
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $17
	dc.b	smpsNoAttack, nA4, $02
	smpsAlterNote       $0F
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $08
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $E8
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $E1
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $16
	dc.b	smpsNoAttack, nAb4, $02
	smpsAlterNote       $0F
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $0E
	smpsAlterNote       $00
	dc.b	nEb5, $01
	smpsAlterNote       $0B
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EF
	dc.b	smpsNoAttack, nE5
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EE
	dc.b	smpsNoAttack, nF5
	smpsAlterNote       $00
	dc.b	$12, $0C, nEb5, nD5, nBb4, $06, nC5, $0C, nAb4, $42, nG4, $0C
	dc.b	$06, nAb4, $60, nRst, $06, nAb4, nC4, nD4, nEb4, nF4, nG4, nRst
	dc.b	nBb4, $1E, $03
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $E7
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $DF
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $17
	dc.b	smpsNoAttack, nA4, $02
	smpsAlterNote       $0F
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $08
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $E8
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $E1
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $16
	dc.b	smpsNoAttack, nAb4, $02
	smpsAlterNote       $0F
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $0E
	smpsAlterNote       $00
	dc.b	nEb5, $01
	smpsAlterNote       $0B
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EF
	dc.b	smpsNoAttack, nE5
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EE
	dc.b	smpsNoAttack, nF5
	smpsAlterNote       $00
	dc.b	$12, $0C, nEb5, nD5, nBb4, $06, nC5, $0C, nAb4, $42, nG4, $0C
	dc.b	$06, nAb4, $60, nRst, $06, nF5, nG4, nBb4, nD5, nRst, nEb5, nRst
	dc.b	nF5, $66, nD5, $06, nEb5, $12, nD5, $18, nCs5, $06, nFs4, nBb4
	dc.b	nCs5, nRst, nEb5, nRst, nEb5, $01
	smpsAlterNote       $EF
	dc.b	smpsNoAttack, nE5
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	nF5, $27, nCs5, $06, nFs4, $36, nAb4, $18, nFs4, nA4, $06, nC5
	dc.b	nRst, nEb5, $36, $06, nF5, nRst, nF5, $01
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $ED
	dc.b	smpsNoAttack, nFs5
	smpsAlterNote       $00
	dc.b	$33, nF5, $12, nC5, nEb5, $0C, nD5, $2A, nF5, $7F, smpsNoAttack, $17
	dc.b	nC5, $06, $06, nRst, nC5, nRst, nC5, nRst, nC5, nC5, $18, nBb4
	dc.b	nBb4, $06, $06, nRst, nBb4, nRst, $18, nAb5, $01
	smpsAlterNote       $0F
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $E8
	dc.b	smpsNoAttack, nA5
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0F
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $E7
	dc.b	smpsNoAttack, nBb5
	smpsAlterNote       $00
	dc.b	$0C, $06, nRst, $18, nC5, $06, $06, nRst, nC5, nRst, nC5, nRst
	dc.b	nC5, nC5, $18, nBb4, nBb4, $06, $06, nRst, nBb4, nRst, nF5, $01
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $ED
	dc.b	smpsNoAttack, nFs5
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0E
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EB
	dc.b	smpsNoAttack, nG5
	smpsAlterNote       $00
	dc.b	$0C, nEb5, $06, nD5, nBb4, nG4, nBb4, $01
	smpsAlterNote       $11
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F3
	dc.b	smpsNoAttack, nB4
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $08
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F2
	dc.b	smpsNoAttack, nC5
	smpsAlterNote       $00
	dc.b	$06, nBb4, $0C, nC5, $06, $06, nRst, nC5, nRst, nC5, nRst, nC5
	dc.b	nC5, $18, nBb4, nBb4, $06, $06, nRst, nBb4, nRst, $18, nFs5, $01
	smpsAlterNote       $EB
	dc.b	smpsNoAttack, nG5
	smpsAlterNote       $0E
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	nAb5, $03, $06, nRst, nBb5, nRst, $18, nC5, $06, $06, nRst, nC5
	dc.b	nRst, nC5, nRst, nC5, nC5, $18, nBb4, $12, nA4, $7F, smpsNoAttack, $47
	dc.b	nF4, $06, nAb4, nC5, nEb5, nRst, nD5, nRst, nBb4, nRst, nC5, nRst
	dc.b	nAb4, nAb4, $0C, nBb4, $06, nRst, nG4, $12, nAb4, $06, nRst, $18
	dc.b	nEb5, $02
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0B
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $10
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $E9
	dc.b	smpsNoAttack, nE5, $02
	smpsAlterNote       $EF
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F4
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $FA
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $12
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $E8
	dc.b	smpsNoAttack, nF5, $02
	smpsAlterNote       $EE
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F4
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $FA
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	$18, nF4, $06, nAb4, nC5, nEb5, nRst, nD5, nRst, nBb4, nRst, nC5
	dc.b	nRst, nAb4, nAb4, $0C, nBb4, $06, nRst

oki_Loop44:
	dc.b	nG4, $0C, $06, nAb4, nRst, $0C
	smpsLoop            $00, $02, oki_Loop44
	dc.b	nG4, nG4, $06, nAb4, nF4, nAb4, nC5, nEb5, nRst, nD5, nRst, nBb4
	dc.b	nRst, nC5, nRst, nAb4, nAb4, $0C, nBb4, $06, nRst, nG4, $12, nAb4
	dc.b	$06, nRst, $18, nFs5, $01
	smpsAlterNote       $EB
	dc.b	smpsNoAttack, nG5
	smpsAlterNote       $0E
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	nAb5, $03, nG5, $06, nF5, nEb5, nF5, nD5, nBb4, $0C, nF4, $06
	dc.b	nAb4, nC5, nEb5, nRst, nD5, nRst, nBb4, nRst, nC5, nRst, nAb4, nAb4
	dc.b	$0C, nBb4, $06, nRst, nG4, $12, nAb4, $06, nRst, $49
	smpsJump            oki_Jump04

; FM3 Data
oki_FM3:
	dc.b	nRst, $01
	smpsSetvoice        $00
	smpsPan             panCenter, $00
	smpsModOff
	dc.b	$2F, nEb4, $06, $06, nRst, nEb4, $7F, smpsNoAttack, $2F, nCs4, $06, $06
	dc.b	nRst, nCs4, $7F, smpsNoAttack, $2F, nD4, $06, $06, nRst, nD4, $7F, smpsNoAttack
	dc.b	$2F, nCs4, $06, $06, nRst, nCs4, $7E, $06, $06, $06, $06, $06
	dc.b	$12

oki_Jump03:
	dc.b	nRst, $03
	smpsAlterNote       $05
	dc.b	nAb4, $02
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $03, nC4, $01
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $03, nD4, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	nEb4
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	nF4
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06

oki_Loop09:
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	smpsLoop            $00, $02, oki_Loop09
	dc.b	nG4
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01, nRst, $06
	smpsAlterNote       $00
	dc.b	nBb4, $1E, $03
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $E7
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $DF
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $17
	dc.b	smpsNoAttack, nA4, $02
	smpsAlterNote       $0F
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $08
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $E8
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $E1
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $16
	dc.b	smpsNoAttack, nAb4, $02
	smpsAlterNote       $0F
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $0E
	smpsAlterNote       $00
	dc.b	nEb5, $01
	smpsAlterNote       $0B
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EF
	dc.b	smpsNoAttack, nE5
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EE
	dc.b	smpsNoAttack, nF5
	smpsAlterNote       $00
	dc.b	$12
	smpsAlterNote       $04

oki_Loop0A:
	dc.b	$01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack
	smpsLoop            $00, $02, oki_Loop0A
	dc.b	$01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	nEb5

oki_Loop0B:
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	smpsLoop            $00, $02, oki_Loop0B
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $03
	dc.b	nD5

oki_Loop0C:
	dc.b	$01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $03
	dc.b	smpsNoAttack
	smpsLoop            $00, $02, oki_Loop0C
	dc.b	$01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $03
	dc.b	nBb4, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $07

oki_Loop0D:
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	smpsLoop            $00, $02, oki_Loop0D
	dc.b	nC5
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01

oki_Loop0E:
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $02, oki_Loop0E
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01, nAb4
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01

oki_Loop0F:
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $10, oki_Loop0F
	dc.b	nG4, $01

oki_Loop10:
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	smpsLoop            $00, $02, oki_Loop10
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	$01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06

oki_Loop11:
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	smpsLoop            $00, $02, oki_Loop11
	dc.b	nAb4
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01

oki_Loop12:
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $17, oki_Loop12
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01, nRst, $06, nAb4, $02
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $03, nC4, $01
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $03, nD4, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	nEb4
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	nF4
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06

oki_Loop13:
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	smpsLoop            $00, $02, oki_Loop13
	dc.b	nG4
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01, nRst, $06
	smpsAlterNote       $00
	dc.b	nBb4, $1E, $03
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $E7
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $DF
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $17
	dc.b	smpsNoAttack, nA4, $02
	smpsAlterNote       $0F
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $08
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $E8
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $E1
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $16
	dc.b	smpsNoAttack, nAb4, $02
	smpsAlterNote       $0F
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $0E
	smpsAlterNote       $00
	dc.b	nEb5, $01
	smpsAlterNote       $0B
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EF
	dc.b	smpsNoAttack, nE5
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EE
	dc.b	smpsNoAttack, nF5
	smpsAlterNote       $00
	dc.b	$12
	smpsAlterNote       $04

oki_Loop14:
	dc.b	$01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack
	smpsLoop            $00, $02, oki_Loop14
	dc.b	$01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	nEb5

oki_Loop15:
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	smpsLoop            $00, $02, oki_Loop15
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $03
	dc.b	nD5

oki_Loop16:
	dc.b	$01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $03
	dc.b	smpsNoAttack
	smpsLoop            $00, $02, oki_Loop16
	dc.b	$01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $03
	dc.b	nBb4, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $07

oki_Loop17:
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	smpsLoop            $00, $02, oki_Loop17
	dc.b	nC5
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01

oki_Loop18:
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $02, oki_Loop18
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01, nAb4
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01

oki_Loop19:
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $10, oki_Loop19
	dc.b	nG4, $01

oki_Loop1A:
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	smpsLoop            $00, $02, oki_Loop1A
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	$01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06

oki_Loop1B:
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	smpsLoop            $00, $02, oki_Loop1B
	dc.b	nAb4
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01

oki_Loop1C:
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $17, oki_Loop1C
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01, nRst, $06
	smpsAlterNote       $04
	dc.b	nF5, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06

oki_Loop1D:
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	smpsLoop            $00, $02, oki_Loop1D
	dc.b	nG4
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06

oki_Loop1E:
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	smpsLoop            $00, $02, oki_Loop1E
	dc.b	nBb4
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $07

oki_Loop1F:
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	smpsLoop            $00, $02, oki_Loop1F
	dc.b	nD5
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01, nRst, $06
	smpsAlterNote       $03
	dc.b	nEb5, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01, nRst, $06, nF5

oki_Loop20:
	dc.b	$01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack
	smpsLoop            $00, $19, oki_Loop20
	dc.b	$01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	nD5, smpsNoAttack, $03
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	nEb5

oki_Loop21:
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsLoop            $00, $04, oki_Loop21
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	nD5

oki_Loop22:
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsLoop            $00, $05, oki_Loop22
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $03
	dc.b	nCs5, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	nFs4
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $03, nBb4, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $07

oki_Loop23:
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	smpsLoop            $00, $02, oki_Loop23
	dc.b	nCs5
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01, nRst, $06
	smpsAlterNote       $03
	dc.b	nEb5, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01, nRst, $06
	smpsAlterNote       $00
	dc.b	nEb5, $01
	smpsAlterNote       $EF
	dc.b	smpsNoAttack, nE5
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	nF5, $27
	smpsAlterNote       $04
	dc.b	nCs5, $04
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	nFs4
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01

oki_Loop24:
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $0D, oki_Loop24
	dc.b	nAb4, $01, smpsNoAttack, $01

oki_Loop25:
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $05, oki_Loop25
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01, nFs4, smpsNoAttack, $01

oki_Loop26:
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $05, oki_Loop26
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01, nA4
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $07

oki_Loop27:
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	smpsLoop            $00, $02, oki_Loop27
	dc.b	nC5
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $03, nRst, $06, nEb5

oki_Loop28:
	dc.b	$01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $03
	dc.b	smpsNoAttack
	smpsLoop            $00, $0D, oki_Loop28
	dc.b	$01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	nF5
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01, nRst, $06
	smpsAlterNote       $00
	dc.b	nF5, $01
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $ED
	dc.b	smpsNoAttack, nFs5
	smpsAlterNote       $00
	dc.b	$33
	smpsAlterNote       $04
	dc.b	nF5

oki_Loop29:
	dc.b	$01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack
	smpsLoop            $00, $04, oki_Loop29
	dc.b	$01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	nC5
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01

oki_Loop2A:
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $04, oki_Loop2A
	dc.b	nEb5

oki_Loop2B:
	dc.b	$01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $03
	dc.b	smpsNoAttack
	smpsLoop            $00, $02, oki_Loop2B
	dc.b	$01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $03
	dc.b	nD5

oki_Loop2C:
	dc.b	$01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $03
	dc.b	smpsNoAttack
	smpsLoop            $00, $0A, oki_Loop2C
	dc.b	$01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03

oki_Loop2D:
	dc.b	nF5
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack
	smpsLoop            $00, $24, oki_Loop2D
	dc.b	$01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	nEb5, $06, $06, nRst, nEb5, nRst, nEb5, nRst, nEb5, nEb5, $18, nC5
	dc.b	nD5, $06, $06, nRst, nD5, nRst, $18, nBb5, $01
	smpsAlterNote       $11
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F3
	dc.b	smpsNoAttack, nB5
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $08
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F2
	dc.b	smpsNoAttack, nC6
	smpsAlterNote       $00
	dc.b	$0C, $06, nRst, $18, nEb5, $06, $06, nRst, nEb5, nRst, nEb5, nRst
	dc.b	nEb5, nEb5, $18, nC5, nD5, $06, $06, nRst, nD5, nRst, nF5, $01
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $ED
	dc.b	smpsNoAttack, nFs5
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0E
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EB
	dc.b	smpsNoAttack, nG5
	smpsAlterNote       $00
	dc.b	$0C, nEb5, $06, nD5, nBb4, nG4, nBb4, $01
	smpsAlterNote       $11
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F3
	dc.b	smpsNoAttack, nB4
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $08
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F2
	dc.b	smpsNoAttack, nC5
	smpsAlterNote       $00
	dc.b	$06, nBb4, $0C, nEb5, $06, $06, nRst, nEb5, nRst, nEb5, nRst, nEb5
	dc.b	nEb5, $18, nC5, nD5, $06, $06, nRst, nD5, nRst, $18, nAb5, $01
	smpsAlterNote       $E8
	dc.b	smpsNoAttack, nA5
	smpsAlterNote       $0F
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	nBb5, $03, $06, nRst, nC6, nRst, $18, nEb5, $06, $06, nRst, nEb5
	dc.b	nRst, nEb5, nRst, nEb5, nEb5, $18, nC5, $12, $7F, smpsNoAttack, $47, nRst
	dc.b	$03
	smpsAlterNote       $04
	dc.b	nF4, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06

oki_Loop2E:
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	smpsLoop            $00, $02, oki_Loop2E
	dc.b	nAb4
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $03, nC5, $01
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $03, nEb5, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01, nRst, $06
	smpsAlterNote       $03
	dc.b	nD5, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01, nRst, $06
	smpsAlterNote       $05
	dc.b	nBb4, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01, nRst, $06
	smpsAlterNote       $03
	dc.b	nC5, $02
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $03, nRst, $06
	smpsAlterNote       $05
	dc.b	nAb4

oki_Loop2F:
	dc.b	$02
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $02, oki_Loop2F
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01, nBb4
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01, nRst, $06
	smpsAlterNote       $04
	dc.b	nG4

oki_Loop30:
	dc.b	$01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack
	smpsLoop            $00, $04, oki_Loop30
	dc.b	$01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	nAb4
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $03, nRst, $18
	smpsAlterNote       $00
	dc.b	nF5, $02
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $13
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $E7
	dc.b	smpsNoAttack, nFs5, $02
	smpsAlterNote       $ED
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F3
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $FA
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0E
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $14
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $E4
	dc.b	smpsNoAttack, nG5, $02
	smpsAlterNote       $EB
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F2
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $F9
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	$18
	smpsAlterNote       $04
	dc.b	nF4, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06

oki_Loop31:
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	smpsLoop            $00, $02, oki_Loop31
	dc.b	nAb4
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $03, nC5, $01
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $03, nEb5, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01, nRst, $06
	smpsAlterNote       $03
	dc.b	nD5, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01, nRst, $06
	smpsAlterNote       $05
	dc.b	nBb4, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01, nRst, $06
	smpsAlterNote       $03
	dc.b	nC5, $02
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $03, nRst, $06
	smpsAlterNote       $05
	dc.b	nAb4

oki_Loop32:
	dc.b	$02
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $02, oki_Loop32
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01, nBb4
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01, nRst, $06
	smpsAlterNote       $04
	dc.b	nG4

oki_Loop33:
	dc.b	$01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack
	smpsLoop            $00, $02, oki_Loop33

oki_Loop34:
	dc.b	$01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	smpsLoop            $00, $02, oki_Loop34
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	nAb4
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $03, nRst, $0C
	smpsAlterNote       $04
	dc.b	nG4

oki_Loop35:
	dc.b	$01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack
	smpsLoop            $00, $02, oki_Loop35

oki_Loop36:
	dc.b	$01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	smpsLoop            $00, $02, oki_Loop36
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	nAb4
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $03, nRst, $0C
	smpsAlterNote       $04
	dc.b	nG4

oki_Loop37:
	dc.b	$01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack
	smpsLoop            $00, $02, oki_Loop37

oki_Loop38:
	dc.b	$01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	smpsLoop            $00, $02, oki_Loop38
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	nAb4
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $03, nF4, $01, smpsNoAttack, $01
	smpsAlterNote       $06

oki_Loop39:
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	smpsLoop            $00, $02, oki_Loop39
	dc.b	nAb4
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $03, nC5, $01
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $03, nEb5, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01, nRst, $06
	smpsAlterNote       $03
	dc.b	nD5, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01, nRst, $06
	smpsAlterNote       $05
	dc.b	nBb4, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01, nRst, $06
	smpsAlterNote       $03
	dc.b	nC5, $02
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $03, nRst, $06
	smpsAlterNote       $05
	dc.b	nAb4

oki_Loop3A:
	dc.b	$02
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $02, oki_Loop3A
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01, nBb4
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01, nRst, $06
	smpsAlterNote       $04
	dc.b	nG4

oki_Loop3B:
	dc.b	$01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack
	smpsLoop            $00, $04, oki_Loop3B
	dc.b	$01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	nAb4
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $03, nRst, $18
	smpsAlterNote       $00
	dc.b	nFs5, $01
	smpsAlterNote       $EB
	dc.b	smpsNoAttack, nG5
	smpsAlterNote       $0E
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	nAb5, $03
	smpsAlterNote       $05
	dc.b	nG5, $02
	smpsAlterNote       $06

oki_Loop3C:
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	smpsLoop            $00, $02, oki_Loop3C
	dc.b	nF5
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06

oki_Loop3D:
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	smpsLoop            $00, $02, oki_Loop3D
	dc.b	nEb5, smpsNoAttack, $03
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	nF5
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06

oki_Loop3E:
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	smpsLoop            $00, $02, oki_Loop3E
	dc.b	nD5, smpsNoAttack, $03
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03

oki_Loop3F:
	dc.b	nBb4
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack
	smpsLoop            $00, $02, oki_Loop3F
	dc.b	$01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	nF4, smpsNoAttack, $01
	smpsAlterNote       $06

oki_Loop40:
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	smpsLoop            $00, $02, oki_Loop40
	dc.b	nAb4
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $03, nC5, $01
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $03, nEb5, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01, nRst, $06
	smpsAlterNote       $03
	dc.b	nD5, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01, nRst, $06
	smpsAlterNote       $05
	dc.b	nBb4, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01, nRst, $06
	smpsAlterNote       $03
	dc.b	nC5, $02
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $03, nRst, $06
	smpsAlterNote       $05
	dc.b	nAb4

oki_Loop41:
	dc.b	$02
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $02, oki_Loop41
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01, nBb4
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01, nRst, $06
	smpsAlterNote       $04
	dc.b	nG4

oki_Loop42:
	dc.b	$01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack
	smpsLoop            $00, $04, oki_Loop42
	dc.b	$01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	nAb4
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $03, nRst, $45
	smpsJump            oki_Jump03

; FM4 Data
oki_FM4:
	smpsSetvoice        $00
	smpsPan             panRight, $00
	smpsModOff
	dc.b	nRst, $2F, nBb4, $06, $06, nRst, nBb4, $7F, smpsNoAttack, $2F, nAb4, $06
	dc.b	$06, nRst, nAb4, $7F, smpsNoAttack, $2F, nG4, $06, $06, nRst, nG4, $7F
	dc.b	smpsNoAttack, $2F, nFs4, $06, $06, nRst, nFs4, $7E, $06, $06, $06, $06
	dc.b	$06, nAb4, $12, nRst, $01

oki_Jump02:
	dc.b	nRst

oki_Loop07:
	dc.b	$76
	smpsLoop            $00, $0D, oki_Loop07
	dc.b	$01, nAb5, $06, $06, nRst, nAb5, nRst, nAb5, nRst, nAb5, nAb5, $18
	smpsAlterNote       $00
	dc.b	nG5, nF5, $06, $06, nRst, nF5, nRst, $18, nEb6, $01
	smpsAlterNote       $0B
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EF
	dc.b	smpsNoAttack, nE6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EE
	dc.b	smpsNoAttack, nF6
	smpsAlterNote       $00
	dc.b	$0C, $06, nRst, $18, nAb5, $06, $06, nRst, nAb5, nRst, nAb5, nRst
	dc.b	nAb5, nAb5, $18, nG5, nF5, $06, $06, nRst, nF5, nRst, nF4, $01
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $ED
	dc.b	smpsNoAttack, nFs4
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0E
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EB
	dc.b	smpsNoAttack, nG4
	smpsAlterNote       $00
	dc.b	$0C, nEb4, $06, nD4, nBb3, nG3, nBb3, $01
	smpsAlterNote       $11
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F3
	dc.b	smpsNoAttack, nB3
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $08
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F2
	dc.b	smpsNoAttack, nC4
	smpsAlterNote       $00
	dc.b	$06, nBb3, $0C, nAb5, $06, $06, nRst, nAb5, nRst, nAb5, nRst, nAb5
	dc.b	nAb5, $18, nG5, nF5, $06, $06, nRst, nF5, nRst, $18, nCs6, $01
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, nD6
	smpsAlterNote       $0A
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	nEb6, $03, $06, nRst, nF6, nRst, $18, nAb5, $06, $06, nRst, nAb5
	dc.b	nRst, nAb5, nRst, nAb5, nAb5, $18, nG5, $12, nF5, $7F, smpsNoAttack, $47
	dc.b	nRst, $03, nF3, $06, nAb3, nC4, nEb4, nRst, nD4, nRst, nBb3, nRst
	dc.b	nC4, nRst, nAb3, nAb3, $0C, nBb3, $06, nRst, nG3, $12, nAb3, $06
	dc.b	nRst, $18, nAb4, $02
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0F
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $16
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $E1
	dc.b	smpsNoAttack, nA4, $02
	smpsAlterNote       $E8
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $08
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0F
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $17
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $DF
	dc.b	smpsNoAttack, nBb4, $02
	smpsAlterNote       $E7
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	$18, nF3, $06, nAb3, nC4, nEb4, nRst, nD4, nRst, nBb3, nRst, nC4
	dc.b	nRst, nAb3, nAb3, $0C, nBb3, $06, nRst

oki_Loop08:
	dc.b	nG3, $0C, $06, nAb3, nRst, $0C
	smpsLoop            $00, $02, oki_Loop08
	dc.b	nG3, nG3, $06, nAb3, nF3, nAb3, nC4, nEb4, nRst, nD4, nRst, nBb3
	dc.b	nRst, nC4, nRst, nAb3, nAb3, $0C, nBb3, $06, nRst, nG3, $12, nAb3
	dc.b	$06, nRst, $18, nFs4, $01
	smpsAlterNote       $EB
	dc.b	smpsNoAttack, nG4
	smpsAlterNote       $0E
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	nAb4, $03, nG4, $06, nF4, nEb4, nF4, nD4, nBb3, $0C, nF3, $06
	dc.b	nAb3, nC4, nEb4, nRst, nD4, nRst, nBb3, nRst, nC4, nRst, nAb3, nAb3
	dc.b	$0C, nBb3, $06, nRst, nG3, $12, nAb3, $06, nRst, $46
	smpsJump            oki_Jump02

; FM5 Data
oki_FM5:
	dc.b	nRst, $01
	smpsSetvoice        $00
	smpsPan             panCenter, $00
	smpsModOff
	dc.b	$2F, nF4, $06, $06, nRst, nF4, $7F

oki_Loop05:
	dc.b	smpsNoAttack, $2F, nEb4, $06, $06, nRst, nEb4, $7F
	smpsLoop            $00, $02, oki_Loop05
	dc.b	smpsNoAttack, $2F, nF4, $06, $06, nRst, nF4, $7E, $06, $06, $06, $06
	dc.b	$06, $12

oki_Jump01:
	dc.b	nRst, $0C
	smpsSetvoice        $02
	smpsPan             panCenter, $00
	smpsModOff
	smpsAlterVol        $08
	dc.b	nAb4, $06, nC4
	smpsAlterNote       $00
	dc.b	nD4, nEb4, nF4, nG4, nRst, nBb4, $1E, $03
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $E7
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $DF
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $17
	dc.b	smpsNoAttack, nA4, $02
	smpsAlterNote       $0F
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $08
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $E8
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $E1
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $16
	dc.b	smpsNoAttack, nAb4, $02
	smpsAlterNote       $0F
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $0E
	smpsAlterNote       $00
	dc.b	nEb5, $01
	smpsAlterNote       $0B
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EF
	dc.b	smpsNoAttack, nE5
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EE
	dc.b	smpsNoAttack, nF5
	smpsAlterNote       $00
	dc.b	$12, $0C, nEb5, nD5, nBb4, $06, nC5, $0C, nAb4, $42, nG4, $0C
	dc.b	$06, nAb4, $60, nRst, $06, nAb4, nC4, nD4, nEb4, nF4, nG4, nRst
	dc.b	nBb4, $1E, $03
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $E7
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $DF
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $17
	dc.b	smpsNoAttack, nA4, $02
	smpsAlterNote       $0F
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $08
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $E8
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $E1
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $16
	dc.b	smpsNoAttack, nAb4, $02
	smpsAlterNote       $0F
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $0E
	smpsAlterNote       $00
	dc.b	nEb5, $01
	smpsAlterNote       $0B
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EF
	dc.b	smpsNoAttack, nE5
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EE
	dc.b	smpsNoAttack, nF5
	smpsAlterNote       $00
	dc.b	$12, $0C, nEb5, nD5, nBb4, $06, nC5, $0C, nAb4, $42, nG4, $0C
	dc.b	$06, nAb4, $60, nRst, $06, nF5, nG4, nBb4, nD5, nRst, nEb5, nRst
	dc.b	nF5, $66, nD5, $06, nEb5, $12, nD5, $18, nCs5, $06, nFs4, nBb4
	dc.b	nCs5, nRst, nEb5, nRst, nEb5, $01
	smpsAlterNote       $EF
	dc.b	smpsNoAttack, nE5
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	nF5, $27, nCs5, $06, nFs4, $36, nAb4, $18, nFs4, nA4, $06, nC5
	dc.b	nRst, nEb5, $36, $06, nF5, nRst, nF5, $01
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $ED
	dc.b	smpsNoAttack, nFs5
	smpsAlterNote       $00
	dc.b	$33, nF5, $12, nC5, nEb5, $0C, nD5, $2A, nF5, $7F, smpsNoAttack, $0B
	smpsAlterVol        $F8
	smpsSetvoice        $00
	smpsPan             panCenter, $00
	dc.b	$06, $06, nRst, nF5, nRst, nF5, nRst, nF5, nF5, $18, nEb5, nF5
	dc.b	$06, $06, nRst, nF5, nRst, $18, nEb6, $01
	smpsAlterNote       $0B
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EF
	dc.b	smpsNoAttack, nE6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EE
	dc.b	smpsNoAttack, nF6
	smpsAlterNote       $00
	dc.b	$0C, $06, nRst, $18, nF5, $06, $06, nRst, nF5, nRst, nF5, nRst
	dc.b	nF5, nF5, $18, nEb5, nF5, $06, $06, nRst, nF5, nRst, nF5, $01
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $ED
	dc.b	smpsNoAttack, nFs5
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0E
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EB
	dc.b	smpsNoAttack, nG5
	smpsAlterNote       $00
	dc.b	$0C, nEb5, $06, nD5, nBb4, nG4, nBb6, $01
	smpsAlterNote       $11
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F3
	dc.b	smpsNoAttack, nB6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $08
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F2
	dc.b	smpsNoAttack, nC7
	smpsAlterNote       $00
	dc.b	$06, nBb4, $0C, nF5, $06, $06, nRst, nF5, nRst, nF5, nRst, nF5
	dc.b	nF5, $18, nEb5, nF5, $06, $06, nRst, nF5, nRst, $18, nCs6, $01
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, nD6
	smpsAlterNote       $0A
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	nEb6, $03, $06, nRst, nF6, nRst, $18, nF5, $06, $06, nRst, nF5
	dc.b	nRst, nF5, nRst, nF5, nF5, $18, nEb5, $12, nD5, $7F, smpsNoAttack, $47
	dc.b	nRst, $0C
	smpsSetvoice        $02
	smpsPan             panCenter, $00
	smpsAlterVol        $08
	dc.b	nF4, $06, nAb4, nC5, nEb5, nRst, nD5, nRst, nBb4, nRst, nC5, nRst
	dc.b	nAb4, nAb4, $0C, nBb4, $06, nRst, nG4, $12, nAb4, $06, nRst, $18
	dc.b	nAb5, $02
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0F
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $16
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $E1
	dc.b	smpsNoAttack, nA5, $02
	smpsAlterNote       $E8
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $08
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0F
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $17
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $DF
	dc.b	smpsNoAttack, nBb5, $02
	smpsAlterNote       $E7
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	$18, nF4, $06, nAb4, nC5, nEb5, nRst, nD5, nRst, nBb4, nRst, nC5
	dc.b	nRst, nAb4, nAb4, $0C, nBb4, $06, nRst

oki_Loop06:
	dc.b	nG4, $0C, $06, nAb4, nRst, $0C
	smpsLoop            $00, $02, oki_Loop06
	dc.b	nG4, nG4, $06, nAb4, nF4, nAb4, nC5, nEb5, nRst, nD5, nRst, nBb4
	dc.b	nRst, nC5, nRst, nAb4, nAb4, $0C, nBb4, $06, nRst, nG4, $12, nAb4
	dc.b	$06, nRst, $18, nFs5, $01
	smpsAlterNote       $EB
	dc.b	smpsNoAttack, nG5
	smpsAlterNote       $0E
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	nAb5, $03, nG5, $06, nF5, nEb5, nF5, nD5, nBb4, $0C, nF4, $06
	dc.b	nAb4, nC5, nEb5, nRst, nD5, nRst, nBb4, nRst, nC5, nRst, nAb4, nAb4
	dc.b	$0C, nBb4, $06, nRst, nG4, $12, nAb4, $06, nRst, $3C
	smpsAlterVol        $F8
	smpsJump            oki_Jump01

; PSG1 Data
oki_PSG1:
	dc.b	nRst, $48
	smpsPSGvoice        sTone_04
	smpsModOff

oki_Loop5C:
	dc.b	nC3, $0C, nEb3, nD3, $06, nBb2, $0C, nEb3, nD3, $06, nBb2, $0C
	dc.b	nEb3, nD3, nBb2, nEb3, nD3, $06, nBb2, $0C, nEb3, nD3, $06, nBb2
	dc.b	nRst, $1E
	smpsLoop            $00, $03, oki_Loop5C
	dc.b	nBb2, $0C, nCs3, nC3, $06, nAb2, $0C, nCs3, nC3, $06, nAb2, $0C
	dc.b	nCs3, nC3, nAb2, nCs3, nC3, $06, nAb2, $0C, nCs3, nC3, $06, nAb2
	dc.b	nRst

oki_Jump08:
	dc.b	nBb2, $01
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $17

oki_Loop5D:
	dc.b	$18
	smpsLoop            $00, $07, oki_Loop5D

oki_Loop5E:
	dc.b	nAb2
	smpsLoop            $00, $08, oki_Loop5E

oki_Loop5F:
	dc.b	nBb2
	smpsLoop            $00, $08, oki_Loop5F

oki_Loop60:
	dc.b	nAb2
	smpsLoop            $00, $08, oki_Loop60
	dc.b	nRst

oki_Loop61:
	dc.b	$60
	smpsLoop            $00, $08, oki_Loop61
	dc.b	nBb3

oki_Loop62:
	dc.b	$06, $06, nRst, nBb3, nRst, nBb3, nRst, nBb3, nBb3, $18, $18, $18
	dc.b	$18, $18, $18
	smpsLoop            $00, $04, oki_Loop62
	dc.b	$18, $18, $18, $18, nRst

oki_Loop63:
	dc.b	$60
	smpsLoop            $00, $08, oki_Loop63
	smpsJump            oki_Jump08

; PSG2 Data
oki_PSG2:
	dc.b	nRst, $01
	smpsModOff
	dc.b	$47
	smpsPSGvoice        sTone_04
	dc.b	$03
	smpsAlterNote       $FF
	dc.b	nC3, $0C

oki_Loop4E:
	dc.b	nEb3, $01, smpsNoAttack, $0B, nD3, $01
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $05, nBb2, $01
	smpsAlterNote       $FF
	dc.b	smpsNoAttack, $0B
	smpsLoop            $00, $02, oki_Loop4E
	dc.b	nEb3, $01, smpsNoAttack, $0B, nD3, $01
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $0B

oki_Loop4F:
	dc.b	nBb2, $01
	smpsAlterNote       $FF
	dc.b	smpsNoAttack, $0B, nEb3, $01, smpsNoAttack, $0B, nD3, $01
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $05
	smpsLoop            $00, $02, oki_Loop4F
	dc.b	nBb2, $01
	smpsAlterNote       $FF
	dc.b	smpsNoAttack, $05, nRst, $1E, nC3, $0C

oki_Loop50:
	dc.b	nEb3, $01, smpsNoAttack, $0B, nD3, $01
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $05, nBb2, $01
	smpsAlterNote       $FF
	dc.b	smpsNoAttack, $0B
	smpsLoop            $00, $02, oki_Loop50
	dc.b	nEb3, $01, smpsNoAttack, $0B, nD3, $01
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $0B

oki_Loop51:
	dc.b	nBb2, $01
	smpsAlterNote       $FF
	dc.b	smpsNoAttack, $0B, nEb3, $01, smpsNoAttack, $0B, nD3, $01
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $05
	smpsLoop            $00, $02, oki_Loop51
	dc.b	nBb2, $01
	smpsAlterNote       $FF
	dc.b	smpsNoAttack, $05, nRst, $1E, nC3, $0C

oki_Loop52:
	dc.b	nEb3, $01, smpsNoAttack, $0B, nD3, $01
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $05, nBb2, $01
	smpsAlterNote       $FF
	dc.b	smpsNoAttack, $0B
	smpsLoop            $00, $02, oki_Loop52
	dc.b	nEb3, $01, smpsNoAttack, $0B, nD3, $01
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $0B

oki_Loop53:
	dc.b	nBb2, $01
	smpsAlterNote       $FF
	dc.b	smpsNoAttack, $0B, nEb3, $01, smpsNoAttack, $0B, nD3, $01
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $05
	smpsLoop            $00, $02, oki_Loop53
	dc.b	nBb2, $01
	smpsAlterNote       $FF
	dc.b	smpsNoAttack, $05, nRst, $1E, nBb2, $0C

oki_Loop54:
	dc.b	nCs3, $01, smpsNoAttack, $0B, nC3, $01, smpsNoAttack, $05, nAb2, $01, smpsNoAttack, $0B
	smpsLoop            $00, $02, oki_Loop54
	dc.b	nCs3, $01, smpsNoAttack, $0B, nC3, $01, smpsNoAttack, $0B

oki_Loop55:
	dc.b	nAb2, $01, smpsNoAttack, $0B, nCs3, $01, smpsNoAttack, $0B, nC3, $01, smpsNoAttack, $05
	smpsLoop            $00, $02, oki_Loop55
	dc.b	nAb2, $01, smpsNoAttack, $05, nRst, $03

oki_Jump07:
	smpsAlterNote       $00

oki_Loop58:
	dc.b	nBb3

oki_Loop56:
	dc.b	$18
	smpsLoop            $00, $08, oki_Loop56

oki_Loop57:
	dc.b	nAb3
	smpsLoop            $00, $08, oki_Loop57
	smpsLoop            $01, $02, oki_Loop58
	dc.b	nRst

oki_Loop59:
	dc.b	$60
	smpsLoop            $00, $08, oki_Loop59

oki_Loop5A:
	dc.b	nBb3, $06, $06, nRst, nBb3, nRst, nBb3, nRst, nBb3, nBb2, $18, $18
	dc.b	$18, $18, $18, $18
	smpsLoop            $00, $04, oki_Loop5A
	smpsAlterNote       $FF
	dc.b	nBb3, $01
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $17, $18, $18, $18, nRst

oki_Loop5B:
	dc.b	$60
	smpsLoop            $00, $08, oki_Loop5B
	smpsJump            oki_Jump07

; PSG3 Data
oki_PSG3:
	dc.b	nRst, $49
	smpsPSGvoice        sTone_04
	dc.b	$09
	smpsModOff
	dc.b	nC3, $0B, nRst, $0C, nD3, $06, nRst, $0C, nEb3, nD3, $06, nRst
	dc.b	$18, nD3, $0C, nRst, nRst, nD3, $06, nRst, $18, nD3, $06, nRst
	dc.b	$24, nC3, $0C, nRst, nD3, $06, nRst, $18, nD3, $06, nRst, $18
	dc.b	nD3, $0C, nBb2, nRst, nD3, $06, nRst, $18, nD3, $06, nRst, $24
	dc.b	nC3, $0C, nRst, nD3, $06, nRst, $18, nD3, $06, nRst, $18, nD3
	dc.b	$0C, nRst, nRst, nD3, $06, nRst, $18, nD3, $06, nRst, $24, nBb2
	dc.b	$0C, nCs3, nC3, $06, nRst, $18, nC3, $06, nRst, $18, nC3, $0C
	dc.b	nRst, nRst, nC3, $06, nRst, $18, nC3, $06, nRst, $03

oki_Jump06:
	dc.b	nRst, $09

oki_Loop4A:
	dc.b	nBb2

oki_Loop48:
	dc.b	$18
	smpsLoop            $00, $08, oki_Loop48

oki_Loop49:
	dc.b	nAb2
	smpsLoop            $00, $08, oki_Loop49
	smpsLoop            $01, $02, oki_Loop4A
	dc.b	nRst

oki_Loop4B:
	dc.b	$60
	smpsLoop            $00, $08, oki_Loop4B
	dc.b	nBb3

oki_Loop4C:
	dc.b	$06, $06, nRst, nBb3, nRst, nBb3, nRst, nBb3, nBb3, $18, $18, $18
	dc.b	$18, $18, $18
	smpsLoop            $00, $04, oki_Loop4C
	dc.b	$18, $18, $18, $18, nRst

oki_Loop4D:
	dc.b	$45
	smpsLoop            $00, $0B, oki_Loop4D
	smpsJump            oki_Jump06

oki_Voices:
;	Voice $00
;	$3A
;	$61, $01, $02, $31, 	$1F, $1F, $1F, $15, 	$0B, $1F, $1F, $09
;	$09, $00, $00, $07, 	$37, $0F, $0F, $5C, 	$19, $7F, $7F, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $00, $00, $06
	smpsVcCoarseFreq    $01, $02, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $15, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $1F, $1F, $0B
	smpsVcDecayRate2    $07, $00, $00, $09
	smpsVcDecayLevel    $05, $00, $00, $03
	smpsVcReleaseRate   $0C, $0F, $0F, $07
	smpsVcTotalLevel    $00, $7F, $7F, $19

;	Voice $01
;	$12
;	$00, $08, $00, $01, 	$1F, $1F, $1F, $1F, 	$1F, $0C, $0E, $0B
;	$00, $0C, $0A, $09, 	$0A, $8B, $38, $1C, 	$1B, $2B, $15, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $02
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $00, $08, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0B, $0E, $0C, $1F
	smpsVcDecayRate2    $09, $0A, $0C, $00
	smpsVcDecayLevel    $01, $03, $08, $00
	smpsVcReleaseRate   $0C, $08, $0B, $0A
	smpsVcTotalLevel    $00, $15, $2B, $1B

;	Voice $02
;	$3C
;	$61, $31, $31, $61, 	$4C, $91, $4A, $11, 	$03, $01, $0E, $01
;	$01, $01, $08, $01, 	$27, $28, $47, $28, 	$1B, $00, $19, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $06, $03, $03, $06
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $01, $02, $01
	smpsVcAttackRate    $11, $0A, $11, $0C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $0E, $01, $03
	smpsVcDecayRate2    $01, $08, $01, $01
	smpsVcDecayLevel    $02, $04, $02, $02
	smpsVcReleaseRate   $08, $07, $08, $07
	smpsVcTotalLevel    $00, $19, $00, $1B

