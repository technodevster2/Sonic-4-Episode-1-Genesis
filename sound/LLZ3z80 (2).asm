LLZ3_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     LLZ3_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $02, $1E

	smpsHeaderDAC       LLZ3_DAC
	smpsHeaderFM        LLZ3_FM1,	$00, $10
	smpsHeaderFM        LLZ3_FM2,	$00, $16
	smpsHeaderFM        LLZ3_FM3,	$00, $0C
	smpsHeaderFM        LLZ3_FM4,	$00, $0C
	smpsHeaderFM        LLZ3_FM5,	$00, $0C
	smpsHeaderPSG       LLZ3_PSG1,	$00, $04, $00, $00
	smpsHeaderPSG       LLZ3_PSG2,	$00, $04, $00, $00
	smpsHeaderPSG       LLZ3_PSG3,	$00, $01, $00, $00

LLZ3_FM5:
	smpsstop
; DAC Data
LLZ3_DAC:
	smpsPan             panCenter, $00

LLZ3_Jump00:
	dc.b	dKick, $06, dKick, $06, dKick, $06, dKick, $06, dSnare, $0C, dSnare, $0C
	dc.b	dKick, $06, dKick, $06, dKick, $06, dKick, $06, dSnare, $0C, dSnare, $06
	dc.b	dSnare, $03, dSnare, $03, dKick, $06, dKick, $06, dSnare, $0C, dKick, $06
	dc.b	dKick, $06, dSnare, $0C, dKick, $06, dKick, $06, dSnare, $06, dKick, $0C
	dc.b	dKick, $06, dSnare, $06, dSnare, $03, dSnare, $03, dKick, $06, dKick, $06
	dc.b	dKick, $06, dKick, $06, dSnare, $0C, dSnare, $0C, dKick, $06, dKick, $06
	dc.b	dSnare, $06, dKick, $12, dSnare, $06, dSnare, $03, dSnare, $03, dKick, $06
	dc.b	dKick, $06, dSnare, $0C, dKick, $06, dKick, $06, dSnare, $0C, dKick, $06
	dc.b	dKick, $06, dSnare, $06, dKick, $0C, dKick, $06, dSnare, $06, dSnare, $03
	dc.b	dSnare, $03, dKick, $0C, dKick, $06, dKick, $06, dSnare, $0C, dKick, $06
	dc.b	dSnare, $06, dKick, $06, dSnare, $06, dKick, $06, dKick, $06, dSnare, $06
	dc.b	dKick, $06, dSnare, $06, dSnare, $06, dKick, $06, dKick, $06, dSnare, $0C
	dc.b	dKick, $06, dKick, $06, dSnare, $0C, dKick, $06, dKick, $06, dSnare, $06
	dc.b	dKick, $0C, dKick, $06, dSnare, $0C, dKick, $0C, dKick, $06, dKick, $06
	dc.b	dSnare, $0C, dKick, $06, dSnare, $06, dKick, $06, dSnare, $06, dKick, $06
	dc.b	dKick, $06, dSnare, $06, dKick, $06, dSnare, $06, dSnare, $06, dKick, $06
	dc.b	dKick, $06, dSnare, $0C, dKick, $06, dKick, $06, dSnare, $0C, dKick, $06
	dc.b	dKick, $06, dSnare, $06, dKick, $0C, dKick, $06, dSnare, $06, dSnare, $06
	dc.b	dKick, $06, dKick, $06, dSnare, $0C, dKick, $06, dKick, $06, dSnare, $0C
	dc.b	dKick, $06, dKick, $06, dSnare, $0C, dKick, $06, dKick, $06, dSnare, $06
	dc.b	dKick, $06, dKick, $06, dKick, $06, dSnare, $0C, dKick, $06, dKick, $06
	dc.b	dSnare, $0C, dKick, $06, dKick, $06, dSnare, $0C, dKick, $06, dKick, $06
	dc.b	dSnare, $0C, dKick, $06, dKick, $06, dSnare, $0C, dKick, $06, dKick, $06
	dc.b	dSnare, $0C, dKick, $06, dKick, $06, dSnare, $0C, dKick, $06, dSnare, $06
	dc.b	dSnare, $06, dKick, $06, dKick, $06, dKick, $0C, dKick, $06, dSnare, $06
	dc.b	dKick, $0C, dSnare, $06, dKick, $06, dSnare, $0C, dKick, $06, dSnare, $06
	dc.b	dKick, $06, dSnare, $06, dSnare, $06, dKick, $06, dKick, $06, dKick, $06
	dc.b	dKick, $06, dSnare, $0C, dSnare, $0C, dKick, $06, dKick, $06, dKick, $06
	dc.b	dKick, $06, dSnare, $0C, dSnare, $06, dSnare, $03, dSnare, $03, dKick, $06
	dc.b	dKick, $06, dSnare, $0C, dKick, $06, dKick, $06, dSnare, $0C, dKick, $06
	dc.b	dKick, $06, dSnare, $06, dKick, $0C, dKick, $06, dSnare, $06, dSnare, $03
	dc.b	dSnare, $03, dKick, $06, dKick, $06, dKick, $06, dKick, $06, dSnare, $0C
	dc.b	dSnare, $0C, dKick, $06, dKick, $06, dKick, $06, dKick, $12, dSnare, $06
	dc.b	dSnare, $03, dSnare, $03, dKick, $06, dKick, $06, dSnare, $0C, dKick, $06
	dc.b	dKick, $06, dSnare, $0C, dKick, $06, dKick, $06, dSnare, $06, dKick, $0C
	dc.b	dKick, $06, dSnare, $06, dSnare, $03, dSnare, $03, dKick, $0C, dKick, $06
	dc.b	dKick, $06, dSnare, $0C, dKick, $06, dSnare, $06, dKick, $06, dSnare, $06
	dc.b	dKick, $06, dKick, $06, dSnare, $06, dKick, $06, dSnare, $06, dSnare, $06
	dc.b	dKick, $06, dKick, $06, dSnare, $0C, dKick, $06, dKick, $06, dSnare, $0C
	dc.b	dKick, $06, dKick, $06, dSnare, $06, dKick, $0C, dKick, $06, dSnare, $0C
	dc.b	dSnare, $0C, dKick, $06, dKick, $06, dSnare, $0C, dKick, $06, dSnare, $06
	dc.b	dKick, $06, dSnare, $06, dKick, $06, dKick, $06, dSnare, $06, dKick, $06
	dc.b	dSnare, $06, dSnare, $06, dKick, $06, dKick, $06, dSnare, $0C, dKick, $06
	dc.b	dKick, $06, dSnare, $0C, dKick, $06, dKick, $06, dSnare, $06, dKick, $0C
	dc.b	dKick, $06, dSnare, $06, dSnare, $06, dKick, $06, dKick, $06, dSnare, $0C
	dc.b	dKick, $06, dKick, $06, dSnare, $0C, dKick, $06, dKick, $06, dSnare, $0C
	dc.b	dKick, $06, dKick, $06, dSnare, $06, dKick, $06, dKick, $06, dKick, $06
	dc.b	dSnare, $0C, dKick, $06, dKick, $06, dSnare, $0C, dKick, $06, dKick, $06
	dc.b	dSnare, $0C, dKick, $06, dKick, $06, dSnare, $0C, dKick, $06, dKick, $06
	dc.b	dSnare, $0C, dKick, $06, dKick, $06, dSnare, $0C, dKick, $06, dKick, $06
	dc.b	dSnare, $0C, dKick, $06, dSnare, $06, dSnare, $06, dKick, $06, dKick, $06
	dc.b	dKick, $0C, dKick, $06, dSnare, $06, dKick, $0C, dSnare, $06, dKick, $06
	dc.b	dSnare, $0C, dKick, $06, dSnare, $06, dKick, $06, dSnare, $06, dSnare, $06
	smpsJump            LLZ3_Jump00

; FM1 Data
LLZ3_FM1:
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	smpsAlterNote       $00

LLZ3_Jump04:
	dc.b	nA5, $18, nRst, $06, nC6, $0C, nD6, $06, nG5, $12, nF5, $0C
	dc.b	nRst, $06, nE5, $0C, nD5, $12, nRst, $06, nA5, $12, nG5, $2A
	dc.b	nRst, $0C, nA5, $18, nRst, $06, nC6, $0C, nD6, $06, nG5, $12
	dc.b	nF5, $0C, nRst, $06, nE5, $0C, nD5, $0C, nRst, $06, nA5, $36
	dc.b	nRst, $18, nA5, $0C, nF5, $06, nD5, $06, nRst, $06, nA5, $06
	dc.b	nF5, $06, nG5, $0C, nRst, $06, nE5, $06, nC5, $06, nRst, $06
	dc.b	nE5, $06, nG5, $0C, nF5, $0C, nRst, $06, nD5, $1E, nRst, $30
	dc.b	nA5, $0C, nF5, $06, nD5, $06, nRst, $06, nA5, $06, nRst, $06
	dc.b	nG5, $06, nRst, $06, nE5, $06, nC5, $0C, nC6, $0C, nB5, $06
	dc.b	nBb5, $30, nRst, $24, nA5, $06, nC6, $06, nD6, $06, nF5, $06
	dc.b	nRst, $18, nF5, $06, nE5, $06, nD5, $06, nRst, $1E, nA5, $06
	dc.b	nC6, $06, nD6, $06, nF5, $06, nRst, $18, nF5, $06, nE5, $06
	dc.b	nD5, $06, nRst, $1E, nA5, $06, nC6, $06, nD6, $06, nF5, $06
	dc.b	nRst, $18, nF5, $06, nE5, $06, nD5, $06, nRst, $1E, nD5, $06
	dc.b	nE5, $06, nF5, $06, nA5, $12, nG5, $06, nRst, $06, nG5, $12
	dc.b	nC6, $12, nBb5, $06, nRst, $06, nBb5, $12, nA5, $18, nRst, $06
	dc.b	nC6, $0C, nD6, $06, nG5, $12, nF5, $0C, nRst, $06, nE5, $0C
	dc.b	nD5, $12, nRst, $06, nA5, $12, nG5, $2A, nRst, $0C, nA5, $18
	dc.b	nRst, $06, nC6, $0C, nD6, $06, nG5, $12, nF5, $0C, nRst, $06
	dc.b	nE5, $0C, nD5, $0C, nRst, $06, nA5, $36, nRst, $18, nA5, $0C
	dc.b	nF5, $06, nD5, $06, nRst, $06, nA5, $06, nF5, $06, nG5, $0C
	dc.b	nRst, $06, nE5, $06, nC5, $06, nRst, $06, nE5, $06, nG5, $0C
	dc.b	nF5, $0C, nRst, $06, nD5, $1E, nRst, $30, nA5, $0C, nF5, $06
	dc.b	nD5, $06, nRst, $06, nA5, $06, nRst, $06, nG5, $06, nRst, $06
	dc.b	nE5, $06, nC5, $0C, nC6, $0C, nB5, $06, nBb5, $30, nRst, $24
	dc.b	nA5, $06, nC6, $06, nD6, $06, nF5, $06, nRst, $18, nF5, $06
	dc.b	nE5, $06, nD5, $06, nRst, $1E, nA5, $06, nC6, $06, nD6, $06
	dc.b	nF5, $06, nRst, $18, nF5, $06, nE5, $06, nD5, $06, nRst, $1E
	dc.b	nA5, $06, nC6, $06, nD6, $06, nF5, $06, nRst, $18, nF5, $06
	dc.b	nE5, $06, nD5, $06, nRst, $1E, nD5, $06, nE5, $06, nF5, $06
	dc.b	nA5, $12, nG5, $06, nRst, $06, nG5, $12, nC6, $12, nBb5, $06
	dc.b	nRst, $06, nBb5, $12
	smpsJump            LLZ3_Jump04

; FM2 Data
LLZ3_FM2:
	smpsSetvoice        $00
	smpsPan             panCenter, $00
	smpsAlterNote       $00

LLZ3_Jump03:
	dc.b	nD4, $06, nA3, $06, nF3, $06, nD3, $06, nRst, $06, nA3, $06
	dc.b	nD4, $0C, nG3, $0C, nE3, $06, nC3, $0C, nG3, $06, nC4, $06
	dc.b	nB3, $06, nBb3, $03, nRst, $03, nBb3, $06, nA3, $06, nF3, $06
	dc.b	nG3, $03, nRst, $03, nG3, $06, nF3, $06, nD3, $06, nE3, $06
	dc.b	nF3, $06, nG3, $03, nRst, $03, nG3, $0C, nA3, $06, nBb3, $0C
	dc.b	nD4, $06, nA3, $06, nF3, $06, nD3, $06, nRst, $06, nA3, $06
	dc.b	nD4, $0C, nG3, $0C, nE3, $06, nC3, $0C, nG3, $06, nC4, $06
	dc.b	nB3, $06, nBb3, $03, nRst, $03, nBb3, $06, nA3, $06, nF3, $06
	dc.b	nG3, $03, nRst, $03, nG3, $06, nF3, $06, nD3, $06, nE3, $06
	dc.b	nF3, $06, nG3, $03, nRst, $03, nG3, $0C, nA3, $06, nF3, $0C
	dc.b	nD4, $06, nF3, $06, nG3, $06, nD3, $06, nRst, $06, nE3, $06
	dc.b	nA3, $06, nF3, $06, nG3, $06, nC4, $06, nF4, $06, nE4, $06
	dc.b	nRst, $06, nC4, $06, nF4, $06, nE4, $06, nBb3, $06, nF3, $06
	dc.b	nC4, $06, nBb3, $0C, nF3, $06, nF4, $06, nBb3, $06, nRst, $06
	dc.b	nD3, $06, nE3, $06, nF3, $06, nG3, $06, nF3, $06, nA3, $06
	dc.b	nC4, $06, nD4, $06, nF3, $06, nG3, $06, nD3, $06, nRst, $06
	dc.b	nF3, $06, nA3, $06, nF3, $06, nG3, $06, nC4, $06, nF4, $0C
	dc.b	nE4, $06, nC4, $06, nEb4, $06, nBb3, $06, nRst, $06, nF3, $06
	dc.b	nC4, $06, nBb3, $0C, nF3, $06, nF4, $06, nBb3, $06, nRst, $06
	dc.b	nD3, $06, nE3, $06, nF3, $06, nG3, $06, nF3, $06, nA3, $06
	dc.b	nC4, $06, nD4, $06, nRst, $06, nF3, $06, nD3, $06, nRst, $06
	dc.b	nG3, $06, nD3, $06, nA3, $06, nRst, $06, nD3, $06, nC4, $06
	dc.b	nD3, $06, nD4, $06, nD3, $06, nF4, $06, nD4, $06, nF3, $06
	dc.b	nRst, $06, nD4, $06, nF3, $06, nRst, $06, nF3, $06, nC4, $06
	dc.b	nD4, $06, nRst, $06, nF3, $06, nC4, $06, nD4, $06, nF4, $06
	dc.b	nF3, $06, nA3, $06, nD3, $06, nBb3, $06, nRst, $06, nD3, $06
	dc.b	nF3, $06, nRst, $06, nD3, $06, nG3, $06, nF3, $06, nRst, $06
	dc.b	nBb3, $06, nA3, $06, nF3, $06, nC4, $06, nBb3, $06, nA3, $06
	dc.b	nF3, $06, nBb2, $12, nF3, $06, nBb3, $06, nE3, $12, nEb3, $0C
	dc.b	nBb3, $06, nEb4, $0C, nD4, $06, nCs4, $0C, nD4, $06, nA3, $06
	dc.b	nF3, $06, nD3, $06, nRst, $06, nA3, $06, nD4, $0C, nG3, $0C
	dc.b	nE3, $06, nC3, $0C, nG3, $06, nC4, $06, nB3, $06, nBb3, $03
	dc.b	nRst, $03, nBb3, $06, nA3, $06, nF3, $06, nG3, $03, nRst, $03
	dc.b	nG3, $06, nF3, $06, nD3, $06, nE3, $06, nF3, $06, nG3, $03
	dc.b	nRst, $03, nG3, $0C, nA3, $06, nBb3, $0C, nD4, $06, nA3, $06
	dc.b	nF3, $06, nD3, $06, nRst, $06, nA3, $06, nD4, $0C, nG3, $0C
	dc.b	nE3, $06, nC3, $0C, nG3, $06, nC4, $06, nB3, $06, nBb3, $03
	dc.b	nRst, $03, nBb3, $06, nA3, $06, nF3, $06, nG3, $03, nRst, $03
	dc.b	nG3, $06, nF3, $06, nD3, $06, nE3, $06, nF3, $06, nG3, $03
	dc.b	nRst, $03, nG3, $0C, nA3, $06, nF3, $0C, nD4, $06, nF3, $06
	dc.b	nG3, $06, nD3, $06, nRst, $06, nE3, $06, nA3, $06, nF3, $06
	dc.b	nG3, $06, nC4, $06, nF4, $06, nE4, $06, nRst, $06, nC4, $06
	dc.b	nF4, $06, nE4, $06, nBb3, $06, nF3, $06, nC4, $06, nBb3, $0C
	dc.b	nF3, $06, nF4, $06, nBb3, $06, nRst, $06, nD3, $06, nE3, $06
	dc.b	nF3, $06, nG3, $06, nF3, $06, nA3, $06, nC4, $06, nD4, $06
	dc.b	nF3, $06, nG3, $06, nD3, $06, nRst, $06, nF3, $06, nA3, $06
	dc.b	nF3, $06, nG3, $06, nC4, $06, nF4, $0C, nE4, $06, nC4, $06
	dc.b	nEb4, $06, nBb3, $06, nRst, $06, nF3, $06, nC4, $06, nBb3, $0C
	dc.b	nF3, $06, nF4, $06, nBb3, $06, nRst, $06, nD3, $06, nE3, $06
	dc.b	nF3, $06, nG3, $06, nF3, $06, nA3, $06, nC4, $06, nD4, $06
	dc.b	nRst, $06, nF3, $06, nD3, $06, nRst, $06, nG3, $06, nD3, $06
	dc.b	nA3, $06, nRst, $06, nD3, $06, nC4, $06, nD3, $06, nD4, $06
	dc.b	nD3, $06, nF4, $06, nD4, $06, nF3, $06, nRst, $06, nD4, $06
	dc.b	nF3, $06, nRst, $06, nF3, $06, nC4, $06, nD4, $06, nRst, $06
	dc.b	nF3, $06, nC4, $06, nD4, $06, nF4, $06, nF3, $06, nA3, $06
	dc.b	nD3, $06, nBb3, $06, nRst, $06, nD3, $06, nF3, $06, nRst, $06
	dc.b	nD3, $06, nG3, $06, nF3, $06, nRst, $06, nBb3, $06, nA3, $06
	dc.b	nF3, $06, nC4, $06, nBb3, $06, nA3, $06, nF3, $06, nBb2, $12
	dc.b	nF3, $06, nBb3, $06, nE3, $12, nEb3, $0C, nBb3, $06, nEb4, $0C
	dc.b	nD4, $06, nCs4, $0C
	smpsJump            LLZ3_Jump03

; FM3 Data
LLZ3_FM3:
	smpsPan             panRight, $00
	smpsAlterNote       $00
	smpsSetvoice        $02

LLZ3_Jump02:
	dc.b	nRst, $0C, nD4, $06, nRst, $06, nD4, $06, nF4, $06, nA4, $06
	dc.b	nD5, $06, nRst, $0C, nC4, $06, nRst, $06, nC5, $06, nG4, $06
	dc.b	nE4, $06, nC4, $06, nRst, $06, nF4, $06, nBb4, $06, nRst, $06
	dc.b	nE4, $06, nRst, $06, nF4, $06, nRst, $06, nE4, $06, nRst, $06
	dc.b	nD4, $06, nC4, $06, nF4, $06, nE4, $06, nG4, $06, nF4, $06
	dc.b	nRst, $0C, nA4, $06, nRst, $06, nD4, $06, nF4, $06, nA4, $06
	dc.b	nD5, $06, nRst, $0C, nC4, $06, nRst, $06, nC5, $06, nG4, $06
	dc.b	nE4, $06, nC4, $06, nRst, $06, nF4, $06, nBb4, $06, nRst, $06
	dc.b	nE4, $06, nRst, $06, nF4, $06, nRst, $06, nE4, $06, nRst, $06
	dc.b	nC5, $06, nRst, $06, nC4, $06, nE4, $06, nF4, $06, nG4, $06
	dc.b	nRst, $06, nD5, $06, nA4, $06, nRst, $06, nF4, $06, nD4, $06
	dc.b	nRst, $06, nC5, $06, nRst, $06, nG4, $06, nRst, $06, nG4, $06
	dc.b	nRst, $06, nG4, $06, nC5, $06, nRst, $12, nD5, $06, nBb4, $06
	dc.b	nF4, $06, nD4, $06, nRst, $06, nF4, $06, nRst, $06, nA4, $06
	dc.b	nRst, $06, nF4, $06, nRst, $06, nF4, $06, nRst, $06, nG4, $06
	dc.b	nRst, $06, nD5, $06, nA4, $06, nRst, $06, nF4, $06, nD4, $06
	dc.b	nRst, $06, nG4, $06, nRst, $06, nG4, $06, nRst, $06, nF5, $06
	dc.b	nE5, $06, nD5, $06, nC5, $06, nBb4, $06, nRst, $06, nBb4, $06
	dc.b	nRst, $06, nG4, $06, nG4, $06, nBb4, $06, nRst, $06, nC5, $06
	dc.b	nRst, $06, nBb4, $06, nRst, $06, nC5, $06, nRst, $06, nC5, $06
	dc.b	nD5, $06, nA4, $06, nF4, $06, nRst, $06, nA4, $06, nRst, $18
	dc.b	nA4, $06, nRst, $06, nD4, $06, nA4, $06, nRst, $06, nG4, $06
	dc.b	nRst, $06, nF4, $06, nRst, $06, nA4, $06, nRst, $06, nF4, $06
	dc.b	nRst, $18, nF4, $06, nRst, $06, nA4, $06, nRst, $06, nA4, $06
	dc.b	nC5, $06, nRst, $06, nD5, $06, nRst, $06, nF4, $06, nRst, $06
	dc.b	nBb4, $06, nRst, $18, nF4, $06, nRst, $06, nBb4, $06, nRst, $06
	dc.b	nBb4, $06, nC5, $06, nRst, $06, nBb4, $06, nRst, $06, nBb4, $06
	dc.b	nF4, $06, nRst, $06, nC5, $06, nRst, $06, nE4, $06, nRst, $0C
	dc.b	nEb5, $06, nBb4, $06, nRst, $06, nG4, $06, nRst, $06, nA4, $06
	dc.b	nBb4, $06, nRst, $12, nA4, $06, nRst, $06, nD4, $06, nF4, $06
	dc.b	nA4, $06, nD5, $06, nRst, $0C, nG4, $06, nRst, $06, nC5, $06
	dc.b	nG4, $06, nE4, $06, nC4, $06, nRst, $06, nF4, $06, nBb4, $06
	dc.b	nRst, $06, nBb4, $06, nRst, $06, nBb4, $06, nRst, $06, nE4, $06
	dc.b	nRst, $06, nD4, $06, nC4, $06, nF4, $06, nE4, $06, nG4, $06
	dc.b	nF4, $06, nRst, $0C, nD4, $06, nRst, $06, nD4, $06, nF4, $06
	dc.b	nA4, $06, nD5, $06, nRst, $0C, nG4, $06, nRst, $06, nC5, $06
	dc.b	nG4, $06, nE4, $06, nC4, $06, nRst, $06, nF4, $06, nBb4, $06
	dc.b	nRst, $06, nBb4, $06, nRst, $06, nBb4, $06, nRst, $06, nE4, $06
	dc.b	nRst, $06, nC5, $06, nRst, $06, nC4, $06, nE4, $06, nF4, $06
	dc.b	nG4, $06, nRst, $06, nD5, $06, nA4, $06, nRst, $06, nF4, $06
	dc.b	nD4, $06, nRst, $06, nC5, $06, nRst, $06, nG4, $06, nRst, $06
	dc.b	nG4, $06, nRst, $06, nG4, $06, nC5, $06, nRst, $12, nD5, $06
	dc.b	nBb4, $06, nF4, $06, nD4, $06, nRst, $06, nF4, $06, nRst, $06
	dc.b	nA4, $06, nRst, $06, nF4, $06, nRst, $06, nBb4, $06, nRst, $06
	dc.b	nC5, $06, nRst, $06, nD5, $06, nA4, $06, nRst, $06, nF4, $06
	dc.b	nD4, $06, nRst, $06, nC5, $06, nRst, $06, nG4, $06, nRst, $06
	dc.b	nF5, $06, nE5, $06, nD5, $06, nC5, $06, nF4, $06, nRst, $06
	dc.b	nF4, $06, nRst, $06, nC5, $06, nG4, $06, nF4, $06, nRst, $06
	dc.b	nF4, $06, nRst, $06, nF4, $06, nRst, $06, nG4, $06, nRst, $06
	dc.b	nC5, $06, nD5, $06, nA4, $06, nF4, $06, nRst, $06, nA4, $06
	dc.b	nRst, $18, nF4, $06, nRst, $06, nA4, $06, nD4, $06, nRst, $06
	dc.b	nD4, $06, nRst, $06, nD4, $06, nRst, $06, nA4, $06, nRst, $06
	dc.b	nF4, $06, nRst, $18, nD5, $06, nRst, $06, nF4, $06, nRst, $06
	dc.b	nF4, $06, nF4, $06, nRst, $06, nF4, $06, nRst, $06, nF4, $06
	dc.b	nRst, $06, nBb4, $06, nRst, $18, nF4, $06, nRst, $06, nBb4, $06
	dc.b	nRst, $06, nBb4, $06, nC5, $06, nRst, $06, nBb4, $06, nRst, $06
	dc.b	nBb4, $06, nF4, $06, nRst, $06, nC5, $06, nRst, $06, nE4, $06
	dc.b	nRst, $0C, nEb5, $06, nBb4, $06, nRst, $06, nG4, $06, nRst, $06
	dc.b	nA4, $06, nBb4, $06, nRst, $06
	smpsJump            LLZ3_Jump02

; FM4 Data
LLZ3_FM4:
	smpsPan             panLeft, $00
	smpsAlterNote       $00
	smpsSetvoice        $02

LLZ3_Jump01:
	dc.b	nRst, $0C, nD4, $06, nRst, $06, nD4, $06, nF4, $06, nA4, $06
	dc.b	nD5, $06, nRst, $0C, nC4, $06, nRst, $06, nC5, $06, nG4, $06
	dc.b	nE4, $06, nC4, $06, nRst, $06, nBb4, $06, nF4, $06, nRst, $06
	dc.b	nE4, $06, nRst, $06, nF4, $06, nRst, $06, nE4, $06, nRst, $06
	dc.b	nD4, $06, nC4, $06, nF4, $06, nE4, $06, nG4, $06, nF4, $06
	dc.b	nRst, $0C, nD4, $06, nRst, $06, nD4, $06, nF4, $06, nA4, $06
	dc.b	nD5, $06, nRst, $0C, nG4, $06, nRst, $06, nC5, $06, nG4, $06
	dc.b	nE4, $06, nC4, $06, nRst, $06, nBb4, $06, nF4, $06, nRst, $06
	dc.b	nBb4, $06, nRst, $06, nF4, $06, nRst, $06, nA4, $06, nRst, $06
	dc.b	nE4, $06, nRst, $06, nC4, $06, nE4, $06, nF4, $06, nG4, $06
	dc.b	nRst, $06, nD5, $06, nA4, $06, nRst, $06, nF4, $06, nD4, $06
	dc.b	nRst, $06, nC5, $06, nRst, $06, nC5, $06, nRst, $06, nC5, $06
	dc.b	nRst, $06, nG4, $06, nC5, $06, nRst, $12, nD5, $06, nBb4, $06
	dc.b	nF4, $06, nD4, $06, nRst, $06, nBb4, $06, nRst, $06, nA4, $06
	dc.b	nRst, $06, nBb4, $06, nRst, $06, nBb4, $06, nRst, $06, nC5, $06
	dc.b	nRst, $06, nD5, $06, nA4, $06, nRst, $06, nF4, $06, nD4, $06
	dc.b	nRst, $06, nG4, $06, nRst, $06, nG4, $06, nRst, $06, nF5, $06
	dc.b	nE5, $06, nD5, $06, nC5, $06, nF4, $06, nRst, $06, nF4, $06
	dc.b	nRst, $06, nG4, $06, nC5, $06, nBb4, $06, nRst, $06, nC5, $06
	dc.b	nRst, $06, nBb4, $06, nRst, $06, nC5, $06, nRst, $06, nC5, $06
	dc.b	nD5, $06, nA4, $06, nF4, $06, nRst, $06, nF4, $06, nRst, $18
	dc.b	nA4, $06, nRst, $06, nA4, $06, nA4, $06, nRst, $06, nD4, $06
	dc.b	nRst, $06, nF4, $06, nRst, $06, nA4, $06, nRst, $06, nC5, $06
	dc.b	nRst, $18, nD5, $06, nRst, $06, nA4, $06, nRst, $06, nA4, $06
	dc.b	nF4, $06, nRst, $06, nF4, $06, nRst, $06, nBb4, $06, nRst, $06
	dc.b	nBb4, $06, nRst, $18, nC5, $06, nRst, $06, nBb4, $06, nRst, $06
	dc.b	nBb4, $06, nF4, $06, nRst, $06, nBb4, $06, nRst, $06, nBb4, $06
	dc.b	nF4, $06, nRst, $06, nC5, $06, nRst, $06, nE4, $06, nRst, $0C
	dc.b	nEb5, $06, nBb4, $06, nRst, $06, nG4, $06, nRst, $06, nA4, $06
	dc.b	nBb4, $06, nRst, $12, nA4, $06, nRst, $06, nD4, $06, nF4, $06
	dc.b	nA4, $06, nD5, $06, nRst, $0C, nG4, $06, nRst, $06, nC5, $06
	dc.b	nG4, $06, nE4, $06, nC4, $06, nRst, $06, nBb4, $06, nF4, $06
	dc.b	nRst, $06, nBb4, $06, nRst, $06, nBb4, $06, nRst, $06, nE4, $06
	dc.b	nRst, $06, nD4, $06, nC4, $06, nF4, $06, nE4, $06, nG4, $06
	dc.b	nF4, $06, nRst, $0C, nA4, $06, nRst, $06, nD4, $06, nF4, $06
	dc.b	nA4, $06, nD5, $06, nRst, $0C, nC4, $06, nRst, $06, nC5, $06
	dc.b	nG4, $06, nE4, $06, nC4, $06, nRst, $06, nBb4, $06, nF4, $06
	dc.b	nRst, $06, nE4, $06, nRst, $06, nBb4, $06, nRst, $06, nA4, $06
	dc.b	nRst, $06, nE4, $06, nRst, $06, nC4, $06, nE4, $06, nF4, $06
	dc.b	nG4, $06, nRst, $06, nD5, $06, nA4, $06, nRst, $06, nF4, $06
	dc.b	nD4, $06, nRst, $06, nC5, $06, nRst, $06, nC5, $06, nRst, $06
	dc.b	nC5, $06, nRst, $06, nG4, $06, nC5, $06, nRst, $12, nD5, $06
	dc.b	nBb4, $06, nF4, $06, nD4, $06, nRst, $06, nBb4, $06, nRst, $06
	dc.b	nA4, $06, nRst, $06, nBb4, $06, nRst, $06, nF4, $06, nRst, $06
	dc.b	nG4, $06, nRst, $06, nD5, $06, nA4, $06, nRst, $06, nF4, $06
	dc.b	nD4, $06, nRst, $06, nC5, $06, nRst, $06, nG4, $06, nRst, $06
	dc.b	nF5, $06, nE5, $06, nD5, $06, nC5, $06, nBb4, $06, nRst, $06
	dc.b	nBb4, $06, nRst, $06, nC5, $06, nC5, $06, nF4, $06, nRst, $06
	dc.b	nF4, $06, nRst, $06, nF4, $06, nRst, $06, nG4, $06, nRst, $06
	dc.b	nC5, $06, nD5, $06, nA4, $06, nF4, $06, nRst, $06, nF4, $06
	dc.b	nRst, $18, nF4, $06, nRst, $06, nD4, $06, nD4, $06, nRst, $06
	dc.b	nG4, $06, nRst, $06, nD4, $06, nRst, $06, nA4, $06, nRst, $06
	dc.b	nC5, $06, nRst, $18, nF4, $06, nRst, $06, nF4, $06, nRst, $06
	dc.b	nF4, $06, nC5, $06, nRst, $06, nD5, $06, nRst, $06, nBb4, $06
	dc.b	nRst, $06, nBb4, $06, nRst, $18, nC5, $06, nRst, $06, nBb4, $06
	dc.b	nRst, $06, nBb4, $06, nF4, $06, nRst, $06, nBb4, $06, nRst, $06
	dc.b	nBb4, $06, nF4, $06, nRst, $06, nC5, $06, nRst, $06, nE4, $06
	dc.b	nRst, $0C, nEb5, $06, nBb4, $06, nRst, $06, nG4, $06, nRst, $06
	dc.b	nA4, $06, nBb4, $06, nRst, $06
	smpsJump            LLZ3_Jump01

; PSG1 Data
LLZ3_PSG1:
	smpsModSet          $00, $02, $02, $02
	smpsModOn
	smpsPSGvoice        $00
	smpsModSet          $00, $02, $02, $02
	smpsAlterNote       $00

LLZ3_Jump07:
	dc.b	nRst, $60, nBb1, $12, nRst, $06, nD2, $12, nE2, $2A, nRst, $6C
	dc.b	nBb1, $0C, nRst, $06, nF2, $1E, nE2, $18, nD2, $06, nRst, $06
	dc.b	nC2, $06, nRst, $66, nD2, $0C, nRst, $06, nBb1, $1E, nRst, $78
	dc.b	nE2, $0C, nEb2, $06, nD2, $36, nRst, $1E, nF1, $06, nA1, $06
	dc.b	nE2, $06, nD2, $06, nRst, $18, nD2, $06, nC2, $06, nA1, $06
	dc.b	nRst, $1E, nA1, $06, nC2, $06, nF2, $06, nD2, $06, nRst, $18
	dc.b	nD2, $06, nC2, $06, nA1, $06, nRst, $1E, nD2, $06, nF2, $06
	dc.b	nD2, $06, nBb1, $06, nRst, $18, nD2, $06, nC2, $06, nBb1, $06
	dc.b	nRst, $1E, nF1, $06, nBb1, $06, nA1, $06, nF2, $12, nE2, $06
	dc.b	nRst, $06, nE2, $12, nG2, $12, nEb2, $06, nRst, $06, nG2, $06
	dc.b	nF2, $0C, nRst, $60, nBb1, $12, nRst, $06, nD2, $12, nE2, $2A
	dc.b	nRst, $6C, nBb1, $0C, nRst, $06, nF2, $1E, nE2, $18, nD2, $06
	dc.b	nRst, $06, nC2, $06, nRst, $66, nD2, $0C, nRst, $06, nBb1, $1E
	dc.b	nRst, $78, nE2, $0C, nEb2, $06, nD2, $36, nRst, $1E, nF1, $06
	dc.b	nA1, $06, nE2, $06, nD2, $06, nRst, $18, nD2, $06, nC2, $06
	dc.b	nA1, $06, nRst, $1E, nA1, $06, nC2, $06, nF2, $06, nD2, $06
	dc.b	nRst, $18, nD2, $06, nC2, $06, nA1, $06, nRst, $1E, nD2, $06
	dc.b	nF2, $06, nD2, $06, nBb1, $06, nRst, $18, nD2, $06, nC2, $06
	dc.b	nBb1, $06, nRst, $1E, nF1, $06, nBb1, $06, nA1, $06, nF2, $12
	dc.b	nE2, $06, nRst, $06, nE2, $12, nG2, $12, nEb2, $06, nRst, $06
	dc.b	nG2, $06, nF2, $0C
	smpsJump            LLZ3_Jump07

; PSG2 Data
LLZ3_PSG2:
	smpsModSet          $00, $02, $02, $02
	smpsModOn
	smpsPSGvoice        $00
	smpsModSet          $00, $02, $02, $02
	smpsAlterNote       $00

LLZ3_Jump06:
	dc.b	nA2, $18, nRst, $06, nC3, $0C, nD3, $06, nG2, $12, nF2, $0C
	dc.b	nRst, $06, nE2, $0C, nD2, $12, nRst, $06, nA2, $12, nG2, $2A
	dc.b	nRst, $0C, nA2, $18, nRst, $06, nC3, $0C, nD3, $06, nG2, $12
	dc.b	nF2, $0C, nRst, $06, nE2, $0C, nD2, $0C, nRst, $06, nA2, $36
	dc.b	nRst, $18, nA2, $0C, nF2, $06, nD2, $06, nRst, $06, nA2, $06
	dc.b	nF2, $06, nG2, $0C, nRst, $06, nE2, $06, nC2, $06, nRst, $06
	dc.b	nE2, $06, nG2, $0C, nF2, $0C, nRst, $06, nD2, $1E, nRst, $30
	dc.b	nA2, $0C, nF2, $06, nD2, $06, nRst, $06, nA2, $06, nRst, $06
	dc.b	nG2, $06, nRst, $06, nE2, $06, nC2, $0C, nC3, $0C, nB2, $06
	dc.b	nBb2, $30, nRst, $24, nA2, $06, nC3, $06, nD3, $06, nF2, $06
	dc.b	nRst, $18, nF2, $06, nE2, $06, nD2, $06, nRst, $1E, nA2, $06
	dc.b	nC3, $06, nD3, $06, nF2, $06, nRst, $18, nF2, $06, nE2, $06
	dc.b	nD2, $06, nRst, $1E, nA2, $06, nC3, $06, nD3, $06, nF2, $06
	dc.b	nRst, $18, nF2, $06, nE2, $06, nD2, $06, nRst, $1E, nD2, $06
	dc.b	nE2, $06, nF2, $06, nA2, $12, nG2, $06, nRst, $06, nG2, $12
	dc.b	nC3, $12, nBb2, $06, nRst, $06, nBb2, $12, nA2, $18, nRst, $06
	dc.b	nC3, $0C, nD3, $06, nG2, $12, nF2, $0C, nRst, $06, nE2, $0C
	dc.b	nD2, $12, nRst, $06, nA2, $12, nG2, $2A, nRst, $0C, nA2, $18
	dc.b	nRst, $06, nC3, $0C, nD3, $06, nG2, $12, nF2, $0C, nRst, $06
	dc.b	nE2, $0C, nD2, $0C, nRst, $06, nA2, $36, nRst, $18, nA2, $0C
	dc.b	nF2, $06, nD2, $06, nRst, $06, nA2, $06, nF2, $06, nG2, $0C
	dc.b	nRst, $06, nE2, $06, nC2, $06, nRst, $06, nE2, $06, nG2, $0C
	dc.b	nF2, $0C, nRst, $06, nD2, $1E, nRst, $30, nA2, $0C, nF2, $06
	dc.b	nD2, $06, nRst, $06, nA2, $06, nRst, $06, nG2, $06, nRst, $06
	dc.b	nE2, $06, nC2, $0C, nC3, $0C, nB2, $06, nBb2, $30, nRst, $24
	dc.b	nA2, $06, nC3, $06, nD3, $06, nF2, $06, nRst, $18, nF2, $06
	dc.b	nE2, $06, nD2, $06, nRst, $1E, nA2, $06, nC3, $06, nD3, $06
	dc.b	nF2, $06, nRst, $18, nF2, $06, nE2, $06, nD2, $06, nRst, $1E
	dc.b	nA2, $06, nC3, $06, nD3, $06, nF2, $06, nRst, $18, nF2, $06
	dc.b	nE2, $06, nD2, $06, nRst, $1E, nD2, $06, nE2, $06, nF2, $06
	dc.b	nA2, $12, nG2, $06, nRst, $06, nG2, $12, nC3, $12, nBb2, $06
	dc.b	nRst, $06, nBb2, $12
	smpsJump            LLZ3_Jump06

; PSG3 Data
LLZ3_PSG3:
	smpsPSGform         $E7
	smpsAlterNote       $00

LLZ3_Jump05:
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $0C, nMaxPSG, $06, nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $06
	dc.b	nMaxPSG, $12, nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C
	dc.b	nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $06, nMaxPSG, $0C
	dc.b	nMaxPSG, $06, nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $06, nMaxPSG, $12
	dc.b	nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C
	dc.b	nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $06, nMaxPSG, $0C, nMaxPSG, $06
	dc.b	nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $06, nMaxPSG, $12, nMaxPSG, $0C
	dc.b	nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C
	dc.b	nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $06, nMaxPSG, $0C, nMaxPSG, $06, nMaxPSG, $0C
	dc.b	nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $06, nMaxPSG, $12, nMaxPSG, $0C, nMaxPSG, $0C
	dc.b	nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C
	dc.b	nMaxPSG, $0C, nMaxPSG, $06, nMaxPSG, $0C, nMaxPSG, $06, nMaxPSG, $0C, nMaxPSG, $0C
	dc.b	nMaxPSG, $0C, nMaxPSG, $06, nMaxPSG, $12, nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C
	dc.b	nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C
	dc.b	nMaxPSG, $06, nMaxPSG, $0C, nMaxPSG, $06, nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C
	dc.b	nMaxPSG, $06, nMaxPSG, $12, nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C
	dc.b	nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $06
	dc.b	nMaxPSG, $0C, nMaxPSG, $06, nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $06
	dc.b	nMaxPSG, $12, nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C
	dc.b	nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $06, nMaxPSG, $0C
	dc.b	nMaxPSG, $06, nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $06, nMaxPSG, $12
	dc.b	nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C
	dc.b	nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $06, nMaxPSG, $0C, nMaxPSG, $06
	dc.b	nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $06, nMaxPSG, $12, nMaxPSG, $0C
	dc.b	nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C
	dc.b	nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $06, nMaxPSG, $0C, nMaxPSG, $06, nMaxPSG, $0C
	dc.b	nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $06, nMaxPSG, $12, nMaxPSG, $0C, nMaxPSG, $0C
	dc.b	nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C
	dc.b	nMaxPSG, $0C, nMaxPSG, $06, nMaxPSG, $0C, nMaxPSG, $06, nMaxPSG, $0C, nMaxPSG, $0C
	dc.b	nMaxPSG, $0C, nMaxPSG, $06, nMaxPSG, $12, nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C
	dc.b	nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C
	dc.b	nMaxPSG, $06, nMaxPSG, $0C, nMaxPSG, $06, nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C
	dc.b	nMaxPSG, $06, nMaxPSG, $12, nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C
	dc.b	nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $0C, nMaxPSG, $06
	smpsJump            LLZ3_Jump05

LLZ3_Voices:
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
;	$20
;	$5B, $00, $31, $01, 	$1E, $1F, $1F, $1F, 	$0C, $11, $11, $0C
;	$02, $0C, $02, $00, 	$1D, $25, $36, $06, 	$11, $2E, $10, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $00, $05
	smpsVcCoarseFreq    $01, $01, $00, $0B
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $11, $11, $0C
	smpsVcDecayRate2    $00, $02, $0C, $02
	smpsVcDecayLevel    $00, $03, $02, $01
	smpsVcReleaseRate   $06, $06, $05, $0D
	smpsVcTotalLevel    $00, $10, $2E, $11

;	Voice $02
;	$2B
;	$5A, $01, $31, $01, 	$18, $1F, $3F, $1F, 	$0E, $11, $11, $0C
;	$03, $0C, $05, $01, 	$1C, $25, $36, $17, 	$0D, $2C, $15, $08
	smpsVcAlgorithm     $03
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $00, $05
	smpsVcCoarseFreq    $01, $01, $01, $0A
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $3F, $1F, $18
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $11, $11, $0E
	smpsVcDecayRate2    $01, $05, $0C, $03
	smpsVcDecayLevel    $01, $03, $02, $01
	smpsVcReleaseRate   $07, $06, $05, $0C
	smpsVcTotalLevel    $08, $15, $2C, $0D

