titlescreen_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     titlescreen_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $02, $0A

	smpsHeaderDAC       titlescreen_DAC
	smpsHeaderFM        titlescreen_FM1,	$00, $09
	smpsHeaderFM        titlescreen_FM2,	$00, $12
	smpsHeaderFM        titlescreen_FM3,	$00, $11
	smpsHeaderFM        titlescreen_FM4,	$00, $0D
	smpsHeaderFM        titlescreen_FM5,	$00, $0F
	smpsHeaderPSG       titlescreen_PSG1,	$DC, $02, $00, $00
	smpsHeaderPSG       titlescreen_PSG2,	$DC, $02, $00, $00
	smpsHeaderPSG       titlescreen_PSG3,	$00, $03, $00, fTone_02

; DAC Data
titlescreen_DAC:
	dc.b	dSnare, $06, dSnare, $03, dSnare, $03, dSnare, $06, dKick, $06, dSnare, $06
	dc.b	dKick, $06, dSnare, $06, dKick, $06, dSnare, $06, dKick, $06, dSnare, $06
	dc.b	dKick, $06, dSnare, $06, dKick, $06, dSnare, $06, dKick, $06, dSnare, $06
	dc.b	dKick, $03, dSnare, $03, dSnare, $06, dKick, $06, dSnare, $06, dKick, $06
	dc.b	dSnare, $06, dKick, $06, dSnare, $06, dKick, $06, dSnare, $06, dKick, $06
	dc.b	dSnare, $06, dKick, $03, dSnare, $03, dSnare, $06, dKick, $06, dSnare, $06
	dc.b	dKick, $03, dSnare, $03, dSnare, $03, dSnare, $03, dKick, $06, dSnare, $06
	dc.b	dKick, $06, dSnare, $06, dKick, $06, dSnare, $06, dKick, $06, dSnare, $06
	dc.b	dKick, $06, dSnare, $06, dKick, $06, dSnare, $06, dKick, $06, dSnare, $06
	dc.b	dKick, $03, dSnare, $03, dSnare, $06, dKick, $06, dSnare, $06, dKick, $06
	dc.b	dSnare, $06, dKick, $06, dSnare, $06, dKick, $06, dSnare, $06, dSnare, $03
	dc.b	dSnare, $03, dSnare, $06, dSnare, $06, dKick, $06, dSnare, $06, dSnare, $0C
	dc.b	$85, $12
	smpsStop

; FM1 Data
titlescreen_FM1:
	smpsSetvoice        $00
	smpsPan             panCenter, $00
	dc.b	nRst, $12, nD3, $08, nRst, $01, nD3, $03, nA2, $06, nD3, $08
	dc.b	nRst, $04, nD3, $06, nA2, $03, nA3, $03, nD3, $03, nD4, $03
	dc.b	nG4, $03, nC3, $03, nC4, $03, nG3, $03, nG2, $03, nRst, $03
	dc.b	nG3, $03, nG2, $03, nC3, $03, nRst, $03, nC3, $03, nC4, $03
	dc.b	nG2, $03, nG3, $03, nC3, $03, nC4, $03, nB2, $08, nRst, $01
	dc.b	nB2, $03, nFs2, $06, nB2, $08, nRst, $04, nB2, $06, nFs2, $03
	dc.b	nFs3, $03, nB2, $03, nB3, $03, nE4, $03, nA4, $03, nA3, $03
	dc.b	nE3, $03, nA3, $03, nRst, $03, nE3, $03, nE2, $03, nA2, $03
	dc.b	nRst, $03, nA2, $03, nA3, $03, nCs3, $03, nD3, $03, nEb3, $03
	dc.b	nE3, $03, nD3, $08, nRst, $01, nD3, $03, nA2, $06, nD3, $08
	dc.b	nRst, $04, nD3, $06, nA2, $03, nA3, $03, nD3, $03, nD4, $03
	dc.b	nG4, $03, nC3, $03, nC4, $03, nG3, $03, nG2, $03, nRst, $03
	dc.b	nG3, $03, nG2, $03, nC3, $03, nRst, $03, nC3, $03, nC4, $03
	dc.b	nG2, $03, nG3, $03, nC3, $03, nC4, $03, nB2, $08, nRst, $01
	dc.b	nB2, $03, nFs2, $06, nB2, $08, nRst, $04, nB2, $06, nFs2, $03
	dc.b	nFs3, $03, nB2, $03, nB3, $03, nE4, $03, nA4, $03, nA3, $03
	dc.b	nE3, $03, nA3, $03, nRst, $03, nE3, $03, nE2, $03, nA2, $03
	dc.b	nRst, $03, nA2, $03, nA3, $03, nCs3, $03
	smpsAlterVol        $FF
	dc.b	nE3, $03, nD3, $06
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $0C
	smpsStop

; FM2 Data
titlescreen_FM2:
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nRst, $12, nD5, $06, nRst, $03, nD5, $03, nE5, $03, nRst, $03
	dc.b	nG5, $06, nRst, $06, nFs5, $06, nRst, $06, nE5, $06, nRst, $06
	dc.b	nE5, $06, nFs5, $06, nD5, $1B, nRst, $03, nD5, $06, nRst, $03
	dc.b	nD5, $03, nE5, $03, nRst, $03, nG5, $06, nRst, $06, nFs5, $06
	dc.b	nRst, $06, nE5, $2A, nRst, $0C, nD5, $06, nRst, $03, nD5, $03
	dc.b	nE5, $03, nRst, $03, nG5, $06, nRst, $06, nFs5, $06, nRst, $06
	dc.b	nE5, $06, nRst, $06, nE5, $06, nFs5, $06, nD5, $1B, nRst, $03
	dc.b	nD5, $06, nRst, $03, nD5, $03, nE5, $03, nRst, $03, nG5, $06
	dc.b	nRst, $06, nFs5, $06, nRst, $06, nE5, $0C
	smpsAlterVol        $FE
	dc.b	nE5, $03, nRst, $03, nE5, $0C, nE5, $03, nRst, $03, nG5, $06
	dc.b	nRst, $06, nFs5, $06
	smpsPan             panCenter, $00
	dc.b	smpsNoAttack, $0C
	smpsStop

; FM3 Data
titlescreen_FM3:
	smpsSetvoice        $02
	smpsPan             panCenter, $00
	dc.b	nRst, $12, nA4, $0F, nRst, $03, nA4, $06, nRst, $06, nA4, $06
	dc.b	nRst, $06, nC5, $06, nRst, $06, nC5, $06, nRst, $06, nC5, $0C
	dc.b	nB4, $06, nA4, $06, nG4, $06, nB4, $0F, nRst, $03, nB4, $06
	dc.b	nRst, $06, nB4, $06, nRst, $06, nA4, $2A, nRst, $0C, nA4, $0F
	dc.b	nRst, $03, nA4, $06, nRst, $06, nA4, $06, nRst, $06, nC5, $06
	dc.b	nRst, $06, nC5, $06, nRst, $06, nC5, $0C, nB4, $06, nA4, $06
	dc.b	nG4, $06, nB4, $0F, nRst, $03, nB4, $06, nRst, $06, nB4, $06
	dc.b	nRst, $06, nA4, $12
	smpsAlterVol        $FF
	dc.b	nA4, $0C, nA4, $03, nRst, $03, nG4, $06, nRst, $06, nFs4, $06
	smpsPan             panCenter, $00
	dc.b	smpsNoAttack, $0C
	smpsStop

; FM4 Data
titlescreen_FM4:
	smpsPan             panRight, $00
	smpsSetvoice        $01
	dc.b	nRst, $12, nD4, $06, nRst, $03, nD4, $03, nE4, $03, nRst, $03
	dc.b	nG4, $06, nRst, $06, nFs4, $06, nRst, $06, nE4, $06, nRst, $06
	dc.b	nE4, $06, nFs4, $06, nD4, $1B, nRst, $03, nD4, $06, nRst, $03
	dc.b	nD4, $03, nE4, $03, nRst, $03, nG4, $06, nRst, $06, nFs4, $06
	dc.b	nRst, $06, nE4, $2A, nRst, $0C, nD4, $06, nRst, $03, nD4, $03
	dc.b	nE4, $03, nRst, $03, nG4, $06, nRst, $06, nFs4, $06, nRst, $06
	dc.b	nE4, $06, nRst, $06, nE4, $06, nFs4, $06, nD4, $1B, nRst, $03
	dc.b	nD4, $06, nRst, $03, nD4, $03, nE4, $03, nRst, $03, nG4, $06
	dc.b	nRst, $06, nFs4, $06, nRst, $06, nE4, $0C
	smpsAlterVol        $FE
	dc.b	nE4, $03, nRst, $03, nE4, $0C, nE4, $03, nRst, $03, nG4, $06
	dc.b	nRst, $06, nFs4, $06
	smpsPan             panRight, $00
	dc.b	smpsNoAttack, $0C
	smpsStop

; FM5 Data
titlescreen_FM5:
	smpsSetvoice        $01
	dc.b	nRst, $7F, $05, nD5, $06, nRst, $06, nD5, $06, nRst, $06, nCs5
	dc.b	$2A, nRst, $7E, nD5, $06, nRst, $06, nD5, $06, nRst, $06, nCs5
	dc.b	$0C, nCs5, $03, nRst, $03, nCs5, $0C, nCs5, $03, nRst, $03, nE5
	dc.b	$06, nRst, $06, nD5, $12
	smpsStop

; PSG3 Data
titlescreen_PSG3:
	smpsPSGform         $E7
	dc.b	nRst, $12, nMaxPSG, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C, nMaxPSG, $06, nMaxPSG, $0C, nMaxPSG, $06, nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $12
	smpsStop

titlescreen_PSG1:
	smpsCall            titlescreenpsg_Call03
	smpsCall            titlescreenpsg_Call04
	smpsCall            titlescreenpsg_Call05
	smpsStop

; PSG2 Data
titlescreen_PSG2:
	smpsCall            titlescreenpsg_Call00
	smpsCall            titlescreenpsg_Call01
	smpsCall            titlescreenpsg_Call02
	smpsStop

titlescreenpsg_Call03:
	dc.b	smpsNoAttack, $0C
	smpsPSGvoice        $00
	dc.b	nD5, $08, nG5, nD5, $04, nA5, $08, nD5, $03, nRst, $05, nD5
	dc.b	$04, nC6, $07, nRst, $03, nC6, $01, nRst, $03, nB5, $01, nRst
	dc.b	$03, nA5, $01, nRst, $03, nG5, $01, nRst, nD5, $08, nG5, nA5
	dc.b	nRst, $02, nA5, nRst, nCs5, nRst, nE4, nRst, nE5, nRst, nA4, nRst
	dc.b	nA5, nRst, nA4
	smpsReturn

titlescreenpsg_Call04:
	dc.b	nRst, $02, nA5, nBb5, nB5, nC6, nCs6, nD5, $08, nG5, nD5, $04
	dc.b	nA5, $08, nD5, $03, nRst, $05, nD5, $04, nC6, $07, nRst, $03
	dc.b	nC6, $01, nRst, $03, nB5, $01, nRst, $03, nA5, $01, nRst, $03
	dc.b	nG5, $01, nRst, nD5, $08, nG5, nA5, nRst, $02, nA5, nRst, nCs5
	dc.b	nRst, nE4, nRst, nE5, nRst, nCs5, nRst, nE4, nE5, nA5
	smpsReturn

titlescreenpsg_Call05:
	dc.b	nBb5, $02, nB5, nC6, nCs6, nD6, $04, nRst, $74
	smpsReturn

titlescreenpsg_Call00:
	dc.b	smpsNoAttack, $0D
	smpsPSGvoice        $00
	dc.b	nD5, $09, nG5, nD5, $05, nA5, $09, nD5, $04, nRst, $06, nD5
	dc.b	$05, nC6, $08, nRst, $02, nC6, nRst, $04, nB5, $02, nRst, $04
	dc.b	nA5, $02, nRst, $04, nG5, $02, nRst, $04, nD5, $09, nG5, nA5
	dc.b	nD6, $03, nRst, nE5, nRst, nA3, nRst, nA4, nRst, nCs4, nRst, nCs5
	dc.b	nRst, nE4, nRst, $02
	smpsReturn

titlescreenpsg_Call01:
	dc.b	smpsNoAttack, $01, nE5, $02, nRst, nFs5, nG5, nAb5, nA5, nD5, $08, nG5
	dc.b	nD5, $04, nA5, $08, nD5, $03, nRst, $05, nD5, $04, nC6, $07
	dc.b	nRst, $01, nC6, nRst, $03, nB5, $01, nRst, $03, nA5, $01, nRst
	dc.b	$03, nG5, $01, nRst, $03, nD5, $08, nG5, nA5, nD6, $02, nRst
	dc.b	nE5, nRst, nA3, nRst, nA4, nRst, nCs4, nRst, nA5, nRst, nE5, nA5
	dc.b	$01
	smpsReturn

titlescreenpsg_Call02:
	dc.b	smpsNoAttack, $01, nFs5, $02, nG5, nAb5, nA5, nFs5, $04, nRst, $73
	smpsReturn

titlescreen_Voices:
;	Voice $00
;	$20
;	$36, $35, $30, $31, 	$DF, $DF, $9F, $9F, 	$07, $06, $09, $06
;	$07, $06, $06, $08, 	$20, $10, $10, $F8, 	$19, $37, $13, $00
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

;	Voice $01
;	$38
;	$75, $13, $71, $11, 	$D1, $52, $14, $14, 	$0A, $07, $01, $01
;	$00, $00, $00, $00, 	$F0, $F0, $F0, $FC, 	$1E, $1E, $1E, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $07, $01, $07
	smpsVcCoarseFreq    $01, $01, $03, $05
	smpsVcRateScale     $00, $00, $01, $03
	smpsVcAttackRate    $14, $14, $12, $11
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $01, $07, $0A
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0C, $00, $00, $00
	smpsVcTotalLevel    $00, $1E, $1E, $1E

;	Voice $02
;	$38
;	$72, $13, $71, $11, 	$D1, $52, $14, $14, 	$01, $07, $01, $01
;	$00, $00, $00, $00, 	$FF, $FF, $FF, $FF, 	$1E, $1E, $1E, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $07, $01, $07
	smpsVcCoarseFreq    $01, $01, $03, $02
	smpsVcRateScale     $00, $00, $01, $03
	smpsVcAttackRate    $14, $14, $12, $11
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $01, $07, $01
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $1E, $1E, $1E

