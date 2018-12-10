sky_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     sky_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       sky_DAC
	smpsHeaderFM        sky_FM1,	$02, $0B
	smpsHeaderFM        sky_FM2,	$02, $08
	smpsHeaderFM        sky_FM3,	$02, $14
	smpsHeaderFM        sky_FM4,	$02, $12
	smpsHeaderFM        sky_FM5,	$02, $10
	smpsHeaderPSG       sky_PSG1,	$02, $02, $00, sTone_1D
	smpsHeaderPSG       sky_PSG2,	$02, $02, $00, sTone_1D
	smpsHeaderPSG       sky_PSG3,	$02, $04, $00, sTone_1D

; DAC Data
sky_DAC:
	dc.b	dCrashCymbal

sky_Loop00:
	dc.b	$12, $86, $06, dSnareS3, $0C, $86, $18, $06, $06, dSnareS3, $0C, $86
	smpsLoop            $00, $04, sky_Loop00
	smpsLoop            $01, $02, sky_DAC

sky_Jump00:
	dc.b	dCrashCymbal

sky_Loop01:
	dc.b	$12, $86, $06, dSnareS3, $0C, $86, $18, $06, $06, dSnareS3, $0C, $86
	smpsLoop            $00, $03, sky_Loop01
	dc.b	$86, $18, $06, dSnareS3, $03, $03, $06, $86
	smpsPan             panLeft, $00
	dc.b	$90, $90, $0C, $06
	smpsPan             panCenter, $00
	dc.b	$86, $91
	smpsPan             panRight, $00
	dc.b	$92, $0C
	smpsPan             panCenter, $00
	dc.b	dCrashCymbal

sky_Loop02:
	dc.b	$12, $86, $06, dSnareS3, $0C, $86, $18, $06, $06, dSnareS3, $0C, $86
	smpsLoop            $00, $04, sky_Loop02
	dc.b	dCrashCymbal

sky_Loop03:
	dc.b	$12, $86, $06, dSnareS3, $0C, $86, $18, $06, $06, dSnareS3, $0C, $86
	smpsLoop            $00, $03, sky_Loop03
	dc.b	$86, $18, $06, dSnareS3, $03, $03, $06, $86
	smpsPan             panLeft, $00
	dc.b	$90, $90, $0C, $06
	smpsPan             panCenter, $00
	dc.b	$86, $91
	smpsPan             panRight, $00
	dc.b	$92, $0C
	smpsPan             panCenter, $00
	dc.b	dCrashCymbal

sky_Loop04:
	dc.b	$12, $86, $06, dSnareS3, $0C, $86, $18, $06, $06, dSnareS3, $0C, $86
	smpsLoop            $00, $03, sky_Loop04
	dc.b	$86, $12, $12, $18, dSnareS3, $06, $06, $86, dSnareS3

sky_Loop06:
	dc.b	dSnareS3, dSnareS3, dCrashCymbal

sky_Loop05:
	dc.b	$12, $86, $06, dSnareS3, $0C, $86, $18, $06, $06, dSnareS3, $0C, $86
	smpsLoop            $00, $07, sky_Loop05
	dc.b	$86, $86, dSnareS3, $24, $86, $0C
	smpsLoop            $01, $02, sky_Loop06
	dc.b	dSnareS3, dSnareS3

sky_Loop07:
	dc.b	$86, $06, $18, dSnareS3, $06, $86, $86, $1E, $06, dSnareS3, $12
	smpsLoop            $00, $03, sky_Loop07
	dc.b	$86, $06, $18, dSnareS3, $06, $86, $86, $0C, dSnareS3, $06, $06, $06
	dc.b	$86, dSnareS3, dSnareS3, $0C
	smpsJump            sky_Jump00

; FM1 Data
sky_FM1:
	smpsSetvoice        $03
	smpsPan             panCenter, $00
	smpsModOff

sky_Loop0F:
	dc.b	nAb2, $12, $06, nRst, $0C, nAb2, nRst, $1E, nC2, $06, nBb2, nAb2
	dc.b	nAb2, $12, $06, nRst, $0C, nAb2, nRst, $24, nEb2, $06, nAb2, nFs2
	dc.b	$12, $06, nRst, $0C, nFs2, nRst, $12, nFs2, $06, $06, $06, nF2
	dc.b	nEb2, nEb2, $12, $06, nRst, $0C, nEb2, nRst, $1E, nBb2, $06, nC3
	dc.b	nEb3
	smpsLoop            $00, $02, sky_Loop0F

sky_Jump05:
	dc.b	nAb2, $0C, nRst, $18, nAb2, $06, $06, nRst, $18, nAb2, $06
	smpsAlterNote       $00
	dc.b	nBb2, nAb2, nRst, nG2, $0C, nRst, $18, nG2, $06, $06, nRst, $18
	dc.b	nCs2, $06, nEb2, nG2, nEb2, nF2, $0C, nRst, $18, nF2, $06, $06
	dc.b	nRst, $24, nF2, $06, nRst, nF2, $0C, nRst, $18, nF2, $06, $06
	dc.b	nRst, $0C, nC2, $06, nC3, nEb2, nEb3, nF2, nF3, nFs2, $0C, nRst
	dc.b	$18, nFs2, $06, $06, nRst, $18, nCs2, $06, nEb2, nRst, $0C, nFs2
	dc.b	nRst, $18, nFs2, $06, $06, nRst, $0C, nFs2, $06, $06, $06, nF2
	dc.b	nEb2, nF2, nEb2, nEb2, nRst, $18, nEb2, $06, nRst, $2A, nBb1, $06
	dc.b	nRst, nEb2, nEb2, nRst, $18, nEb2, $06, $06, nCs3, nCs3, nC3, nC3
	dc.b	nBb2, nBb2, nEb2, nEb2, nAb2, $0C, nRst, $18, nAb2, $06, $06, nRst
	dc.b	$18, nAb2, $06, nBb2, nAb2, nRst, nG2, $0C, nRst, $18, nG2, $06
	dc.b	$06, nRst, $18, nCs2, $06, nEb2, nG2, nEb2, nF2, $0C, nRst, $18
	dc.b	nF2, $06, $06, nRst, $24, nF2, $06, nRst, nF2, $0C, nRst, $18
	dc.b	nF2, $06, $06, nRst, $0C, nC2, $06, nC3, nEb2, nEb3, nF2, nF3
	dc.b	nFs2, $12, $06, nRst, $0C, nFs2, nRst, nFs2, $06, $06, nF2, nFs2
	dc.b	nAb2, nRst, nA2, $12, $06, nRst, $0C, nA2, nRst, nA2, $06, nB2
	dc.b	nB2, nB2, $0C, nRst, $06, nC3, $01
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0E
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $ED
	dc.b	smpsNoAttack, nCs3
	smpsAlterNote       $F6
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FB
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $0C, nCs4, $06, nRst, $0C, nCs3, nRst, nB2, $06, $06, $06
	dc.b	nBb2, nB2, nEb3, nC3, $01
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0E
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $ED
	dc.b	smpsNoAttack, nCs3
	smpsAlterNote       $F6
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FB
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $0C, nCs4, $06, nRst, $0C, nCs3, nRst, nB2, $06, nBb2, nAb2
	dc.b	nBb2, nFs2, nCs2, nCs3, $0C, nRst, $1E, nCs3, $06, $0C, nRst, $06
	smpsAlterNote       $04
	dc.b	nB2, $01
	smpsAlterNote       $ED
	dc.b	smpsNoAttack, nC3
	smpsAlterNote       $F7
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $ED
	dc.b	smpsNoAttack, nCs3
	smpsAlterNote       $F6
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	$06, nCs4, nRst, $0C, nCs3, nRst, $1E, nCs3, $06, $0C, nRst, $06
	smpsAlterNote       $04
	dc.b	nB2, $01
	smpsAlterNote       $08
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F2
	dc.b	smpsNoAttack, nC3
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $ED
	dc.b	smpsNoAttack, nCs3
	smpsAlterNote       $F6
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	$06, nCs4, nRst, $0C, nFs2, nRst, $1E, nFs2, $06, $0C, nRst, $06
	smpsAlterNote       $06
	dc.b	nE2, $01
	smpsAlterNote       $E8
	dc.b	smpsNoAttack, nF2
	smpsAlterNote       $F4
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $E7
	dc.b	smpsNoAttack, nFs2
	smpsAlterNote       $F3
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	$06, nFs3, nRst, $0C, nFs2, $06, $06, nRst, $18, nFs2, $06, $06
	dc.b	$06, nFs3, nF3, $0C, nEb3, $06, nRst, nBb3, nRst, nA3, $0C, nRst
	dc.b	$1E, nA3, $06, $0C, nRst, $06, nAb3, $01
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0F
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $E1
	dc.b	smpsNoAttack, nA3
	smpsAlterNote       $E8
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	$06, nA2, nRst, $0C, nAb2, $18, $0C, nAb3, nRst, nAb2, nAb3, nRst
	dc.b	nG2, $12, $06, $18, $0C, nG3, nG2, nFs2, nFs2, nFs2, nFs2, nAb2
	dc.b	nAb2, nAb2, nAb2, nCs2, nCs3, nRst, $1E, nCs3, $06, $0C, nRst, $06
	dc.b	nB2, $01
	smpsAlterNote       $08
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F2
	dc.b	smpsNoAttack, nC3
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $ED
	dc.b	smpsNoAttack, nCs3
	smpsAlterNote       $F6
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	$06, nCs4, nRst, $0C, nCs3, nRst, $1E, nCs3, $06, $0C, nRst, $06
	dc.b	nB2, $01
	smpsAlterNote       $08
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F7
	dc.b	smpsNoAttack, nC3
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F1
	dc.b	smpsNoAttack, nCs3
	smpsAlterNote       $00
	dc.b	$06, nCs4, nRst, $0C, nFs2, nRst, $1E, nFs2, $06, $0C, nRst, $06
	smpsAlterNote       $06
	dc.b	nE2, $01
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EE
	dc.b	smpsNoAttack, nF2
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $ED
	dc.b	smpsNoAttack, nFs2
	smpsAlterNote       $00
	dc.b	$06, nFs3, nRst, $0C, nFs2, $06, $06, nRst, $18, nFs2, $06, $06
	dc.b	$06, nFs3, nF3, $0C, nEb3, $06, nRst, nBb3, nRst, nA3, $0C, nRst
	dc.b	$1E, nA3, $06, $0C, nRst, $06, nAb3, $01
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0F
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $E1
	dc.b	smpsNoAttack, nA3
	smpsAlterNote       $E8
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	$06, nA2, nRst, $0C, nAb2, $18, $0C, nAb3, nRst, nAb2, nAb3, nRst
	dc.b	nG2, $12, $06, $18, $0C, nG3, nG2, nFs2, nFs2, nFs2, nFs2, nAb2
	dc.b	nAb2, nAb2, nAb2, nCs2, nE3, $60, nD3, nEb3, nRst
	smpsJump            sky_Jump05

; FM2 Data
sky_FM2:
	smpsPan             panCenter, $00
	smpsAlterVol        $07
	smpsSetvoice        $01
	smpsModOff

sky_Loop0D:
	dc.b	nEb4, $06, nAb4, nEb5, nAb4
	smpsLoop            $00, $20, sky_Loop0D
	smpsAlterVol        $FB

sky_Jump04:
	dc.b	nG4, $18, nAb4, $0C, nEb4, $24, nRst, $0C, nG4, $03, nAb4, $09
	dc.b	nG4, $18, nAb4, $0C, $03, nBb4, $09, nRst, $0C, nAb4, nRst, nG4
	dc.b	nG4, $18, nAb4, $0C, nC4, $7F, smpsNoAttack, $05, nRst, $18, nC4, $03
	dc.b	nCs4, $09, nC4, $0C, nCs4, $06, nRst, nBb3, $78, nAb3, $18, nBb3
	dc.b	$03, nC4, $15, nBb3, $0C, $78, nRst, $30, nG4, $18, nAb4, $0C
	dc.b	nEb4, $24, nRst, $0C, nG4, $03, nAb4, $09, nG4, $18, nAb4, $0C
	dc.b	$03, nBb4, $09, nRst, $0C, nAb4, nRst, nG4, nG4, $18, nAb4, $0C
	dc.b	nC4, $7F, smpsNoAttack, $05, nRst, $18, nC4, $03, nCs4, $09, nC4, $0C
	dc.b	nCs4, nBb3, $18, nCs4, nEb4, $0C, nE4, $3C, nFs4, $18, nAb4, $6C
	smpsSetvoice        $00
	dc.b	nRst, $0C
	smpsAlterVol        $08
	dc.b	nBb4, $06, nRst, $0C, nB4, $12, nCs5, nCs5, nRst, $0C
	smpsSetvoice        $01
	smpsAlterVol        $F8

sky_Loop0E:
	dc.b	nCs4, $12, nAb4, nEb5, $24, nCs5, $0C, nC5, nC5, $10, nCs4, nEb5
	dc.b	nEb5, nAb4, nAb4, nAb4, nC5, nBb4, nF4, nBb4, nAb4, nBb4, nF4, nF4
	dc.b	nAb4, nCs4, nCs4, nCs5, nB4, nA4, nAb4, nA4, nB4, nCs5, nE5, nAb5
	dc.b	nFs5, nBb4, nEb5, nCs5, nEb5, nE5, nF5, nG5, nBb4, nCs5, $24, nC5
	dc.b	$30, nRst, $0C
	smpsLoop            $00, $02, sky_Loop0E
	dc.b	nCs5, $24, nA4, nAb5, $18, nFs5, $24, nE5, nB4, $18, nCs5, $60
	dc.b	nRst
	smpsJump            sky_Jump04

; FM3 Data
sky_FM3:
	smpsSetvoice        $02
	dc.b	nRst, $18

sky_Loop0B:
	dc.b	nEb3, $06, nAb3, nEb4, nAb3
	smpsLoop            $00, $1F, sky_Loop0B

sky_Jump03:
	dc.b	nEb3, $06, nAb3, nEb4, nAb3
	smpsPan             panCenter, $00
	dc.b	nG3, $18, nAb3, $0C, nEb3, $24, nRst, $0C, nG3, $03, nAb3, $09
	dc.b	nG3, $18, nAb3, $0C, $03, nBb3, $09, nRst, $0C, nAb3, nRst, nG3
	dc.b	nG3, $18, nAb3, $0C, nC3, $7F, smpsNoAttack, $05, nRst, $18, nC3, $03
	dc.b	nCs3, $09, nC3, $0C, nCs3, $06, nRst, nBb2, $78, nAb2, $18, nBb2
	dc.b	$03, nC3, $15, nBb2, $0C, $78, nRst, $30, nG3, $18, nAb3, $0C
	dc.b	nEb3, $24, nRst, $0C, nG3, $03, nAb3, $09, nG3, $18, nAb3, $0C
	dc.b	$03, nBb3, $09, nRst, $0C, nAb3, nRst, nG3, nG3, $18, nAb3, $0C
	dc.b	nC3, $7F, smpsNoAttack, $05, nRst, $18, nC3, $03, nCs3, $09, nC3, $0C
	dc.b	nCs3, nBb2, $18, nCs3, nEb3, $0C, nE3, $3C, nFs3, $18, nAb3, $6C
	dc.b	nRst, $60

sky_Loop0C:
	dc.b	nCs3, $12, nAb3, nEb4, $24, nCs4, $0C, nC4, nC4, $10, nCs3, nEb4
	dc.b	nEb4, nAb3, nAb3, nAb3, nC4, nBb3, nF3, nBb3, nAb3, nBb3, nF3, nF3
	dc.b	nAb3, nCs3, nCs3, nCs4, nB3, nA3, nAb3, nA3, nB3, nCs4, nE4, nAb4
	dc.b	nFs4, nBb3, nEb4, nCs4, nEb4, nE4, nF4, nG4, nBb3, nCs4, $24, nC4
	dc.b	$30, nRst, $0C
	smpsLoop            $00, $02, sky_Loop0C
	dc.b	nCs4, $24, nA3, nAb4, $18, nFs4, $24, nE4, nB3, $18, nCs4, $60
	dc.b	nRst, $48
	smpsJump            sky_Jump03

; FM4 Data
sky_FM4:
	smpsPan             panLeft, $00
	smpsSetvoice        $00
	smpsModOff

sky_Loop09:
	dc.b	nCs5, $60, nC5, nB4, $3C, $0C, nRst, nFs3, $6C
	smpsLoop            $00, $02, sky_Loop09
	smpsAlterVol        $04

sky_Jump02:
	dc.b	nAb4, $60
	smpsAlterVol        $FC
	dc.b	nEb5
	smpsAlterVol        $04
	dc.b	nF4, nRst, nFs4, nRst, $3C, nF4, $0C, nRst, nEb4, $6C
	smpsSetvoice        $04
	smpsModOff
	dc.b	nRst, $0C
	smpsAlterVol        $FC
	dc.b	nG5, nAb5, nEb6, nG5, nAb5, nEb6, nG5, $6C
	smpsSetvoice        $00
	dc.b	nEb5, $60
	smpsAlterVol        $04
	dc.b	nF4, nRst
	smpsAlterVol        $FC
	dc.b	nCs4, $12, $06, nRst, $0C, nCs4, $24, nRst, $0C, nCs4, nCs4, $42
	dc.b	nEb4, $06, nRst, $0C, nF4, $6C, nRst, $0C, nF4, $06, nRst, $0C
	dc.b	nFs4, $12, nBb4, nAb4, nRst, $0C

sky_Loop0A:
	dc.b	nCs4, $54, nEb5, $60
	smpsAlterVol        $04
	dc.b	nF4, $6C, $30
	smpsAlterVol        $FC
	dc.b	nEb5, $0C, $0C, nCs5, nEb5, nCs5, $48, nEb5, $0C, $60, nCs4, $54
	dc.b	$0C, nCs5, $30, nC5, nCs5, $0C
	smpsLoop            $00, $02, sky_Loop0A
	dc.b	$60, nB4, nBb4, nRst
	smpsAlterVol        $04
	smpsJump            sky_Jump02

; FM5 Data
sky_FM5:
	smpsPan             panRight, $00
	smpsSetvoice        $00
	smpsModOff
	dc.b	nBb4

sky_Loop08:
	dc.b	$60, nAb4, nAb4, $3C, $0C, nRst, nBb4, $6C
	smpsLoop            $00, $02, sky_Loop08

sky_Jump01:
	dc.b	nEb5, $60, nC5, nEb5, nRst, nEb5, nRst, $3C, nEb5, $0C, nRst, nEb5
	dc.b	$6C
	smpsSetvoice        $04
	smpsModOff
	dc.b	nRst, $12, nG5, $0C, nAb5, nEb6, nG5, nAb5, nEb6, nG5, $06
	smpsSetvoice        $00
	dc.b	nEb5, $60, nC5, nEb5, nRst, nCs5, $12, $06, nRst, $0C, nCs5, $24
	dc.b	nRst, $0C, nCs5, nCs5, $42, nEb5, $06, nRst, $0C, nF5, $6C, nRst
	dc.b	$0C, nCs5, $06, nRst, $0C, nE5, $12, nFs5, nF5, nRst, $0C, nCs5
	dc.b	$54, nC5, $60, nEb5, $6C, $30
	smpsAlterNote       $00
	dc.b	$0C, $0C, nCs5, nEb5, nCs5, $48, $0C, nEb5, $60, nBb4, $54, $0C
	dc.b	$30, nAb4, nCs5, $0C, $54, nC5, $60, nEb5, $6C, $30, $0C, $0C
	dc.b	nCs5, nEb5, nCs5, $48, $0C, nEb5, $60, nBb4, $54, $0C, $30, nAb4
	dc.b	nCs5, $0C, nA4, $60, nAb4, nFs4, nRst
	smpsJump            sky_Jump01

; PSG1 Data
sky_PSG1:
	smpsModOff
	dc.b	nFs1

sky_Loop13:
	dc.b	$60, nG1, nE1, $3C, $0C, nRst, nFs1, $6C
	smpsLoop            $00, $02, sky_Loop13

sky_Jump08:
	dc.b	nC2, $60, nBb1, nAb1, nRst, nBb1, nRst, $3C, nAb1, $0C, nRst, nG1
	dc.b	$6C, nRst, $60, nC2, nBb1, nAb1, nRst, nBb1, $12, $06, nRst, $0C
	dc.b	nBb1, $24, nRst, $0C, nBb1, nA1, $42, nB1, $06, nRst, $0C, nCs2
	dc.b	$6C
	smpsModOff
	dc.b	nRst, $0C
	smpsPSGAlterVol     $05
	dc.b	nBb1, $06, nRst, $0C, nB1, $12, nCs2, nCs2, nRst, $0C
	smpsPSGAlterVol     $FB
	dc.b	nAb1

sky_Loop14:
	dc.b	$54, $60, $6C, $30, $0C, $0C, $0C, $0C, nA1, $48, $0C, nB1
	dc.b	$60, nG1, $54, $0C, nFs1, $30, $30, nAb1, $0C
	smpsLoop            $00, $02, sky_Loop14
	dc.b	nFs1, $60, nE1, nF1, nRst
	smpsJump            sky_Jump08

; PSG2 Data
sky_PSG2:
	smpsModOff

sky_Loop11:
	dc.b	nEb1, $60, $60, nCs1, $3C, $0C, nRst, nCs1, $6C
	smpsLoop            $00, $02, sky_Loop11

sky_Jump07:
	dc.b	nAb1, $60, nG1, nF1, nRst, nFs1, nRst, $3C, nF1, $0C, nRst, nEb1
	dc.b	$6C, nRst, $60, nAb1, nG1, nF1, nRst, nFs1, $12, $06, nRst, $0C
	dc.b	nFs1, $24, nRst, $0C, nFs1, nE1, $42, nFs1, $06, nRst, $0C, nAb1
	dc.b	$6C
	smpsModOff
	dc.b	nRst, $0C
	smpsPSGAlterVol     $05
	dc.b	nF1, $06, nRst, $0C, nFs1, $12, nBb1, nAb1, nRst, $0C
	smpsPSGAlterVol     $FB
	dc.b	nF1

sky_Loop12:
	dc.b	$54, $60, $6C, $30, $0C, $0C, $0C, $0C, nE1, $48, $0C, nFs1
	dc.b	$60, nE1, $54, $0C, nEb1, $30, $30, nF1, $0C
	smpsLoop            $00, $02, sky_Loop12
	dc.b	nD1, $60, nCs1, nCs1, nRst
	smpsJump            sky_Jump07

; PSG3 Data
sky_PSG3:
	smpsModOff

sky_Loop10:
	dc.b	nCs2, $60, nC2, nB1, $3C, $0C, nRst, nFs0, $6C
	smpsLoop            $00, $02, sky_Loop10

sky_Jump06:
	dc.b	nEb2, $60, nRst, nEb2, nRst, nEb2, nRst, $3C, nEb2, $0C, nRst, nEb2
	dc.b	$6C
	smpsModOff
	dc.b	nRst, $60, nEb2, nEb2, nEb2, nRst, nCs1, $12, $06, nRst, $0C, nCs1
	dc.b	$24, nRst, $0C, nCs1, nCs1, $42, nEb1, $06, nRst, $0C, nF1, $6C
	dc.b	nRst, $0C
	smpsPSGAlterVol     $03
	dc.b	nCs1, $06, nRst, $0C, nE1, $12, nFs1, nF1, nRst, $0C
	smpsPSGAlterVol     $FD
	dc.b	nCs1, $54, nEb2, $60, $6C, $30, nRst, $0C, nEb2, nCs2, nEb2, nCs2
	dc.b	$48, nEb2, $0C, $60, nCs1, $54, $0C, nCs2, $30, nC2, nCs2, $0C
	dc.b	nCs1, $54, nEb2, $60, $6C, $30, $0C, $0C, nCs2, nEb2, nCs2, $48
	dc.b	nEb2, $0C, $60, nCs1, $54, $0C, nCs2, $30, nC2, nCs2, $0C, $60
	dc.b	nB1, nBb1, nRst
	smpsJump            sky_Jump06

sky_Voices:
;	Voice $00
;	$3A
;	$31, $25, $63, $01, 	$5F, $1F, $1F, $9C, 	$08, $05, $04, $1E
;	$03, $04, $02, $06, 	$25, $25, $15, $06, 	$24, $27, $20, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $06, $02, $03
	smpsVcCoarseFreq    $01, $03, $05, $01
	smpsVcRateScale     $02, $00, $00, $01
	smpsVcAttackRate    $1C, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $1E, $04, $05, $08
	smpsVcDecayRate2    $06, $02, $04, $03
	smpsVcDecayLevel    $00, $01, $02, $02
	smpsVcReleaseRate   $06, $05, $05, $05
	smpsVcTotalLevel    $00, $20, $27, $24

;	Voice $01
;	$30
;	$01, $00, $00, $01, 	$9F, $1F, $1F, $5C, 	$0F, $10, $0D, $14
;	$08, $05, $08, $08, 	$6F, $0F, $07, $1C, 	$15, $19, $1F, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $00, $00, $01
	smpsVcRateScale     $01, $00, $00, $02
	smpsVcAttackRate    $1C, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $14, $0D, $10, $0F
	smpsVcDecayRate2    $08, $08, $05, $08
	smpsVcDecayLevel    $01, $00, $00, $06
	smpsVcReleaseRate   $0C, $07, $0F, $0F
	smpsVcTotalLevel    $00, $1F, $19, $15

;	Voice $02
;	$39
;	$0A, $61, $01, $61, 	$5F, $0C, $5F, $0C, 	$12, $11, $09, $09
;	$07, $00, $00, $00, 	$C8, $F8, $F8, $F8, 	$29, $24, $20, $00
	smpsVcAlgorithm     $01
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $06, $00, $06, $00
	smpsVcCoarseFreq    $01, $01, $01, $0A
	smpsVcRateScale     $00, $01, $00, $01
	smpsVcAttackRate    $0C, $1F, $0C, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $09, $11, $12
	smpsVcDecayRate2    $00, $00, $00, $07
	smpsVcDecayLevel    $0F, $0F, $0F, $0C
	smpsVcReleaseRate   $08, $08, $08, $08
	smpsVcTotalLevel    $00, $20, $24, $29

;	Voice $03
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

;	Voice $04
;	$24
;	$3F, $31, $65, $61, 	$1F, $58, $1F, $1F, 	$13, $11, $0E, $11
;	$04, $08, $05, $08, 	$55, $05, $62, $05, 	$1D, $10, $31, $10
	smpsVcAlgorithm     $04
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $06, $06, $03, $03
	smpsVcCoarseFreq    $01, $05, $01, $0F
	smpsVcRateScale     $00, $00, $01, $00
	smpsVcAttackRate    $1F, $1F, $18, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $11, $0E, $11, $13
	smpsVcDecayRate2    $08, $05, $08, $04
	smpsVcDecayLevel    $00, $06, $00, $05
	smpsVcReleaseRate   $05, $02, $05, $05
	smpsVcTotalLevel    $10, $31, $10, $1D

