titles4ep1_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     titles4ep1_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $02, $6C

	smpsHeaderDAC       titles4ep1_DAC
	smpsHeaderFM        titles4ep1_FM1,	$00, $10
	smpsHeaderFM        titles4ep1_FM2,	$F4, $10
	smpsHeaderFM        titles4ep1_FM3,	$F4, $10
	smpsHeaderFM        titles4ep1_FM4,	$F4, $10
	smpsHeaderFM        titles4ep1_FM5,	$F4, $10
	smpsHeaderPSG       titles4ep1_PSG1,	$DC, $02, $00, $00
	smpsHeaderPSG       titles4ep1_PSG2,	$DC, $02, $00, $00
	smpsHeaderPSG       titles4ep1_PSG3,	$DC, $02, $00, $00

; FM1 Data
titles4ep1_FM1:
	smpsCall            titles4ep1_Call0F
	smpsCall            titles4ep1_Call10
	smpsCall            titles4ep1_Call11
	smpsStop

; FM2 Data
titles4ep1_FM2:
	smpsCall            titles4ep1_Call0C
	smpsCall            titles4ep1_Call0D
	smpsCall            titles4ep1_Call0E
	smpsStop

; FM3 Data
titles4ep1_FM3:
	smpsCall            titles4ep1_Call09
	smpsCall            titles4ep1_Call0A
	smpsCall            titles4ep1_Call0B
	smpsStop

; FM4 Data
titles4ep1_FM4:
	smpsCall            titles4ep1_Call06
	smpsCall            titles4ep1_Call07
	smpsCall            titles4ep1_Call08
	smpsStop

; FM5 Data
titles4ep1_FM5:
	smpsCall            titles4ep1_Call03
	smpsCall            titles4ep1_Call04
	smpsCall            titles4ep1_Call05
	smpsStop

; PSG1 Data
titles4ep1_PSG1:
	smpsCall            titles4ep1_Call18
	smpsCall            titles4ep1_Call19
	smpsCall            titles4ep1_Call1A
	smpsStop

; PSG2 Data
titles4ep1_PSG2:
	smpsCall            titles4ep1_Call15
	smpsCall            titles4ep1_Call16
	smpsCall            titles4ep1_Call17
	smpsStop

; PSG3 Data
titles4ep1_PSG3:
	smpsPSGform         $E7
	smpsCall            titles4ep1_Call12
	smpsCall            titles4ep1_Call13
	smpsCall            titles4ep1_Call14
	smpsStop

; DAC Data
titles4ep1_DAC:
	smpsCall            titles4ep1_Call00
	smpsCall            titles4ep1_Call01
	smpsCall            titles4ep1_Call02
	smpsStop

titles4ep1_Call0F:
	dc.b	smpsNoAttack, $0C
	smpsSetvoice        $00
	dc.b	nD3, $05, nRst, $01, nD3, $02, nA2, $04, nD3, $05, nRst, $03
	dc.b	nD3, $04, nA2, $02, nA3, nD3, nD4, nG4, nC3, nC4, nG3, nG2
	dc.b	nRst, nG3, nG2, nC3, nRst, nC3, nC4, nG2, nG3, nC3, nC4, nB2
	dc.b	$05, nRst, $01, nB2, $02, nFs2, $04, nB2, $05, nRst, $03, nB2
	dc.b	$04, nFs2, $02, nFs3, nB2, nB3, nE4, nA4, nA3, nE3, nA3, nRst
	dc.b	nE3, nE2, nA2, nRst
	smpsReturn

titles4ep1_Call10:
	dc.b	nA2, $02, nA3, nCs3, nD3, nEb3, nE3, nD3, $05, nRst, $01, nD3
	dc.b	$02, nA2, $04, nD3, $05, nRst, $03, nD3, $04, nA2, $02, nA3
	dc.b	nD3, nD4, nG4, nC3, nC4, nG3, nG2, nRst, nG3, nG2, nC3, nRst
	dc.b	nC3, nC4, nG2, nG3, nC3, nC4, nB2, $05, nRst, $01, nB2, $02
	dc.b	nFs2, $04, nB2, $05, nRst, $03, nB2, $04, nFs2, $02, nFs3, nB2
	dc.b	nB3, nE4, nA4, nA3, nE3, nA3, nRst, nE3, nE2, nA2, nE3
	smpsReturn

titles4ep1_Call11:
	dc.b	nG3, $02, nA3, nE4, nA4, nD3, $08, nRst, $70
	smpsReturn

titles4ep1_Call0C:
	dc.b	smpsNoAttack, $0C
	smpsSetvoice        $01
	dc.b	nD6, $04, nRst, $02, nD6, nE6, nRst, nG6, $04, nRst, nFs6, nRst
	dc.b	nE6, nRst, nE6, nFs6, nD6, $12, nRst, $02, nD6, $04, nRst, $02
	dc.b	nD6, nE6, nRst, nG6, $04, nRst, nFs6, nRst, nCs6, $18
	smpsReturn

titles4ep1_Call0D:
	dc.b	smpsNoAttack, $04, nRst, $08, nD6, $04, nRst, $02, nD6, nE6, nRst, nG6
	dc.b	$04, nRst, nFs6, nRst, nE6, nRst, nE6, nFs6, nD6, $12, nRst, $02
	dc.b	nD6, $04, nRst, $02, nD6, nE6, nRst, nG6, $04, nRst, nFs6, nRst
	dc.b	nE6, $0A, nRst, $02, nE6, $07, nRst, $01, nE6, $02, nRst
	smpsReturn

titles4ep1_Call0E:
	dc.b	nE6, $03, nRst, $05, nD6, $08, nRst, $70
	smpsReturn

titles4ep1_Call09:
	dc.b	smpsNoAttack, $0C
	smpsSetvoice        $02
	dc.b	nA5, $0A, nRst, $02, nA5, $04, nRst, nA5, nRst, nC6, nRst, nC6
	dc.b	nRst, nC6, $08, nB5, $04, nA5, nG5, nB5, $0A, nRst, $02, nB5
	dc.b	$04, nRst, nB5, nRst, nA5, $18
	smpsReturn

titles4ep1_Call0A:
	dc.b	smpsNoAttack, $04, nRst, $08, nA5, $0A, nRst, $02, nA5, $04, nRst, nA5
	dc.b	nRst, nC6, nRst, nC6, nRst, nC6, $08, nB5, $04, nA5, nG5, nB5
	dc.b	$0A, nRst, $02, nB5, $04, nRst, nB5, nRst, nA5, $0B, nRst, $01
	dc.b	nB5, $08, nCs6, $02, nRst
	smpsReturn

titles4ep1_Call0B:
	dc.b	nCs6, $03, nRst, $05, nA5, $08, nRst, $70
	smpsReturn

titles4ep1_Call06:
	dc.b	smpsNoAttack, $0C
	smpsSetvoice        $01
	dc.b	nD5, $04, nRst, $02, nD5, nE5, nRst, nG5, $04, nRst, nFs5, nRst
	dc.b	nE5, nRst, nE5, nFs5, nD5, $12, nRst, $02, nD5, $04, nRst, $02
	dc.b	nD5, nE5, nRst, nG5, $04, nRst, nD5, nRst, nCs5, $18
	smpsReturn

titles4ep1_Call07:
	dc.b	smpsNoAttack, $04, nRst, $08, nD5, $04, nRst, $02, nD5, nE5, nRst, nG5
	dc.b	$04, nRst, nFs5, nRst, nE5, nRst, nE5, nFs5, nD5, $12, nRst, $02
	dc.b	nD5, $04, nRst, $02, nD5, nE5, nRst, nG5, $04, nRst, nD5, nRst
	dc.b	nCs5, $0C, nE5, $07, nRst, $01, nE5, $02, nRst
	smpsReturn

titles4ep1_Call08:
	dc.b	nG5, $03, nRst, $05, nFs5, $08, nRst, $70
	smpsReturn

titles4ep1_Call03:
	dc.b	smpsNoAttack, $58
	smpsSetvoice        $01
	dc.b	nD5, $04, nRst, nFs5, nRst, nE5, $18
	smpsReturn

titles4ep1_Call04:
	dc.b	smpsNoAttack, $04, nRst, $54, nD5, $04, nRst, nFs5, nRst, nE5, $0A, nRst
	dc.b	$0E
	smpsReturn

titles4ep1_Call05:
	dc.b	nE5, $03, nRst, $05, nD5, $08, nRst, $70
	smpsReturn

titles4ep1_Call18:
	dc.b	smpsNoAttack, $0C
	smpsPSGvoice        $00
	dc.b	nD5, $08, nG5, nD5, $04, nA5, $08, nD5, $03, nRst, $05, nD5
	dc.b	$04, nC6, $07, nRst, $03, nC6, $01, nRst, $03, nB5, $01, nRst
	dc.b	$03, nA5, $01, nRst, $03, nG5, $01, nRst, nD5, $08, nG5, nA5
	dc.b	nRst, $02, nA5, nRst, nCs5, nRst, nE4, nRst, nE5, nRst, nA4, nRst
	dc.b	nA5, nRst, nA4
	smpsReturn

titles4ep1_Call19:
	dc.b	nRst, $02, nA5, nBb5, nB5, nC6, nCs6, nD5, $08, nG5, nD5, $04
	dc.b	nA5, $08, nD5, $03, nRst, $05, nD5, $04, nC6, $07, nRst, $03
	dc.b	nC6, $01, nRst, $03, nB5, $01, nRst, $03, nA5, $01, nRst, $03
	dc.b	nG5, $01, nRst, nD5, $08, nG5, nA5, nRst, $02, nA5, nRst, nCs5
	dc.b	nRst, nE4, nRst, nE5, nRst, nCs5, nRst, nE4, nE5, nA5
	smpsReturn

titles4ep1_Call1A:
	dc.b	nBb5, $02, nB5, nC6, nCs6, nD6, $04, nRst, $74
	smpsReturn

titles4ep1_Call15:
	dc.b	smpsNoAttack, $0D
	smpsPSGvoice        $00
	dc.b	nD5, $08, nG5, nD5, $04, nA5, $08, nD5, $03, nRst, $05, nD5
	dc.b	$04, nC6, $07, nRst, $01, nC6, nRst, $03, nB5, $01, nRst, $03
	dc.b	nA5, $01, nRst, $03, nG5, $01, nRst, $03, nD5, $08, nG5, nA5
	dc.b	nD6, $02, nRst, nE5, nRst, nA3, nRst, nA4, nRst, nCs4, nRst, nCs5
	dc.b	nRst, nE4, nRst, $01
	smpsReturn

titles4ep1_Call16:
	dc.b	smpsNoAttack, $01, nE5, $02, nRst, nFs5, nG5, nAb5, nA5, nD5, $08, nG5
	dc.b	nD5, $04, nA5, $08, nD5, $03, nRst, $05, nD5, $04, nC6, $07
	dc.b	nRst, $01, nC6, nRst, $03, nB5, $01, nRst, $03, nA5, $01, nRst
	dc.b	$03, nG5, $01, nRst, $03, nD5, $08, nG5, nA5, nD6, $02, nRst
	dc.b	nE5, nRst, nA3, nRst, nA4, nRst, nCs4, nRst, nA5, nRst, nE5, nA5
	dc.b	$01
	smpsReturn

titles4ep1_Call17:
	dc.b	smpsNoAttack, $01, nFs5, $02, nG5, nAb5, nA5, nFs5, $04, nRst, $73
	smpsReturn

titles4ep1_Call12:
	dc.b	smpsNoAttack, nRst, $0C
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $02, $04, $02, $04, nCs0, nCs0, $02, $04, $02, nCs0, nCs0
	dc.b	nCs0, $04, $02, $04, $02, $04, $02, nCs0, nCs0, $04, nCs0, nCs0
	dc.b	nCs0, nCs0, $02, $04, $02, $04, $02, $04, $02, $04, nCs0, nCs0
	dc.b	nCs0, $02, $04, $02, $04, $02, nCs0, nCs0, $04
	smpsReturn

titles4ep1_Call13:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $04, nCs0, nCs0, nCs0, $02, $04, $02, $04, $02, $04, $02
	dc.b	$04, nCs0, nCs0, nCs0, $02, $04, $02, $04, $02, nCs0, nCs0, $04
	dc.b	nCs0, nCs0, nCs0, nCs0, $02, $04, $02, $04, $02, $04, $02, $04
	dc.b	nCs0, nCs0, nCs0, $02, $04, $02, $04, $02, nCs0, nCs0, $04
	smpsReturn

titles4ep1_Call14:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $02, $04, $02, $06, nRst, $72
	smpsReturn

titles4ep1_Call00:
	dc.b	dSnare, $04, $02, dSnare, dSnare, $04, dKick, dSnare, dKick, dSnare, dKick, dSnare
	dc.b	dKick, dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare, dKick, $02, dSnare, dSnare
	dc.b	$04, dKick, dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare, dKick
	dc.b	$02, dSnare, dSnare, $04, dKick
	smpsReturn

titles4ep1_Call01:
	dc.b	dSnare, $04, dKick, $02, dSnare, dSnare, dSnare, dKick, $04, dSnare, dKick, dSnare
	dc.b	dKick, dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare, dKick, $02
	dc.b	dSnare, dSnare, $04, dKick, dSnare, dKick, dSnare, dKick, dSnare, dKick, $02, dSnare
	dc.b	dSnare, $04, dSnare, dKick, dSnare, dKick, dSnare, $02, dKick
	smpsReturn

titles4ep1_Call02:
	dc.b	nRst, $04, dSnare, $02, dSnare, dKick, $08, nRst, $70
	smpsReturn

titles4ep1_Voices:
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

