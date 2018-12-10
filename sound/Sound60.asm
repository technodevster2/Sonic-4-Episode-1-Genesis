Sound60_SpindashRev_Header:
	smpsHeaderStartSong 2
	smpsHeaderVoice     Sound60_SpindashRev_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cFM5, Sound60_SpindashRev_FM5,	$00, $00

; FM5 Data
Sound60_SpindashRev_FM5:
	smpsSetvoice        $00
	smpsModSet          $00, $01, $1A, $F6
	dc.b	nC5, $18, smpsNoAttack
	smpsModOff
	dc.b	nC6, $02, smpsNoAttack

Sound60_SpindashRev_Loop00:
	dc.b	smpsNoAttack, $02
	smpsFMAlterVol      $02
	smpsLoop            $00, $18, Sound60_SpindashRev_Loop00
	smpsStop

Sound60_SpindashRev_Voices:
;	Voice $00
;	$34
;	$00, $0C, $03, $09, 	$9F, $8F, $8C, $95, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$0F, $0F, $0F, $0F, 	$00, $00, $1D, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $09, $03, $0C, $00
	smpsVcRateScale     $03, $02, $02, $02
	smpsVcAttackRate    $15, $0C, $0F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $1C, $00, $00

