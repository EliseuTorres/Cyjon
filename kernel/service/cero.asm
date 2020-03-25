;===============================================================================
; Copyright (C) by Blackend.dev
;===============================================================================

	;-----------------------------------------------------------------------
	; stałe, zmienne, globalne, struktury, obiekty
	;-----------------------------------------------------------------------
	%include	"kernel/service/cero/config.asm"
	;-----------------------------------------------------------------------

service_cero:
	;-----------------------------------------------------------------------
	; inicjalizacja interfejsu graficznego
	;-----------------------------------------------------------------------
	%include	"kernel/service/cero/init.asm"

.loop:
	; sprawdż wiadomości przychodzące
	call	service_cero_ipc

	; aktualizuj etykietę "zegar"
	call	service_cero_clock

	; powrót do głównej pętli
	jmp	.loop

	;-----------------------------------------------------------------------
	%include	"kernel/service/cero/data.asm"
	%include	"kernel/service/cero/clock.asm"
	%include	"kernel/service/cero/ipc.asm"
	;-----------------------------------------------------------------------
	%include	"library/bosu.asm"
	;-----------------------------------------------------------------------