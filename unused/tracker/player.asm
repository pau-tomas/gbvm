include "include/hardware.inc"

SINGLE_INTERRUPT EQU 1
STACK_SIZE EQU $7A

SECTION "Vblank interrupt", ROM0[$0040]
    reti

SECTION "LCD controller status interrupt", ROM0[$0048]
    jp isr_wrapper

SECTION "Timer overflow interrupt", ROM0[$0050]
    jp isr_timer

SECTION "Serial transfer completion interrupt", ROM0[$0058]
    jp isr_serial

SECTION "P10-P13 signal low edge interrupt", ROM0[$0060]
    reti

SECTION "Stack", HRAM[$FFFE - STACK_SIZE]
    ds STACK_SIZE

SECTION "init", ROM0[$0100]
    nop
    jp $0150

SECTION "nintendo_logo", ROM0[$0104]
    NINTENDO_LOGO

SECTION "romname", ROM0[$0134]
; $0134 - $013E: The title, in upper-case letters, followed by zeroes.
DB "HUGE"
DS 7 ; padding
; $013F - $0142: The manufacturer code. Empty for now
DS 4
DS 1
; $0144 - $0145: "New" Licensee Code, a two character name.
DB "NF"

SECTION "pause control", WRAM0
is_player_paused:: db
do_resume_player:: db

SECTION "sample playback", WRAM0
_play_sample:: dw
_play_length:: dw

call_counter: db

; Initialization
SECTION "main", ROM0[$0150]
    jp _init

sound_cut:
    ld hl, rAUD1ENV
    ld a, b
    add a
    add a
    add b
    
    add l
    ld l, a
    adc h
    sub l
    ld h, a

    ld [hl], 0
    ld a, b
    cp 2
    ret z

    inc hl
    inc hl
    ld [hl], %11111111
    ret

isr_serial:
    push af
    push hl
    push bc
    push de

    ld b, 0
    call sound_cut
    ld b, 1
    call sound_cut
    ld b, 2
    call sound_cut
    ld b, 3
    call sound_cut
    
    xor a
    ld [do_resume_player], a
    inc a
    ld [is_player_paused], a

.loop:
    ld a, [do_resume_player]
    or a
    jr z, .loop
    
    xor a
    ld [is_player_paused], a

    dec a
    ld [_hUGE_current_wave], a

    pop de
    pop bc
    pop hl
    pop af
    reti

isr_wrapper:
    push af
    push hl
    push bc
    push de
    call _hUGE_dosound
    pop de
    pop bc
    pop hl
    pop af
    reti

_init:
    ld a, 0
    ld [rIF], a
    ld a, IEF_VBLANK
    ld [rIE], a
    halt
    nop

    ; Enable sound globally
    ld a, $80
    ld [rAUDENA], a
    ; Enable all channels in stereo
    ld a, $FF
    ld [rAUDTERM], a
    ; Set volume
    ld a, $77
    ld [rAUDVOL], a

    ; cleanup sample player
    ld hl, _play_sample
    xor a
    ld [hl+], a
    ld [hl+], a
    ; _play_length
    ld [hl+], a
    ld [hl+], a
    ;  call_counter
    ld [hl], a
    
    ld [is_player_paused], a
    ld [do_resume_player], a

    ; setup timer
    ld a, $c0
    ldh [rTMA], a
    ld a, 7
    ldh [rTAC], a

    ld hl, SONG_DESCRIPTOR
    call hUGE_init

    if !DEF(SINGLE_INTERRUPT)
        ;; Enable the HBlank interrupt on scanline 0
        ld a, [rSTAT]
        or a, STATF_LYC    
        ld [rSTAT], a
        xor a ; ld a, 0
        ld [rLYC], a
        ld a, IEF_LCDC | IEF_SERIAL
    else 
        ld a, IEF_TIMER | IEF_SERIAL
    ENDC

    ld [rIE], a
    ei

_halt:
    ; Do nothing, forever
    halt
    nop
    jr _halt

isr_timer:
    push af
    push hl
    push bc
    push de

    ld hl, _play_length     ;; something left to play?
    ld a, [hl+]
    or [hl]
    jr z, .timer02

    ld hl, _play_sample
    ld a, [hl+]
    ld h, [hl]
    ld l, a                 ;; HL = current position inside the sample

    xor a
    ldh [rAUD3ENA],a       

_addr = _AUD3WAVERAM
    REPT 16
        ld a, [hl+]
        ldh [_addr], a
_addr = _addr + 1
    ENDR

    ld a, $80               ; retrigger wave channel
    ldh [rAUD3ENA],a
    xor a
    ld [rAUD3ENA], a

    ld a, $80             
    ldh [rAUD3ENA],a
    ld a, $FE               ; length of wave
    ldh [rAUD3LEN],a
    ld a, $20               ; volume
    ldh [rAUD3LEVEL],a
    xor a                   ; low freq bits are zero
    ldh [rAUD3LOW],a
    ld a, $C7               ; start; no loop; high freq bits are 111
    ldh [rAUD3HIGH],a       

    ld a, l                 ; save current position
    ld [_play_sample], a
    ld a, h
    ld [_play_sample+1], a

    ld hl, _play_length     ; decrement length variable
    ld a, [hl]
    sub 1
    ld [hl+], a
    ld a, [hl]
    sbc 0
    ld [hl-], a
    or [hl]
    jr nz, .timer02
    
    ld a, 100
    ld [_hUGE_current_wave], a
    
.timer02:   
    if DEF(SINGLE_INTERRUPT)
        ld a, [call_counter]
        inc a
        and 3
        ld [call_counter], a
        call z, _hUGE_dosound 
    ENDC
    
    pop de
    pop bc
    pop hl
    pop af
    reti
