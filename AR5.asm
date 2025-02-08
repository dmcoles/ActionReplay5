
;Action Replay 5
dbg=0
pistorm=0
arhardware=1
arsoft=0

;trap 8 - breakpoint
;trap 15 - called by trap 8


  if arsoft=1
    opt d-,s-
  endc

EXT_0   EQU $0
EXT_4   EQU $4
EXT_7   EQU $7
BUS_ERROR EQU $8
ADR_ERROR EQU $C
ILLEG_OPC EQU $10
DIVISION0 EQU $14
CHK   EQU $18
TRAPV   EQU $1C
PRIVILEG  EQU $20
TRACE   EQU $24
LINEA_EMU EQU $28
LINEF_EMU EQU $2C
EXT_30    EQU $30
EXT_34    EQU $34
EXT_40    EQU $40
EXT_44    EQU $44
EXT_46    EQU $46
INT_WRONG EQU $60
AUTO_INT1 EQU $64
AUTO_INT2 EQU $68
AUTO_INT3 EQU $6C
AUTO_INT4 EQU $70
AUTO_INT5 EQU $74
AUTO_INT6 EQU $78
TRAP_00   EQU $80
TRAP_01   EQU $84
TRAP_02   EQU $88
TRAP_03   EQU $8C
TRAP_04   EQU $90
TRAP_05   EQU $94
TRAP_06   EQU $98
TRAP_07   EQU $9C
TRAP_08   EQU $A0
TRAP_09   EQU $A4
TRAP_10   EQU $A8
TRAP_11   EQU $AC
TRAP_12   EQU $B0
TRAP_13   EQU $B4
TRAP_14   EQU $B8
TRAP_15   EQU $BC
EXT_100   EQU $100
EXT_102   EQU $102
EXT_104   EQU $104
EXT_120   EQU $120
EXT_124   EQU $124
EXT_130   EQU $130
EXT_13E   EQU $13E
EXT_150   EQU $150
EXT_15A   EQU $15A
EXT_180   EQU $180
EXT_184   EQU $184
EXT_188   EQU $188
EXT_18C   EQU $18C
EXT_1E0   EQU $1E0
EXT_1E4   EQU $1E4
EXT_200   EQU $200
EXT_204   EQU $204
EXT_208   EQU $208
EXT_20C   EQU $20C
EXT_210   EQU $210
EXT_400   EQU $400
EXT_41E   EQU $41E
EXT_1000  EQU $1000
EXT_100E  EQU $100E
EXT_4E80  EQU $4E80

EXT_7000  EQU $7000
EXT_A400  EQU $a400
EXT_A500  EQU $a500

EXT_B000  EQU $B000
EXT_20000 EQU $20000
EXT_21A6E EQU $21A6E
EXT_27C28 EQU $27C28
EXT_32000 EQU $32000
EXT_7C000 EQU $7C000
EXT_40000 EQU $40000
EXT_70000 EQU $70000
EXT_80000 EQU $80000
EXT_200000  EQU $200000
EXT_C00000  EQU $C00000
EXT_C00276  EQU $C00276
EXT_C08400  EQU $C08400
EXT_DC0000  EQU $DC0000

EXT_E80000  EQU $E80000
EXT_F80004  EQU $F80004
EXT_F80005  EQU $F80005
EXT_F8000E  EQU $F8000E
EXT_F8031C  EQU $F8031C
EXT_F800D0  EQU $F800D0
EXT_F81F84  EQU $F81F84
EXT_F802C2  EQU $F802C2
EXT_FC0005  EQU $FC0005
EXT_FC0240  EQU $FC0240
EXT_FC06DC  EQU $FC06DC
EXT_74650000  EQU $74650000
EXT_FFFFF09A  EQU $FFFFF09A
EXT_FFFFFFFF  EQU $FFFFFFFF

DOSZERO_TAG EQU $444F5300
DOSONE_TAG  EQU $444F5301
BODY_TAG  EQU $424F4459
MOD_TAG EQU $4D2E4B2E
STZERO_TAG  EQU $53542D30
ARON_TAG  EQU $41524F4E
BRON_TAG  EQU $42524F4E

BURST_NIB_DEST  EQU $2058C

; Custom equates (from config file)
_LVOUserState EQU -156
_LVOSuperState  EQU -150
_LVOAllocAbs  EQU -204
_LVOFreeMem EQU -210

F1Key EQU $8A
F2Key EQU $8B
F3Key EQU $8C
F4Key EQU $8D
F5Key EQU $8E
F6Key EQU $8F
F7Key EQU $90
F8Key EQU $91
F9Key EQU $92
F10Key  EQU $93
CursorUp  EQU $80
CursorDown  EQU $81
CursorLeft  EQU $82
CursorRight EQU $83


dmaconr  EQU 2
vposr    EQU 4
vhposr   EQU 6
joy0dat  EQU $a
adkconr  EQU $10
potgor   EQU $16
dskbytr  EQU $1a
intenar  EQU $1C
intreqr  EQU $1E
dskpth   EQU $20
dsklen   EQU $24
vposw    EQU $2A
vhposw   EQU $2C
potgo    EQU $34
bltcon0  EQU $40
bltcon1  EQU $42
bltafwm  EQU $44
bltcpth  EQU $48
bltbpth  EQU $4C
bltapth  EQU $50
bltaptl  EQU $52
bltdpth  EQU $54
bltsize  EQU $58
bltcmod  EQU $60
bltbmod  EQU $62
bltamod  EQU $64
bltdmod  EQU $66
bltcdat  EQU $70
bltbdat  EQU $72
bltadat  EQU $74
lisaid   EQU $7C
dsksync  EQU $7E
cop1lch  EQU $80
cop2lch  EQU $84
copjmp1  EQU $88
copjmp2  EQU $8a
diwstrt  EQU $8E
diwstop  EQU $90
ddfstrt  EQU $92
ddfstop  EQU $94
dmacon   EQU $96
clxcon   EQU $98
intena   EQU $9A
intreq   EQU $9C
adkcon   EQU $9E
aud0lch  EQU $A0
aud0len  EQU $A4
aud0per  EQU $A6
aud0vol  EQU $A8
aud1lch  EQU $B0
aud1len  EQU $B4
aud1vol  EQU $B8
aud2lch  EQU $C0
aud2len  EQU $C4
aud2vol  EQU $C8
aud3lch  EQU $D0
aud3len  EQU $D4
aud3vol  EQU $D8
bpl1pth  EQU $E0
bpl1ptl  EQU $E2
bplcon0  EQU $100
bplcon1  EQU $102
bplcon2  EQU $104
bplcon3  EQU $106
bplcon4  EQU $10C
bpl1mod  EQU $108
bpl2mod  EQU $10A
spr0pth  EQU $120
spr1pth  EQU $124
spr2pth  EQU $128
spr3pth  EQU $12C
spr4pth  EQU $130
spr5pth  EQU $134
spr6pth  EQU $138
spr7pth  EQU $13C
spr0pos  EQU $140
spr0data EQU $144
spr1data EQU $14C
spr2data EQU $154
spr3data EQU $15C
spr4data EQU $164
spr5data EQU $16C
spr6data EQU $174
spr7data EQU $17C
color00  EQU $180
color01  EQU $182
color02  EQU $184
color17  EQU $1A2
color19  EQU $1A6
beamcon0 EQU $1DC
diwhigh  EQU $1E4
fmode    EQU $1FC
regnull  EQU $1FE

hardware EQU $DFF000

ciabpra  EQU $BFD000
ciabprb  EQU $BFD100
ciabddra EQU $BFD200
ciabddrb EQU $BFD300
ciabtblo EQU $BFD600
ciabtbhi EQU $BFD700
ciabicr  EQU $BFDD00
ciabcra  EQU $BFDE00
ciabcrb  EQU $BFDF00

ciaabase   EQU $BFE000
ciaapra    EQU $BFE001
ciaaddra   EQU $BFE201
ciaatodlo  EQU $BFE801
ciaatodmid EQU $BFE901
ciaasdr    EQU $BFEC01
ciaaicr    EQU $BFED01
ciaacra    EQU $BFEE01
ciaacrb    EQU $BFEF01

rsnoop SET 0
  if arhardware=1
rsnoop SET 1
  endc
  if pistorm=1
rsnoop SET 1
  endc

;fixcol macro
;  MOVE.W #\1,$DFF180
;  JSR debugDelay
;  endm

fixcol macro
  endm


 if dbg=1

  move.l  4.w,a6
  lea gfxname,a1
  moveq #0,d0
  jsr -552(a6)
  move.l  d0,gfxbase

  move.l  gfxbase,a6
  move.l  $22(a6),oldview   ;save old view
  sub.l a1,a1
  moveq #$7f,d0
  jsr -$de(a6)    ;LoadView()


  move.l SECSTRT_0+$7c,$80
  trap #0
  nop
  nop
  ;dc.w $f000
  nop

  move.l  gfxbase,a6
  move.l  oldview,a1
  moveq #$7f,d0
  jsr -$de(a6)

  move.l  $4,a6
  move.l  gfxbase,a1
  jsr -414(a6)
  rts

oldview: DS.L 1
gfxbase: DS.L 1
gfxname: DC.B "graphics.library",0
  even
  endc

 if pistorm=1
 ORG  $a10000
 endc

 if arhardware=1
 ORG  $400000
 endc

SECSTRT_0:
  if arsoft=1
  BRA.W ArInstall
  BRA.W ArUninstall
AllocSize:
  DC.L $60000
AllocAddr:
  DC.L SECSTRT_0

  DC.B "AR5_"
NEWVBR:
  DS.L  2
VbrBusError:
  DS.L  1
VbrAddressError:
  DS.L  1
VbrIllegal:
  DS.L  1
VbrDivZero:
  DS.L  1
VbrChk:
  DS.L  1
VbrTrapV:
  DS.L  1
VbrPriv:
  DS.L  1
VbrTrace:
  DS.L  1
VbrLineA:
  DS.L  1
VbrLineF:
  DS.L  $D
VbrSpurious:
  DS.L  1
VbrLevel1:
  DS.L  1
VbrLevel2:
  DS.L  1
VbrLevel3:
  DS.L  1
VbrLevel4:
  DS.L  1
VbrLevel5:
  DS.L  1
VbrLevel6:
  DS.L  1
VbrLevel7:
  DS.L  1
VbrTrap0:
  DS.L  1
VbrTrap1:
  DS.L  1
VbrTrap2:
  DS.L  1
VbrTrap3:
  DS.L  1
VbrTrap4:
  DS.L  1
VbrTrap5:
  DS.L  1
VbrTrap6:
  DS.L  1
VbrTrap7:
  DS.L  1
VbrTrap8:
  DS.L  1
VbrTrap9:
  DS.L  1
VbrTrap10:
  DS.L  1
VbrTrap11:
  DS.L  1
VbrTrap12:
  DS.L  1
VbrTrap13:
  DS.L  1
VbrTrap14:
  DS.L  1
VbrTrap15:
  DS.L  $11
InstallSettings:
  DC.l 3
ColdCaptFlag:
  DC.B 0
  cnop 0,4
  else

FreezeMode:
  DC.B $20
FreezeState:
  DC.B $18,$20,$18
  DC.B "ACTION REPLAY V By REbEL/QTX. "  ;30
  DC.B "Based on Action Replay MKIII (Datel Electronics) " ;51
  DC.B "& Aktion Replay 4 PRO (Parcon Software)." ;42
  DS.B (SECSTRT_0+$7c)-*
  endc

STARTCRC:
 DC.L NMI_Entry

  if arsoft=1
ArInstall:
  MOVE.L  D0,InstallSettings
SUB_A1002A:
  LEA ChipramSave1,A0
  LEA dataend,A1
LAB_A100DE:
  CLR.W (A0)+
  CMPA.L  A1,A0
  BNE.S LAB_A100DE
  BSR setupDefaults
  TST.L AllocedMem
  BNE.W LAB_A10142
  MOVE.L  AllocSize,D0
  MOVEA.L AllocAddr,A1
  MOVEA.L EXT_4.W,A6
  JSR _LVOAllocAbs(A6)
  MOVE.L  D0,AllocedMem
  TST.L D0
  BNE.S LAB_A10088
  MOVEQ #$1E,D0
  MOVE.W  #$00f0,D1
  BSR.W LAB_A101D8
  ST  AllocFail
LAB_A10088:
  TST.B IgnoreAllocErr
  BNE.S LAB_A100AA
  TST.B AllocFail
  BEQ.S LAB_A100AA
  LEA SECSTRT_0(PC),A0
  MOVE.W  #$001e,D0
LAB_A100A0:
  CLR.L (A0)+
  DBF D0,LAB_A100A0
  MOVEQ #-1,D0
  RTS
LAB_A100AA:
  TST.B ResetProof
  BEQ.S noreset
  MOVEA.L EXT_4.W,A6
  MOVE.L  #ColdCapture,$2A(A6)
  MOVE.L  #CoolCapture,$2E(A6)
  LEA $22(A6),A0
  MOVEQ #$16,D0
  MOVEQ #0,D1
LAB_A100C6:
  ADD.W (A0)+,D1
  DBF D0,LAB_A100C6
  NOT.W D1
  MOVE.W  D1,$52(A6)

noreset:

  BSR.W InstallExceptionHandlers
  JSR calcArChecksum
  ST  LAB_A10019
  TST.B ColdCaptFlag
  BNE.S LAB_A10142
  BSR.W DisplayArInstalLogo
  MOVEA.L EXT_4.W,A6
  MOVEA.L $9C(A6),A6
  MOVE.L  $26(A6),cop1lch+hardware
  MOVE.W  #$0000,copjmp1+hardware
  TST.W VgaModeFlag
  BEQ.S LAB_A10142
  MOVE.W  #$0a8c,beamcon0+hardware
LAB_A10142:
  MOVEQ #0,D0
  RTS

setupDefaults:
  MOVE.B D0,D1
  AND.B #$F,D1
  MOVE.B  D1,imode
  MOVE.B D0,D1

  LSR.B #4,D1
  SUB.B #1,D1
  MOVE.B D1,keymap

  LSR.L #8,D0

  BTST #0,D0
  SNE D1
  MOVE.B  D1,RomAvoidFlag

  BTST #1,D0
  SNE D1
  EXT.W D1
  MOVE.W  D1,VgaModeFlag

  BTST #2,D0
  SNE D1
  MOVE.B  D1,IgnoreAllocErr

  BTST #3,D0
  SEQ D1    ;this flag is inverse
  MOVE.B  D1,insertmode

  BTST #4,D0
  SNE D1
  MOVE.B  D1,MoveVbr

  BTST #5,D0
  SNE D1
  MOVE.B  D1,ResetProof

  BTST #6,D0
  SNE D1
  MOVE.B  D1,DisableVposWrite

  RTS

ColdCapture:
  CLR.L bronFlag
  SF  LAB_A10019
  ST  ColdCaptFlag
  CLR.L AllocedMem
  CLR.L AronFlag
  MOVEM.L D0-D7/A0-A6,-(A7)
  BSR.W DoRebootLogo
  MOVEA.L EXT_4.W,A6
  MOVE.L  #ColdCapture,$2A(A6)
  MOVE.L  #CoolCapture,$2E(A6)
  LEA $22(A6),A0
  MOVEQ #$16,D0
  MOVEQ #0,D1
LAB_A1018C:
  ADD.W (A0)+,D1
  DBF D0,LAB_A1018C
  NOT.W D1
  MOVE.W  D1,$52(A6)
  MOVEM.L (A7)+,D0-D7/A0-A6
  JMP (A5)
CoolCapture:
  MOVEM.L D0-D7/A0-A6,-(A7)
  JSR calcChecksum
  CMP.L checksum,D0
  BEQ.S LAB_A101CA
  MOVEQ #$1E,D0
  MOVE.W  #$000f,D1
  BSR.S LAB_A101D8
  MOVEA.L EXT_4.W,A6
  CLR.L $2A(A6)
  CLR.L $2E(A6)
  MOVEM.L (A7)+,D0-D7/A0-A6
  RTS
LAB_A101CA:
  MOVE.L  InstallSettings,D0
  BSR.W SUB_A1002A
  MOVEM.L (A7)+,D0-D7/A0-A6
  RTS
LAB_A101D8:
  MOVE.B  #$00,ciaatodlo
LAB_A101E0:
  MOVE.W  D1,color00+hardware
  CMP.B #2,ciaatodlo
  ;TST.B ciaatodlo
  ;BEQ.S LAB_A101E0
  BNE.S LAB_A101E0
  MOVE.B  #$00,ciaatodlo
  DBF D0,LAB_A101E0
  RTS
ArExceptionHandler:
  CMPI.L  #SECSTRT_0,2(A7)
  BLT.S LAB_A10258
  CMPI.L  #dataend,2(A7)
  BLT.W LAB_A10340
LAB_A10258:
  TST.B RomAvoidFlag
  BEQ.S LAB_A10276
LAB_A10260:
  CMPI.L  #$00f80000,2(A7)
  BLO.S LAB_A10276
LAB_A1026A:
  CMPI.L  #$00fffff0,2(A7)
  BLO.W LAB_A102FA
LAB_A10276:
  TST.B imode
  BNE.S LAB_A102AE
; imode 0 (left + right button)
  BTST  #6,ciaapra
  BNE.W LAB_A102FA
; BTST #$A,$DFF016
  DC.W  $0839
  DC.W  $000a
  DC.W  $00df
  DC.W  $f016
  BNE.W LAB_A102FA
  CMPI.B  #$c9,ciaasdr   ;keypad ]
  BEQ.W LAB_A102FA
  CMPI.B  #$b9,ciaasdr   ;f up
  BNE.S LAB_A102FA
  BRA.S TriggerArEntry
LAB_A102AE:
  CMPI.B  #1,imode
  BNE.S LAB_A102CC
; imode 1 (* on keypad)
  BTST  #7,ciaapra
  BEQ.S TriggerArEntry      ;fire button?
  CMPI.B  #$45,ciaasdr   ;keypad *
  BEQ.S TriggerArEntry
LAB_A102CC:
  CMPI.B  #2,imode
  BNE.S LAB_A102FA
; imode 2 (rmb)
  CMPI.B  #$c9,ciaasdr   ;keypad ]
  BEQ.S LAB_A102FA
  BTST  #2,potgor+hardware       ;rmb
  BEQ.S TriggerArEntry
  BRA.S LAB_A102FA
TriggerArEntry:
  MOVE.B  #$00,ciaasdr
  JMP RomEntry
LAB_A102FA:
  CMPI.B  #$c9,ciaasdr
  BNE.S LAB_A10322
; disable monitor
  MOVE.B  #$00,ciaasdr
  MOVEM.L D0-D7/A0-A6,-(A7)
  BSR.W UninstallAr
  MOVEQ #$1E,D0
  MOVE.W  #$0f00,D1
  BSR.W LAB_A101D8
  MOVEM.L (A7)+,D0-D7/A0-A6
LAB_A10322:
  TST.B deepMemWatch
  BEQ.S LAB_A10340
  TST.L memWatchSlotsUsed1
  BNE.S LAB_A1033A
  TST.W memWatchSlotsUsed2
  BEQ.S LAB_A10340
LAB_A1033A:
  ORI.W #$8000,4(A7)
LAB_A10340:
  RTS
DoRebootLogo:
  MOVE.W  #$7fff,intena+hardware
  MOVE.W  #$0380,dmacon+hardware
  MOVEM.L D0-D7/A0-A6,-(A7)
  BSR.S DisplayArInstalLogo
  MOVEM.L (A7)+,D0-D7/A0-A6
  MOVE.W  #$0380,dmacon+hardware
  RTS
DisplayArInstalLogo:
  MOVE.W dmaconr+hardware,D7
  OR.W #$8000,D7
  SWAP D7
  MOVE.W intenar+hardware,D7
  OR.W #$8000,D7

  MOVE.W #$7fff,dmacon+hardware
  MOVE.W #$7fff,intena+hardware
  MOVE.L A7,A6
  LEA StackEnd,A7
  LEA EXT_0,A0
  LEA ChipramSave1,A1
  MOVE.L A0,A2
  MOVE.W #$1f40-1,D0
.sav
  MOVE.L (A0)+,(A1)+
  DBF D0,.sav

  MOVEM.L D7/A0-A2,-(a7)
  JSR BootScreenShow
  MOVE.W  #$0048,D0
  MOVE.W  #$0000,D1
  BSR.W LAB_A101D8
  MOVEM.L (A7)+,D7/A0-A2

.res
  MOVE.L -(A1),-(A0)
  CMP.L A0,A2
  BNE.S .res
  MOVE.L A6,A7

  MOVE.W  D7,intena+hardware
  SWAP D7
  MOVE.W  D7,dmacon+hardware
  RTS

InstallExceptionHandlers:
  MOVEM.L D0-D7/A0-A6,-(A7)
  TST.B LAB_A10019
  BNE.W LAB_A10718
  MOVE.W  #$4000,intena+hardware
  MOVEA.L EXT_4.W,A6
  JSR _LVOSuperState(A6)
  MOVE.L  D0,LAB_A48A0C


  JSR getVBR
  MOVE.L  A0,OldVbr

  LEA oldVecs,A2
  MOVE.W  #$003f,D0
.savevecs
  MOVE.L  (A0)+,(A2)+
  DBF D0,.savevecs

  MOVE.L OldVbr,A0

  TST.B MoveVbr
  BEQ.S nomove

  LEA NEWVBR,A1

  LEA EXT_0.W,A3
  MOVE.W  #$003f,D0
LAB_A1059A:
  MOVE.L  (A0),(A3)+
  MOVE.L  (A0)+,(A1)+
  DBF D0,LAB_A1059A
  LEA NEWVBR,A0

  OPT p=68040
  MOVEC A0,VBR
  OPT p=68000

nomove:
  MOVE.L  #BusError,VbrBusError-NEWVBR(A0)
  MOVE.L  #AddressError,VbrAddressError-NEWVBR(A0)
  MOVE.L  #Illegal,VbrIllegal-NEWVBR(A0)
  MOVE.L  #DivZero,VbrDivZero-NEWVBR(A0)
  MOVE.L  #ChkInstruction,VbrChk-NEWVBR(A0)
  MOVE.L  #TrapVInstruction,VbrTrapV-NEWVBR(A0)
  MOVE.L  #PrivViolation,VbrPriv-NEWVBR(A0)
  MOVE.L  #TraceException,VbrTrace-NEWVBR(A0)
  MOVE.L  #LineAInstruction,VbrLineA-NEWVBR(A0)
  MOVE.L  #LineFInstruction,VbrLineF-NEWVBR(A0)
  MOVE.L  #SpuriousException,VbrSpurious-NEWVBR(A0)
  MOVE.L  #Level1IntHandler,VbrLevel1-NEWVBR(A0)
  MOVE.L  #Level2IntHandler,VbrLevel2-NEWVBR(A0)
  MOVE.L  #Level3IntHandler,VbrLevel3-NEWVBR(A0)
  MOVE.L  #Level4IntHandler,VbrLevel4-NEWVBR(A0)
  MOVE.L  #Level5IntHandler,VbrLevel5-NEWVBR(A0)
  MOVE.L  #Level6IntHandler,VbrLevel6-NEWVBR(A0)
  MOVE.L  #NMI_SoftEntry,VbrLevel7-NEWVBR(A0)
  MOVE.L  #Trap0Handler,VbrTrap0-NEWVBR(A0)
  MOVE.L  #Trap1Handler,VbrTrap1-NEWVBR(A0)
  MOVE.L  #Trap2Handler,VbrTrap2-NEWVBR(A0)
  MOVE.L  #Trap3Handler,VbrTrap3-NEWVBR(A0)
  MOVE.L  #Trap4Handler,VbrTrap4-NEWVBR(A0)
  MOVE.L  #Trap5Handler,VbrTrap5-NEWVBR(A0)
  MOVE.L  #Trap6Handler,VbrTrap6-NEWVBR(A0)
  MOVE.L  #Trap7Handler,VbrTrap7-NEWVBR(A0)
  MOVE.L  #Trap8Handler,VbrTrap8-NEWVBR(A0)
  MOVE.L  #Trap9Handler,VbrTrap9-NEWVBR(A0)
  MOVE.L  #Trap10Handler,VbrTrap10-NEWVBR(A0)
  MOVE.L  #Trap11Handler,VbrTrap11-NEWVBR(A0)
  MOVE.L  #Trap12Handler,VbrTrap12-NEWVBR(A0)
  MOVE.L  #Trap13Handler,VbrTrap13-NEWVBR(A0)
  MOVE.L  #Trap14Handler,VbrTrap14-NEWVBR(A0)
  MOVE.L  #Trap15Handler,VbrTrap15-NEWVBR(A0)
  MOVE.L  LAB_A48A0C,D0
  MOVEA.L EXT_4.W,A6
  JSR _LVOUserState(A6)
  MOVE.W  #$c000,intena+hardware
LAB_A10718:
  MOVEM.L (A7)+,D0-D7/A0-A6
  RTS
ArUninstall:
  MOVEM.L D0-D7/A0-A6,-(A7)
  TST.B LAB_A10019
  BNE.S LAB_A10730
  MOVEM.L (A7)+,D0-D7/A0-A6
  RTS
LAB_A10730:
  SF  LAB_A10019
  MOVE.W  #$4000,intena+hardware
  MOVEQ #0,D0
  MOVEQ #0,D1
  MOVEA.L EXT_4.W,A6
  JSR _LVOSuperState(A6)
  MOVE.L  D0,LAB_A48A0C
  LEA oldVecs,A2
  MOVEA.L OldVbr,A1
  MOVE.W  #$003f,D0
LAB_A10760:
  MOVE.L  (A2)+,(A1)+
  DBF D0,LAB_A10760
  TST.B MoveVbr
  BEQ.S .1
  MOVEA.L OldVbr,A1
  OPT p=68040
  MOVEC A1,VBR
  OPT p=68000
.1
  MOVE.L  LAB_A48A0C,D0
  MOVEQ #0,D1
  MOVEA.L EXT_4.W,A6
  JSR _LVOUserState(A6)
  MOVEA.L EXT_4.W,A6
  CLR.L $2A(A1)
  CLR.L $2E(A1)
  CLR.L $32(A1)
  CLR.L $222(A1)
  CLR.L $226(A1)
  CLR.L $22A(A1)
  LEA $22(A6),A0
  MOVEQ #$16,D0
  MOVEQ #0,D1
LAB_A107A4:
  ADD.W (A0)+,D1
  DBF D0,LAB_A107A4
  NOT.W D1
  MOVE.W  D1,$52(A6)
  TST.L AllocedMem
  BEQ.S LAB_A107CE
  CLR.L AllocedMem
  MOVE.L  AllocSize,D0
  MOVEA.L AllocAddr,A1
  MOVEA.L EXT_4.W,A6
  JSR _LVOFreeMem(A6)
LAB_A107CE:
  MOVE.W  #$c000,intena+hardware
  MOVEM.L (A7)+,D0-D7/A0-A6
  RTS
UninstallAr:
  MOVEM.L D0-D7/A0-A6,-(A7)
  LEA oldVecs,A2
  MOVEA.L OldVbr,A1
  MOVE.W  #$003f,D0
LAB_A107F0:
  MOVE.L  (A2)+,(A1)+
  DBF D0,LAB_A107F0
  MOVEA.L OldVbr,A1
  TST.B MoveVbr
  BEQ.S .nomove
  OPT p=68040
  MOVEC A1,VBR
  OPT p=68000

.nomove
  MOVEA.L EXT_4.W,A6
  CLR.L $2A(A1)
  CLR.L $2E(A1)
  CLR.L $32(A1)
  CLR.L $222(A1)
  CLR.L $226(A1)
  CLR.L $22A(A1)
  LEA $22(A6),A0
  MOVEQ #$16,D0
  MOVEQ #0,D1
LAB_A10824:
  ADD.W (A0)+,D1
  DBF D0,LAB_A10824
  NOT.W D1
  MOVE.W  D1,$52(A6)
  TST.L AllocedMem
  BEQ.S LAB_A1084E
  CLR.L AllocedMem
  MOVE.L  AllocSize,D0
  MOVEA.L AllocAddr,A1
  MOVEA.L EXT_4.W,A6
  JSR _LVOFreeMem(A6)
LAB_A1084E:
  MOVEM.L (A7)+,D0-D7/A0-A6
  RTS

  endc
KeyboardIntHandler:
  BRA.W KeyboardInt
VBlankIntHandler:
  BRA.W VBlankInt

NMI_Entry:
  if arhardware=1
  ORI.W #0,arramstart

  MOVE.B  #$13,kickstartVersion
  CMPI.B  #$f8,EXT_F80005
  BEQ.S .k2
  CMPI.B  #$f8,EXT_FC0005
  BNE.W .k3
.k2
  MOVE.B  #$20,kickstartVersion
.k3

  BTST #1,FreezeState
  BNE reset

  BTST #0,FreezeState
  BEQ nmi

  tst.b exceptionsActive
  beq.s nmi1
  CMPI.L  #$124,2(A7)
  BGT.W nmi1
  CMPI.L  #$100,2(A7)
  BLS.W nmi1
  jmp ExceptionEntry
nmi1:
  tst.b breakpointsActive
  beq.s nmi2
  CMPI.L  #$46,2(A7)
  bne.s nmi2
  jmp ExceptionEntry2

nmi2:
  tst.b MemwatchActive
  beq.s nmi3
  cmp.l #$136,2(a7)
  bne.s nmi3
  jmp ExceptionEntry2
nmi3:
  tst.b apiActive
  beq.s nmi4
  cmp.l #$106,2(a7)
  bne.s x
  jmp ApiEntry

nmi4:
  cmp.l #$156,2(a7)
  bne.s x
  JSR getCACR
  MOVE.W vbrflag,D0
  ADD.W D0,D0
  ADD.W #6,D0
  lea (a7,d0.w),a7
  JMP DoArTrace
nmi:
  JMP Freeze
x:
  TST.B autofireP1ORP2
  BEQ.W LAB_400106
  MOVE.W  D0,-(A7)
  MOVE.W  P1AutoFirePrefsSetting,D0
  BEQ.W LAB_4000F0
  SUB.W D0,LAB_A48240
  BMI.W LAB_400542
LAB_4000F0:
  MOVE.W  P2AutoFirePrefsSetting,D0
  BEQ.W LAB_400104
  SUB.W D0,LAB_A48242
  BMI.W LAB_400598
LAB_400104:
  MOVE.W  (A7)+,D0
LAB_400106:
  TST.B MegaStickPrefsFlag
  BEQ.W LAB_4001C0
  MOVEM.L D0-D1/A0/A4-A5,SaveCpuRegs
  LEA ciaapra,A4
  LEA hardware,A5
  MOVE.B  $E00(A4),-(A7)
  MOVE.W  #$ff00,potgo(A5)
  JSR SUB_A2603E
  MOVE.W  D0,D1
  TST.W D1
  BPL.W LAB_400156
  BTST  #0,LAB_A483C4
  BEQ.W LAB_4001B4
  MOVE.B  LAB_A483C4,D0
  BCLR  #0,D0
  BRA.W LAB_400188
LAB_400156:
  LEA LAB_A483E0,A0
  MOVE.B  0(A0,D1.W),D0
  BNE.W LAB_40017E
  BTST  #0,LAB_A483C4
  BEQ.W LAB_4001B4
  MOVE.B  LAB_A483C4,D0
  BCLR  #0,D0
  BRA.W LAB_400188
LAB_40017E:
  CMP.B LAB_A483C4,D0
  BEQ.W LAB_4001B4
LAB_400188:
  MOVE.B  #1,$400(A4)
  CLR.B $500(A4)
  MOVE.B  #$51,$E00(A4)
  MOVE.B  D0,$C00(A4)
  MOVE.B  D0,LAB_A483C4
  MOVE.W  #8,intreq+hardware
LAB_4001AA:
  BTST  #3,intreqr+1+hardware
  BEQ.S LAB_4001AA
LAB_4001B4:
  MOVE.B  (A7)+,$E00(A4)
  MOVEM.L SaveCpuRegs,D0-D1/A0/A4-A5
LAB_4001C0:
  JSR setActivateMode
  RTE
  endc

  if arhardware=0
  JMP Freeze
  endc
  if arhardware=1
reset:
  BTST #0,FreezeState
  BEQ SoftBoot
  JMP HardBoot

SoftBoot:
  MOVE.L  A0,-(A7)
  LEA 6(A7),A0
  MOVEA.L (A0),A0
  CMPA.L  #$00f80000,A0
  BLS.W LAB_400314
  CMPA.L  #$00ffffff,A0
  BHI.W LAB_400314
  CMPI.L  #$51c9ffe8,(A0)
  BNE.W LAB_400314
  BSR.W SUB_4005EE
LAB_400314:
  MOVEA.L (A7)+,A0
  TST.B LAB_A483CC
  BEQ.W LAB_40032C
  CMPI.L  #$00000120,2(A7)
  BNE.S LAB_40032C
  JMP AREntry2
LAB_40032C:
  TST.B LAB_A48391
  BEQ.W LAB_400348
  CMPI.L  #$00000080,2(A7)
  BNE.W LAB_400348
  JMP LAB_A25432
LAB_400348:
  TST.B LAB_A481E5
  BEQ.W LAB_40036E
  CMPI.L  #$00000180,2(A7)
  BEQ.W LAB_40070E
  TST.B LAB_A48336
  BEQ.W LAB_40036E
  JSR SUB_400622
LAB_40036E:
  TST.B LAB_A4838D
  BNE.W LAB_400810
  TST.B LAB_A483DA
  BEQ.W LAB_400810
  TST.B LAB_A4839A
  BNE.W LAB_400810
  TST.B LAB_A483D8
  BNE.W LAB_4007D6
LAB_400396:
  MOVEM.L D0-D1/A0-A1,SaveCpuRegs
  LEA ciabprb,A0
  LEA $F01(A0),A1
  MOVE.B  #3,$200(A1)
  MOVE.B  #$ff,$200(A0)
  BTST  #0,(A0)
  BNE.W LAB_400448
  MOVEQ #1,D0
  BTST  #1,(A0)
  BEQ.W LAB_4003C8
  MOVEQ #-1,D0
LAB_4003C8:
  BTST  #3,(A0)
  BNE.W LAB_4003D6
  ADD.B D0,LAB_A48244
LAB_4003D6:
  BTST  #4,(A0)
  BNE.W LAB_4003E4
  ADD.B D0,LAB_A48245
LAB_4003E4:
  BTST  #5,(A0)
  BNE.W LAB_4003F2
  ADD.B D0,LAB_A48246
LAB_4003F2:
  BTST  #6,(A0)
  BNE.W LAB_400400
  ADD.B D0,LAB_A48247
LAB_400400:
  BTST  #4,(A1)
  BNE.W LAB_400448
  BTST  #3,(A0)
  BNE.W LAB_400418
  MOVE.B  #1,LAB_A48244
LAB_400418:
  BTST  #4,(A0)
  BNE.W LAB_400428
  MOVE.B  #1,LAB_A48245
LAB_400428:
  BTST  #5,(A0)
  BNE.W LAB_400438
  MOVE.B  #1,LAB_A48246
LAB_400438:
  BTST  #6,(A0)
  BNE.W LAB_400448
  MOVE.B  #1,LAB_A48247
LAB_400448:
  BTST  #3,(A0)
  BNE.W LAB_400484
  TST.B DiskCoderDf0Flag
  BEQ.W LAB_400484
  BTST  #4,(A1)
  BNE.W LAB_40046A
  BCHG  #2,(A0)
  BRA.W LAB_400538
LAB_40046A:
  MOVE.L  DiskCoderDf0Value,D1
  MOVE.B  LAB_A48244,D0
  BTST  D0,D1
  BEQ.W LAB_400538
  BCHG  #2,(A0)
  BRA.W LAB_400538
LAB_400484:
  BTST  #4,(A0)
  BNE.W LAB_4004C0
  TST.B DiskCoderDf1Flag
  BEQ.W LAB_4004C0
  BTST  #4,(A1)
  BNE.W LAB_4004A6
  BCHG  #2,(A0)
  BRA.W LAB_400538
LAB_4004A6:
  MOVE.L  DiskCoderDf1Value,D1
  MOVE.B  LAB_A48245,D0
  BTST  D0,D1
  BEQ.W LAB_400538
  BCHG  #2,(A0)
  BRA.W LAB_400538
LAB_4004C0:
  BTST  #5,(A0)
  BNE.W LAB_4004FC
  TST.B DiskCoderDf2Flag
  BEQ.W LAB_4004FC
  BTST  #4,(A1)
  BNE.W LAB_4004E2
  BCHG  #2,(A0)
  BRA.W LAB_400538
LAB_4004E2:
  MOVE.L  DiskCoderDf2Value,D1
  MOVE.B  LAB_A48246,D0
  BTST  D0,D1
  BEQ.W LAB_400538
  BCHG  #2,(A0)
  BRA.W LAB_400538
LAB_4004FC:
  BTST  #6,(A0)
  BNE.W LAB_400538
  TST.B DiskCoderDf3Flag
  BEQ.W LAB_400538
  BTST  #4,(A1)
  BNE.W LAB_40051E
  BCHG  #2,(A0)
  BRA.W LAB_400538
LAB_40051E:
  MOVE.L  DiskCoderDf3Value,D1
  MOVE.B  LAB_A48247,D0
  BTST  D0,D1
  BEQ.W LAB_400538
  BCHG  #2,(A0)
  BRA.W LAB_400538
LAB_400538:
  MOVEM.L SaveCpuRegs,D0-D1/A0-A1
  RTE
LAB_400542:
  BCLR  #7,ciaaddra
  ADDI.W  #$0064,LAB_A48240
  MOVE.W  #$0014,D0
LAB_400556:
  DBF D0,LAB_400556
  BTST  #7,ciaapra
  SEQ Port1Button1
  BEQ.W LAB_4000F0
  BSET  #7,ciaaddra
  BSET  #7,ciaapra
  BCHG  #7,LAB_A480CA
  BNE.W LAB_40058C
  BRA.W LAB_4000F0
LAB_40058C:
  BCLR  #7,ciaapra
  BRA.W LAB_4000F0
LAB_400598:
  BCLR  #6,ciaaddra
  ADDI.W  #$0064,LAB_A48242
  MOVE.W  #$0014,D0
LAB_4005AC:
  DBF D0,LAB_4005AC
  BTST  #6,ciaapra
  SEQ Port1Button1
  BEQ.W LAB_400104
  BSET  #6,ciaaddra
  BSET  #6,ciaapra
  BCHG  #6,LAB_A480CA
  BNE.W LAB_4005E2
  BRA.W LAB_400104
LAB_4005E2:
  BCLR  #6,ciaapra
  BRA.W LAB_400104
SUB_4005EE:
  MOVE.W  D3,-(A7)
  NOT.W D3
  LSR.W #3,D3
  AND.W DriveControlPrefsValue,D3
  BEQ.W LAB_400604
  MOVEQ #0,D0
  BRA.W LAB_400606
LAB_400604:
  MOVEQ #-1,D0
LAB_400606:
  MOVE.W  (A7)+,D3
  MOVE.W  #0,D1
  CMPI.W  #$00bf,D3
  BNE.W LAB_400620
  SF  LAB_A48394
  JSR setActivateMode
LAB_400620:
  RTS
SUB_400622:
  BSR.W SUB_400670
  SF  LAB_A48336
  MOVE.L  LAB_400666(PC),EXT_180.W
  MOVE.L  LAB_40066A(PC),EXT_184.W
  MOVE.L  LAB_40066E(PC),EXT_188.W
  MOVE.L  A6,-(A7)
  MOVEA.L EXT_4.W,A6
  LEA -444(A6),A6
  CMPI.L  #$00000180,2(A6)
  BEQ.W LAB_400662
  MOVE.L  2(A6),EXT_18C.W
  MOVE.L  #$00000180,2(A6)
LAB_400662:
  MOVEA.L (A7)+,A6
  RTS
LAB_400666:
  DC.L  $00390000
LAB_40066A:
  DC.L  $00bfd100
LAB_40066E:
  DC.W  $60f6
SUB_400670:
  CMPI.W  #4,LAB_A4822A
  BNE.W LAB_40070C
  MOVEM.L D0-D1/A0,-(A7)
  LEA ciabprb,A0
  MOVE.B  ciabprb,-(A7)
  MOVE.B  #$7f,(A0)
  MOVE.B  #7,(A0)
  BCLR  #1,(A0)
  BCLR  #0,(A0)
  NOP
  NOP
  BSET  #0,(A0)
  JSR SUB_A1FB40
  BSET  #1,(A0)
  BCLR  #0,(A0)
  NOP
  NOP
  BSET  #0,(A0)
  JSR SUB_A1FB40
  MOVE.B  #$ff,(A0)
  MOVE.B  #$87,(A0)
  MOVE.B  #$ff,(A0)
  MOVEQ #6,D0
  MOVEQ #3,D1
LAB_4006D0:
  BTST  D1,DriveControlPrefsValueLo
  BEQ.W LAB_4006EA
  BCLR  D0,(A0)
  BTST  #2,ciaapra
  BNE.W LAB_4006FA
  BSET  D0,(A0)
LAB_4006EA:
  SUBQ.W  #1,D0
  DBF D1,LAB_4006D0
  CLR.W LAB_A4822A
  BRA.W LAB_400702
LAB_4006FA:
  MOVE.W  D1,LAB_A4822A
  BSET  D0,(A0)
LAB_400702:
  MOVE.B  (A7)+,ciabprb
  MOVEM.L (A7)+,D0-D1/A0
LAB_40070C:
  RTS
LAB_40070E:
  MOVEM.L D1/A0-A1,-(A7)
  LEA TrackDiskName,A1
  MOVEQ #$10,D1
LAB_40071A:
  CMPM.B  (A0)+,(A1)+
  BNE.W LAB_400740
  DBF D1,LAB_40071A
  TST.W D0
  BNE.W LAB_400734
  MOVE.W  LAB_A4822A,D0
  BRA.W LAB_400740
LAB_400734:
  CMP.W LAB_A4822A,D0
  BNE.W LAB_400740
  CLR.W D0
LAB_400740:
  MOVEM.L (A7)+,D1/A0-A1
  MOVE.L  EXT_18C.W,2(A7)
  RTE
LAB_40074C:
  MOVE.L  A0,-(A7)
  MOVEA.L EXT_20C.W,A0
  LEA -204(A0),A0
  MOVE.L  EXT_210.W,2(A0)
  MOVE.L  EXT_210.W,6(A7)
  MOVEA.L EXT_4.W,A0
  LEA -318(A0),A0
  MOVE.L  2(A0),EXT_20C.W
  MOVE.L  #EXT_200,2(A0)
  BSET  #1,LAB_A483D8
  MOVEA.L (A7)+,A0
  TST.B SetmapDPrefsFlag
  BEQ.W LAB_40079A
  MOVEM.L D0-D7/A0-A6,-(A7)
  JSR SUB_425B32
  MOVEM.L (A7)+,D0-D7/A0-A6
LAB_40079A:
  RTE
LAB_40079C:
  MOVEM.L D0-D7/A0-A6,-(A7)
  MOVEA.L EXT_4.W,A6
  LEA -318(A6),A6
  MOVE.L  EXT_20C.W,2(A6)
  TST.B SaveDiskResidentPrefsFlag
  BEQ.W LAB_4007BE
  JSR LAB_A27112
LAB_4007BE:
  MOVEM.L (A7)+,D0-D7/A0-A6
  MOVE.L  EXT_20C.W,2(A7)
  SF  LAB_A483D8
  JSR setActivateMode
  RTE
LAB_4007D6:
  TST.B SetmapDPrefsFlag
  BNE.W LAB_4007EA
  TST.B SaveDiskResidentPrefsFlag
  BEQ.W LAB_400396
LAB_4007EA:
  CMPI.L  #EXT_200,2(A7)
  BNE.W LAB_400396
  BTST  #1,LAB_A483D8
  BNE.S LAB_40079C
  BTST  #0,LAB_A483D8
  BNE.W LAB_40074C
  BRA.W LAB_400396
LAB_400810:
  TST.B SetmapDPrefsFlag
  BNE.W LAB_400824
  TST.B SaveDiskResidentPrefsFlag
  BEQ.W LAB_400848
LAB_400824:
  CMPI.L  #EXT_200,2(A7)
  BNE.W LAB_400848
  BTST  #1,LAB_A483D8
  BNE.W LAB_40079C
  BTST  #0,LAB_A483D8
  BNE.W LAB_40074C
LAB_400848:
  TST.B LAB_A4838F
  BNE.W LAB_4008B2
  TST.B LAB_A4838E
  BNE.W LAB_400992
  MOVE.L  TRAP_00.W,LAB_A480CA
  MOVE.L  TRAP_01.W,LAB_A480CE
  MOVE.L  TRAP_02.W,LAB_A480D2
  MOVE.L  LAB_400C3C(PC),TRAP_00.W
  MOVE.L  LAB_400C40(PC),TRAP_01.W
  MOVE.L  LAB_400C44(PC),TRAP_02.W
  ST  LAB_A4838F
  SF  LAB_A4838E
  MOVE.L  A0,-(A7)
  MOVEA.L EXT_4.W,A0
  SUBA.W  #$01c8,A0
  MOVE.L  2(A0),saveOldDoIo
  MOVE.L  #$00000080,2(A0)
  MOVEA.L (A7)+,A0
  BRA.W LAB_400396
LAB_4008B2:
  CMPI.L  #$00000080,2(A7)
  BNE.W LAB_400396
  TST.B LAB_A483DA
  BNE.W LAB_40091A
  JSR SUB_425C62
  ST  LAB_A483DA
  TST.B LAB_A4838D
  BNE.W LAB_40091A
  MOVE.L  LAB_A480CA,TRAP_00.W
  MOVE.L  LAB_A480CE,TRAP_01.W
  MOVE.L  LAB_A480D2,TRAP_02.W
  MOVE.L  A0,-(A7)
  MOVEA.L EXT_4.W,A0
  LEA -456(A0),A0
  MOVE.L  saveOldDoIo,2(A0)
  MOVEA.L (A7)+,A0
  MOVE.L  saveOldDoIo,2(A7)
  JSR setActivateMode
  RTE
LAB_40091A:
  CMPI.W  #2,$1C(A1)
  BNE.W LAB_400988
  CMPI.L  #0,$2C(A1)
  BNE.W LAB_400988
  SF  LAB_A4838F
  ST  LAB_A4838E
  MOVE.L  saveOldDoIo,2(A7)
  BTST  #5,(A7)
  BEQ.W LAB_400968
  MOVE.W  (A7),-4(A7)
  MOVE.L  2(A7),-2(A7)
  MOVE.L  #$00000080,2(A7)
  LEA -4(A7),A7
  MOVE.L  A0,-(A7)
  BRA.W LAB_400974
LAB_400968:
  MOVE.L  A0,-(A7)
  MOVE.L  USP,A0
  MOVE.L  #$00000080,-(A0)
  MOVE.L  A0,USP
LAB_400974:
  MOVEA.L EXT_4.W,A0
  SUBA.W  #$01c8,A0
  MOVE.L  saveOldDoIo,2(A0)
  MOVEA.L (A7)+,A0
  RTE
LAB_400988:
  MOVE.L  saveOldDoIo,2(A7)
  RTE
LAB_400992:
  CMPI.L  #$00000080,2(A7)
  BNE.W LAB_400396
  TST.B LAB_A4839A
  BNE.W LAB_4009AC
  LEA $2C(A5),A1
LAB_4009AC:
  CMPI.B  #$1b,$1F(A1)
  BEQ.W LAB_400A1C
  TST.L D0
  BEQ.W LAB_400A4C
LAB_4009BC:
  ST  LAB_A4838F
  SF  LAB_A4838E
  BTST  #5,(A7)
  BEQ.W LAB_4009F6
  MOVE.W  (A7),4(A7)
  LEA 4(A7),A7
  MOVE.L  A0,-(A7)
  MOVEA.L EXT_4.W,A0
  SUBA.W  #$01c8,A0
  MOVE.L  2(A0),saveOldDoIo
  MOVE.L  #$00000080,2(A0)
  MOVEA.L (A7)+,A0
  RTE
LAB_4009F6:
  MOVE.L  A0,-(A7)
  MOVEA.L EXT_4.W,A0
  SUBA.W  #$01c8,A0
  MOVE.L  2(A0),saveOldDoIo
  MOVE.L  #$00000080,2(A0)
  MOVE.L  USP,A0
  MOVE.L  (A0)+,6(A7)
  MOVE.L  A0,USP
  MOVEA.L (A7)+,A0
  RTE
LAB_400A1C:
  MOVEQ #0,D1
  TST.B LAB_A481E5
  BEQ.W LAB_400A2E
  MOVE.W  LAB_A4822A,D1
LAB_400A2E:
  LEA DiskCoderDf0Flag,A1
  NOT.B 0(A1,D1.W)
  LEA $2C(A5),A1
  PEA -456(A6)
  JSR SUB_A253D0
  TST.W D0
  BNE.W LAB_4009BC
LAB_400A4C:
  CMPI.B  #$13,kickstartVersion
  BHI.W LAB_400C48
  TST.B BootblockCoderPrefsFlag
  BEQ.W LAB_400A8C
  TST.B LAB_A4839A
  BEQ.W LAB_400A72
  MOVE.L  A4,-(A7)
  MOVEA.L $28(A1),A4
LAB_400A72:
  LEA 8(A4),A0
  CMPI.L  #$00000370,(A0)
  BEQ.W LAB_400A8C
  MOVE.L  BootblockCoderValue,D1
  EOR.L D1,(A0)
  EOR.L D1,-8(A0)
LAB_400A8C:
  TST.B LAB_A4839A
  BEQ.W LAB_400A9C
  MOVEA.L (A7)+,A4
  BRA.W LAB_4009BC
LAB_400A9C:
  CMPI.L  #DOSZERO_TAG,(A4)
  BEQ.W LAB_400AAC
LAB_400AA6:
  MOVEQ #-1,D0
  BRA.W LAB_4009BC
LAB_400AAC:
  MOVEA.L A4,A0
  MOVE.W  #$00ff,D1
  MOVEQ #0,D0
LAB_400AB4:
  ADD.L (A0)+,D0
  BCC.W LAB_400ABC
  ADDQ.L  #1,D0
LAB_400ABC:
  DBF D1,LAB_400AB4
  NOT.L D0
  BNE.S LAB_400AA6
  LEA LAB_A4550E,A0
  MOVE.W  #$001f,D0
  SUBA.L  A1,A1
LAB_400AD0:
  MOVE.L  (A1)+,(A0)+
  DBF D0,LAB_400AD0
  LEA hashTable,A0
  MOVEA.L EXT_4.W,A1
  LEA -630(A1),A1
  MOVE.W  #$012d,D0
LAB_400AE8:
  MOVE.L  (A1)+,(A0)+
  DBF D0,LAB_400AE8
  LEA $2C(A5),A1
  PEA $C(A4)
  SF  LAB_A4838D
  JSR SUB_A253C4
  LEA LAB_A4550E,A2
  SUBA.L  A1,A1
  MOVE.W  #$001f,D0
LAB_400B0E:
  CMPM.L  (A2)+,(A1)+
  BNE.W LAB_400C20
  DBF D0,LAB_400B0E
  LEA hashTable,A1
  MOVE.W  #$009d,D0
  MOVEA.L EXT_4.W,A2
  LEA -630(A2),A2
LAB_400B2A:
  CMPM.L  (A1)+,(A2)+
  BNE.W LAB_400C20
  DBF D0,LAB_400B2A
  LEA LAB_41A1DC,A2
  MOVEA.L EXT_4.W,A3
  LEA hashTable,A1
  ADDA.W  #$0276,A1
LAB_400B48:
  MOVE.W  (A2)+,D0
  BMI.W LAB_400B5C
  MOVE.L  0(A3,D0.W),D1
  CMP.L 0(A1,D0.W),D1
  BNE.W LAB_400C20
  BRA.S LAB_400B48
LAB_400B5C:
  TST.B SetmapDPrefsFlag
  BNE.W LAB_400B70
  TST.B SaveDiskResidentPrefsFlag
  BEQ.W LAB_400BB6
LAB_400B70:
  MOVEM.L D0-D7/A0-A6,-(A7)
  MOVEA.L EXT_4.W,A6
  LEA IntuitionLibName,A1
  LEA $17A(A6),A0
  JSR LAB_41D986
  MOVE.L  D0,EXT_20C.W
  MOVEA.L D0,A0
  LEA -204(A0),A0
  MOVE.L  2(A0),EXT_210.W
  LEA EXT_200.W,A1
  MOVE.L  A1,2(A0)
  LEA LAB_400C3C(PC),A0
  MOVE.L  (A0)+,(A1)+
  MOVE.L  (A0)+,(A1)+
  MOVE.L  (A0)+,(A1)+
  BSET  #0,LAB_A483D8
  MOVEM.L (A7)+,D0-D7/A0-A6
LAB_400BB6:
  MOVE.L  USP,A3
  MOVEA.L (A3)+,A2
  MOVE.L  A3,USP
  LEA $2A(A2),A2
  MOVE.L  A2,2(A7)
  CLR.W (A7)
  MOVEQ #0,D0
  TST.B BootblockCoderPrefsFlag
  BEQ.W LAB_400C04
  ST  LAB_A4839A
  ST  LAB_A4838F
  SF  LAB_A4838E
  MOVE.L  A0,-(A7)
  MOVEA.L EXT_4.W,A0
  SUBA.W  #$01c8,A0
  MOVE.L  2(A0),saveOldDoIo
  MOVE.L  #$00000080,2(A0)
  MOVEA.L (A7)+,A0
  BRA.W LAB_400C18
LAB_400C04:
  MOVE.L  A0,-(A7)
  MOVEA.L EXT_4.W,A0
  SUBA.W  #$01c8,A0
  MOVE.L  saveOldDoIo,2(A0)
  MOVEA.L (A7)+,A0
LAB_400C18:
  JSR setActivateMode
  RTE
LAB_400C20:
  MOVE.L  USP,A2
  MOVEA.L (A2)+,A3
  LEA $2A(A3),A3
  MOVE.L  A3,2(A7)
  MOVE.L  A2,USP
  CLR.W (A7)
  ST  LAB_A48392
  MOVEQ #0,D0
  JMP AREntry2
LAB_400C3C:
  DC.L  $00390000
LAB_400C40:
  DC.L  $00bfd100
LAB_400C44:
  DC.L  $60f660f4
LAB_400C48:
  TST.B BootblockCoderPrefsFlag
  BEQ.W LAB_400C96
  TST.B LAB_A4839A
  BEQ.W LAB_400C66
  MOVE.L  A0,-(A7)
  MOVEA.L $28(A1),A0
  BRA.W LAB_400C6A
LAB_400C66:
  MOVEA.L $10(A2),A0
LAB_400C6A:
  MOVE.L  D1,-(A7)
  MOVE.L  BootblockCoderValue,D1
  CMPI.L  #$00000370,8(A0)
  BEQ.W LAB_400C84
  EOR.L D1,(A0)
  EOR.L D1,8(A0)
LAB_400C84:
  MOVE.L  (A7)+,D1
  TST.B LAB_A4839A
  BEQ.W LAB_400C96
  MOVEA.L (A7)+,A0
  BRA.W LAB_400E8A
LAB_400C96:
  MOVEA.L $10(A2),A0
  MOVE.L  (A0),D0
  CLR.B D0
  CMPI.L  #DOSZERO_TAG,D0
  BEQ.W LAB_400CAE
LAB_400CA8:
  MOVEQ #-1,D0
  BRA.W LAB_400E8A
LAB_400CAE:
  MOVE.L  $14(A2),D1
  LSR.L #2,D1
  MOVEQ #0,D0
  BRA.W LAB_400CC2
LAB_400CBA:
  ADD.L (A0)+,D0
  BCC.W LAB_400CC2
  ADDQ.L  #1,D0
LAB_400CC2:
  DBF D1,LAB_400CBA
  NOT.L D0
  BNE.S LAB_400CA8
  BCLR  #6,$22(A5)
  MOVEA.L A3,A1
  MOVE.L  $14(A2),$24(A1)
  MOVEA.L $10(A2),A0
  MOVE.L  A0,$28(A1)
  MOVE.L  $18(A2),$2C(A1)
  MOVEM.L A0-A1,-(A7)
  LEA LAB_A4550E,A0
  MOVE.W  #$001f,D0
  SUBA.L  A1,A1
LAB_400CF6:
  MOVE.L  (A1)+,(A0)+
  DBF D0,LAB_400CF6
  LEA hashTable,A0
  MOVEA.L EXT_4.W,A1
  LEA -630(A1),A1
  MOVE.W  #$012d,D0
LAB_400D0E:
  MOVE.L  (A1)+,(A0)+
  DBF D0,LAB_400D0E
  MOVEM.L (A7)+,A0-A1
  MOVEM.L D2-D7/A2-A6,-(A7)
  PEA $C(A0)
  SF  LAB_A4838D
  JSR SUB_A253C4
  MOVEM.L (A7)+,D2-D7/A2-A6
  MOVEM.L D0-D2/A0-A3,CopySpr0Pt
  LEA LAB_A4550E,A2
  SUBA.L  A1,A1
  MOVE.W  #$001f,D0
LAB_400D44:
  CMPM.L  (A2)+,(A1)+
  BNE.W LAB_400D92
  DBF D0,LAB_400D44
  LEA hashTable,A1
  MOVE.W  #$009d,D0
  MOVEA.L EXT_4.W,A2
  LEA -630(A2),A2
LAB_400D60:
  CMPM.L  (A1)+,(A2)+
  BNE.W LAB_400D92
  DBF D0,LAB_400D60
  LEA LAB_41A1DC,A2
  MOVEA.L EXT_4.W,A3
  LEA hashTable,A1
  ADDA.W  #$0276,A1
LAB_400D7E:
  MOVE.W  (A2)+,D0
  BMI.W LAB_400DB6
  MOVE.L  0(A3,D0.W),D1
  CMP.L 0(A1,D0.W),D1
  BNE.W LAB_400D92
  BRA.S LAB_400D7E
LAB_400D92:
  MOVE.L  USP,A2
  MOVEA.L (A2)+,A3
  LEA $60(A3),A3
  MOVE.L  A3,2(A7)
  MOVE.L  A2,USP
  CLR.W (A7)
  ST  LAB_A48392
  MOVEQ #0,D0
  MOVEM.L CopySpr0Pt,D0-D2/A0-A3
  JMP AREntry2
LAB_400DB6:
  MOVEM.L CopySpr0Pt,D0-D2/A0-A3
  TST.B SetmapDPrefsFlag
  BNE.W LAB_400DD2
  TST.B SaveDiskResidentPrefsFlag
  BEQ.W LAB_400E18
LAB_400DD2:
  MOVEM.L D0-D7/A0-A6,-(A7)
  MOVEA.L EXT_4.W,A6
  LEA IntuitionLibName,A1
  LEA $17A(A6),A0
  JSR LAB_41D986
  MOVE.L  D0,EXT_20C.W
  MOVEA.L D0,A0
  LEA -204(A0),A0
  MOVE.L  2(A0),EXT_210.W
  LEA EXT_200.W,A1
  MOVE.L  A1,2(A0)
  LEA LAB_400C3C(PC),A0
  MOVE.L  (A0)+,(A1)+
  MOVE.L  (A0)+,(A1)+
  MOVE.L  (A0)+,(A1)+
  BSET  #0,LAB_A483D8
  MOVEM.L (A7)+,D0-D7/A0-A6
LAB_400E18:
  MOVEM.L A0-A1,LAB_A480CA
  MOVE.L  USP,A0
  MOVEA.L (A0)+,A1
  MOVE.L  A0,USP
  LEA $60(A1),A1
  MOVE.L  A1,2(A7)
  CLR.W (A7)
  MOVEQ #0,D0
  TST.B BootblockCoderPrefsFlag
  BEQ.W LAB_400E6A
  ST  LAB_A4839A
  ST  LAB_A4838F
  SF  LAB_A4838E
  MOVEA.L EXT_4.W,A0
  SUBA.W  #$01c8,A0
  MOVE.L  2(A0),saveOldDoIo
  MOVE.L  #$00000080,2(A0)
  BRA.W LAB_400E7A
LAB_400E6A:
  MOVEA.L EXT_4.W,A0
  SUBA.W  #$01c8,A0
  MOVE.L  saveOldDoIo,2(A0)
LAB_400E7A:
  JSR setActivateMode
  MOVEM.L LAB_A480CA,A0-A1
  RTE
LAB_400E8A:
  ST  LAB_A4838F
  SF  LAB_A4838E
  BTST  #5,(A7)
  BEQ.W LAB_400EC4
  MOVE.W  (A7),4(A7)
  LEA 4(A7),A7
  MOVE.L  A0,-(A7)
  MOVEA.L EXT_4.W,A0
  SUBA.W  #$01c8,A0
  MOVE.L  2(A0),saveOldDoIo
  MOVE.L  #$00000080,2(A0)
  MOVEA.L (A7)+,A0
  RTE
LAB_400EC4:
  MOVE.L  A0,-(A7)
  MOVEA.L EXT_4.W,A0
  SUBA.W  #$01c8,A0
  MOVE.L  2(A0),saveOldDoIo
  MOVE.L  #$00000080,2(A0)
  MOVE.L  USP,A0
  MOVE.L  (A0)+,6(A7)
  MOVE.L  A0,USP
  MOVEA.L (A7)+,A0
  RTE
  endc

Freeze:
  CMPI.L  #SECSTRT_0,2(A7)
  BLT.S LAB_A10212
  CMPI.L  #dataend,2(A7)
  BLT.W LAB_A10240
LAB_A10212:
  TST.B RomAvoidFlag
  BEQ.S LAB_A10230
LAB_A1021A:
  CMPI.L  #$00f80000,2(A7)
  BLO.S LAB_A10230
LAB_A10224:
  CMPI.L  #$00fffff0,2(A7)
  BLO.W LAB_A10240
LAB_A10230:
  if arsoft=1
  CMP.B #3,imode
  BNE.S LAB_A10240
  JMP RomEntry
  else
  JMP RomEntry
  endc
LAB_A10240:
  RTS

RomEntry:
  CLR.B TraceActive
  CMP.L #BRON_TAG,bronFlag
  BEQ RomEntry_2
  JMP ArEntry1
RomEntry_2:
  JMP AREntry2

ApiEntry:
  ST.B apiCall
  JMP ExceptionEntry2

ExceptionEntry:
  TST.W ignoreExceptions
  BNE.S LAB_A103E2
ExceptionEntry2:
  CMPI.L  #SECSTRT_0,2(A7)
  BLT.S LAB_A103BE
  CMPI.L  #dataend,2(A7)
  BLT.S LAB_A10400
LAB_A103BE:
  TST.B RomAvoidFlag
  BEQ.S LAB_A103DC
LAB_A103C6:
  CMPI.L  #$00f80000,2(A7)
  BLT.S LAB_A103DC
LAB_A103D0:
  CMPI.L  #$00fffff0,2(A7)
  BLT.W LAB_A103E2
LAB_A103DC:
  CLR.B TraceActive
  JMP RomEntry
LAB_A103E2:
  TST.B deepMemWatch
  BEQ.S LAB_A10400
  TST.L memWatchSlotsUsed1
  BNE.S LAB_A103FA
  TST.W memWatchSlotsUsed2
  BEQ.S LAB_A10400
LAB_A103FA:
  ORI.W #$8000,4(A7)
LAB_A10400:
  RTS

versionText:
  DC.B  "*>Action Replay 5<* (c)2025 REbEL / QUARTEX",$D,0,0

DoArTrace:
  TST.B LAB_A483DE
  BEQ.S LAB_A108BA
  MOVE.L  A0,-(A7)
  MOVEA.L $6(A7),A0
  CMPA.L  LAB_A484C6,A0
  BNE.W LAB_A10934
  SF  LAB_A483DE
  MOVEA.L (A7)+,A0
LAB_A108BA:
  SUBQ.L  #1,TraceStepCount
  BNE.S LAB_A108C8
  JMP AREntry2
LAB_A108C8:
  TST.B TraceSkipSubs
  BEQ.S LAB_A10932
  MOVEM.L D0/A0,-(A7)
  MOVEA.L $A(A7),A0
  MOVE.W  (A0),D0
  ANDI.W  #$ffc0,D0
  CMPI.W  #$4e80,D0
  BNE.S LAB_A10914
  MOVE.W  (A0),D0
  CMPI.W  #$4eb9,D0
  BNE.S LAB_A108F0
  MOVEQ #6,D0
  BRA.S LAB_A10900
LAB_A108F0:
  ANDI.W  #$fff8,D0
  CMPI.W  #$4e90,D0
  BNE.S LAB_A108FE
  MOVEQ #2,D0
  BRA.S LAB_A10900
LAB_A108FE:
  MOVEQ #4,D0
LAB_A10900:
  ADD.L A0,D0
  MOVE.L  D0,LAB_A484C6
  ST  LAB_A483DE
  MOVEM.L (A7)+,D0/A0
  BRA.S LAB_A10932
LAB_A10914:
  MOVE.W  (A0),D0
  ANDI.W  #$ff00,D0
  CMPI.W  #$6100,D0
  BNE.S LAB_A1092E
  CMPI.W  #$6100,(A0)
  BNE.S LAB_A1092A
  MOVEQ #4,D0
  BRA.S LAB_A10900
LAB_A1092A:
  MOVEQ #2,D0
  BRA.S LAB_A10900
LAB_A1092E:
  MOVEM.L (A7)+,D0/A0
LAB_A10932:
  MOVE.L  A0,-(A7)
LAB_A10934:
  MOVEA.L $6(A7),A0
  CMPI.W  #$4e73,(A0)
  BNE.S LAB_A10944
  BSET  #7,$A(A7)
LAB_A10944:
  MOVEA.L (A7)+,A0
  BSET  #7,(A7)
  RTS
AREntry2:
  SF  LAB_A4824E
AREntry3:
  MOVE.W  intenar+hardware,SaveIntena
  MOVE.W  #$7fff,intena+hardware
  MOVE.W  dmaconr+hardware,SaveDmaCon
  MOVE.W  #$0c40,bplcon3+hardware
  MOVE.W  #$019f,dmacon+hardware

  MOVEM.L D0-D7/A0-A7,SaveCpuRegs

  ;MOVE.L  2(A7),SaveOldStk1
  MOVE.L  2(A7),SaveOldPc
  MOVE.W  0(A7),SaveOldSr
  MOVE  #$2000,SR
  LEA StackEnd,A7

  MOVE.L  D0,tempD0
  JSR getCACR
  MOVE.L  D0,SAVE_CACR
  MOVEQ #0,D0
  JSR setCACR

  MOVE.L  vposr+hardware,D0
  MOVE.L D0,SAVE_VPOS
  AND.L #$7fffffff,D0
  ADDQ #1,D0
  MOVE.L D0,seed
  MOVE.L  tempD0,D0
  
  MOVE.B  ciaaicr,SAVE_CIAAICR
  BSET  #7,SAVE_CIAAICR
  MOVE.B  ciabprb,SAVE_CIABPRB
  MOVE.B  ciabcra,SAVE_CIABCRA
  MOVE.B  ciabcrb,SAVE_CIABCRB
  MOVE.B  ciaacra,SAVE_CIAACRA
  MOVE.B  ciaacrb,SAVE_CIAACRB
  MOVE.W  intreqr+hardware,SaveIntreq
  MOVE.W  adkconr+hardware,SaveAdkcon
  if rsnoop=1
  MOVE.L A0,tempD0
  MOVE.L RegSnoopAddr,A0
  MOVE.W  dsksync(A0),SaveDskSync
  MOVE.L  dskpth(A0),SaveDskPt
  MOVE.L  dsklen(A0),SaveDskLen
  MOVE.L  color00(A0),SaveColor00
  MOVE.L tempD0,A0
  else
  MOVE.W  #4489,SaveDskSync
  MOVE.L  #$00000fff,SaveColor00
  endc

  BTST  #6,dmaconr+1+hardware
  BEQ.S LAB_A10A50
LAB_A10A26:
  MOVE.W  #0,vhposw+hardware
  BTST  #6,dmaconr+hardware
  BTST  #6,dmaconr+hardware
  BNE.S LAB_A10A26
  MOVE.W  #$0040,dmacon+hardware
  BSET  #6,SaveIntReq1
LAB_A10A50:
  BTST  #6,dskbytr+hardware
  BEQ.S LAB_A10A88
  MOVE.L  #$00128000,LAB_A480CA
LAB_A10A64:
  if rsnoop=1
  MOVE.W  #0,vhposw+hardware
  endc
  SUBQ.L  #1,LAB_A480CA
  BEQ.S LAB_A10A76
  BTST  #1,intreqr+1+hardware
  BEQ.S LAB_A10A64
  if rsnoop=1
  BSET  #1,SaveIntReq1
  MOVE.L D0,LAB_A480CA
  MOVEQ #0,D0
  MOVE.L A0,tempD0
  MOVE.L RegSnoopAddr,A0
  MOVE.W dsklen(A0),D0
  MOVE.L tempD0,A0
  AND.w #$3fff,d0
  LSL.W #1,d0
  ADD.L D0,SaveDskPt
  MOVE.L LAB_A480CA,D0
  endc
LAB_A10A76:
  MOVE.W  intreqr+hardware,SaveIntreq
  MOVE.W  #$0010,dmacon+hardware
LAB_A10A88:
  MOVE.W  #$7fff,intreq+hardware
  MOVE.W  #$c000,intena+hardware
  JSR GetChipsetInfo
  JSR saveAgaColors
  MOVE.L  #0,color00+hardware

  LEA hardware,A5
  MOVE.L RegSnoopAddr,A6
  CLR.L spr0data+hardware
  CLR.L spr1data+hardware
  CLR.L spr2data+hardware
  CLR.L spr3data+hardware
  CLR.L spr4data+hardware
  CLR.L spr5data+hardware
  CLR.L spr6data+hardware
  CLR.L spr7data+hardware
  BSR.W SaveCIARegs
  if rsnoop=1
  BSR BlitterSave
  endc
  JSR SUB_A1D77C
  BSR.W KeyboardIntInstall
  BSR.W InstallVblank
  BSR.W Init
  JSR SetupBreakpoints

  BSR.W ArMain

  JSR LAB_A2A148
  JSR RestoreBreakpoints
  JSR RestoreMemWatch
  ;BSR CheckKeys
  BSR.W RestoreDisplay1
  BSR.W KeyboardIntRemove
  BSR.W RestoreFloppy
  if rsnoop=1
  BSR.W BlitterRestore
  endc
  BSR.W RestoreCIARegs
  BSR.W SUB_A10D2C
  JSR ActivateTrace
  BSR.W setActivateMode
  if rsnoop=0
  BSR.W RestoreDisplay2
  endc
  MOVE.W  #$7fff,intena+hardware
  MOVE.W  #$7fff,dmacon+hardware
  MOVE  SR,D0
  ORI.W #$0700,D0
  MOVE  D0,SR

  MOVE.L  SAVE_CACR,D0
  JSR setCACR

  MOVEM.L SaveCpuRegs,D0-D7/A0-A7
  MOVE.W  SaveOldSr,0(A7)
  MOVE.L  SaveOldPc,2(A7)
  BSET  #7,SaveIntreq
  BSET  #7,SaveIntena
  BSET  #7,SaveDmaCon
  MOVE.W  #$0020,intreq+hardware
LAB_A10B9C:
  BTST  #5,intreqr+1+hardware
  BEQ.S LAB_A10B9C
  MOVE.W  #$0020,intreq+hardware

  MOVE.L  D0,tempD0
  MOVE.L  D1,tempD1

  BTST  #7,SaveDmaCon1
  BEQ.S LAB_A10BD2
  
  TST.B DisableVposWrite
  BNE.S .1
  MOVE.L  SAVE_VPOS,vposw+hardware
.1
  
  MOVE.W  #0,copjmp1+hardware
  MOVE.W  #$8300,dmacon+hardware
LAB_A10BD2:
  MOVE.L  SAVE_VPOS,D0
  ANDI.L  #$0001ffff,D0
LAB_A10BF4:
  MOVE.L  vposr+hardware,D1
  ANDI.L  #$0001ffff,D1
  CMP.L D1,D0
  BCC.S LAB_A10BF4
  MOVE.B  SAVE_CIAAICR,ciaaicr
  MOVE.B  SAVE_CIAACRA,ciaacra
  MOVE.B  SAVE_CIAACRB,ciaacrb
  MOVE.B  SAVE_CIABCRA,ciabcra
  MOVE.B  SAVE_CIABCRB,ciabcrb
  MOVE.B  SAVE_CIABPRB,ciabprb
  TST.B ciabicr
  TST.B ciaaicr
  MOVE.L  tempD0,D0
  MOVE.L  tempD1,D1
  MOVE.W  #$0300,dmacon+hardware
  MOVE.W  SaveDmaCon,dmacon+hardware
  MOVE.W  SaveIntena,intena+hardware
  if rsnoop=1
  MOVE.L A0,tempD0
  MOVE.L RegSnoopAddr,A0
  MOVE.L SaveCop1Lch,cop1lch+hardware
  MOVE.L cop2lch(A0),cop2lch+hardware
  MOVE.L tempD0,A0
  endc
  MOVE.W  #$7fff,intreq+hardware
  MOVE.W  SaveIntreq,intreq+hardware 
  SF.B apiCall
  RTE

getVBR:
  MOVE.L ILLEG_OPC.W,-(A7)
  MOVE.L #vbrtrap,ILLEG_OPC.W
  SUB.L A0,A0
  OPT p=68040
  MOVEC VBR,A0
  OPT p=68000
  MOVE.L (A7)+,ILLEG_OPC.W
  if arsoft=1
  CMP.L #NEWVBR,A0
  BNE.S .1
  MOVE.L OldVbr,A0
.1
  endc
  RTS
vbrtrap:
  MOVE.W #0,vbrflag
  ADD.L  #4,2(a7)
  RTE

getCACR:
  MOVE.L ILLEG_OPC.W,-(A7)
  MOVE.L #vbrtrap,ILLEG_OPC.W
  MOVEQ #0,D0
  MOVE.W #1,vbrflag
  OPT p=68040
  MOVEC CACR,D0
  OPT p=68000
  MOVE.L (A7)+,ILLEG_OPC.W
  RTS

setCACR:
  MOVE.L ILLEG_OPC.W,-(A7)
  MOVE.L #vbrtrap,ILLEG_OPC.W
  OPT p=68040
  MOVEC D0,CACR
  OPT p=68000
  MOVE.L (A7)+,ILLEG_OPC.W
  RTS

CMD_CLRDMON:
  LEA NoTBufferText(PC),A0
  TST.B TBufferAllocated
  BEQ.S LAB_A10CB8
  SF  TBufferAllocated
  LEA TBufferRestoredText(PC),A0
  MOVEA.L DiskMonBuffer,A1
  MOVE.L  DiskMonBufferSize,D0
  MOVE.L  LAB_A48386,D1
  LSR.L #2,D0
LAB_A10CB2:
  MOVE.L  D1,(A1)+
  SUBQ.L  #1,D0
  BNE.S LAB_A10CB2
LAB_A10CB8:
  JSR PrintText
  JSR PrintReady
  RTS

TBufferRestoredText:
  DC.B  "Trackbuffer restored",$D,0

NoTBufferText:
  DC.B  "No trackbuffer allocated",$D,0

TBuffRestoreQuiet:
  MOVEM.L D1/A0-A1,-(A7)
  TST.B TBufferAllocated
  BEQ.S LAB_A10D26
  SF  TBufferAllocated
  LEA TBufferRestoredText(PC),A0
  MOVEA.L DiskMonBuffer,A1
  MOVE.L  DiskMonBufferSize,D0
  MOVE.L  LAB_A48386,D1
  LSR.L #2,D0
LAB_A10D20:
  MOVE.L  D1,(A1)+
  SUBQ.L  #1,D0
  BNE.S LAB_A10D20
LAB_A10D26:
  MOVEM.L (A7)+,D1/A0-A1
  RTS
SUB_A10D2C:
  SF  Port1Button1
  SF  Port0Button1
  MOVE.B  P1AutoFireSettingLo,D0
  OR.B  P2AutoFireSettingLo,D0
  MOVE.B  D0,autofireP1ORP2
  TST.B P1AutoFireSettingLo
  BEQ.S LAB_A10D5A
  ORI.B #$80,ciaaddra
LAB_A10D5A:
  TST.B P2AutoFireSettingLo
  BEQ.S LAB_A10D6A
  ORI.B #$40,ciaaddra
LAB_A10D6A:
  TST.B autofireP1ORP2
  BNE.S LAB_A10D7A
  ANDI.B  #$3f,ciaaddra
LAB_A10D7A:
  RTS
setActivateMode:
  MOVE.W  D0,-(A7)
  CLR.W newActivateMode
  MOVEQ #0,D0
  CMP.B #$13,kickstartVersion
  BNE.S ks2_skip

  TST.B BootSelectPrefs
  BMI.S LAB_A10D94
  BSET  #0,newActivateModeLo
LAB_A10D94:
  TST.L DiskCoderFlags
  BNE.S LAB_A10DCA
  MOVE.B  LAB_A483DA,D0
  NOT.B D0
  OR.B  BootblockCoderPrefsFlag,D0
  OR.B  LAB_A4838D,D0
  OR.B  LAB_A48391,D0
  OR.B  LAB_A48394,D0
  OR.B  LAB_A483D8,D0
ks2_skip:
  OR.B  LAB_A483CC,D0
  BEQ.S LAB_A10DD2
LAB_A10DCA:
  BSET  #0,newActivateModeLo
LAB_A10DD2:
  MOVE.B  exceptionsActive,D0
  OR.B  breakpointsActive,D0
  OR.B  autofireP1ORP2,D0
  OR.B  MegaStickPrefsFlag,D0
  OR.B  MemwatchActive,D0
  OR.B  TraceActive,D0
  OR.B  apiActive,D0
  BEQ.S LAB_A10E00
  BSET  #1,newActivateModeLo
LAB_A10E00:
  MOVE.W  (A7)+,D0
  if arhardware=1
  MOVE.W  newActivateMode,FreezeMode
  endc
  RTS

  if rsnoop=1
BlitterSave:
  MOVE.L RegSnoopAddr,A0
  MOVE.L  bltcon0(A0),SaveBltCon0
  MOVE.L  bltafwm(A0),SaveBltAfwm
  MOVE.L  bltcpth(A0),SaveBltCPth
  MOVE.L  bltbpth(A0),SaveBltBPth
  MOVE.L  bltapth(A0),SaveBltAPth
  MOVE.L  bltdpth(A0),SaveBltDPth
  MOVE.L  bltcmod(A0),SaveBltCMod
  MOVE.L  bltamod(A0),SaveBltAMod
  MOVE.L  bltcdat(A0),SaveBltCDat
  MOVE.W  bltadat(A0),SaveBltADat
  MOVE.W  bltsize(A0),SaveBltSize
  RTS
BlitterRestore:
  LEA hardware,A0
  MOVE.W  SaveBltADat,bltadat(A0)
  MOVE.L  SaveBltCDat,bltcdat(A0)
  MOVE.L  SaveBltAMod,bltamod(A0)
  MOVE.L  SaveBltCMod,bltcmod(A0)
  MOVE.L  SaveBltDPth,bltdpth(A0)
  MOVE.L  SaveBltAPth,bltapth(A0)
  MOVE.L  SaveBltBPth,bltbpth(A0)
  MOVE.L  SaveBltCPth,bltcpth(A0)
  MOVE.L  SaveBltAfwm,bltafwm(A0)
  MOVE.L  SaveBltCon0,bltcon0(A0)
  RTS
  endc

RestoreFloppy:
  MOVE.B  currDriveNo,-(A7)
  MOVEQ #3,D1
  LEA oldTrackPositions,A0
LAB_A10E12:
  BTST  D1,DrivesConnectedLo
  BEQ.S LAB_A10E3A
  MOVE.B  D1,currDriveNo
  CMPI.B  #$ff,0(A0,D1.W)
  BEQ.S LAB_A10E3A
  MOVEQ #0,D0
  JSR StepToTrack
  MOVE.B  0(A0,D1.W),D0
  JSR StepToTrack
LAB_A10E3A:
  DBF D1,LAB_A10E12
  MOVE.B  (A7)+,currDriveNo
  MOVE.W  SaveDskSync,dsksync+hardware
  BSET  #7,SaveAdkcon
  MOVE.W  #$7fff,adkcon+hardware
  MOVE.W  SaveAdkcon,adkcon+hardware
  if rsnoop=1
  MOVE.L SaveDskPt,dskpth+hardware
  endc
  RTS
SaveCIARegs:
  MOVEM.L A0-A1,-(A7)
  LEA ciaapra,A0
  LEA saveCIAA,A1
  JSR SaveCIA
  LEA ciabpra,A0
  LEA saveCIAB,A1
  JSR SaveCIA
  JSR PrepCIA
  MOVEM.L (A7)+,A0-A1
  RTS
RestoreCIARegs:
  MOVEM.L D0/A0-A1,-(A7)
  BTST  #7,saveCIAB1
  BNE.S LAB_A10ED6
  MOVE.B  #$7f,ciabprb
  MOVE.B  saveCIAB1,D0
  NOP
  NOP
  MOVE.B  D0,ciabprb
  NOP
  NOP
  MOVE.B  #$7f,ciabprb
  JSR SUB_A1FB6C
LAB_A10ED6:
  LEA ciaapra,A0
  LEA saveCIAA,A1
  JSR RestoreCIA
  LEA ciabpra,A0
  LEA saveCIAB,A1
  JSR RestoreCIA
  MOVEM.L (A7)+,D0/A0-A1
  RTS
KeyboardIntInstall:
  LEA hardware,A5
  MOVE.L  A0,-(A7)
  MOVE.L  AUTO_INT2.W,Int2Save
  MOVE.L  #KeyboardIntHandler,AUTO_INT2.W
  CLR.W KeyCode
  CLR.W ShiftKey
  CLR.W RawKeyCode
  CLR.W flashLedOnKey
  ORI.B #$40,ciaacra
  MOVE.B  #0,ciaasdr
  BSR.W keyAckDelay
  BCLR  #6,ciaacra
  MOVE.W  #$8008,$9A(A5)
  MOVEA.L (A7)+,A0
  RTS
KeyboardInt:
  MOVE.L  D0,-(A7)
  MOVE.B  ciaaicr,D0
  MOVE.W  #8,intreq+hardware
  MOVEQ #0,D0
  MOVE.B  ciaasdr,D0
  MOVE.W  D0,RawKeyCode
  ORI.B #$40,ciaacra
  MOVE.B  #0,ciaasdr
  BSR.W keyAckDelay
  BCLR  #6,ciaacra
  MOVE.W  RawKeyCode,D0
  NOT.B D0
  LSR.B #1,D0
  BCLR  #0,D0

  ;MOVE.L A0,-(Sp)
  ;LEA keydata,A0
  ;NOT.B (A0,D0.W)
  ;MOVE.L (Sp)+,A0

  CMPI.B  #$64,D0   ;alt key
  BNE.S LAB_A10FB2
  BTST  #0,RawKeyCodeLo
  SNE AltKey
LAB_A10FB2:
  CMPI.W  #$0060,D0 ;shift key
  BNE.S LAB_A10FC6
  BTST  #0,RawKeyCodeLo
  SNE ShiftKey
LAB_A10FC6:
  MOVE.W  RawKeyCode,D0
  ANDI.W  #$fffe,D0
  CMPI.W  #$0074,D0   ;Escape
  BNE.S LAB_A10FE4
  TST.B EscapeDisabled
  BNE.S LAB_A10FE4
  BTST  #0,RawKeyCodeLo
  SNE EscapePressed
LAB_A10FE4:
  TST.B flashLedOnKey
  BNE.S LAB_A11006
  ORI.B #2,ciaapra
  BTST  #0,RawKeyCodeLo
  BEQ.S LAB_A11006
  ANDI.B  #$fd,ciaapra
LAB_A11006:
  MOVE.B  saveCIAA,D0
  AND.B #2,D0
  EOR.B D0,ciaapra
  MOVE.B  ciaaicr,D0
  MOVE.W  #8,intreq+hardware
  MOVE.L  (A7)+,D0
  RTE
KeyboardIntRemove:
  LEA hardware,A5
  MOVE.W  #8,$9A(A5)
  MOVE.L  A0,-(A7)
  MOVE.L  Int2Save,AUTO_INT2.W
  MOVEA.L (A7)+,A0
  RTS
keyAckDelay:

  MOVE.B  #140,ciabtblo
  MOVE.B  #0,ciabtbhi
  MOVE.B  #$99,ciabcrb
LAB_A11076:
  BTST  #0,ciabcrb
  BNE.S LAB_A11076
  MOVE.B  #$80,ciabcrb
  RTS
PrintCursor:
  MOVEM.L D0-D1/A0-A1,-(A7)
  MOVEQ #0,D0
  MOVEQ #0,D1
  LEA EXT_1000,A0
  MOVE.W  #$0280,D0
  MULU  cursorY,D0
  ADD.W cursorX,D0
  ADDI.W  #$0230,D0
  LEA 0(A0,D0.W),A1
  ADDQ.W  #8,LAB_A481E8
  BPL.S LAB_A110C8
  CMPI.B  #$ff,(A1)
  BNE.S LAB_A110D6
  CMPI.B  #$ff,(A1)
  BNE.S LAB_A110C6
  SF  (A1)
LAB_A110C6:
  BRA.S LAB_A110D6
LAB_A110C8:
  TST.B cursorEnabled
  BEQ.S LAB_A110D6
  TST.B (A1)
  BNE.S LAB_A110D6
  MOVE.L  A1,D1
LAB_A110D6:
  MOVE.L  cursorX,D0
  CMP.L LAB_A47F3E,D0
  BEQ.S LAB_A11114
  CLR.W LAB_A481E8
  MOVE.W  #$0280,D0
  MULU  LAB_A47F40,D0
  ADD.W LAB_A47F3E,D0
  ADDI.W  #$0230,D0
  CMPI.B  #$ff,0(A0,D0.W)
  BNE.S LAB_A1110A
  SF  0(A0,D0.W)
LAB_A1110A:
  MOVE.L  cursorX,LAB_A47F3E
LAB_A11114:
  TST.L D1
  BEQ.S LAB_A1111C
  MOVEA.L D1,A0
  ST  (A0)
LAB_A1111C:
  MOVEM.L (A7)+,D0-D1/A0-A1
  RTS
moveCursorRight:
  CMPI.W  #$004f,cursorX
  BEQ.S LAB_A11134
  ADDQ.W  #1,cursorX
  RTS
LAB_A11134:
  CLR.W cursorX
  BSR.W moveCursorDown
  RTS
moveCursorLeft:
  CMPI.W  #0,cursorX
  BEQ.S LAB_A11152
  SUBQ.W  #1,cursorX
  RTS
LAB_A11152:
  MOVE.W  #$004f,cursorX
  BSR.W moveCursorUp
  RTS
CursorHome:
  CLR.L cursorX
  RTS
SUB_A11168:
  MOVEM.L D0-D3/A0,-(A7)
  MOVEQ #0,D3
  TST.B ShiftKey
  SNE D3
LAB_A11176:
  MOVE.W  cursorX,D0
  BEQ.S LAB_A111C4
  BSR.S moveCursorLeft
  MOVEA.L CurrentPage,A0
  MOVEQ #0,D1
  MOVE.W  cursorY,D1
  MULU  #$0050,D1
  ADD.W cursorX,D1
  MOVE.W  #$004e,D2
  SUB.W cursorX,D2
LAB_A111A2:
  MOVE.B  1(A0,D1.W),0(A0,D1.W)
  ADDQ.W  #1,D1
  DBF D2,LAB_A111A2
  MOVE.B  #$20,0(A0,D1.W)
  TST.B D3
  BEQ.S LAB_A111C0
  TST.W cursorX
  BNE.S LAB_A11176
LAB_A111C0:
  JSR SUB_A1727A
LAB_A111C4:
  MOVEM.L (A7)+,D0-D3/A0
  RTS
SUB_A111CA:
  MOVE.L  D0,-(A7)
  MOVE.B  printerDumpToggle,-(A7)
  SF  printerDumpToggle
  MOVE.W  cursorX,D0
  CMPI.W  #$004f,D0
  BEQ.S LAB_A11228
  TST.B ShiftKey
  BNE.S LAB_A111F6
  BSR.W moveCursorRight
  BSR.W SUB_A11168
  BRA.S LAB_A11228
LAB_A111F6:
  MOVE.L  cursorX,-(A7)
  MOVEQ #$20,D0
LAB_A111FE:
  JSR PrintChar
  MOVE.W  PageHeight,D7
  CMP.W cursorY,D7
  BNE.S LAB_A1121A
  CMPI.W  #$004f,cursorX
  BEQ.S LAB_A11222
LAB_A1121A:
  TST.W cursorX
  BNE.S LAB_A111FE
LAB_A11222:
  MOVE.L  (A7)+,cursorX
LAB_A11228:
  MOVE.B  (A7)+,printerDumpToggle
  MOVE.L  (A7)+,D0
  RTS
moveCursorUp:
  CMPI.W  #0,cursorY
  BEQ.S SUB_A11244
  SUBQ.W  #1,cursorY
  RTS
SUB_A11244:
  ADDQ.W  #1,LAB_A47F40
  BSR.W ScrollDown
  RTS
moveCursorDown:
  TST.B scrollLock
  BEQ.S LAB_A1125E
  ADDQ.B  #1,LAB_A483CB
LAB_A1125E:
  MOVE.L  D0,-(A7)
  MOVE.W  PageHeight,D0
  CMP.W cursorY,D0
  BEQ.S LAB_A11278
  MOVE.L  (A7)+,D0
  ADDQ.W  #1,cursorY
  RTS
LAB_A11278:
  MOVE.L  (A7)+,D0
SUB_A1127A:
  SUBQ.W  #1,LAB_A47F40
  BSR.S ScrollUp
  RTS
ScrollUp:
  MOVEM.L D0-D1/A0-A1,-(A7)
  MOVE.W  #$0280,D0
  MULU  cursorY,D0
  ADD.W cursorX,D0
  ADDI.W  #$0230,D0
  CMPI.B  #$ff,0(A0,D0.W)
  BNE.S LAB_A112A8
  SF  0(A0,D0.W)
LAB_A112A8:
  TST.B ShiftKey
  BNE.S LAB_A112A8
  TST.B scrollLock
  BNE.S LAB_A112BE
  SF  LAB_A483CB
LAB_A112BE:
  MOVE.W  PageHeight,D0
  SUB.W #1,D0
  CMP.B  LAB_A483CB,D0
  BHI.S LAB_A112D8
LAB_A112C8:
  JSR GetMappedKeyCode
  TST.B D0
  BEQ.S LAB_A112C8
  SF  LAB_A483CB
LAB_A112D8:
  MOVEA.L CurrentPage,A0
  LEA $50(A0),A1
  MOVE.W PageHeight,D0
  MULU #80/8,D0
  SUB.W #1,D0
LAB_A112E6:
  MOVE.L  (A1)+,(A0)+
  MOVE.L  (A1)+,(A0)+
  DBF D0,LAB_A112E6
  MOVEQ #$13,D0
  MOVE.L  #$20202020,D1
LAB_A112F6:
  MOVE.L  D1,(A0)+
  DBF D0,LAB_A112F6
  LEA EXT_1000,A0
  LEA $280(A0),A1
  MOVE.W PageHeight,D0
  MULU #80*8/32,D0
  SUB.W #1,D0
LAB_A1130A:
  MOVE.L  (A1)+,(A0)+
  MOVE.L  (A1)+,(A0)+
  MOVE.L  (A1)+,(A0)+
  MOVE.L  (A1)+,(A0)+
  MOVE.L  (A1)+,(A0)+
  MOVE.L  (A1)+,(A0)+
  MOVE.L  (A1)+,(A0)+
  MOVE.L  (A1)+,(A0)+
  DBF D0,LAB_A1130A
  MOVEQ #$F,D0
LAB_A11320:
  CLR.L (A0)+
  CLR.L (A0)+
  CLR.L (A0)+
  CLR.L (A0)+
  CLR.L (A0)+
  CLR.L (A0)+
  CLR.L (A0)+
  CLR.L (A0)+
  CLR.L (A0)+
  CLR.L (A0)+
  DBF D0,LAB_A11320
  CLR.W LAB_A481E8
  MOVE.W  #$0280,D0
  MULU  cursorY,D0
  ADD.W cursorX,D0
  ADDI.W  #$0230,D0
  CMPI.B  #$ff,0(A0,D0.W)
  BNE.S LAB_A11366
  TST.B cursorEnabled
  BEQ.S LAB_A11366
  ST  0(A0,D0.W)
LAB_A11366:
  MOVEM.L (A7)+,D0-D1/A0-A1
  RTS
ScrollDown:
  MOVEM.L D0-D1/A0-A1,-(A7)
  MOVEA.L CurrentPage,A0
  MOVE.W PageHeight,D0
  MULU #80,D0
  ADD.L D0,A0
  LEA $50(A0),A1
  MOVE.W PageHeight,D0
  MULU #80/8,D0
LAB_A11382:
  MOVE.L  -(A0),-(A1)
  MOVE.L  -(A0),-(A1)
  DBF D0,LAB_A11382
  MOVEQ #$13,D0
  MOVE.L  #$20202020,D1
LAB_A11392:
  MOVE.L  D1,-(A1)
  DBF D0,LAB_A11392
  LEA EXT_1000,A0
  MOVE.W PageHeight,D0
  MULU #80*8,D0
  ADD.L D0,A0
  LEA $280(A0),A1

  MOVE.W PageHeight,D0
  MULU #80*8/32,D0
  SUB.W #1,D0
LAB_A113AA:
  MOVE.L  -(A0),-(A1)
  MOVE.L  -(A0),-(A1)
  MOVE.L  -(A0),-(A1)
  MOVE.L  -(A0),-(A1)
  MOVE.L  -(A0),-(A1)
  MOVE.L  -(A0),-(A1)
  MOVE.L  -(A0),-(A1)
  MOVE.L  -(A0),-(A1)
  DBF D0,LAB_A113AA
  MOVEQ #$F,D0
LAB_A113C0:
  CLR.L -(A1)
  CLR.L -(A1)
  CLR.L -(A1)
  CLR.L -(A1)
  CLR.L -(A1)
  CLR.L -(A1)
  CLR.L -(A1)
  CLR.L -(A1)
  CLR.L -(A1)
  CLR.L -(A1)
  DBF D0,LAB_A113C0
  MOVEM.L (A7)+,D0-D1/A0-A1
  RTS
InstallVblank:
  SF  viewingPrefs
  ST  cursorEnabled
  LEA hardware,A5
  MOVE.L RegSnoopAddr,A6
  LEA EXT_1000,A0
  LEA ChipramSave1,A1
LAB_A11406:
  MOVE.L  (A0),D1
  tst.b full64k
  bne.s .1

  MOVEP.L 0(A1),D2
  MOVEP.L D1,0(A1)
  ADDQ.W  #8,A1
  bra.s .2
.1
  MOVE.L  (A1),D2
  MOVE.L  D1,(A1)+
.2
  MOVE.L  D2,(A0)+
  CMP.L memSaveEnd,A0
  BNE.S LAB_A11406

  MOVE.L  $80(A6),SaveCop1Lch
  MOVE.L  $E0(A6),SaveBpl1Pth
  MOVE.L  $100(A6),SaveBplCon0
  MOVE.W  $104(A6),SaveBplCon2
  MOVE.W  $106(A6),SaveBplCon3
  MOVE.W  $10c(A6),SaveBplCon4
  MOVE.L  $108(A6),SaveBpl1Mod
  MOVE.W  $1fc(A6),SaveFmode
  MOVE.L  $8E(A6),SaveDiwStart
  MOVE.L  $92(A6),SaveDdfStrt
  MOVE.W  $1e4(A6),SaveDiwHigh

  JSR CalcBeamCon0

  MOVE.L  AUTO_INT3.W,Int3Save
  BSR.W MakeMainDisplay
  MOVE.L  #VBlankIntHandler,AUTO_INT3.W
  SF  picViewerMode
  MOVE.W  #$0020,$9C(A5)
LAB_A11486:
  BTST  #5,$1F(A5)
  BEQ.S LAB_A11486
  MOVE.W  #$8020,$9A(A5)
  MOVE.W  #$8300,$96(A5)
  RTS

CheckPalMode
  MOVE.L D0,tempD0
  MOVE.L D1,tempD1
  SF.B fullPal

  MOVE.W intenar+hardware,D1
  MOVE.W  #$0020,intena+hardware
  MOVE.W  #$0020,intreq+hardware
.1:
  BTST  #5,intreqr+1+hardware
  BEQ.S .1

  MOVE.W  #$0020,intreq+hardware

.2
  MOVE.L vposr+hardware,D0
  AND.L #$1FF00,D0

  CMP.L #$12000,D0
  BLT.S .3

  TST.B full64k
  SNE.B fullPal
  BRA.S .4
.3

  BTST  #5,intreqr+1+hardware
  BEQ.S .2

.4
  OR.W #$8000,D1
  MOVE.W D1,intena+hardware

  MOVE.L tempD0,D0
  MOVE.L tempD1,D1

  RTS

CalcBeamCon0
  MOVEM.L D0-D1/A0,-(A7)

  MOve.L RegSnoopAddr,A0
  MOVE.W beamcon0(A0),D0
  CMP.W #0,D0
  BEQ.S .0

  CMP.W #$20,D0
  BEQ.S .0

  MOVE.W D0,SaveBeamCon0
  MOVE.W #-1,VgaModeFlag
  RTS
.0:
  MOVE.W #0,SaveBeamCon0

  MOVE.W intenar+hardware,D1
  MOVE.W  #$0020,intena+hardware
  MOVE.W  #$0020,intreq+hardware
.1:
  BTST  #5,intreqr+1+hardware
  BEQ.S .1

  MOVE.W  #$0020,intreq+hardware

.2
  MOVE.L vposr+hardware,D0
  AND.L #$1FF00,D0

  CMP.L #$12000,D0
  BLT.S .3

  MOVE.W #$20,SaveBeamCon0
  BRA.S .4

.3

  BTST  #5,intreqr+1+hardware
  BEQ.S .2

.4
  OR.W #$8000,D1
  MOVE.W D1,intena+hardware

  BTST.B #0,ChipsetIdValue      ;ecs agnus
  BNE.S .5

  MOVE.W SaveBeamCon0,D0
  EOR.W #$20,D0
  MOVE.W D0,beamcon0+hardware

.4a:
  BTST  #5,intreqr+1+hardware
  BEQ.S .4a

  MOVE.W  #$0020,intreq+hardware

.5
  MOVEM.L (A7)+,D0-D1/A0
  RTS

BplCountToBplCon:
  ADD.W D0,D0
  MOVE.W bplConValues(PC,D0),D0
  RTS
bplConValues:
  DC.W 0,$1000,$2000,$3000,$4000,$5000,$6000,$7000,$0010

;bit 0, ecs agnus
;bit 1, ecs denise
;bit 2, aga
GetChipsetInfo:
  MOVEM.L D1-D2,-(A7)
  move.w lisaid+hardware,d0

  moveq  #31-1,d2
  and.w  #$ff,d0
check_loop:
  move.w lisaid+hardware,d1
  and.w  #$ff,d1
  cmp.b  d0,d1
  bne.b  not_ECS
  dbf    d2,check_loop
  or.b   #$f9,d0
  BRA.S checkAgnus
not_ECS:
  move.w  #$ff,d0
checkAgnus:
  BSET #0,D0
  MOVE.W vposr+hardware,D1
  AND.W #$7f00,D1
  LSR.W #8,D1
  BEQ.S .1  ;ocs pal
  CMP.B #$10,D1
  BEQ.S .1  ;ocs ntsc

  BCLR #0,D0

.1
  MOVE.B D0,ChipsetIdValue
  MOVEM.L (A7)+,D1-D2
  rts

saveAgaColors:
  BTST.B #2,ChipsetIdValue      ;aga
  BNE.W .1

  MOVEM.L D1-D5/A0/A4/A5,-(SP)

  MOVE.L RegSnoopAddr,A5
  MOVE.W bplcon2(A5),D4
  SWAP D4
  MOVE.W bplcon3(A5),D4

  LEA hardware,A5
  MOVE.W #$100,bplcon2(A5)

  MOVE.W #512,bplcon3(A5)
  MOVE.W $180(a5),D2
  MOVE.W $182(a5),D3
  MOVE.W #0,bplcon3(a5)
  SWAP D2
  SWAP D3
  MOVE.W $180(a5),D2
  MOVE.W $182(a5),D3
  SWAP D2
  SWAP D3
  MOVE.L D2,SaveAgaColor0
  MOVE.L D3,SaveAgaColor1

  MOVE.L AgaPaletteSave,D5
  BEQ .2
  MOVE.L D5,A4
  MOVE.W #0,D5

.nextbank
  MOVE.W #31,D1
  LEA color00(a5),A0
.nextcol
  MOVE.W D5,bplcon3(A5)

  MOVE.W (A0),D2

  EOR.W #512,D5
  MOVE.W D5,bplcon3(A5)
  EOR.W #512,D5

  MOVE.W (A0)+,D3

  MOVE.W D2,(A4)+
  MOVE.W D3,(A4)+

  DBF D1,.nextcol

  ADD.W #$2000,D5
  BCC .nextbank

.2
  MOVE.W D4,bplcon3(A5)
  SWAP D4
  MOVE.W D4,bplcon2(A5)

  MOVEM.L (SP)+,D1-D5/A0/A4/A5
.1
  RTS

restoreAgaColors2:
  BTST.B #2,ChipsetIdValue      ;aga
  BNE.S .1
  MOVEM.L D1/D4/D5/A0/A4/A5,-(SP)
  MOVE.L AgaPaletteSave,D5

  LEA hardware,A5
  BRA.S agarest
.1
  RTS

restoreAgaColors:
  BTST.B #2,ChipsetIdValue      ;aga
  BNE.W restdone

  MOVEM.L D1/D4/D5/A0/A4/A5,-(SP)

  LEA hardware,A5

  MOVE.L SaveAgaColor0,D2
  MOVE.L SaveAgaColor1,D3
  MOVE.W #0,bplcon3(A5)
  MOVE.W D2,color00(a5)
  MOVE.W D3,color01(a5)
  MOVE.W #512,bplcon3(a5)
  SWAP D2
  SWAP D3
  MOVE.W D2,color00(a5)
  MOVE.W D3,color01(a5)

  MOVE.L AgaPaletteSave,D5
agarest:
  TST.L D5
  BEQ.W restskip

  MOVE.L D5,A4
  MOVE.W #0,D5

.nextbank
  MOVE.W #31,D1
  LEA color00(a5),A0
.nextcol
  MOVE.W D5,bplcon3(A5)

  MOVE.W (A4)+,(A0)

  EOR.W #512,D5
  MOVE.W D5,bplcon3(A5)
  EOR.W #512,D5

  MOVE.W (A4)+,(A0)+

  DBF D1,.nextcol

  ADD.W #$2000,D5
  BCC .nextbank

restskip:
  MOVEM.L (SP)+,D1/D4/D5/A0/A4/A5
restdone:
  RTS

random:
  movem.l d1-d2,-(a7)
  move.l  seed,D0
  btst    #1,D0
  sne     D1
  btst    #5,D0
  sne     D2
  eor.b   D2,D1
  btst    #6,D0
  sne     D2
  eor.b   D2,D1
  btst    #31,D0
  sne     D2
  eor.b   D2,D1
  add.b   D1,D1
  addx.l  D0,D0
  move.l  D0,seed
  movem.l (a7)+,d1-d2
  rts

;CheckKeys
;  LEA keydata,A0
;  MOVE.W #128-1,D0
;checkAll
;  TST.B (A0)+
;  BNE.S CheckKeys
;  DBF D0,checkAll
;  RTS

RestoreDisplay1:
  LEA hardware,A5
  MOVE.W  #$0300,$96(A5)
  MOVE.W  #$7fff,$9A(A5)
  LEA EXT_1000,A0
  LEA ChipramSave1,A1
LAB_A119F6:
  MOVE.L  (A0),D1
  tst.b full64k
  bne.s .1
  MOVEP.L 0(A1),D2
  MOVEP.L D1,0(A1)
  ADDQ.W  #8,A1
  bra.s .2
.1
  MOVE.L  (A1),D2
  MOVE.L  D1,(A1)+
.2
  MOVE.L  D2,(A0)+
  CMP.L memSaveEnd,A0
  BNE.S LAB_A119F6
  if rsnoop=1
  MOVE.L  SaveCop1Lch,cop1lch(A5)
  endc

  MOVE.B ChipsetIdValue,D1
  MOVE.W  SaveDiwStart,D0
  if rsnoop=0
  BEQ.S LAB_A11A2A
  endc
  MOVE.W  D0,$8E(A5)
LAB_A11A2A:
  MOVE.W  SaveDiwStop,D0
  if rsnoop=0
  BEQ.S LAB_A11A36
  endc
  MOVE.W  D0,$90(A5)
LAB_A11A36:
  BTST #1,D1      ;ecs denise
  BNE.S LAB_A11A36_1
  MOVE.W  SaveDiwHigh,D0
  if rsnoop=0
  ;BNE.S LAB_A11A36_1
  endc
  ;MOVE.W D0,$1e4(A5)
LAB_A11A36_1:
  MOVE.W  SaveDdfStrt,D0
  if rsnoop=0
  BEQ.S LAB_A11A42
  endc
  MOVE.W  D0,$92(A5)
LAB_A11A42:
  MOVE.W  SaveDdfStop,D0
  if rsnoop=0
  BEQ.S LAB_A11A4E
  endc
  MOVE.W  D0,$94(A5)
LAB_A11A4E:

  MOVE.W  SaveColor00,D0
  if rsnoop=0
  BEQ.S LAB_A11A5A
  endc
  MOVE.W  D0,$180(A5)
LAB_A11A5A:
  MOVE.W  SaveColor01,D0
  if rsnoop=0
  BEQ.S LAB_A11A66
  endc
  MOVE.W  D0,$182(A5)
LAB_A11A66:
  JSR restoreAgaColors
  MOVE.W  SaveBplCon0,D0
  if rsnoop=0
  BEQ.S LAB_A11A72
  endc
  MOVE.W  D0,$100(A5)
LAB_A11A72:
  MOVE.W  SaveBplCon1,D0
  if rsnoop=0
  BEQ.S LAB_A11A7E
  endc
  MOVE.W  D0,$102(A5)
LAB_A11A7E:
  MOVE.W  SaveBplCon2,D0
  if rsnoop=0
  BEQ.S LAB_A11A7E_1
  endc
  MOVE.W  D0,$104(A5)
LAB_A11A7E_1:
  BTST #1,D1      ;ecs denise
  BNE.S LAB_A11A7E_2
  MOVE.W  SaveBplCon3,D0
  if rsnoop=0
  BEQ.S LAB_A11A7E_2
  endc
  MOVE.W  D0,$106(A5)
LAB_A11A7E_2:
  BTST #2,D1      ;aga
  BNE.S LAB_A11A7E_3
  MOVE.W  SaveBplCon4,D0
  if rsnoop=0
  BEQ.S LAB_A11A7E_3
  endc
  MOVE.W  D0,$10c(A5)
LAB_A11A7E_3:
  BTST #2,D1      ;aga
  BNE.S LAB_A11A7E_4
  MOVE.W  SaveFmode,D0
  if rsnoop=0
  BEQ.S LAB_A11A7E_4
  endc
  MOVE.W  D0,$1fc(A5)
LAB_A11A7E_4:
  BTST #0,D1      ;ecs agnus
  BNE.S LAB_A11A8A

  MOVE.W  SaveBeamCon0,D0
  if rsnoop=0
  BEQ.S LAB_A11A8A
  endc
  MOVE.W  D0,$1dc(A5)
LAB_A11A8A:
  MOVE.W  SaveBpl1Mod,D0
  if rsnoop=0
  BEQ.S LAB_A11A96
  endc
  MOVE.W  D0,$108(A5)
LAB_A11A96:
  MOVE.W  SaveBpl2Mod,D0
  if rsnoop=0
  BEQ.S LAB_A11AA2
  endc
  MOVE.W  D0,$10A(A5)
LAB_A11AA2:
  MOVE.L  Int3Save,AUTO_INT3.W
  RTS

  if rsnoop=0
RestoreDisplay2:
  MOVE.L RegSnoopAddr,A6
  LEA hardware,A5
  MOVE.L  SaveCop1Lch,$80(A6)
  MOVE.L  SaveCop2LcCopy,$84(A6)
  MOVE.L  SaveDiwStart,$8E(A6)
  MOVE.L  SaveDdfStrt,$92(A6)
  MOVE.L  SaveBpl1Pth,$E0(A6)
  MOVE.L  SaveBplCon0,$100(A6)
  MOVE.L  SaveBpl1Mod,$108(A6)
  MOVE.L  SaveColor00,$180(A6)
  TST.W $108(A6)
  BEQ.S LAB_A114F4
  MOVE.W  $108(A6),$108(A5)
LAB_A114F4:
  TST.W $10A(A6)
  BEQ.S LAB_A11500
  MOVE.W  $10A(A6),$10A(A5)
LAB_A11500:
  TST.W $100(A6)
  BEQ.S LAB_A1150C
  MOVE.W  $100(A6),$100(A5)
LAB_A1150C:
  TST.W $102(A6)
  BEQ.S LAB_A11518
  MOVE.W  $102(A6),$102(A5)
LAB_A11518:
  TST.L $80(A6)
  BEQ.S LAB_A11524
  MOVE.L  $80(A6),$80(A5)
LAB_A11524:
  TST.L $84(A6)
  BEQ.S LAB_A11530
  MOVE.L  $84(A6),$84(A5)
LAB_A11530:
  TST.W $180(A6)
  BEQ.S LAB_A1153C
  MOVE.W  $180(A6),$180(A5)
LAB_A1153C:
  TST.W $182(A6)
  BEQ.S LAB_A11548
  MOVE.W  $182(A6),$182(A5)
LAB_A11548:
  RTS
  endc
MakeMainDisplay:
  MOVEM.L D0-D3/A0/A5,-(A7)
  LEA hardware,A5
  TST.W VgaModeFlag
  BEQ.W LAB_A115BA

  MOVE.W #$b,$1de(a5) ;hsstrt
  MOVE.W #$15,$1c2(a5)  ;hsstop
  MOVE.W #$47,$1e2(a5)  ;hcenter
  MOVE.W #$79,$1c0(a5)  ;htotal

  MOVE.W #8,$1e0(a5)  ;vsstrt
  MOVE.W #$10,$1ca(a5)  ;vsstop
  TST.B fullPal
  BNE.S .3

  MOVE.W #$1ec,$1c8(a5) ;vtotal
  MOVE.L #$1ed0018,$1cc(a5) ;vbstrt+vbstop
  MOVE.L  #$2d4bbaef,diwstrt(A5)

  MOVE.W #$0100,diwhigh(a5)
  BRA.S .4
.3:
  MOVE.W #$24d,$1c8(a5) ;vtotal
  MOVE.L #$24e0018,$1cc(a5) ;vbstrt+vbstop
  MOVE.L  #$2d4b1def,diwstrt(A5)
  MOVE.W #$0200,diwhigh(a5)
.4
  MOVE.L #$00010021,$1c4(a5) ;hbstrt+hbstop

  MOVE.W  #$1241,bplcon0(A5)
  MOVE.L  #$0024006c,ddfstrt(A5)

  MOVE.W  #-80,bpl1mod(A5)
  MOVE.W  #0,bpl2mod(A5)

  MOVE.W  #$c81,bplcon3(A5)
  MOVE.W  #$11,bplcon4(A5)
  MOVE.W  #$1b88,beamcon0(A5)
  MOVE.W #$4000,fmode(a5)
  MOVE.W #$aa,bplcon1(a5)
  BRA.S LAB_A1160C
LAB_A115BA:
  TST.B fullPal
  BEQ.S .1
  MOVE.L  #$2d8125d1,diwstrt(A5)
  BRA.S .2
.1
  MOVE.L  #$2d81f5d1,diwstrt(A5)
.2
  MOVE.L  #$003c00d0,ddfstrt(A5)
  MOVE.W  #0,bpl1mod(A5)
  MOVE.W  #0,bpl2mod(A5)
  MOVE.W  #$9000,bplcon0(A5)
  MOVE.L  #0,bplcon1(A5)

  MOVE.B ChipsetIdValue,D0
  BTST #0,D0      ;ecs agnus
  BNE.S .ecsskip

  MOVE.W SaveBeamCon0,beamcon0(a5)

  BTST #2,D0      ;aga
  BNE.S   .agaskip1

  MOVE.W #$c40,bplcon3(a5)
  MOVE.W #$11,bplcon4(a5)
  MOVE.W #0,fmode(a5)
.agaskip1
.ecsskip:

LAB_A1160C:

  MOVE.L  ArBgCol,color00(A5)
  MOVE.L  #EXT_1000,bpl1pth(A5)
  MOVE.L  #EXT_200,spr0pth(A5)

  TST.B viewingPrefs
  BEQ.W LAB_A116E0
  MOVE.W  #$0024,bplcon2(A5)

  MOVE.W  currMouseX,D2
  MOVE.W  currMouseY,D3
  TST.W VgaModeFlag
  BEQ.S .nv

  ADD.W #$38,D2
  LSR.W #1,D2
  SUB.W #$20,D3
  ADD.W D3,D3

.nv
  MOVEQ #0,D1
  MOVE.W  D2,D1   ;currMouseX
  LSR.W #2,D1     ;drop lower two bits

  MOVE.W  D3,D0   ;currMouseY
  SUB.W #$10,D0   ;find top
  LSL.W #8,D0
  OR.W  D0,D1
  SWAP  D1

  MOVE.W  D3,D0   ;currMouseY (bottom)
  LSL.W #8,D0
  OR.W  D0,D1

  MOVE.W  D2,D0      ;currMouseX
  LSR.W #1,D0
  ANDI.W  #1,D0      ;get higher of the two lowest bits
  OR.W  D0,D1

  MOVE.W  D3,D0        ;currMouseY
  SUB.W #$10,D0        ;find top
  LSR.W #8,D0          ;get high bit only
  LSL.W #2,D0          ;shift into place
  OR.W  D0,D1

  MOVE.W  D3,D0        ;currMouseY (bottom)
  LSR.W #8,D0          ;get high bit only
  LSL.W #1,D0          ;shift into place
  OR.W  D0,D1

  MOVE.L  D1,$204.W
  CLR.L EXT_200.W
  MOVE.L #EXT_200,D0
  MOVE.L  D0,spr1pth(A5)
  MOVE.L  D0,spr2pth(A5)
  MOVE.L  D0,spr3pth(A5)
  MOVE.L  D0,spr4pth(A5)
  MOVE.L  D0,spr5pth(A5)
  MOVE.L  D0,spr6pth(A5)
  MOVE.L  D0,spr7pth(A5)
  MOVE.L  #$204,spr0pth(A5)
  BRA.S LAB_A1170A
LAB_A116E0:
  CLR.L EXT_204.W
  MOVE.L  #$204,spr1pth(A5)
  MOVE.L  #$204,spr2pth(A5)
  MOVE.L  #$204,spr3pth(A5)
  MOVE.L  #$204,spr4pth(A5)
  MOVE.L  #$204,spr5pth(A5)
  MOVE.L  #$204,spr6pth(A5)
  MOVE.L  #$204,spr7pth(A5)
  MOVE.L  #$204,spr0pth(A5)

LAB_A1170A:
  MOVEM.L (A7)+,D0-D3/A0/A5
  RTS
MakeMempeekerDisplay:
  MOVEM.L D0-D4/A0/A3-A5,-(A7)
  LEA hardware,A5

  MOVEQ #$F,D0
  LEA SaveColor,A4
  LEA $180(A5),A3
LAB_A117EE:
  MOVE.L  (A4)+,(A3)+
  DBF D0,LAB_A117EE

  MOVE.B ChipsetIdValue,D0
  BTST #0,D0      ;ecs
  BNE.S .ecsskip

  MOVE.W  CopyBeamCon0,beamcon0(a5)

.ecsskip
  BTST #0,D0      ;ecs
  BNE.S .ecsskip2
  MOVE.W #0,bplcon3(a5)

.ecsskip2
  BTST #2,D0      ;aga
  BNE.S   .skip1
  MOVE.L AgaPaletteSave,D0
  BEQ.S .skip1

  BSR restoreAgaColors2
  MOVE.W #0,bplcon3(a5)

  MOVE.W CopyFmode,fmode(a5)
  MOVE.W #$11,bplcon4(a5)
.skip1
  MOVE.W  CopyDiwStart,diwstrt(a5)
  MOVE.W  CopyDiwStop,diwstop(a5)
  MOVE.W  CopyDdfStrt,ddfstrt(a5)
  MOVE.W  CopyDdfStop,ddfstop(a5)
  MOVE.W  CopyBplMod1,bpl1mod(a5)
  MOVE.W  CopyBplMod2,bpl2mod(a5)
  MOVE.W  CopyBplCon1,bplcon1(a5)

  MOVEQ #7,D0
paldone:
  LEA CopyBpl1Pth,A4
  LEA $E0(A5),A3
  BTST  #2,CopyBplCon0Lo
  BEQ.S LAB_A11818
  BTST  #7,4(A5)
  BNE.S LAB_A11818
  LEA bpl1Work,A4
LAB_A11818:
  MOVE.L  (A4)+,(A3)+
  DBF D0,LAB_A11818
  MOVE.W  CopyBplCon0,D0
  ANDI.W  #$fe75,D0
  MOVE.W  D0,D1
  ANDI.W  #$7010,D1
  BNE.S LAB_A1183A
  BTST  #4,D0
  BNE.S LAB_A1183A
  ORI.W #$1000,D0
LAB_A1183A:
  MOVE.W D0,bplcon0(a5)
  MOVE.W  CopyBplCon2,D0
  ANDI.W  #$ffc0,D0

  MOVE.W D0,bplcon2(a5)
  CMPI.B  #$80,picViewerMode
  BEQ.S LAB_A11866
  MOVEQ #0,D0
  ADDQ.W  #1,LAB_A480DA
LAB_A11866:
  TST.B memPeekerHelpFlag
  BEQ.S LAB_A1188A
  MOVE.W  memPeekerBlackFlag,D1
  LEA color00+hardware,A4
  MOVE.W  D1,$22(A4)
  MOVE.W  D1,$2A(A4)
  MOVE.W  D1,$32(A4)
  MOVE.W  D1,$3A(A4)
LAB_A1188A:
  TST.B memPeekerHelpFlag
  BNE.S LAB_A118C6
  MOVE.L  #EXT_100,spr0pth(a5)
  MOVE.L  #EXT_124,spr1pth(a5)
  MOVEQ #5,D1
  MOVE.W  #$0128,D0
LAB_A118B0:
  MOVE.L  #0,(a5,d0)
  ADDQ.W  #2,D0
  ADDQ.W  #2,D0
  DBF D1,LAB_A118B0
  BRA.S LAB_A118F2
LAB_A118C6:
  MOVEQ #7,D2
  MOVE.W  #$0120,D0
  MOVE.L  #EXT_100,D1
LAB_A118D2:
  MOVE.L D1,(a5,d0)
  ADDQ.W  #4,D0
  ADDI.L  #$000000d8,D1
  DBF D2,LAB_A118D2
  MOVE.W #$8020,dmacon(a5)
LAB_A118F2:
  MOVEM.L (A7)+,D0-D4/A0/A3-A5
  RTS
VBlankInt:
  MOVE.W  D0,-(A7)
  BTST  #5,intreqr+1+hardware
  BEQ.W LAB_A119D0
  MOVE.W  #$0020,intreq+hardware
  TST.B picViewerMode
  BEQ.S LAB_A1194A
  BSR.W MakeMempeekerDisplay
  BRA.S LAB_A1194E
LAB_A1194A:
  BSR.W MakeMainDisplay
LAB_A1194E:
  TST.B BlankerPrefsFlag
  BEQ.S LAB_A119A0
  ADDQ.W  #1,BlankerCount
  CMPI.W  #$3a98,BlankerCount
  BLS.S LAB_A1197E
  MOVE.W  #$3a98,BlankerCount
  MOVE.W  #0,color00+hardware
  MOVE.W  #$0100,dmacon+hardware
LAB_A1197E:
  BTST  #0,RawKeyCodeLo
  BEQ.S LAB_A119A0
  CMPI.W  #$3a98,BlankerCount
  BCS.S LAB_A1199A
  MOVE.W  #$8100,dmacon+hardware
LAB_A1199A:
  CLR.W BlankerCount
LAB_A119A0:
  ADDQ.W  #1,keyRepeat
  TST.B trackerPlaying
  BNE.S LAB_A119CA
  TST.B flashLedOnKey
  BEQ.S LAB_A119CA
  MOVE.W  keyRepeat,D0
  ANDI.W  #3,D0
  BNE.S LAB_A119CA
  EORI.B  #2,ciaapra
LAB_A119CA:
  JSR SUB_A22396

  TST.B trackerPlaying
  BEQ.W LAB_A119D0
  JSR SUB_413A54

LAB_A119D0:
  MOVE.W  (A7)+,D0
  RTE
GetMappedKeyCode:
  MOVEM.L D1/A0,-(A7)
  BSR.S DecodeRawKeyCode
  TST.W D0
  BEQ.S LAB_A11ACC
  CMP.W KeyCode,D0
  BNE.S LAB_A11ACC
  CMPI.W  #$00d,keyRepeat
  BHI.S LAB_A11ADE
  CLR.W D0
  BRA.S LAB_A11AD8
LAB_A11ACC:
  MOVE.W  D0,KeyCode
  CLR.W keyRepeat
LAB_A11AD8:
  MOVEM.L (A7)+,D1/A0
  RTS


LAB_A11ADE:
  MOVE.W  #$000c,keyRepeat
  BRA.S LAB_A11AD8
DecodeRawKeyCode:
  MOVEM.L D1/A0,-(A7)
  MOVE.W  RawKeyCode,D1
  BTST  #0,D1
  BEQ.S LAB_A11B22
  ANDI.W  #$00ff,D1
  NOT.B D1
  LSR.W #1,D1
  TST.B AltKey
  BEQ.S LAB_A11B18
  MOVEQ #$40,D0
  CMPI.W  #2,D1
  BEQ.S LAB_A11B24
  MOVEQ #$27,D0
  CMPI.W  #$002a,D0
  BEQ.S LAB_A11B24
LAB_A11B18:
  BSR.S getKeymap
  MOVEQ #0,D0
  MOVE.B  0(A0,D1.W),D0
  BRA.S LAB_A11B24
LAB_A11B22:
  MOVEQ #0,D0
LAB_A11B24:
  MOVEM.L (A7)+,D1/A0
  RTS
getKeymap:
  TST.B keymap
  BEQ.S LAB_A11B44
  CMP.B #1,keymap
  BEQ LAB_A11B44_2

  CMP.B #2,keymap
  BEQ LAB_A11B44_3
  LEA keymapUK(PC),A0
  TST.B IgnoreShift
  BNE.S LAB_A11B54
  TST.B ShiftKey
  BEQ.S LAB_A11B54
  LEA keymapUpperUK(PC),A0
  BRA.S LAB_A11B54
LAB_A11B44_2
  LEA keymapUS(PC),A0
  TST.B IgnoreShift
  BNE.S LAB_A11B54
  TST.B ShiftKey
  BEQ.S LAB_A11B54
  LEA keymapUpperUS(PC),A0
  BRA.S LAB_A11B54
LAB_A11B44_3
  LEA keymapIT(PC),A0
  TST.B IgnoreShift
  BNE.S LAB_A11B54
  TST.B ShiftKey
  BEQ.S LAB_A11B54
  LEA keymapUpperIT(PC),A0
  BRA.S LAB_A11B54
LAB_A11B44:
  LEA keymapDE(PC),A0
  TST.B IgnoreShift
  BNE.S LAB_A11B54
  TST.B ShiftKey
  BEQ.S LAB_A11B54
  LEA keymapUpperDE(PC),A0
LAB_A11B54:
  RTS
keymapDE:
  DC.L  $60313233,$34353637,$383930df,$005c0030
  DC.L  $71776572,$747a7569,$6f70fc2b,$00313233
  DC.L  $61736466,$67686a6b,$6cf6e423,$00343536
  DC.L  $3c797863,$76626e6d,$2c2e2d00,$2e373839
  DC.L  $2008090d,$0d1b8400,$00002d00,$80818382
  DC.L  $8a8b8c8d,$8e8f9091,$92935b5d,$2f2a2b85
  DS.L  2
keymapUpperDE:
  DC.L  $7e2122a7,$2425262f,$28293d3f,$007c0030
  DC.L  $51574552,$545a5549,$4f50dc2a,$00313233
  DC.L  $41534446,$47484a4b,$4cd6c45e,$00343536
  DC.L  $3e595843,$56424e4d,$3b3a5f00,$2e373839
  DC.L  $2008090d,$0d1b8400,$00002d00,$80818382
  DC.L  $8a8b8c8d,$8e8f9091,$92937b7d,$2f2a2b85
  DS.L  2
keymapUS:
  DC.L  $60313233,$34353637,$3839302d,$3d5c0030
  DC.L  $71776572,$74797569,$6f705b5d,$00313233
  DC.L  $61736466,$67686a6b,$6c3b2700,$00343536
  DC.L  $007a7863,$76626e6d,$2c2e2f00,$2e373839
  DC.L  $2008090d,$0d1b8400,$00002d00,$80818382
  DC.L  $8a8b8c8d,$8e8f9091,$92935b5d,$2f2a2b85
  DS.L  2
keymapUpperUS:
  DC.L  $7e214023,$24255e26,$2a28295f,$2b7c0030
  DC.L  $51574552,$54595549,$4f507b7d,$00313233
  DC.L  $41534446,$47484a4b,$4c3a2200,$00343536
  DC.L  $005a5843,$56424e4d,$3c3e3f00,$2e373839
  DC.L  $2008090d,$0d1b8400,$00002d00,$80818382
  DC.L  $8a8b8c8d,$8e8f9091,$92937b7d,$2f2a2b85
  DS.L  2
keymapUK:
  ;       ` 1 2 3  4  5 6 7   8 9 0 -   = \   0
  DC.L  $60313233,$34353637,$3839302d,$3d5c0030
  ;       q w e r   t y u i   o p [ ]     1 2 3
  DC.L  $71776572,$74797569,$6f705b5d,$00313233
  ;       a s d f   g h j k   l ; #       4 5 6
  DC.L  $61736466,$67686a6b,$6c3b2300,$00343536
  ;         z x c   v b n m   , . /     . 7 8 9
  DC.L  $007a7863,$76626e6d,$2c2e2f00,$2e373839
  DC.L  $2008090d,$0d1b8400,$00002d00,$80818382
  ;                               ( )   / * +
  DC.L  $8a8b8c8d,$8e8f9091,$92932829,$2f2a2b85
  DS.L  2

keymapUpperUK:
  ;       ~ ! " �   $ % ^ &   * ( ) _   + \   0
  DC.L  $7e2122a3,$24255e26,$2a28295f,$2b7c0030
  ;       Q W E R   T Y U I   O P { }     1 2 3
  DC.L  $51574552,$54595549,$4f507b7d,$00313233
  ;       A S D F  G H J K    L : @       4 5 6
  DC.L  $41534446,$47484a4b,$4c3a4000,$00343536
  ;         Z X C   V B N M   < > ?     . 7 8 9
  DC.L  $005a5843,$56424e4d,$3c3e3f00,$2e373839
  DC.L  $2008090d,$0d1b8400,$00002d00,$80818382

  ;                               ( )   / * +
  DC.L  $8a8b8c8d,$8e8f9091,$92932829,$2f2a2b85
  DS.L  2

keymapIT:
  ;       ` 1 2 3  4  5 6 7   8 9 0       \   0
  DC.L  $60313233,$34353637,$38393000,$005c0030
  ;       q w e r   t y u i   o p   +     1 2 3
  DC.L  $71776572,$74797569,$6f70002b,$00313233
  ;       a s d f   g h j k   l           4 5 6
  DC.L  $61736466,$67686a6b,$6c000000,$00343536
  ;       < z x c   v b n m   , . -     . 7 8 9
  DC.L  $3c7a7863,$76626e6d,$2c2e2d00,$2e373839

  DC.L  $2008090d,$0d1b8400,$00002d00,$80818382
  ;                               [ ]   / * +
  DC.L  $8a8b8c8d,$8e8f9091,$92935b5d,$2f2a2b85
  DS.L  2
keymapUpperIT:
  ;       ~ ! " �   $ % & /   ( ) = ?   ^ |   0
  DC.L  $7e2122a3,$2425262f,$28293d3f,$5e7c0030
  ;       Q W E R   T Y U I   O P   *     1 2 3
  DC.L  $51574552,$54595549,$4f50002a,$00313233
  ;       A S D F  G H J K    L @ #       4 5 6
  DC.L  $41534446,$47484a4b,$4c4023a7,$00343536
  ;       > Z X C   V B N M   ; : _     . 7 8 9
  DC.L  $3e5a5843,$56424e4d,$3b3a5f00,$2e373839

  DC.L  $2008090d,$0d1b8400,$00002d00,$80818382
  ;                               { }   / * +
  DC.L  $8a8b8c8d,$8e8f9091,$92937b7d,$2f2a2b85
  DS.L  2
PrintCharToScreenAndPrinter:
  MOVEM.L D0/A0,-(A7)
  TST.B viewingPrefs
  BNE.S LAB_A11D2C
  MOVEQ #$50,D0
  MULU  cursorY,D0
  ADD.W cursorX,D0
  MOVEA.L CurrentPage,A0
  MOVE.B  D1,0(A0,D0.W)
  TST.B printerDumpToggle
  BEQ.S LAB_A11D2C
  MOVEQ #0,D0
  MOVE.B  D1,D0
  JSR PrintCharToPrinter
LAB_A11D2C:
  MOVEM.L (A7)+,D0/A0
  RTS

Print1DigitHex:
  MOVE.L  D1,-(A7)
  MOVEQ #1,D1
  JSR PrintValue
  MOVE.L  (A7)+,D1
  RTS
Print2DigitHex:
  MOVE.L  D1,-(A7)
  MOVEQ #2,D1
  JSR PrintValue
  MOVE.L  (A7)+,D1
  RTS
;Print3DigitHex:
;  MOVE.L  D1,-(A7)
;  MOVEQ #3,D1
;  BSR.W PrintValue
;  MOVE.L  (A7)+,D1
;  RTS
Print4DigitHex:
  MOVE.L  D1,-(A7)
  MOVEQ #4,D1
  JSR PrintValue
  MOVE.L  (A7)+,D1
  RTS
Print6DigitHex:
  MOVE.L  D1,-(A7)
  MOVEQ #6,D1
  JSR PrintValue
  MOVE.L  (A7)+,D1
  RTS
Print8DigitHex:
  MOVE.L  D1,-(A7)
  MOVEQ #8,D1
  JSR PrintValue
  MOVE.L  (A7)+,D1
  RTS
PrintAddressHex:
  MOVE.L  D1,-(A7)
  MOVE.W cpuAddrSize,D1
  JSR PrintValue
  MOVE.L  (A7)+,D1
  RTS
fontData:
  DS.L  2
  DC.L  $183c3c18,$18001800,$6c6c0000
  DS.L  1
  DC.L  $6c6cfe6c,$fe6c6c00,$183e603c,$067c1800
  DC.L  $00c6cc18,$3066c600,$386c6876,$dccc7600
  DC.L  $18183000
  DS.L  1
  DC.L  $0c183030,$30180c00,$30180c0c,$0c183000
  DC.L  $00663cff,$3c660000,$0018187e,$18180000
  DS.L  1
  DC.L  $00181830,$0000007e
  DS.L  2
  DC.L  $00181800,$03060c18,$3060c000,$3c666e7e
  DC.L  $76663c00,$18381818,$18187e00,$3c66061c
  DC.L  $30667e00,$3c66061c,$06663c00,$1c3c6ccc
  DC.L  $fe0c1e00,$7e607c06,$06663c00,$1c30607c
  DC.L  $66663c00,$7e66060c,$18181800,$3c66663c
  DC.L  $66663c00,$3c66663e,$060c3800,$00181800
  DC.L  $00181800,$00181800,$00181830,$0c183060
  DC.L  $30180c00,$00007e00,$007e0000,$30180c06
  DC.L  $0c183000,$3c66060c,$18001800,$7cc6dede
  DC.L  $dec07800,$183c3c66,$7ec3c300,$fc66667c
  DC.L  $6666fc00,$3c66c0c0,$c0663c00,$f86c6666
  DC.L  $666cf800,$fe666078,$6066fe00,$fe666078
  DC.L  $6060f000,$3c66c0ce,$c6663e00,$6666667e
  DC.L  $66666600,$7e181818,$18187e00,$0e060606
  DC.L  $66663c00,$e6666c78,$6c66e600,$f0606060
  DC.L  $6266fe00,$82c6eefe,$d6c6c600,$c6e6f6de
  DC.L  $cec6c600,$386cc6c6,$c66c3800,$fc66667c
  DC.L  $6060f000,$386cc6c6,$c66c3806,$fc66667c
  DC.L  $6c66e300,$3c667038,$0e663c00,$7e5a1818
  DC.L  $18183c00,$66666666,$66663e00,$c3c36666
  DC.L  $3c3c1800,$c6c6c6d6,$feeec600,$c3663c18
  DC.L  $3c66c300,$c3c3663c,$18183c00,$fec68c18
  DC.L  $3266fe00,$3c303030,$30303c00,$c0603018
  DC.L  $0c060300,$3c0c0c0c,$0c0c3c00,$10386cc6
  DS.L  2
  DC.L  $000000fe,$18180c00
  DS.L  1
  DC.L  $00003c06,$1e663b00,$e0606c76,$66663c00
  DC.L  $00003c66,$60663c00,$0e06366e,$66663b00
  DC.L  $00003c66,$7e603c00,$1c363078,$30307800
  DC.L  $00003b66,$663cc67c,$e0606c76,$6666e600
  DC.L  $18003818,$18183c00,$06000606,$0606663c
  DC.L  $e060666c,$786ce600,$38181818,$18183c00
  DC.L  $00006677,$6b636300,$00007c66,$66666600
  DC.L  $00003c66,$66663c00,$0000dc66,$667c60f0
  DC.L  $00003d66,$663e0607,$0000ec76,$6660f000
  DC.L  $00003e60,$3c067c00,$08183e18,$181a0c00
  DC.L  $00006666,$66663b00,$00006666,$663c1800
  DC.L  $0000636b,$6b363600,$00006336,$1c366300
  DC.L  $00006666,$663c1870,$00007e4c,$18327e00
  DC.L  $0e181870,$18180e00,$18181818,$18181800
  DC.L  $7018180e,$18187000,$729c0000
  DS.L  1
  DC.L  $cc33cc33,$cc33cc33,$c3183c66,$7ec3c300
  DC.L  $33003c06,$1e663b00,$c33c66c3,$c3663c00
  DC.L  $66003c66,$66663c00,$66006666,$66663e00
  DC.L  $66006666,$66663b00,$7c66666c,$66666c60
  DC.L  $788078cc,$78047800,$7f414141,$41417f00
  DC.L  $03030303,$337f3000,$48241209,$12244800
  DC.L  $1c363078,$30307e00
PrintInputChar:
  MOVE.L  D0,-(A7)
LAB_A120BC:
  BSR.W GetMappedKeyCode
  TST.B insertmode
  BNE.S LAB_A120E8
  TST.B D0
  BEQ.S LAB_A120E8
  CMPI.W  #$0020,D0
  BEQ.S LAB_A120E4
  CMPI.W  #$001f,D0
  BLS.S LAB_A120E8
  CMPI.B  #$7f,D0
  BLS.S LAB_A120E4
  CMPI.B  #$9f,D0
  BLS.S LAB_A120E8
LAB_A120E4:
  BSR.W InsertSpaceChar
LAB_A120E8:
  JSR PrintChar
  CMPI.W  #$000d,D0
  BNE.S LAB_A120BC
  MOVEQ #$50,D0
  MULU  cursorY,D0
  MOVEA.L CurrentPage,A0
  LEA -80(A0,D0.W),A0
  MOVEQ #$50,D7
  MOVE.L  (A7)+,D0
LAB_A12108:
  RTS
ArMain:
  MOVE.L  A7,saveSp
  TST.B LAB_A483CC
  BEQ.S LAB_A1211E
  JMP LAB_A27018
LAB_A1211E:
  TST.B LAB_A48392
  BEQ.S LAB_A1212C
  JSR SUB_A25462
LAB_A1212C:
  TST.B apiCall
  BNE.S .1
  JSR PrintVirusWarning
.1
  JSR SUB_A1D0A8
  JSR SUB_A2DDB0
  MOVE.W  #$8300,dmacon+hardware
arCommandLoop:
  SF.B EscapeDisabled
  CLR.W flashLedOnKey
  ORI.B #2,ciaapra
  TST.B debuggerMode
  BEQ.S .1

  JSR debugger
.1
  TST.B apiCall
  BEQ.S .2
  JSR handleApiCall
.2
  TST.B restartFlag
  BNE.S LAB_A12108
  BSR.W PrintInputChar
LAB_A12160:
  ST  flashLedOnKey
  JSR readCmdCharSkipSpaces
  TST.B endOfCmdString
  BNE.S arCommandLoop
  JSR SUB_A1827E
  MOVE.W  #$004f,D0
  MOVEA.L A0,A1
  LEA LastCmdBuff,A2
LAB_A12186:
  MOVE.B  (A1)+,(A2)+
  DBF D0,LAB_A12186
  LEA commandTable(PC),A2
  MOVEQ #0,D1
  MOVEA.L A0,A1
  MOVE.L  D7,D6
nextCmd:
  MOVE.L  D6,D7
  MOVEA.L A1,A0
LAB_A1219A:
  JSR readCmdChar
  CMP.B (A2)+,D0
  BNE.S LAB_A121A4
  BRA.S LAB_A1219A
LAB_A121A4:
  TST.B -1(A2)
  BEQ.S LAB_A121C4
LAB_A121AA:
  TST.B (A2)+
  BNE.S LAB_A121AA
  EXG D0,A2
  ADDQ.L  #1,D0
  ANDI.W  #$fffe,D0
  EXG D0,A2
  ADDQ.W  #8,A2
  ADDQ.W  #1,D1
  TST.B (A2)
  BNE.S nextCmd
  JMP PrintWTF
LAB_A121C4:
  JSR SUB_A1827E
  EXG D0,A2
  ADDQ.W  #1,D0
  ANDI.W  #$fffe,D0
  EXG D0,A2
  MOVE.L (A2),A1

  MOVEM.L A0/D7,-(A7)
  MOVE.B endOfCmdString,-(A7)
  MOVE.B cmdSpacesSkipped,-(A7)

  MOVEQ #0,D0

  CMP.L #CMD_DIR,A1
  BNE.S .notdir

  JSR readCmdChar
  CMP.B #" ",D0
  BEQ.S .0
  CMP.B #"A",D0
  BNE.S .1

  LEA dira_help_dummy,A2
  BRA.S .0

.notdir
  CMP.L #CMD_FORMAT,A1
  BNE.S .0

  JSR readCmdChar
  CMP.B #" ",D0
  BEQ.S .0
  CMP.B #"V",D0
  BEQ.S .formatv

  CMP.B #"Q",D0
  BEQ.S .formatq
  BRA.S .1

.formatq
  LEA formatq_help_dummy,A2
  BRA.S .0

.formatv
  LEA formatv_help_dummy,A2
.0
  JSR readCmdCharSkipSpaces
.1
  TST.B endOfCmdString
  BNE.S .exec0

  MOVE.B (A7)+,cmdSpacesSkipped
  MOVE.B (A7)+,endOfCmdString
  MOVEM.L (A7)+,A0/D7

  CMP.B #"?",D0
  BNE.S .exec
  MOVE.L 4(A2),A0
  MOVE.L A0,D0
  BNE.S .helpPrint

  LEA noHelpText(PC),A0
  JSR PrintText
  BRA.W arCommandLoop

.helpPrint
  MOVE.L A0,-(A7)
  LEA helpHeaderText(PC),A0
  JSR PrintText
  MOVE.L (A7)+,A0
  JSR PrintText
  JSR PrintCR
  BRA.W arCommandLoop

.exec0
  MOVE.B (A7)+,cmdSpacesSkipped
  MOVE.B (A7)+,endOfCmdString
  MOVEM.L (A7)+,A0/D7

.exec
; execute command
  JSR (A1)
  BRA.W arCommandLoop
CMD_SETCOP:
  JSR ReadParameter
  TST.B ParamFound
  BEQ.S LAB_A12216
  MOVEA.L D0,A1
  MOVEA.L #$00000e80,A1
  CMPI.L  #$0000149c,EXT_4.W
  BEQ.S LAB_A12210
  MOVEA.L #$00000420,A1
LAB_A12210:
  MOVE.L  A1,currCopper
LAB_A12216:
  LEA currentCopperText(PC),A0
  BSR.W PrintText
  MOVE.L  currCopper,D0
  BSR.W Print6DigitHex
  JSR PrintReady
  RTS

noHelpText
  DC.B 13,"There is no help available for this command.",13,13,0

helpHeaderText
  DC.B 13,"Command help:",13,13,0

currentCopperText:
  DC.B  $D,"Current Copper 0: ",0

  even
maxApiCall EQU 16

handleApiCall
  ST  restartFlag
  MOVE.L SaveCpuRegs,D0
  CMP.W #maxApiCall,D0
  BGT.S .1
  LEA apiTable,A0
  ADD.W D0,D0
  ADD.W D0,D0
  MOVE.L (A0,D0.W),A0
  JSR (A0)
.1
  RTS

apiPrintText:
  MOVE.L SaveCpuRegs+32,A0
  BSR PrintText
  RTS

apiPrintValue:
  MOVE.L SaveCpuRegs+4,D0
  MOVE.L SaveCpuRegs+8,D1
  JSR PrintValue
  RTS

apiLoadFile:
  MOVE.L SaveCpuRegs+36,D0 ;load address from A1 to D0
  MOVE.L SaveCpuRegs+32,A1  ;filename from A0 to A1
  LEA stringWorkspace,A2
  MOVEQ #-1,D1
.copyfname
  ADDQ #1,D1
  MOVE.B (A1)+,(A2)+
  BNE.S .copyfname
  JSR apiLoadFile2

  RTS

apiSaveFile:
  MOVE.L SaveCpuRegs+36,A1 ;save address from A1 to  A1
  MOVE.L SaveCpuRegs+32,A0  ;filename from A0 to A0
  MOVE.L SaveCpuRegs+40,D0  ;end address from A2 to D0

  LEA stringWorkspace,A2
  MOVE.W #-1,D2
.copyfname
  ADD.W #1,D2
  MOVE.B (A0)+,(A2)+
  BNE.S .copyfname

  JSR apiSaveFile2
  RTS

apiSaveData:
  MOVE.L SaveCpuRegs+36,A1 ;save address from A1 to  A1
  MOVE.L SaveCpuRegs+32,A0  ;filename from A0 to A0
  MOVE.L SaveCpuRegs+40,D0  ;end address from A2 to D0

  LEA stringWorkspace,A2
  MOVE.W #-1,D2
.copyfname
  ADD.W #1,D2
  MOVE.B (A0)+,(A2)+
  BNE.S .copyfname

  ST  LAB_A480CA

  JSR apiSaveData2
  RTS

apiReadTracks:
  MOVE.L SaveCpuRegs+4,D1  ;start track from D1 to D1
  MOVE.L SaveCpuRegs+8,D2  ;track count from D2 to D2

  SUBQ.W  #1,D2
  MOVE.W  D1,D3
  ADD.W D2,D3
  CMPI.W  #$009f,D3
  BHI.W apiRdFail

  SF  LAB_A480CA

  MOVE.L SaveCpuRegs+32,D0  ;load address from A0 to D0
  JSR apiReadTracks2
apiRdFail:
  SF.B pdosRead
  SF.B sectorRead
  SF.B byteRead
  SF.B mfmRead
  RTS

apiWriteTracks:
  MOVE.L SaveCpuRegs+4,D1  ;start track from D1 to D1
  MOVE.L SaveCpuRegs+8,D2  ;track count from D2 to D2

  MOVE.L SaveCpuRegs+32,D0  ;save address from A0 to D0
  JSR apiWriteTracks2

  SF.B pdosRead
  SF.B mfmRead
  RTS

apiReadPdosTracks
  ST.B pdosRead
  MOVE.L SaveCpuRegs+12,pdosKey  ;pdos key from D3
  BRA apiReadTracks

apiWritePdosTracks
  ST.B pdosRead
  MOVE.L SaveCpuRegs+12,pdosKey  ;pdos key from D3
  BRA apiWriteTracks

apiReadSectors
  MOVE.L SaveCpuRegs+4,D1  ;start sector from D1 to D1
  MOVE.L SaveCpuRegs+8,D2  ;sector count from D2 to D2

  SUBQ.W  #1,D2
  MOVE.W  D1,D3
  ADD.W D2,D3

  TST.B pdosRead
  BNE.S .1

  CMPI.W  #1759,D3
  BHI.W apiRdFail

.1
  CMPI.W  #1919,D3
  BHI.W apiRdFail

  SF  LAB_A480CA
  ST.B sectorRead

  MOVE.L SaveCpuRegs+32,D0  ;load address from A0 to D0
  JSR apiReadTracks2

  RTS

apiReadPdosSectors
  ST.B pdosRead
  MOVE.L SaveCpuRegs+12,pdosKey  ;pdos key from D3
  BRA apiReadSectors

apiReadBytes
  MOVE.L SaveCpuRegs+4,D1  ;start offset from D1 to D1
  MOVE.L SaveCpuRegs+8,D2  ;byte count from D2 to D2

  SUBQ.L  #1,D2
  MOVE.L  D1,D3
  ADD.L D2,D3

  TST.B pdosRead
  BNE.S .1

  CMPI.L  #901119,D3
  BHI.W apiRdFail

.1
  CMPI.L  #983039,D3
  BHI.W apiRdFail


  SF  LAB_A480CA
  ST.B byteRead

  MOVE.L SaveCpuRegs+32,D0  ;load address from A0 to D0
  JSR apiReadTracks2


apiReadPdosBytes
  ST.B pdosRead
  MOVE.L SaveCpuRegs+12,pdosKey  ;pdos key from D3
  BRA apiReadBytes

apiReadMfmTracks
  ST.B mfmRead
  MOVE.L SaveCpuRegs+12,D0  ;synx marker from D3
  MOVE.W D0,mfmSync

  MOVE.L SaveCpuRegs+16,D0  ;track length from D4
  MOVE.W D0,mfmLength
  BRA apiReadTracks

apiWriteMfmTracks
  ST.B mfmRead
  MOVE.L SaveCpuRegs+12,D0
  MOVE.W D0,mfmLength  ;track length from D3
  BRA apiWriteTracks



apiCls:
  JSR Cls
  RTS

apiSelectScreen
  MOVE.L SaveCpuRegs+4,D1  ;screen number
  CMP.W #1,D1
  BEQ.S screen1
  CMP.W #2,D1
  BEQ.S screen2
  RTS
screen1:
  MOVE.B  #$31,D0
  MOVE.L TextPage1Addr,A0
  CMP.L CurrentPage,A0
  BNE.S switch
  RTS
screen2:
  MOVE.B  #$32,D0
  MOVE.L TextPage2Addr,A0
  CMP.L CurrentPage,A0
  BNE.S switch
  RTS
switch:
  MOVE.B  #$50,$4A(A0)
  MOVE.B  #$61,$4B(A0)
  MOVE.B  #$67,$4C(A0)
  MOVE.B  #$65,$4D(A0)
  MOVE.B  #$20,$4E(A0)
  MOVE.B  D0,$4F(A0)
  MOVE.L  A0,CurrentPage
  JSR redrawTextPage
  RTS

apiTable
  DC.L apiPrintText,apiPrintValue,apiCls,apiSelectScreen
  DC.L apiLoadFile,apiSaveFile,apiSaveData
  DC.L apiReadTracks,apiWriteTracks
  DC.L apiReadPdosTracks,apiWritePdosTracks
  DC.L apiReadSectors,apiReadPdosSectors
  DC.L apiReadBytes,apiReadPdosBytes
  DC.L apiReadMfmTracks,apiWriteMfmTracks

debugger:
  SF  cursorEnabled
  JSR Cls
  LEA debuggerPage(PC),A0
  JSR DrawPrefsPage
  JSR DrawDebuggerFocus

  LEA SaveCpuRegs,A1
  MOVE.L  (A1)+,D0
  MOVE.L #$00060002,cursorX
  JSR Print8DigitHex
  MOVE.L  (A1)+,D0
  MOVE.L #$00060003,cursorX
  JSR Print8DigitHex
  MOVE.L  (A1)+,D0
  MOVE.L #$00060004,cursorX
  JSR Print8DigitHex
  MOVE.L  (A1)+,D0
  MOVE.L #$00060005,cursorX
  JSR Print8DigitHex
  MOVE.L  (A1)+,D0
  MOVE.L #$00060006,cursorX
  JSR Print8DigitHex
  MOVE.L  (A1)+,D0
  MOVE.L #$00060007,cursorX
  JSR Print8DigitHex
  MOVE.L  (A1)+,D0
  MOVE.L #$00060008,cursorX
  JSR Print8DigitHex
  MOVE.L  (A1)+,D0
  MOVE.L #$00060009,cursorX
  JSR Print8DigitHex
  MOVE.W  SaveOldSr,D0
  MOVE.L #$0006000A,cursorX
  JSR Print4DigitHex

  MOVE.L  (A1)+,D0
  MOVE.L #$001D0002,cursorX
  JSR Print8DigitHex
  MOVE.L  (A1)+,D0
  MOVE.L #$001D0003,cursorX
  JSR Print8DigitHex
  MOVE.L  (A1)+,D0
  MOVE.L #$001D0004,cursorX
  JSR Print8DigitHex
  MOVE.L  (A1)+,D0
  MOVE.L #$001D0005,cursorX
  JSR Print8DigitHex
  MOVE.L  (A1)+,D0
  MOVE.L #$001D0006,cursorX
  JSR Print8DigitHex
  MOVE.L  (A1)+,D0
  MOVE.L #$001D0007,cursorX
  JSR Print8DigitHex
  MOVE.L  (A1)+,D0
  MOVE.L #$001D0008,cursorX
  JSR Print8DigitHex
  MOVE.L  (A1)+,D0
  MOVE.L #$001D0009,cursorX
  JSR Print8DigitHex

  MOVE.L  SaveOldPc,D0
  MOVE.L #$001D000A,cursorX
  JSR Print8DigitHex
  JSR DebuggerDisasm

redoMem:
  JSR DebuggerShowMem

DebuggerCheckKeys:
  JSR GetMappedKeyCode
  TST.B EscapePressed
  BNE.S DebuggerEscape
  CMPI.W  #"m",D0
  BEQ.W DebuggerM
  CMPI.W  #"d",D0
  BEQ.W DebuggerD
  CMPI.W  #CursorLeft,D0
  BEQ.W debuggerLeft
  CMPI.W  #CursorRight,D0
  BEQ.W debuggerRight
  CMPI.W  #CursorDown,D0
  BEQ.W debuggerDown
  CMPI.W  #CursorUp,D0
  BEQ.W debuggerUp
  CMPI.W  #F1Key,D0
  BEQ.W debuggerTab
  CMPI.W  #F5Key,D0
  BEQ.W debuggerRun
  CMPI.W  #F7Key,D0
  BEQ.W debuggerStepOver
  CMPI.W  #F8Key,D0
  BEQ.W debuggerStepInto
  CMPI.W  #F10Key,D0
  BEQ.W debuggerExit
  BRA.S DebuggerCheckKeys

DebuggerEscape
  MOVE.L SaveOldPc,dbgDisasmBase
  JSR DebuggerDisasm
  BRA DebuggerCheckKeys

DebuggerM:
  MOVE.L #$1e000b,cursorX
  MOVE.W #21,D0
  JSR PrintSpaces
  MOVE.L #$1e000c,cursorX
  MOVE.W #21,D0
  JSR PrintSpaces
  MOVE.L #$1e000d,cursorX
  MOVE.W #21,D0
  JSR PrintSpaces
  MOVE.L #$1e000e,cursorX
  MOVE.W #21,D0
  JSR PrintSpaces

  LEA debuggerSetMemPage(PC),A0
  JSR DrawPrefsPage

  MOVE.L  dbgMemBase,D0
  MOVEQ #8,D1
  MOVE.L  #$001e000d,D7
  JSR SUB_A1EE00
  MOVE.L  D0,dbgMemBase
  BRA debugger

DebuggerD:
  MOVE.L #$1e000b,cursorX
  MOVE.W #21,D0
  JSR PrintSpaces
  MOVE.L #$1e000c,cursorX
  MOVE.W #21,D0
  JSR PrintSpaces
  MOVE.L #$1e000d,cursorX
  MOVE.W #21,D0
  JSR PrintSpaces
  MOVE.L #$1e000e,cursorX
  MOVE.W #21,D0
  JSR PrintSpaces

  LEA debuggerSetDisasmPage(PC),A0
  JSR DrawPrefsPage

  MOVE.L  dbgDisasmBase,D0
  MOVEQ #8,D1
  MOVE.L  #$001e000d,D7
  JSR SUB_A1EE00
  MOVE.L  D0,dbgDisasmBase
  BRA debugger


DebuggerShowMem:
  MOVE.L dbgMemBase,A0
  MOVE.L #$0037000D,D7
  MOVE.W #10,D6
.nextmem
  MOVE.L D7,cursorX
  MOVEM.L D6/D7,-(Sp)
  MOVE.L A0,D0
  JSR Print8DigitHex
  JSR memSafeReadWord
  JSR PrintSpace
  JSR Print4DigitHex
  ADDQ.L #2,A0
  JSR memSafeReadWord
  JSR PrintSpace
  JSR Print4DigitHex
  SUBQ.L #2,A0
  JSR PrintSpace

  MOVE.W #3,D7
.chars
  MOVE.W D7,-(Sp)
  BSR.W memSafeReadByte
  ADDQ.L #1,A0
  ADD.B AsciiDumpOffset1,D0
  ANDI.W  #$00ff,D0
  JSR InvalidAsciiToDot(PC)
  JSR PrintChar
  MOVE.W (Sp)+,D7
  DBF D7,.chars

  MOVEM.L (Sp)+,D6/D7
  ADDQ.L #1,D7
  DBF D6,.nextmem
  RTS

DebuggerDisasm:
  MOVE.L #$0001000D,D7
  MOVE.L  dbgDisasmBase,D0

  MOVE.W #10,D6
  CLR.L dbgSecondLineAddr
.nextdisasm
  MOVEA.L D0,A1
  MOVE.L D7,cursorX
  MOVEM.L D6/D7,-(Sp)
  JSR SUB_A12F08
  TST.L dbgSecondLineAddr
  BNE.S .1
  MOVE.L DefaultAddress,dbgSecondLineAddr
.1
  MOVEM.L (Sp)+,D6/D7
  ADDQ.L #1,D7
  MOVE.L DefaultAddress,D0
  DBF D6,.nextdisasm
  RTS


debuggerStepOver:
  MOVE.L  #1,TraceStepCount
  ST  cursorEnabled
  ST  restartFlag
  ST  TraceSkipSubs
  RTS

debuggerStepInto:
  MOVE.L  #1,TraceStepCount
  ST  cursorEnabled
  ST  restartFlag
  SF  TraceSkipSubs
  RTS

debuggerLeft
  TST.B debuggerFocus
  BEQ.S .1

  SUB.L #2,dbgMemBase
  BRA redoMem
.1
  SUB.L #2,dbgDisasmBase
  BSR DebuggerDisasm
  BRA DebuggerCheckKeys

debuggerRight
  TST.B debuggerFocus
  BEQ.S .1

  ADD.L #2,dbgMemBase
  BRA redoMem
.1
  ADD.L #2,dbgDisasmBase
  BSR DebuggerDisasm
  BRA DebuggerCheckKeys

debuggerUp
  TST.B debuggerFocus
  BEQ .1

  SUB.L #4,dbgMemBase
  TST.B ShiftKey
  BEQ redoMem
  SUB.L #$28,dbgMemBase
  BRA redoMem

.1
  SUB.L #4,dbgDisasmBase
  TST.B ShiftKey
  BEQ .2

  SUB.L #$28,dbgDisasmBase
.2
  BSR DebuggerDisasm
  BRA DebuggerCheckKeys

debuggerDown
  TST.B debuggerFocus
  BEQ.S .1

  ADD.L #4,dbgMemBase
  TST.B ShiftKey
  BEQ redoMem
  ADD.L #$28,dbgMemBase
  BRA redoMem
.1
  MOVE.L dbgSecondLineAddr,dbgDisasmBase
  TST.B ShiftKey
  BEQ.S .2
  MOVE.L DefaultAddress,dbgDisasmBase
.2
  BSR DebuggerDisasm
  BRA DebuggerCheckKeys

debuggerTab
  BSR DrawDebuggerFocus
  BCHG #0,debuggerFocus
  BSR DrawDebuggerFocus
  BRA DebuggerCheckKeys

DrawDebuggerFocus:
  LEA focusTable,A0
  MOVEQ #0,D0
  MOVE.B debuggerFocus,D0
  LSL.W #3,D0
  MOVEM.W (A0,D0),D0-D3
  JSR drawSelectedHighlight
  RTS
focusTable
  DC.W 1,12,11,12
  DC.W 55,12,60,12

debuggerRun:
  ST  cursorEnabled
  ADDQ.W  #4,A7
  RTS

debuggerExit:
  ST  cursorEnabled
  SF debuggerMode
  JSR Cls
  JSR PrintReady
  RTS


debuggerPage:
  DC.W 1,1,78,10
  DC.B  "Registers",0

  DC.W $8001,2,14,2
  DC.B "D0 = ????????",0
  DC.W $8001,3,14,3
  DC.B "D1 = ????????",0
  DC.W $8001,4,14,4
  DC.B "D2 = ????????",0
  DC.W $8001,5,14,5
  DC.B "D3 = ????????",0
  DC.W $8001,6,14,6
  DC.B "D4 = ????????",0
  DC.W $8001,7,14,7
  DC.B "D5 = ????????",0
  DC.W $8001,8,14,8
  DC.B "D6 = ????????",0
  DC.W $8001,9,14,9
  DC.B "D7 = ????????",0
  DC.W $8001,10,10,10
  DC.B "SR = ????",0

  DC.W $8018,2,74,2
  DC.B "A0 = ???????? ******** ******** ******** ********",0
  DC.W $8018,3,74,3
  DC.B "A1 = ???????? ******** ******** ******** ********",0
  DC.W $8018,4,74,4
  DC.B "A2 = ???????? ******** ******** ******** ********",0
  DC.W $8018,5,74,5
  DC.B "A3 = ???????? ******** ******** ******** ********",0
  DC.W $8018,6,74,6
  DC.B "A4 = ???????? ******** ******** ******** ********",0
  DC.W $8018,7,74,7
  DC.B "A5 = ???????? ******** ******** ******** ********",0
  DC.W $8018,8,74,8
  DC.B "A6 = ???????? ******** ******** ******** ********",0
  DC.W $8018,9,74,9
  DC.B "A7 = ???????? ******** ******** ******** ********",0
  DC.W $8018,10,74,10
  DC.B "PC = ????????",0

  DC.W 1,12,53,23
  DC.B  "Disassembly",0
  DC.W 55,12,78,23
  DC.B  "Memory",0
  DC.W 0

debuggerSetMemPage:
  DC.W 30,11,50,14
  DC.B  "View Memory From:",0
  DC.W 0

debuggerSetDisasmPage:
  DC.W 30,11,50,14
  DC.B  "Disassemble From:",0
  even
  DC.W 0
CMD_IMODE:
 if arsoft=0
 LEA noimodetext(PC),A0
 BSR.W PrintText
 JMP PrintReady

noimodetext:
 DC.B "IMODE is not available in hardware",$D,0
 even
 else
 JSR ReadParameter
 TST.B ParamFound
 BEQ.S LAB_A1225E
 CMPI.L  #4,D0
 BGE.S imodeWTF
 MOVE.B  D0,imode
LAB_A1225E:
 LEA imode0Text(PC),A0
 BSR.W PrintText
 MOVEQ #0,D0
 MOVE.B  imode,D0
 ADD.L D0,D0
 ADD.L D0,D0
 MOVEA.L imode_table(PC,D0.W),A0
 BSR.W PrintText
 JSR PrintReady
 RTS

imodeWTF
 JMP PrintWTF

imode_table:
 DC.L  imode1Text
 DC.L  imode2Text
 DC.L  imode3Text
 DC.L  imode4Text

imode0Text:
 DC.B  $D,"Interrupt Mode set to: ",$D,0

imode1Text:
 DC.B  "-> Left & Right Mouse Button + 'F' Key -+-  ']' key disable m"
 DC.B  "onitor.",0

imode2Text:
 DC.B  "-> '*' Key on Keypad   -+-  ']' on keypad disables montitor ",0

imode3Text:
 DC.B  "-> Right Mouse Button  -+-  ']' on keypad disables montitor ",0

imode4Text:
 DC.B  "-> Level 7 Int./button -+-  ']' on keypad disables montitor ",0
 endc


commandTable:
  DC.B  "INTERRUPTS",0
  even
  DC.L  CMD_INTERRUPTS
  DC.L  cmd_interrupts_help

  DC.B  "EXCEPTIONS",0
  even
  DC.L  CMD_EXCEPTIONS
  DC.L cmd_exceptions_help

  DC.B  "NORMALCHAR",0
  even
  DC.L  CMD_NORMALCHAR
  DC.L cmd_normalchar_help

  if arsoft=1
  DC.B  "KICKROMADR",0
  even
  DC.L  CMD_KICKROMADR
  DC.L cmd_kickromadr_help
  endc

  DC.B  "SETEXCEPT",0
  even
  DC.L  CMD_SETEXCEPT
  DC.L cmd_setexcept_help

  DC.B  "LIBRARIES",0
  even
  DC.L  CMD_LIBRARIES
  DC.L cmd_libraries_help

  DC.B  "RESOURCES",0
  even
  DC.L  CMD_RESOURCES
  DC.L cmd_resources_help

  DC.B  "KILLVIRUS",0
  DC.L  CMD_KILLVIRUS
  DC.L cmd_killvirus_help

  DC.B  "DISKCHECK",0
  even
  DC.L  CMD_DISKCHECK
  DC.L cmd_diskcheck_help

  DC.B  "MEGASTICK",0
  even
  DC.L  CMD_MEGASTICK
  DC.L cmd_megastick_help

  DC.B  "SMALLCHAR",0
  even
  DC.L  CMD_SMALLCHAR
  DC.L cmd_smallchar_help

  DC.B  "CHIPREGS",0
  even
  DC.L  CMD_CHIPREGS
  DC.L cmd_chipregs_help

  DC.B  "EXECBASE",0
  even
  DC.L  CMD_EXECBASE
  DC.L cmd_execbase_help

  DC.B  "BOOTCODE",0
  even
  DC.L  CMD_BOOTCODE
  DC.L cmd_bootcode_help

  DC.B  "BOOTPROT",0
  even
  DC.L  CMD_BOOTPROT
  DC.L cmd_bootprot_help

  DC.B  "ROMAVOID",0
  even
  DC.L  CMD_ROMAVOID
  DC.L cmd_romavoid_help

  DC.B  "DISKWIPE",0
  even
  DC.L  CMD_DISKWIPE
  DC.L cmd_diskwipe_help

  DC.B  "CODECOPY",0
  even
  DC.L  CMD_CODECOPY
  DC.L cmd_codecopy_help

  DC.B  "CLRSTICK",0
  even
  DC.L  CMD_CLRSTICK
  DC.L cmd_clrstick_help

  DC.B  "SAFEDISK",0
  even
  DC.L  CMD_SAFEDISK
  DC.L cmd_safedisk_help

  DC.B  "MAKEDIR",0
  even
  DC.L  CMD_MAKEDIR
  DC.L cmd_makedir_help

  DC.B  "INSTALL",0
  even
  DC.L  CMD_INSTALL
  DC.L cmd_install_help

  DC.B  "RAMTEST",0
  even
  DC.L  CMD_RAMTEST
  DC.L cmd_ramtest_help

  DC.B  "DEVICES",0
  even
  DC.L  CMD_DEVICES
  DC.L cmd_devices_help

  DC.B  "TRACKER",0
  even
  DC.L  CMD_TRACKER
  DC.L cmd_tracker_help

  DC.B  "SLOADER",0
  even
  DC.L  CMD_SLOADER
  DC.L cmd_sloader_help

  DC.B  "CLRDMON",0
  even
  DC.L  CMD_CLRDMON
  DC.L cmd_clrdmon_help

  DC.B  "BOOTCHK",0
  even
  DC.L  CMD_BOOTCHK
  DC.L cmd_bootchk_help

  DC.B  "DATACHK",0
  even
  DC.L  CMD_DATACHK
  DC.L cmd_datachk_help

  DC.B  "MEMCODE",0
  even
  DC.L  CMD_MEMCODE
  DC.L cmd_memcode_help

  DC.B  "VERSION",0
  even
  DC.L  CMD_VERSION
  DC.L cmd_version_help

  DC.B  "NOSTICK",0
  even
  DC.L  CMD_NOSTICK
  DC.L cmd_nostick_help

  DC.B  "RELABEL",0
  even
  DC.L  CMD_RELABEL
  DC.L cmd_relabel_help

  DC.B  "RCOLOUR",0
  even
  DC.L  CMD_RCOLOR
  DC.L cmd_rcolour_help

  DC.B  "DELETE",0
  even
  DC.L  CMD_DELETE
  DC.L cmd_delete_help

  DC.B  "SETAPI",0
  even
  DC.L  CMD_SETAPI
  DC.L cmd_setapi_help

  DC.B  "CLRAPI",0
  even
  DC.L  CMD_CLRAPI
  DC.L cmd_clrapi_help

  DC.B  "FCRC16",0
  even
  DC.L  CMD_FCRC16
  DC.L cmd_filecrc16_help

  DC.B  "FCRC32",0
  even
  DC.L  CMD_FCRC32
  DC.L cmd_filecrc32_help

  DC.B  "FORMAT",0
  even
  DC.L  CMD_FORMAT
  DC.L  cmd_format_help

  DC.B  "UNPACK",0
  even
  DC.L  CMD_UNPACK
  DC.L cmd_unpack_help

  DC.B  "BAMCHK",0
  even
  DC.L  CMD_BAMCHK
  DC.L cmd_bamchk_help

  DC.B  "RCOLOR",0
  even
  DC.L  CMD_RCOLOR
  DC.L cmd_rcolor_help

  DC.B  "COLOUR",0
  even
  DC.L  CMD_COLOR
  DC.L cmd_colour_help

  DC.B  "SMDATA",0
  even
  DC.L  CMD_SMDATA
  DC.L cmd_smdata_help

  DC.B  "LSTICK",0
  even
  DC.L  CMD_LSTICK
  DC.L cmd_lstick_help

  DC.B  "SSTICK",0
  even
  DC.L  CMD_SSTICK
  DC.L cmd_sstick_help

  DC.B  "RENAME",0
  even
  DC.L  CMD_RENAME
  DC.L cmd_rename_help

  DC.B  "SETMAP",0
  even
  DC.L  CMD_SETMAP
  DC.L cmd_setmap_help

  DC.B  "SETCOP",0
  even
  DC.L  CMD_SETCOP
  DC.L cmd_setcop_help

  DC.B  "DEEPMW",0
  even
  DC.L  CMD_DEEPMW
  DC.L cmd_deepmw_help

  DC.B  "ALLEXC",0
  even
  DC.L  CMD_ALLEXC
  DC.L cmd_allexc_help

  DC.B  "KEYMAP",0
  even
  DC.L  CMD_KEYMAP
  DC.L cmd_keymap_help

  DC.B  "DISKIO",0
  even
  DC.L  CMD_DISKIO
  DC.L cmd_diskio_help

  DC.B  "DOSIO",0
  even
  DC.L  CMD_DOSIO
  DC.L cmd_dosio_help

  DC.B  "CRC16",0
  even
  DC.L  CMD_CRC16
  DC.L cmd_crc16_help

  DC.B  "CRC32",0
  even
  DC.L  CMD_CRC32
  DC.L cmd_crc32_help

  if arhardware=1
  DC.B  "ARRAM",0
  even
  DC.L  CMD_ARRAM
  DC.L cmd_arram_help

  DC.B  "FLASH",0
  even
  DC.L  CMD_FLASH
  DC.L cmd_flash_help
  endc

  DC.B  "DEBUG",0
  even
  DC.L  CMD_DEBUG
  DC.L 0


  DC.B  "COLOR",0
  even
  DC.L  CMD_COLOR
  DC.L cmd_color_help

  DC.B  "CACHE",0
  even
  DC.L  CMD_CACHE
  DC.L cmd_cache_help

  DC.B  "AVAIL",0
  even
  DC.L  CMD_AVAIL
  DC.L cmd_avail_help

  DC.B  "TASKS",0
  even
  DC.L  CMD_TASKS
  DC.L cmd_tasks_help

  DC.B  "PORTS",0
  even
  DC.L  CMD_PORTS
  DC.L cmd_ports_help

  DC.B  "VIRUS",0
  even
  DC.L  CMD_VIRUS
  DC.L cmd_virus_help

  DC.B  "DCOPY",0
  even
  DC.L  CMD_DCOPY
  DC.L cmd_dcopy_help

  DC.B  "TRANS",0
  even
  DC.L  CMD_TRANS
  DC.L cmd_trans_help

  DC.B  "SQMEM",0
  even
  DC.L  CMD_SQMEM
  DC.L cmd_sqmem_help

  DC.B  "RESET",0
  even
  DC.L  CMD_RESET
  DC.L cmd_reset_help

  DC.B  "NCHAR",0
  even
  DC.L  CMD_NORMALCHAR
  DC.L cmd_nchar_help

  DC.B  "SCHAR",0
  even
  DC.L  CMD_SMALLCHAR
  DC.L cmd_schar_help

  DC.B  "BCODE",0
  even
  DC.L  CMD_BOOTCODE
  DC.L cmd_bcode_help

  DC.B  "BPROT",0
  even
  DC.L  CMD_BOOTPROT
  DC.L cmd_bprot_help

  DC.B  "DWIPE",0
  even
  DC.L  CMD_DISKWIPE
  DC.L cmd_dwipe_help

  DC.B  "CCOPY",0
  even
  DC.L  CMD_CODECOPY
  DC.L cmd_ccopy_help

  DC.B  "SDISK",0
  even
  DC.L  CMD_SAFEDISK
  DC.L cmd_sdisk_help

  DC.B  "BURST",0
  even
  DC.L  CMD_BURST
  DC.L cmd_burst_help

  DC.B  "ASCII",0
  even
  DC.L  CMD_ASCII
  DC.L cmd_ascii_help

  DC.B  "ALERT",0
  even
  DC.L  CMD_ALERT
  DC.L cmd_alert_help

  DC.B  "DCHIP",0
  even
  DC.L  CMD_DCHIP
  DC.L cmd_dchip_help

  DC.B  "IMODE",0
  even
  DC.L  CMD_IMODE
  DC.L cmd_imode_help

  DC.B  "DMON",0
  even
  DC.L  CMD_DMON
  DC.L cmd_dmon_help

  DC.B  "INFO",0
  even
  DC.L  CMD_INFO
  DC.L cmd_info_help

  DC.B  "COMP",0
  even
  DC.L  CMD_COMP
  DC.L cmd_comp_help

  DC.B  "PACK",0
  even
  DC.L  CMD_PACK
  DC.L cmd_pack_help

  DC.B  "CODE",0
  even
  DC.L  CMD_CODE
  DC.L cmd_code_help

  DC.B  "SCAN",0
  even
  DC.L  CMD_SCAN
  DC.L cmd_scan_help

  DC.B  "TYPE",0
  even
  DC.L  CMD_TYPE
  DC.L cmd_type_help

  DC.B  "SMDC",0
  even
  DC.L  CMD_SMDC
  DC.L cmd_smdc_help

  DC.B  "EXQR",0
  even
  DC.L  CMD_EXQR
  DC.L cmd_exqr_help

  DC.B  "NTSC",0
  even
  DC.L  CMD_NTSC
  DC.L cmd_ntsc_help

  DC.B  "DUMP",0
  even
  DC.L  CMD_DUMP
  DC.L cmd_dump_help

  DC.B  "COPY",0
  even
  DC.L  CMD_COPY
  DC.L cmd_copy_help

  DC.B  "SEXC",0
  even
  DC.L  CMD_SETEXCEPT
  DC.L cmd_sexc_help

  DC.B  "KVIR",0
  even
  DC.L  CMD_KILLVIRUS
  DC.L cmd_kvir_help

  DC.B  "DCHK",0
  even
  DC.L  CMD_DISKCHECK
  DC.L cmd_dchk_help

  DC.B  "CREG",0
  even
  DC.L  CMD_CHIPREGS
  DC.L cmd_creg_help

  DC.B  "EXEC",0
  even
  DC.L  CMD_EXECBASE
  DC.L cmd_exec_help

  DC.B  "MDIR",0
  even
  DC.L  CMD_MAKEDIR
  DC.L cmd_mdir_help

  DC.B  "INST",0
  even
  DC.L  CMD_INSTALL
  DC.L cmd_inst_help

  DC.B  "SRIP",0
  even
  DC.L  CMD_TRACKER
  DC.L cmd_srip_help

  DC.B  "ROBD",0
  even
  DC.L  CMD_ROBD
  DC.L cmd_robd_help

  DC.B  "KILL",0
  even
  DC.L  CMD_KILL
  DC.L cmd_kill_help

  DC.B  "BDA",0
  even
  DC.L  CMD_BDA
  DC.L cmd_bda_help

  DC.B  "FAQ",0
  even
  DC.L  CMD_FAQ
  DC.L cmd_faq_help

  DC.B  "DIR",0
  even
  DC.L  CMD_DIR
  DC.L cmd_dir_help

  DC.B  "RNC",0
  even
  DC.L  CMD_RNC
  DC.L cmd_rnc_help

  DC.B  "MFM",0
  even
  DC.L  CMD_MFM
  DC.L cmd_mfm_help

  DC.B  "DBG",0
  even
  DC.L  CMD_DBG
  DC.L cmd_dbg_help

  DC.B  "MMM",0
  even
  DC.L  CMD_MMM
  DC.L cmd_mmm_help

  DC.B  "NNN",0
  even
  DC.L  CMD_NNN
  DC.L cmd_nnn_help

  DC.B  "YYY",0
  even
  DC.L  CMD_YYY
  DC.L cmd_yyy_help

  DC.B  "DDD",0
  even
  DC.L  CMD_DDD
  DC.L cmd_ddd_help

  DC.B  "SPM",0
  even
  DC.L  CMD_SPM
  DC.L cmd_spm_help

  DC.B  "SQR",0
  even
  DC.L  CMD_SQR
  DC.L cmd_sqr_help

  DC.B  "LQR",0
  even
  DC.L  CMD_LQR
  DC.L cmd_lqr_help

  DC.B  "TFD",0
  even
  DC.L  CMD_TFD
  DC.L cmd_tfd_help

  DC.B  "TMS",0
  even
  DC.L  CMD_TMS
  DC.L cmd_tms_help

  DC.B  "TMD",0
  even
  DC.L  CMD_TMD
  DC.L cmd_tmd_help

  DC.B  "SPR",0
  even
  DC.L  CMD_SPR
  DC.L cmd_spr_help

  DC.B  "PRT",0
  even
  DC.L  CMD_PRT
  DC.L cmd_prt_help

  DC.B  "EXQ",0
  even
  DC.L  CMD_EXQ
  DC.L cmd_exq_help

  DC.B  "TDX",0
  even
  DC.L  CMD_TDX
  DC.L cmd_tdx_help

  DC.B  "TDS",0
  even
  DC.L  CMD_TDS
  DC.L cmd_tds_help

  DC.B  "TDC",0
  even
  DC.L  CMD_TDC
  DC.L cmd_tdc_help

  DC.B  "TDI",0
  even
  DC.L  CMD_TDI
  DC.L cmd_tdi_help

  DC.B  "TDD",0
  even
  DC.L  CMD_TDD
  DC.L cmd_tdd_help

  DC.B  "MDA",0
  even
  DC.L  CMD_MDA
  DC.L cmd_mda_help

  DC.B  "LED",0
  even
  DC.L  CMD_LED
  DC.L cmd_led_help

  DC.B  "PAL",0
  even
  DC.L  CMD_PAL
  DC.L cmd_pal_help

  DC.B  "ADD",0
  even
  DC.L  CMD_ADD
  DC.L cmd_add_help

  DC.B  "INT",0
  even
  DC.L  CMD_INTERRUPTS
  DC.L cmd_int_help

  DC.B  "EXC",0
  even
  DC.L  CMD_EXCEPTIONS
  DC.L cmd_exc_help

  DC.B  "LIB",0
  even
  DC.L  CMD_LIBRARIES
  DC.L cmd_lib_help

  DC.B  "RES",0
  even
  DC.L  CMD_RESOURCES
  DC.L cmd_res_help

  DC.B  "MST",0
  even
  DC.L  CMD_MEGASTICK
  DC.L cmd_mst_help

  DC.B  "CST",0
  even
  DC.L  CMD_CLRSTICK
  DC.L cmd_cst_help

  DC.B  "DEV",0
  even
  DC.L  CMD_DEVICES
  DC.L cmd_dev_help

  DC.B  "NST",0
  even
  DC.L  CMD_NOSTICK
  DC.L cmd_nst_help

  DC.B  "REL",0
  even
  DC.L  CMD_RELABEL
  DC.L cmd_rel_help

  DC.B  "DEL",0
  even
  DC.L  CMD_DELETE
  DC.L cmd_del_help

  DC.B  "LST",0
  even
  DC.L  CMD_LSTICK
  DC.L cmd_lst_help

  DC.B  "SST",0
  even
  DC.L  CMD_SSTICK
  DC.L cmd_sst_help

  DC.B  "REN",0
  even
  DC.L  CMD_RENAME
  DC.L cmd_ren_help

  DC.B  "KEY",0
  even
  DC.L  CMD_SETMAP
  DC.L cmd_key_help

  DC.B  "RPS",0
  even
  DC.L  CMD_RPS
  DC.L cmd_rps_help

  DC.B  "RPB",0
  even
  DC.L   CMD_RPB
  DC.L cmd_rpb_help

  DC.B  "CD",0
  even
  DC.L  CMD_CD
  DC.L cmd_cd_help

  DC.B  "SA",0
  even
  DC.L  CMD_SA
  DC.L cmd_sa_help

  DC.B  "LA",0
  even
  DC.L  CMD_LA
  DC.L cmd_la_help

  DC.B  "LQ",0
  even
  DC.L  CMD_LQ
  DC.L cmd_lq_help

  DC.B  "SQ",0
  even
  DC.L  CMD_SQ
  DC.L cmd_sq_help

  DC.B  "SP",0
  even
  DC.L  CMD_SP
  DC.L cmd_sp_help

  DC.B  "SM",0
  even
  DC.L  CMD_SM
  DC.L cmd_sm_help

  DC.B  "LM",0
  even
  DC.L  CMD_LM
  DC.L cmd_lm_help

  DC.B  "BS",0
  even
  DC.L  CMD_BS
  DC.L cmd_bs_help

  DC.B  "BD",0
  even
  DC.L  CMD_BD
  DC.L cmd_bd_help

  DC.B  "FA",0
  even
  DC.L  CMD_FA
  DC.L cmd_fa_help

  DC.B  "CI",0
  even
  DC.L  CMD_CI
  DC.L cmd_ci_help

  DC.B  "FC",0
  even
  DC.L  CMD_FC
  DC.L cmd_fc_help

  DC.B  "FR",0
  even
  DC.L  CMD_FR
  DC.L cmd_fr_help

  DC.B  "FS",0
  even
  DC.L  CMD_FS
  DC.L cmd_fs_help

  DC.B  "NO",0
  even
  DC.L  CMD_NO
  DC.L cmd_no_help

  DC.B  "MQ",0
  even
  DC.L  CMD_MQ
  DC.L cmd_mq_help

  DC.B  "NQ",0
  even
  DC.L  CMD_NQ
  DC.L cmd_nq_help

  DC.B  "PC",0
  even
  DC.L  CMD_PC
  DC.L cmd_pc_help

  DC.B  "TS",0
  even
  DC.L  CMD_TS
  DC.L cmd_ts_help

  DC.B  "TF",0
  even
  DC.L  CMD_TF
  DC.L cmd_tf_help

  DC.B  "TX",0
  even
  DC.L  CMD_TX
  DC.L cmd_tx_help

  DC.B  "TM",0
  even
  DC.L  CMD_TM
  DC.L cmd_tm_help

  DC.B  "RR",0
  even
  DC.L  CMD_RR
  DC.L cmd_rr_help

  DC.B  "RP",0
  even
  DC.L  CMD_RP
  DC.L cmd_rp_help

  DC.B  "KM",0
  even
  DC.L  CMD_KEYMAP
  DC.L cmd_km_help

  DC.B  "RC",0
  even
  DC.L  CMD_RC
  DC.L cmd_rc_help

  DC.B  "RM",0
  even
  DC.L  CMD_RM
  DC.L cmd_rm_help

  DC.B  "RF",0
  even
  DC.L  CMD_RF
  DC.L cmd_rf_help

  DC.B  "RT",0
  even
  DC.L  CMD_RT
  DC.L cmd_rt_help

  DC.B  "RS",0
  even
  DC.L  CMD_RS
  DC.L cmd_rs_help

  DC.B  "RB",0
  even
  DC.L  CMD_RB
  DC.L cmd_rb_help

  DC.B  "WR",0
  even
  DC.L  CMD_WR
  DC.L cmd_wr_help

  DC.B  "WP",0
  even
  DC.L  CMD_WP
  DC.L cmd_wp_help

  DC.B  "WT",0
  even
  DC.L  CMD_WT
  DC.L cmd_wt_help

  DC.B  "YS",0
  even
  DC.L  CMD_YS
  DC.L cmd_ys_help

  DC.B  "LR",0
  even
  DC.L  CMD_LR
  DC.L cmd_lr_help

  DC.B  "SR",0
  even
  DC.L  CMD_SR
  DC.L cmd_sr_help

  DC.B  "WS",0
  even
  DC.L  CMD_WS
  DC.L cmd_ws_help

  DC.B  "TD",0
  even
  DC.L  CMD_TD
  DC.L cmd_td_help

  DC.B  "MS",0
  even
  DC.L  CMD_MS
  DC.L cmd_ms_help

  DC.B  "MD",0
  even
  DC.L  CMD_MD
  DC.L cmd_md_help

  DC.B  "MM",0
  even
  DC.L  CMD_MM
  DC.L cmd_mm_help

  DC.B  "NN",0
  even
  DC.L  CMD_NN
  DC.L cmd_nn_help

  DC.B  "YY",0
  even
  DC.L  CMD_YY
  DC.L cmd_yy_help

  DC.B  "DD",0
  even
  DC.L  CMD_DD
  DC.L cmd_dd_help

  DC.B  "MW",0
  even
  DC.L  CMD_MW
  DC.L cmd_mw_help

  DC.B  "ED",0
  even
  DC.L  CMD_ED
  DC.L cmd_ed_help

  DC.B  "EA",0
  even
  DC.L  CMD_EA
  DC.L cmd_ea_help

  DC.B  "TR",0
  even
  DC.L  CMD_TR
  DC.L cmd_tr_help

  DC.B  "ST",0
  even
  DC.L  CMD_ST
  DC.L cmd_st_help

  DC.B  "A",0
  even
  DC.L  CMD_A
  DC.L cmd_a_help

  DC.B  "B",0
  even
  DC.L  CMD_B
  DC.L cmd_b_help

  DC.B  "X",0
  even
  DC.L  CMD_X
  DC.L cmd_x_help

  DC.B  "C",0
  even
  DC.L  CMD_C
  DC.L cmd_c_help

  DC.B  "D",0
  even
  DC.L  CMD_D
  DC.L cmd_d_help

  DC.B  "E",0
  even
  DC.L  CMD_E
  DC.L cmd_e_help

  DC.B  "F",0
  even
  DC.L  CMD_F
  DC.L cmd_f_help

  DC.B  "G",0
  even
  DC.L  CMD_G
  DC.L cmd_g_help

  DC.B  "I",0
  even
  DC.L  CMD_TRANS
  DC.L cmd_i_help

  DC.B  "M",0
  even
  DC.L  CMD_M
  DC.L cmd_m_help

  DC.B  "N",0
  even
  DC.L  CMD_N
  DC.L cmd_n_help

  DC.B  "O",0
  even
  DC.L  CMD_O
  DC.L cmd_o_help

  DC.B  "P",0
  even
  DC.L  CMD_P
  DC.L cmd_p_help

  DC.B  "R",0
  even
  DC.L  CMD_R
  DC.L cmd_r_help

  DC.B  "T",0
  even
  DC.L  CMD_T
  DC.L cmd_t_help

  DC.B  "V",0
  even
  DC.L  CMD_COMP
  DC.L cmd_v_help

  DC.B  "W",0
  even
  DC.L  CMD_W
  DC.L cmd_w_help

  DC.B  "Y",0
  even
  DC.L  CMD_Y
  DC.L cmd_y_help

  DC.B  "?",0
  even
  DC.L  CMD_QMARK
  DC.L 0

  DC.B  "'",0
  even
  DC.L  CMD_APOS
  DC.L 0

  DC.B  "~",0
  even
  DC.L  CMD_TILDE
  DC.L 0

  DC.B  ".",0
  even
  DC.L  CMD_DOT
  DC.L 0

  DC.B  ":",0
  even
  DC.L  CMD_COLON
  DC.L 0

  DC.B  ";",0
  even
  DC.L  CMD_SEMICOLON
  DC.L 0

  DC.B  ",",0
  even
  DC.L  CMD_COMMA
  DC.L 0

  DC.B  "|",0
  even
  DC.L  CMD_BAR
  DC.L 0

  DC.B  $a7,00
  even
  DC.L  CMD_A7CHAR
  DC.L 0

  DC.B  "&",0
  even
  DC.L  CMD_AMP
  DC.L 0

  DC.B  "^",0
  even
  DC.L  CMD_UPARROW
  DC.L 0

  DS.W  1

dira_help_dummy:
  DC.L 0
  DC.L cmd_dira_help

formatq_help_dummy:
  DC.L 0
  DC.L cmd_formatq_help

formatv_help_dummy:
  DC.L 0
  DC.L cmd_formatv_help

cmd_a_help:
  DC.B  "A (Assemble)",13
  DC.B  "  A <address>",13
  DC.B 0

cmd_add_help:
  DC.B  "ADD (Adds a value to memory range)",13
  DC.B  "  ADD <start-address> <end-address> <value>",13
  DC.B 0

cmd_alert_help:
  DC.B  "ALERT (Display alert info)",13
  DC.B  "  ALERT <guru-number>",13
  DC.B 0

cmd_allexc_help:
  DC.B  "ALLEXC (Enable/disable all exceptions)",13
  DC.B  "  ALLEXC",13
  DC.B 0

cmd_arram_help:
  DC.B  "ARRAM (Display Action Replay RAM info)",13
  DC.B  "  ARRAM",13
  DC.B 0

cmd_ascii_help:
  DC.B  "ASCII (Display ASCII character set)",13
  DC.B  "  ASCII",13
  DC.B 0

cmd_avail_help:
  DC.B  "AVAIL (Display available memory)",13
  DC.B  "  AVAIL",13
  DC.B 0

cmd_b_help:
  DC.B  "B (Show breakpoints)",13
  DC.B  "  B",13
  DC.B 0

cmd_bamchk_help:
  DC.B  "BAMCHK (Calculate bitmapblock checksum)",13
  DC.B  "  BAMCHK <addr>",13
  DC.B 0

cmd_bcode_help:
  DC.B  "BCODE (Alias for BOOTCODE)",13
  DC.B  "  BCODE <codenumber>",13
  DC.B 0

cmd_bd_help:
  DC.B  "BD (Delete breakpoint)",13
  DC.B  "  BD <addr>",13
  DC.B 0

cmd_bda_help:
  DC.B  "BDA (Delete all breakpoints)",13
  DC.B  "  BDA",13
  DC.B 0

cmd_bootchk_help:
  DC.B  "BOOTCHK (Calculate bootblock checksum)",13
  DC.B  "  BOOTCHK <addr>",13
  DC.B 0

cmd_bootcode_help:
  DC.B  "BOOTCODE (Set bootcode)",13
  DC.B  "  BOOTCODE <codenumber>",13
  DC.B 0

cmd_bootprot_help:
  DC.B  "BOOTPROT (Protect the bootblock)",13
  DC.B  "  BOOTPROT <codenumber)",13
  DC.B 0

cmd_bprot_help:
  DC.B  "BPROT (Alias for BOOTPROT)",13
  DC.B  "  BPROT <codenumber)",13
  DC.B 0

cmd_bs_help:
  DC.B  "BS (Set breakpoint)",13
  DC.B  "  BS <addr>",13
  DC.B 0

cmd_burst_help:
  DC.B  "BURST (Burst nibbler)",13
  DC.B  "  BURST",13
  DC.B 0

cmd_c_help:
  DC.B  "C (Copper disassembler)",13
  DC.B  "  C <1|2|address>",13
  DC.B 0

cmd_cache_help:
  DC.B  "CACHE (Enable/disable cache)",13
  DC.B  "  CACHE <0|1>",13
  DC.B 0

cmd_ccopy_help:
  DC.B  "CCOPY (Alias for CODECOPY)",13
  DC.B  "  CCOPY <source-drive> <dest-drive>",13
  DC.B 0

cmd_cd_help:
  DC.B  "CD (Change directory)",13
  DC.B  "  CD (<path>)",13
  DC.B 0

cmd_chipregs_help:
  DC.B  "CHIPREGS (Display chip register info)",13
  DC.B  "  CHIPREGS",13
  DC.B 0

cmd_ci_help:
  DC.B  "CI (Display copylock info)",13
  DC.B  "  CI <addr>",13
  DC.B 0

cmd_clrapi_help:
  DC.B  "CLRAPI (Remove API handler)",13
  DC.B  "  CLRAPI",13
  DC.B 0

cmd_clrdmon_help:
  DC.B  "CLRDMON (Clear disk monitor buffer)",13
  DC.B  "  CLRDMON",13
  DC.B 0

cmd_clrstick_help:
  DC.B  "CLRSTICK (Clear megastick values)",13
  DC.B  "  CLRSTICK",13
  DC.B 0

cmd_code_help:
  DC.B  "CODE (Set drive encoding)",13
  DC.B  "  CODE <drive> <code-number>",13
  DC.B 0

cmd_codecopy_help:
  DC.B  "CODECOPY (Encodes or decodes a disk)",13
  DC.B  "  CODECOPY <source-drive> <dest-drive>",13
  DC.B 0

cmd_color_help:
  DC.B  "COLOR (Set screen colours)",13
  DC.B  "  COLOR <back-color> <pen-color>",13
  DC.B 0

cmd_colour_help:
  DC.B  "COLOUR (Alias for COLOR)",13
  DC.B  "  COLOUR <back-color> <pen-color>",13
  DC.B 0

cmd_comp_help:
  DC.B  "COMP (Compare memory)",13
  DC.B  "  COMP <start-addr> <end-addr> <dest-addr>",13
  DC.B 0

cmd_copy_help:
  DC.B  "COPY (Copy a file)",13
  DC.B  "  COPY (<path>)<source-file>,<dest-file>",13
  DC.B 0

cmd_crc16_help:
  DC.B  "CRC16 (Calculate a CRC16 checksum)",13
  DC.B  "  CRC16 <start-addr> <end-addr>",13
  DC.B 0

cmd_crc32_help:
  DC.B  "CRC32 (Calculate a CRC32 checksum)",13
  DC.B  "  CRC32 <start-addr> <end-addr>",13
  DC.B 0

cmd_creg_help:
  DC.B  "CREG (Alias for CHIPREGS)",13
  DC.B  "  CREG",13
  DC.B 0

cmd_cst_help:
  DC.B  "CST (Alias for CLRSTICK)",13
  DC.B  "  CST",13
  DC.B 0

cmd_d_help:
  DC.B  "D (Disassemble)",13
  DC.B  "  D (<addr>)",13
  DC.B 0

cmd_datachk_help:
  DC.B  "DATACHK (Calculate datablock checksum)",13
  DC.B  "  DATACHK <addr>",13
  DC.B 0

cmd_dbg_help:
  DC.B  "DBG (Launch debugger)",13
  DC.B  "  DBG",13
  DC.B 0

cmd_dchip_help:
  DC.B  "DCHIP (Display register info)",13
  DC.B  "  DCHIP <registername>",13
  DC.B 0

cmd_dchk_help:
  DC.B  "DCHK (Alias for DISKCHECK)",13
  DC.B  "  DCHK <drive>",13
  DC.B 0

cmd_dcopy_help:
  DC.B  "DCOPY (Copy an AmigaDOS disk)",13
  DC.B  "  DCOPY <source-drive> <dest-drive>",13
  DC.B 0

cmd_dd_help:
  DC.B  "DD (Disassemble 8 lines)",13
  DC.B  "  DD (<addr>)",13
  DC.B 0

cmd_ddd_help:
  DC.B  "DDD (Disassemble 16 lines)",13
  DC.B  "  DDD (<addr>)",13
  DC.B 0

cmd_deepmw_help:
  DC.B  "DEEPMW (Enable/disable deep memwatch)",13
  DC.B  "  DEEPMW",13
  DC.B 0

cmd_del_help:
  DC.B  "DEL (Alias for DELETE)",13
  DC.B  "  DEL (<path>)<file>",13
  DC.B 0

cmd_delete_help:
  DC.B  "DELETE (Delete a file)",13
  DC.B  "  DELETE (<path>)<file>",13
  DC.B 0

cmd_dev_help:
  DC.B  "DEV (Alias for DEVICES)",13
  DC.B  "  DEV",13
  DC.B 0

cmd_devices_help:
  DC.B  "DEVICES (Show execbase device list)",13
  DC.B  "  DEVICES",13
  DC.B 0

cmd_dir_help:
  DC.B  "DIR (Show directory contents)",13
  DC.B  "  DIR (<path>)",13
  DC.B 0

cmd_dira_help:
  DC.B  "DIRA (Show recursive directory contents)",13
  DC.B  "  DIRA (<path>)",13
  DC.B 0

cmd_diskcheck_help:
  DC.B  "DISKCHECK (Checks disk for errors)",13
  DC.B  "  DISKCHECK <drive>",13
  DC.B 0

cmd_diskio_help:
  DC.B  "DISKIO (Copy Rob Northen DISKIO package to RAM)",13
  DC.B  "  DISKIO <addr>",13
  DC.B 0

cmd_diskwipe_help:
  DC.B  "DISKWIPE (Quick wipe disk contents)",13
  DC.B  "  DISKWIPE <drive>",13
  DC.B 0

cmd_dmon_help:
  DC.B  "DMON (Get/display disk-mon buffer)",13
  DC.B  "  DMON",13
  DC.B 0

cmd_dosio_help:
  DC.B  "DOSIO (Copy Rob Northen DOSIO package to RAM)",13
  DC.B  "  DOSIO <addr>",13
  DC.B 0

cmd_dwipe_help:
  DC.B  "DWIPE (Alias for DISKWIPE)",13
  DC.B  "  DWIPE <drive>",13
  DC.B 0

cmd_dump_help:
  DC.B  "DUMP (Hex dump of a file)",13
  DC.B  "  DUMP <drive>",13
  DC.B 0

cmd_e_help:
  DC.B  "E (Show/edit chip registers)",13
  DC.B  "  E (<offset>)",13
  DC.B 0

cmd_ea_help:
  DC.B  "EA (Show full AGA pallete)",13
  DC.B  "  EA",13
  DC.B 0

cmd_ed_help:
  DC.B  "ED (Edit text file)",13
  DC.B  "  ED (<path>)<file>",13
  DC.B 0

cmd_exc_help:
  DC.B  "EXC (Alias for EXCEPTIONS)",13
  DC.B  "  EXC",13
  DC.B 0

cmd_exceptions_help:
  DC.B  "EXCEPTIONS (Show exception and interrupt vectors)",13
  DC.B  "  EXCEPTIONS",13
  DC.B 0

cmd_exec_help:
  DC.B  "EXEC (Alias for EXECBASE)",13
  DC.B  "  EXEC",13
  DC.B 0

cmd_execbase_help:
  DC.B  "EXECBASE (Show execbase structure)",13
  DC.B  "  EXECBASE",13
  DC.B 0

cmd_exq_help:
  DC.B  "EXQ (Exchange prg with ramdisk prg)",13
  DC.B  "  EXQ",13
  DC.B 0

cmd_exqr_help:
  DC.B  "EXQR (Exchange prg with ramdisk prg and run)",13
  DC.B  "  EXQR",13
  DC.B 0

cmd_f_help:
  DC.B  "F (Search For string)",13
  DC.B  "  F <string>(,<start-addr> <end-addr>)",13
  DC.B 0

cmd_fa_help:
  DC.B  "FA (Find addressing opcode)",13
  DC.B  "  FA <addr> (<start-addr> <end-addr>)",13
  DC.B 0

cmd_faq_help:
  DC.B  "FAQ (Find addressing opcode quick)",13
  DC.B  "  FAQ <addr> (<start-addr> <end-addr>)",13
  DC.B 0

cmd_fc_help:
  DC.B  "FC (Search for Rob Northen Copylock)",13
  DC.B  "  FC (<start-addr <end-addr>)",13
  DC.B 0

cmd_filecrc16_help:
  DC.B  "FCRC16 (Calculate CRC16 of a file)",13
  DC.B  "  FCRC16 (<path>)<file>",13
  DC.B 0

cmd_filecrc32_help:
  DC.B  "FCRC32 (Calculate CRC32 of a file)",13
  DC.B  "  FCRC32 (<path>)<file>",13
  DC.B 0

cmd_flash_help:
  DC.B  "FLASH (Update firmware)",13
  DC.B  "  FLASH (<path>)<file>",13
  DC.B 0

cmd_format_help:
  DC.B  "FORMAT (Format disk in active drive)",13
  DC.B  "  FORMAT (<name>)(,FFS)",13
  DC.B 0

cmd_formatq_help:
  DC.B  "FORMATQ (Quick format disk in active drive)",13
  DC.B  "  FORMATQ (<name>)(,FFS)",13
  DC.B 0

cmd_formatv_help:
  DC.B  "FORMATV (Format and verify disk in active drive)",13
  DC.B  "  FORMATV (<name>)(,FFS)",13
  DC.B 0

cmd_fr_help:
  DC.B  "FR (Search for relative-string)",13
  DC.B  "  FR <string>(,<start-addr> <end-addr>)",13
  DC.B 0

cmd_fs_help:
  DC.B  "FS (Search for string case insensitive)",13
  DC.B  "  FR <string>(,<start-addr> <end-addr>)",13
  DC.B 0

cmd_g_help:
  DC.B  "G (Restart program at address)",13
  DC.B  "  G <addr>",13
  DC.B 0

cmd_i_help:
  DC.B  "I (Alias for TRANS)",13
  DC.B  "  I <start-addr> <end-addr> <dest-addr>",13
  DC.B 0

cmd_imode_help:
  DC.B  "IMODE (Set interrupt mode)",13
  DC.B  "  IMODE <0|1|2|3>",13
  DC.B 0

cmd_info_help:
  DC.B  "INFO (Show system parameters)",13
  DC.B  "  INFO <picnr>",13
  DC.B 0

cmd_inst_help:
  DC.B  "INST (Alias for INSTALL)",13
  DC.B  "  INST <bootblock-nr>",13
  DC.B 0

cmd_install_help:
  DC.B  "INSTALL (Install bootblock to current drive)",13
  DC.B  "  INSTALL <bootblock-nr>",13
  DC.B 0

cmd_int_help:
  DC.B  "INT (Alias for INTERRUPTS)",13
  DC.B  "  INT",13
  DC.B 0

cmd_interrupts_help:
  DC.B  "INTERRUPTS (Show execbase interrupt-list)",13
  DC.B  "  INTERRUPTS",13
  DC.B 0

cmd_key_help:
  DC.B  "KEY (Alias for SETMAP)",13
  DC.B  "  KEY",13
  DC.B 0

cmd_keymap_help:
  DC.B  "KEYMAP (Set keymap)",13
  DC.B  "  KEYMAP US|UK|DE",13
  DC.B 0

cmd_kickromadr_help:
  DC.B  "KICKROMADR (Toggle kickstart ROM address)",13
  DC.B  "  KICKROMADR",13
  DC.B 0

cmd_kill_help:
  DC.B  "KILL (Remove AR from memory)",13
  DC.B  "  KILL",13
  DC.B 0

cmd_killvirus_help:
  DC.B  "KILLVIRUS (Search and remove virus)",13
  DC.B  "  KILLVIRUS",13
  DC.B 0

cmd_km_help:
  DC.B  "KM (Alias for KEYMAP)",13
  DC.B  "  KM US|UK|DE",13
  DC.B 0

cmd_kvir_help:
  DC.B  "KVIR (Alias for KILLVIRUS)",13
  DC.B  "  KVIR",13
  DC.B 0

cmd_la_help:
  DC.B  "LA (Load freezefile from disk)",13
  DC.B  "  LA (<path>)<file>",13
  DC.B 0

cmd_led_help:
  DC.B  "LED (Toggle filter/LED status)",13
  DC.B  "  LED",13
  DC.B 0

cmd_lib_help:
  DC.B  "LIB (Alias for LIBRARIES)",13
  DC.B  "  LIB",13
  DC.B 0

cmd_libraries_help:
  DC.B  "LIBRARIES (Show execbase library-list)",13
  DC.B  "  LIBRARIES",13
  DC.B 0

cmd_lm_help:
  DC.B  "LM (Load file to memory)",13
  DC.B  "  LM (<path>)<file>,<dest-addr>",13
  DC.B 0

cmd_lq_help:
  DC.B  "LQ (Load all from ramdisk)",13
  DC.B  "  LQ",13
  DC.B 0

cmd_lqr_help:
  DC.B  "LQR (Load all from ramdisk and restart)",13
  DC.B  "  LQR",13
  DC.B 0

cmd_lr_help:
  DC.B  "LR (Load freezefile from disk and start)",13
  DC.B  "  LR (<path>)<file>",13
  DC.B 0

cmd_lst_help:
  DC.B  "LST (Alias for LSTICK)",13
  DC.B  "  LST (<path>)<file>",13
  DC.B 0

cmd_lstick_help:
  DC.B  "LSTICK (Load joystick-handler data)",13
  DC.B  "  LSTICK (<path>)<file>",13
  DC.B 0

cmd_m_help:
  DC.B  "M (Show/edit memory as bytes)",13
  DC.B  "  M <address>",13
  DC.B 0

cmd_makedir_help:
  DC.B  "MAKEDIR (Create a directory)",13
  DC.B  "  MAKEDIR <path>",13
  DC.B 0

cmd_md_help:
  DC.B  "MD (Delete memwatchpoint)",13
  DC.B  "  MD <address>",13
  DC.B 0

cmd_mda_help:
  DC.B  "MDA (Delete all memwatchpoints)",13
  DC.B  "  MDA",13
  DC.B 0

cmd_mdir_help:
  DC.B  "MDIR (Alias for MAKEDIR)",13
  DC.B  "  MDIR <path>",13
  DC.B 0

cmd_megastick_help:
  DC.B  "MEGASTICK (Joystick handler)",13
  DC.B  "  MEGASTICK (1)",13
  DC.B 0

cmd_memcode_help:
  DC.B  "MEMCODE (EOR.B encode memory)",13
  DC.B  "  MEMCODE <start-addr> <end-addr> <code>",13
  DC.B 0

cmd_mfm_help:
  DC.B  "MFM (Decode raw mfm data)",13
  DC.B  "  MFM <src-addr> <track-len> <track-count> <dest-addr> <sync> <sector-offset> <sector-count> <sector-len> <sector-interleave> (<sectornum-offset>)",13
  DC.B 0

cmd_mm_help:
  DC.B  "MM (Show/edit memory bytes - 8 lines)",13
  DC.B  "  MM <address>",13
  DC.B 0

cmd_mq_help:
  DC.B  "MQ (Display memory quick as Hex/ASCII)",13
  DC.B  "  MQ <address>",13
  DC.B 0

cmd_mmm_help:
  DC.B  "MMM  (Show/edit memory bytes - 16 lines)",13
  DC.B  "  MMM <address>",13
  DC.B 0

cmd_ms_help:
  DC.B  "MS (Set memwatchpoint)",13
  DC.B  "  MS <address>",13
  DC.B 0

cmd_mst_help:
  DC.B  "MST (Alias for MEGASTICK)",13
  DC.B  "  MST (1)",13
  DC.B 0

cmd_mw_help:
  DC.B  "MW (Display memwatchpoints)",13
  DC.B  "  MW",13
  DC.B 0

cmd_n_help:
  DC.B  "N (Show/edit memory as ASCII)",13
  DC.B  "  N <address>",13
  DC.B 0

cmd_nchar_help:
  DC.B  "NCHAR (Alias for NORMALCHAR)",13
  DC.B 0

cmd_nn_help:
  DC.B  "NN (Show/edit memory as ASCII - 8 lines)",13
  DC.B  "  NN <address>",13
  DC.B 0

cmd_nnn_help:
  DC.B  "NNN (Show/edit memory as ASCII - 16 lines)",13
  DC.B  "  NN <address>",13
  DC.B 0

cmd_no_help:
  DC.B  "NO (Show/set ascii-dump offset)",13
  DC.B  "  NO <offset>",13
  DC.B 0

cmd_normalchar_help:
  DC.B  "NORMALCHAR (Normal printerchars)",13
  DC.B  "  NORMALCHAR",13
  DC.B 0

cmd_nostick_help:
  DC.B  "NOSTICK (Remove joystick-handler)",13
  DC.B  "  NOSTICK",13
  DC.B 0

cmd_nq_help:
  DC.B  "NQ (Display memory quick as ASCII)",13
  DC.B  "  NQ <address>",13
  DC.B 0

cmd_nst_help:
  DC.B  "NST (Alias for NOSTICK)",13
  DC.B  "  NST",13
  DC.B 0

cmd_ntsc_help:
  DC.B  "NTSC (Set NTSC display mode)",13
  DC.B  "  NTSC",13
  DC.B 0

cmd_o_help:
  DC.B  "O (Fill memoryblock with string)",13
  DC.B  "  O <string>, <start-addr> <end-addr>",13
  DC.B 0

cmd_p_help:
  DC.B  "P (Show current picture/mempeeker)",13
  DC.B  "  P <picnr>",13
  DC.B 0

cmd_pack_help:
  DC.B  "PACK (Pack memory)",13
  DC.B  "  PACK <start-addr> <end-addr> <dest-addr> <rate>",13
  DC.B 0

cmd_pal_help:
  DC.B  "PAL (Set PAL display mode)",13
  DC.B  "  PAL",13
  DC.B 0

cmd_pc_help:
  DC.B  "PC (Show current picture + energy count)",13
  DC.B  "  PC <picnr>",13
  DC.B 0

cmd_ports_help:
  DC.B  "PORTS (Show execbase port-list)",13
  DC.B  "  PORTS",13
  DC.B 0

cmd_prt_help:
  DC.B  "PRT (Print string)",13
  DC.B  "  PRT <string>",13
  DC.B 0

cmd_r_help:
  DC.B  "R (Show/edit processor registers)",13
  DC.B  "  R (<reg> <value>)",13
  DC.B 0

cmd_ramtest_help:
  DC.B  "RAMTEST (Checks memory for errors)",13
  DC.B  "  RAMTEST <start-addr> <end-addr>",13
  DC.B 0

cmd_rb_help:
  DC.B  "RB (Read bytes from active drive)",13
  DC.B  "  RB <start-offset> (<num-bytes> <dest-addr>)",13
  DC.B 0

cmd_rc_help:
  DC.B  "RC (Show 020+ control registers)",13
  DC.B  "  RC",13
  DC.B 0

cmd_rcolor_help:
  DC.B  "RCOLOR (Reset colors)",13
  DC.B  "  RCOLOR",13
  DC.B 0

cmd_rcolour_help:
  DC.B  "RCOLOUR (Alias for RCOLOR)",13
  DC.B  "  RCOLOUR",13
  DC.B 0

cmd_rel_help:
  DC.B  "REL (Alias for RELABEL)",13
  DC.B 0

cmd_relabel_help:
  DC.B  "RELABEL (Change disk label)",13
  DC.B  "  RELABEL <diskname>",13
  DC.B 0

cmd_ren_help:
  DC.B  "REN (Alias for RENAME)",13
  DC.B  "  REN (<path>)<old-file>,<new-file>",13
  DC.B 0

cmd_rename_help:
  DC.B  "RENAME (Rename a file)",13
  DC.B  "  RENAME (<path>)<old-file>,<new-file>",13
  DC.B 0

cmd_res_help:
  DC.B  "RES (Alias for RESOURCES)",13
  DC.B  "  RESOURCES",13
  DC.B 0

cmd_reset_help:
  DC.B  "RESET (Exit AR and reset Amiga)",13
  DC.B  "  RESET",13
  DC.B 0

cmd_resources_help:
  DC.B  "RESOURCES (Show execbase resource-list)",13
  DC.B  "  RESOURCES",13
  DC.B 0

cmd_rf_help:
  DC.B  "RF (Show FPU registers)",13
  DC.B  "  RF",13
  DC.B 0

cmd_rm_help:
  DC.B  "RM (Show MMU registers)",13
  DC.B  "  RM",13
  DC.B 0

cmd_rnc_help:
  DC.B  "RNC (Show rnc serial track)",13
  DC.B  "  RNC",13
  DC.B 0

cmd_robd_help:
  DC.B  "ROBD (Enable/disable Rob Northen decryptor)",13
  DC.B  "  ROBD",13
  DC.B 0

cmd_romavoid_help:
  DC.B  "ROMAVOID (Enable/disable triggering from ROM)",13
  DC.B  "  ROMAVOID",13
  DC.B 0

cmd_rp_help:
  DC.B  "RP (Read pdos tracks from active drive)",13
  DC.B  "  RP <start-track> (<num-tracks> <dest-addr>)",13
  DC.B 0

cmd_rpb_help:
  DC.B  "RPB (Read pdos bytes from active drive)",13
  DC.B  "  RPB <start-offset> (<num-bytes> <dest-addr>)",13
  DC.B 0

cmd_rps_help:
  DC.B  "RPS (Read pdos sectors from active drive)",13
  DC.B  "  RPS <start-sector> (<num-sectors> <dest-addr>)",13
  DC.B 0

cmd_rr_help:
  DC.B  "RR (Read raw mfm tracks from active drive)",13
  DC.B  "  RR <start-track>",13
  DC.B 0

cmd_rs_help:
  DC.B  "RS (Read sectors from active drive)",13
  DC.B  "  RS <start-sector> (<num-sectors> <dest-addr>)",13
  DC.B 0

cmd_rt_help:
  DC.B  "RT (Read tracks from active drive)",13
  DC.B  "  RT <start-track> (<num-tracks> <dest-addr>)",13
  DC.B 0

cmd_sa_help:
  DC.B  "SA (Save current program to disk)",13
  DC.B  "  SA (<path>)<name>,<crate>)",13
  DC.B 0

cmd_safedisk_help:
  DC.B  "SAFEDISK",13
  DC.B  "  SAFEDISK (a/b/s/n/u/v/q)",13
  DC.B 0

cmd_scan_help:
  DC.B  "SCAN (Scan memory for samples)",13
  DC.B  "  SCAN",13
  DC.B 0

cmd_schar_help:
  DC.B  "SCHAR (Alias for SMALLCHAR)",13
  DC.B  "  SCHAR",13
  DC.B 0

cmd_sdisk_help:
  DC.B  "SDISK (Alias for SAFEDISK)",13
  DC.B  "  SDISK (a/b/s/n/u/v/q)",13
  DC.B 0

cmd_setapi_help:
  DC.B  "SETAPI (Set api handler)",13
  DC.B  "  SETAPI",13
  DC.B 0

cmd_setcop_help:
  DC.B  "SETCOP (Specify copper for exit)",13
  DC.B  "  SETCOP <copper-addr>",13
  DC.B 0

cmd_setexcept_help:
  DC.B  "SETEXCEPT (Set exception handler)",13
  DC.B  "  SETEXCEPT",13
  DC.B 0

cmd_setmap_help:
  DC.B  "SETMAP (Keymap editor)",13
  DC.B  "  SETMAP",13
  DC.B 0

cmd_sexc_help:
  DC.B  "SEXC (Alias for SETEXCEPT)",13
  DC.B  "  SEXC",13
  DC.B 0

cmd_sloader_help:
  DC.B  "SLOADER (Save loader to active drive)",13
  DC.B  "  SLOADER",13
  DC.B 0

cmd_sm_help:
  DC.B  "SM (Save memoryblock to disk)",13
  DC.B  "  SM (<path>)<name>,<start-addr> <end-addr>",13
  DC.B 0

cmd_smallchar_help:
  DC.B  "SMALLCHAR (Activate very small printer chars)",13
  DC.B  "  SMALLCHAR",13
  DC.B 0

cmd_smdata_help:
  DC.B  "SMDATA (Save memoryblock to disk as data)",13
  DC.B  "  SMDATA (<path>)<file>,<start-addr> <end-addr>",13
  DC.B 0

cmd_smdc_help:
  DC.B  "SMDC (Save memoryblock to disk as dc.b)",13
  DC.B  "  SMDC (<path>)<file>,<start-addr> <end-addr>",13
  DC.B 0

cmd_sp_help:
  DC.B  "SP (Save current picture to disk)",13
  DC.B  "  SP (<path>)<file>(,<nr> <height>)",13
  DC.B 0

cmd_spm_help:
  DC.B  "SPM (Save picture of memory-peeker)",13
  DC.B  "  SPM (<path>)<name>",13
  DC.B 0

cmd_spr_help:
  DC.B  "SPR (Show/edit sprites)",13
  DC.B  "  SPR <nr|addr> (<nr|addr>)",13
  DC.B 0

cmd_sq_help:
  DC.B  "SQ (Save all to ramdisk)",13
  DC.B  "  SQ",13
  DC.B 0

cmd_sqmem_help:
  DC.B  "SQMEM (En/disable savequick in fastmemory)",13
  DC.B  "  SQMEM (<0/start>)",13
  DC.B 0

cmd_sqr_help:
  DC.B  "SQR (Save all to ramdisk and restart)",13
  DC.B  "  SQR",13
  DC.B 0

cmd_sr_help:
  DC.B  "SR (Save current program and start)",13
  DC.B  "  SR (<path>)<name>,<crate>)",13
  DC.B 0

cmd_srip_help:
  DC.B  "SRIP (Alias for TRACKER)",13
  DC.B  "  SRIP (<start-addr>)",13
  DC.B 0

cmd_sst_help:
  DC.B  "SST  (Alias for SSTICK)",13
  DC.B  "  SST (<path>)<file>",13
  DC.B 0

cmd_sstick_help:
  DC.B  "SSTICK (Save joystick-handler data)",13
  DC.B  "  SSTICK (<path>)<file>",13
  DC.B 0

cmd_st_help:
  DC.B  "ST (Trace current program (also subs))",13
  DC.B  "  ST <steps>",13
  DC.B 0

cmd_t_help:
  DC.B  "T (Show addresses/continue trainer)",13
  DC.B  "  T <lives>",13
  DC.B 0

cmd_tasks_help:
  DC.B  "TASKS (Show execbase task-lists)",13
  DC.B  "  TASKS",13
  DC.B 0

cmd_td_help:
  DC.B  "TD (Display deep trainer addresses)",13
  DC.B  "  TD",13
  DC.B 0

cmd_tdc_help:
  DC.B  "TDC (Deep trainer change count)",13
  DC.B  "  TDC",13
  DC.B 0

cmd_tdd_help:
  DC.B  "TDD (Deep trainer delete addresses)",13
  DC.B  "  TDD <start-addr> <end-addr>",13
  DC.B 0

cmd_tdi_help:
  DC.B  "TDI (Display probable trainer addresses)",13
  DC.B  "  TDI",13
  DC.B 0

cmd_tds_help:
  DC.B  "TDS (Deep trainer start count)",13
  DC.B  "  TDS",13
  DC.B 0

cmd_tdx_help:
  DC.B  "TDX (Exit old deep trainer)",13
  DC.B  "  TDX",13
  DC.B 0

cmd_tf_help:
  DC.B  "TF (Search for decrementing opcodes)",13
  DC.B  "  TF <address>",13
  DC.B 0

cmd_tfd_help:
  DC.B  "TFD (Search and remove decrement opcodes)",13
  DC.B  "  TFD <address>",13
  DC.B 0

cmd_tm_help:
  DC.B  "TM (Show remarks about curr. program)",13
  DC.B  "  TM",13
  DC.B 0

cmd_tmd_help:
  DC.B  "TMD (Delete remark about program)",13
  DC.B  "  TMD <address>",13
  DC.B 0

cmd_tms_help:
  DC.B  "TMS (Set remark about curr. program addr.)",13
  DC.B  "  TMS <address>",13
  DC.B 0

cmd_tr_help:
  DC.B  "TR (Trace current program (not subs))",13
  DC.B  "  TR <steps>",13
  DC.B 0

cmd_tracker_help:
  DC.B  "TRACKER (Rips soundtracker-modules in memory)",13
  DC.B  "  TRACKER (<start-addr>)",13
  DC.B 0

cmd_trans_help:
  DC.B  "TRANS (Copy memoryblock)",13
  DC.B  "  TRANS <start-addr> <end-addr> <dest-addr>",13
  DC.B 0

cmd_ts_help:
  DC.B  "TS (Start trainer/trainermode)",13
  DC.B  "  TS <start-lives> <start-address>",13
  DC.B 0

cmd_tx_help:
  DC.B  "TX (Exit trainermode)",13
  DC.B  "  TX",13
  DC.B 0

cmd_type_help:
  DC.B  "TYPE (Type file on screen)",13
  DC.B  "  TYPE (<path>)<file>",13
  DC.B 0

cmd_unpack_help:
  DC.B  "UNPACK (Unpack packed mem)",13
  DC.B  "  UNPACK <dest-addr> <end-of-packed-addr>",13
  DC.B 0

cmd_v_help:
  DC.B  "V (Alias for COMP)",13
  DC.B  "  V <start-addr> <end-addr> <dest-addr>",13
  DC.B 0

cmd_version_help:
  DC.B  "VERSION (Show version info)",13
  DC.B  "  VERSION",13
  DC.B 0

cmd_virus_help:
  DC.B  "VIRUS (Search for virus in memory)",13
  DC.B  "  VIRUS",13
  DC.B 0

cmd_w_help:
  DC.B  "W (Show/edit CIA data)",13
  DC.B  "  W <register>",13
  DC.B 0

cmd_wp_help:
  DC.B  "WP (Write pdos tracks to active drive)",13
  DC.B  "  WP <start-track> <num-tracks> <src-addr> <pdos-key>",13
  DC.B 0

cmd_wr_help:
  DC.B  "WR (Write raw mfm data to active drive)",13
  DC.B  "  WR <start-track> <num-tracks> <src-addr> <word-length>",13
  DC.B 0

cmd_ws_help:
  DC.B  "WS (Write string to memory)",13
  DC.B  "  WS <string>, <start-addr>",13
  DC.B 0

cmd_wt_help:
  DC.B  "WT (Write tracks to active drive)",13
  DC.B  "  WT <start-track> <num-tracks> <src-addr>",13
  DC.B 0

cmd_x_help:
  DC.B  "X (Restart current program)",13
  DC.B  "  X",13
  DC.B 0

cmd_y_help:
  DC.B  "Y (Show/edit memory as binary)",13
  DC.B  "  Y <addr>",13
  DC.B 0

cmd_ys_help:
  DC.B  "YS (Show/set datawidth for the Y command)",13
  DC.B  "  YS <bytes>",13
  DC.B 0

cmd_yy_help:
  DC.B  "YY (Show/edit memory as binary - 8 lines)",13
  DC.B  "  YY <addr>",13
  DC.B 0

cmd_yyy_help:
  DC.B  "YYY (Show/edit memory as binary - 16 lines)",13
  DC.B  "  YYY <addr>",13

  even
CMD_X:
  TST.B TBufferAllocated
  BEQ.S LAB_A12A58
  TST.B LAB_A48393
  BNE.S LAB_A12A58
  LEA resetTBufferText(PC),A0
  JSR AskYN
  TST.W D0
  BNE.S LAB_A12A58
  JSR CMD_CLRDMON(PC)
LAB_A12A58:
  JSR WaitNoKeypress
  ADDQ.W  #4,A7
  RTS

resetTBufferText:
  DC.B  "Sure to exit without resetting trackbuffer?",$D,0

killArText:
  DC.B  "Do you really want to kill AR-PRO?",$D,0,0

CMD_KILL:
  LEA killArText(PC),A0
  JSR AskYN
  TST.W D0
  BNE.S LAB_A12ABE
  RTS
LAB_A12ABE:
  JMP CMD_RESET
CMD_CACHE:
  MOVEM.L D0-D3/A0-A2,-(A7)
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.S LAB_A12AE0
  ANDI.L  #$00001111,D0
  MOVE.L  D0,SAVE_CACR
LAB_A12AE0:
  LEA cacheStatusText,A0
  BSR.W PrintText
  MOVE.L  SAVE_CACR,D0
  LEA InstCacheEnabledText,A0
  BTST  #0,D0
  BEQ.S LAB_A12B04
  MOVE.L  D0,-(A7)
  BSR.W PrintText
  MOVE.L  (A7)+,D0
LAB_A12B04:
  LEA InstBurstEnabledText,A0
  BTST  #4,D0
  BEQ.S LAB_A12B18
  MOVE.L  D0,-(A7)
  BSR.W PrintText
  MOVE.L  (A7)+,D0
LAB_A12B18:
  LEA DataBurstEnabledText,A0
  BTST  #$C,D0
  BEQ.S LAB_A12B2C
  MOVE.L  D0,-(A7)
  BSR.W PrintText
  MOVE.L  (A7)+,D0
LAB_A12B2C:
  LEA DataCacheEnabledText,A0
  BTST  #8,D0
  BEQ.S LAB_A12B3C
  BSR.W PrintText
LAB_A12B3C:
  MOVEM.L (A7)+,D0-D3/A0-A2
  BSR.W PrintReady
  RTS
CMD_DEEPMW:
  MOVEM.L D0-D3/A0-A2,-(A7)
  LEA DeepMemwatchDisabledText,A0
  NOT.B deepMemWatch
  BEQ.S LAB_A12B5E
  LEA DeepMemwatchEnabledText,A0
LAB_A12B5E:
  BSR.W PrintText
  MOVEM.L (A7)+,D0-D3/A0-A2
  BSR.W PrintReady
  RTS
CMD_ALLEXC:
  MOVEM.L D0-D3/A0-A2,-(A7)
  LEA AllExceptionsActiveText,A0
  NOT.W ignoreExceptions
  BEQ.S LAB_A12B84
  LEA AllExceptionsIgnoredText,A0
LAB_A12B84:
  BSR.W PrintText
  MOVEM.L (A7)+,D0-D3/A0-A2
  BSR.W PrintReady
  RTS
CMD_P:
  BSR.W memPeeker
  BRA.W PrintReady
CMD_COMP:
  BSR.W memCompare
  BRA.W PrintReady
CMD_EXCEPTIONS:
  JMP PrintExceptions
CMD_INFO:
  JSR InitialiseDisk
  MOVE.W  #1,LAB_A480AC
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.S LAB_A12BCC
  ANDI.W  #$1fff,D0
  MOVE.W  D0,LAB_A480AC
LAB_A12BCC:
  BSR.W SUB_A166C8
  LEA ChipsetHeaderText(PC),A0
  BSR.W PrintText
  BTST.B #2,ChipsetIdValue
  BNE.S .notaga

  LEA agaText(PC),A0
  BSR.W PrintText
  BRA .chipsetdone

.notaga
  BTST.B #0,ChipsetIdValue
  BEQ.S .notocs
  BTST.B #1,ChipsetIdValue
  BEQ.S .notocs

  LEA ocsText(PC),A0
  BSR.W PrintText
  BRA .chipsetdone

.notocs
  BTST.B #0,ChipsetIdValue
  BNE.S .ecsDenise

  BTST.B #1,ChipsetIdValue
  BNE.S .ecsAgnus

  LEA ecsText(PC),A0
  BSR.W PrintText
  BRA .chipsetdone

.ecsAgnus
  LEA ecsAgnusText(PC),A0
  BSR.W PrintText
  BRA .chipsetdone

.ecsDenise
  LEA ecsDeniseText(PC),A0
  BSR.W PrintText

.chipsetdone
  LEA DisplayWinHeaderText(PC),A0
  BSR.W PrintText
  LEA CopyDiwStart,A0
  MOVEQ #3,D1
LAB_A12BE0:
  MOVE.W  (A0)+,D0
  BSR.W Print4DigitHex
  MOVEQ #4,D0
  JSR PrintSpaces
  DBF D1,LAB_A12BE0
  JSR PrintCR
  LEA BitplanesHeaderText(PC),A0
  BSR.W PrintText
  MOVE.W  CopyBplCon0,D1
  ANDI.W  #$7010,D1
  BTST #4,D0
  BEQ.S .1
  ADD.W #$8000,D0
  BCLR #4,D0
.1:
  ROL.W #4,D1
  TST.W D1
  BEQ.S LAB_A12C5C
  SUBQ.W  #1,D1
  LEA CopyBpl1Pth,A0
LAB_A12C18:
  MOVE.L  (A0)+,D0
  JSR Print8DigitHex
  MOVEQ #$20,D0
  BSR.W PrintChar
  BSR.W PrintChar
  DBF D1,LAB_A12C18
  TST.W cursorX
  BEQ.S LAB_A12C3A
  JSR PrintCR
LAB_A12C3A:
  LEA ColorsHeaderText(PC),A0
  BSR.W PrintText
  MOVE.W  #$001f,D1
  LEA SaveColor,A0
LAB_A12C4C:
  MOVE.W  (A0)+,D0
  BSR.W Print4DigitHex
  JSR PrintSpace
  DBF D1,LAB_A12C4C
LAB_A12C5C:
  LEA SpritesHeaderText(PC),A0
  BSR.W PrintText
  MOVEQ #7,D1
  LEA CopySpr0Pt,A0
LAB_A12C6C:
  MOVE.L  (A0)+,D0
  JSR Print8DigitHex
  MOVEQ #$20,D0
  BSR.W PrintChar
  BSR.W PrintChar
  DBF D1,LAB_A12C6C
  LEA DisplayHeaderText(PC),A0
  BSR.W PrintText
  LEA CopyBplCon0,A0
  MOVEQ #2,D1
LAB_A12C90:
  MOVE.W  (A0)+,D0
  BSR.W Print4DigitHex
  MOVEQ #4,D0
  BSR.W PrintSpaces
  DBF D1,LAB_A12C90
  MOVE.W  SaveDmaCon,D0
  BSR.W Print4DigitHex
  MOVEQ #3,D0
  BSR.W PrintSpaces
  MOVE.W  SaveIntreq,D0
  BSR.W Print4DigitHex
  BSR.W PrintCrIfNotBlankLine
  MOVEQ #1,D1
  LEA DisplayHeader2Text(PC),A0
  BSR.W PrintText
  LEA CopyBplMod1,A0
LAB_A12CCE:
  MOVE.W  (A0)+,D0
  BSR.W Print4DigitHex
  MOVEQ #4,D0
  BSR.W PrintSpaces
  DBF D1,LAB_A12CCE
  MOVE.L RegSnoopAddr,A0
  MOVE.W  bltcon0(A0),D0
  BSR.W Print4DigitHex
  MOVEQ #4,D0
  BSR.W PrintSpaces
  MOVE.W  bltcon1(A0),D0
  BSR.W Print4DigitHex
  MOVEQ #4,D0
  BSR.W PrintSpaces
  MOVE.W  SaveDskSync,D0
  BSR.W Print4DigitHex
  BSR.W PrintCrIfNotBlankLine
  LEA LAB_A12E81(PC),A0
  BSR.W PrintText
  MOVE.W  Copyclxcon,D0
  BSR.W Print4DigitHex
  LEA LAB_A12E77(PC),A0
  BSR.W PrintText
  MOVE.W  SaveIntena,D0
  BSR.W Print4DigitHex
  LEA LAB_A12E77(PC),A0
  BSR.W PrintText
  MOVE.W  adkconr+hardware,D0
  BSR.W Print4DigitHex
  MOVEQ #4,D0
  BSR.W PrintSpaces
  MOVEQ #0,D2
  LEA oldTrackPositions,A1
LAB_A12D50:
  BTST  D2,DrivesConnectedLo
  BNE.S LAB_A12D62
  LEA LAB_A12ED6(PC),A0
  BSR.W PrintText
  BRA.S LAB_A12D7A
LAB_A12D62:
  MOVEQ #$21,D0
  BSR.W PrintChar
  MOVEQ #0,D0
  MOVE.B  0(A1,D2.W),D0
  LSR.W #1,D0
  BSR.W ConvertToBCD
  MOVEQ #3,D1
  BSR.W PrintValue
LAB_A12D7A:
  MOVEQ #2,D0
  BSR.W PrintSpaces
  ADDQ.W  #1,D2
  CMPI.W  #4,D2
  BNE.S LAB_A12D50
  BSR.W PrintCrIfNotBlankLine
  LEA AudioHeaderText(PC),A0
  BSR.W PrintText
  MOVEQ #3,D3
  MOVE.L RegSnoopAddr,A1
  LEA aud0lch(A1),A1
LAB_A12D9C:
  MOVE.L  (A1)+,D0
  BSR.W Print6DigitHex
  LEA LAB_A12E7D(PC),A0
  BSR.W PrintText
  MOVE.W  (A1)+,D0
  BSR.W Print4DigitHex
  LEA LAB_A12E77(PC),A0
  BSR.W PrintText
  MOVE.W  (A1)+,D0
  BSR.W Print4DigitHex
  LEA LAB_A12E77(PC),A0
  BSR.W PrintText
  MOVE.W  (A1)+,D0
  BSR.W Print4DigitHex
  LEA LAB_A12E77(PC),A0
  BSR.W PrintText
  LEA 6(A1),A1
  MOVEQ #$D,D0
  BSR.W PrintChar
  DBF D3,LAB_A12D9C
  JSR PrintReady
  RTS

ChipsetHeaderText
  DC.B  "CHIPSET: ",0

agaText
  DC.B  "AGA",$D,0

ocsText
  DC.B  "OCS",$D,0

ecsText
  DC.B  "ECS",$D,0

ecsAgnusText
  DC.B  "ECS Agnus",$D,0

ecsDeniseText
  DC.B  "ECS Denise",$D,0

DisplayWinHeaderText:
  DC.B  "DIWSTRT DIWSTOP DDFSTRT DDFSTOP",$D,0

BitplanesHeaderText:
  DC.B  "BITPLANES",$D,0

ColorsHeaderText:
  DC.B  "COLORS",$D,0

SpritesHeaderText:
  DC.B  "SPRITES",$D,0

DisplayHeaderText:
  DC.B  "BPLCON0 BPLCON1 BPLCON2 DMACON INTREQ",$D,0

DisplayHeader2Text:
  DC.B  "BPL1MOD BPL2MOD BLTCON0 BLTCON1 DSKSYNC",$D,0

LAB_A12E77:
  DC.B  "     ",0

LAB_A12E7D:
  DC.B  "   ",0

LAB_A12E81:
  DC.B  "clxcon   INTENA   ADKCON  TDF0  TDF1  TDF2  TDF3",$D,0

AudioHeaderText:
  DC.B  "AUDADR   AUDLEN   AUDPER   AUDVOL",$D,0

LAB_A12ED6:
  DC.B  "****",0,0

CMD_TILDE:
  MOVE.L  DefaultAddress,D0
  MOVEA.L D0,A1
  BRA.S SUB_A12F08
CMD_DDD:
  MOVE.W #15,repeatCount
  BRA.S dcont
CMD_DD:
  MOVE.W #7,repeatCount
  BRA.S dcont
CMD_D:
  CLR.W repeatCount
dcont:
  SF  LAB_A48205
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.S CMD_TILDE
  BCLR  #0,D0
  MOVEA.L D0,A1
  TST.L D0
  BNE.S SUB_A12F08
  MOVE.L  SaveOldPc,D0
SUB_A12F08:
  JSR SUB_A2A0F6
  ST  LAB_A480CA
  BCLR  #$1F,D0
  BEQ.S LAB_A12F20
  SF  LAB_A480CA
LAB_A12F20:
  MOVEA.L D0,A0
  MOVE.L  D0,-(A7)
  TST.B LAB_A48205
  BEQ.S LAB_A12F46
  TST.B LAB_A480CA
  BEQ.S LAB_A12F46
  TST.B debuggerMode
  BNE.S LAB_A12F46
  MOVE.L  A0,-(A7)
  LEA LAB_A12FC8(PC),A0
  BSR.W PrintText
  JSR SUB_A2A0F6
  MOVEA.L (A7)+,A0
LAB_A12F46:
  TST.B robdmode
  BEQ.S LAB_A12F6A
  ST  decryptins
  MOVE.L  -4(A0),LAB_A489FE
  MOVE.L  -4(A0),LAB_A48A02
  CLR.W LAB_A48A06
LAB_A12F6A:
  BSR.W SUB_A15324
  SF  decryptins
  SF  D1
  MOVE.W  LAB_A47FB6,D0
  CMPI.W  #$003c,D0
  BEQ.S LAB_A12F9C
  CMPI.W  #$003e,D0
  BEQ.S LAB_A12F9C
  CMPI.W  #$000d,D0
  BEQ.S LAB_A12F9C
  CMPI.W  #$001e,D0
  BEQ.S LAB_A12F9C
  SF  LAB_A48205
  BRA.S LAB_A12FA2
LAB_A12F9C:
  ST  LAB_A48205
LAB_A12FA2:
  TST.B debuggerMode
  BNE.S .2
  MOVEQ #$7E,D0
  BSR.W PrintChar
.2:
  MOVE.L  (A7),D0
  BSR.W PrintAddressHex
  TST.B debuggerMode
  BEQ.S .0
  CMP.L SaveOldPc,D0
  BNE.S .0
  MOVE.B #">",D0
  BSR PrintChar
  BRA.S .1
.0
  BSR.W PrintSpace
.1
  MOVE.L  (A7),D0
  BSR.W SUB_A1613A
  JSR PrintCRToPrinter
  MOVE.L  A0,DefaultAddress
  MOVE.L  (A7)+,D0
  TST.W repeatCount
  BEQ.S .norep
  BSR.W PrintCR

  SUB.W #1,repeatCount
  BRA.W CMD_TILDE
.norep:
  RTS
LAB_A12FC8:
  DC.B  ";=======================================",$D,0

CMD_NNN:
  MOVE.W #15,repeatCount
  BRA.S n2
CMD_NN:
  MOVE.W #7,repeatCount
  BRA.S n2
CMD_N:
  CLR.W repeatCount
n2:
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.W PrintWTF
  MOVEA.L D0,A0
  BRA.W ShowMemAsAscii
CMD_DOT:
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.W arCommandLoop
  MOVEA.L D0,A1
  JSR SUB_A258C0
  BMI.W PrintWTF
  LEA $40(A1),A0
  BRA.W ShowMemAsAscii

CMD_W:  JMP EditCiaData
CMD_G:
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.W CMD_X
  MOVEA.L D0,A1
  BCLR  #0,D0
  MOVE.L  D0,SaveOldPc
  BRA.W CMD_X
CMD_AVAIL:
  JSR PrintAvailMem
  BRA.W PrintReady
CMD_DEVICES:
  JSR PrintDevices
  BRA.W PrintReady
CMD_LIBRARIES:
  JSR PrintLibraries
  BRA.W PrintReady
CMD_PORTS:
  JSR PrintPorts
  BRA.W PrintReady
CMD_RESOURCES:
  JSR PrintResources
  BRA.W PrintReady
CMD_O:
  BSR.W MemFill
  BRA.W PrintReady

CMD_RC:
  JSR getVBR
  MOVE.L ILLEG_OPC(a0),-(A7)
  MOVE.L #vbrtrap,ILLEG_OPC(A0)

  LEA vbrText(PC),A0
  JSR PrintText
  SUB.L A0,A0
  OPT p=68040
  MOVEC VBR,A0
  OPT p=68000
  MOVE.L A0,D0
  BSR PrintAddressHex
  LEA sfcText(PC),A0
  JSR PrintText
  SUB.L A0,A0
  OPT p=68040
  MOVEC SFC,A0
  OPT p=68000
  MOVE.L A0,D0
  BSR Print2DigitHex
  LEA dfcText(PC),A0
  JSR PrintText
  SUB.L A0,A0
  OPT p=68040
  MOVEC DFC,A0
  OPT p=68000
  MOVE.L A0,D0
  BSR Print2DigitHex

  LEA ispText(PC),A0
  JSR PrintText
  SUB.L A0,A0
  OPT p=68040
  MOVEC ISP,A0
  OPT p=68000
  MOVE.L A0,D0
  BSR PrintAddressHex

  LEA mspText(PC),A0
  JSR PrintText
  SUB.L A0,A0
  OPT p=68040
  MOVEC MSP,A0
  OPT p=68000
  MOVE.L A0,D0
  BSR PrintAddressHex
  LEA cacrText(PC),A0
  JSR PrintText
  MOVE.L SAVE_CACR,D0
  BSR PrintAddressHex
  BSR PrintCR
  JSR getVBR
  MOVE.L (A7)+,ILLEG_OPC(A0)
  RTS
vbrText DC.B "VBR=",0
sfcText DC.B " SFC=",0
dfcText DC.B " DFC=",0
ispText DC.B " ISP=",0
mspText DC.B " MSP=",0
cacrText DC.B " CACR=",0
  even

CMD_RF:
  JSR getVBR
  MOVE.L LINEF_EMU(A0),-(A7)
  MOVE.L #fmovetrap,LINEF_EMU(A0)

  LEA fp0Text(PC),A0
  JSR PrintText
  BSR initFloatData
  OPT p=68040
  FMOVE.X FP0,(A1)
  OPT p=68000
  MOVE.L (A1),D0
  JSR Print8DigitHex
  MOVE.L 4(A1),D0
  JSR Print8DigitHex
  MOVE.L 8(A1),D0
  JSR Print8DigitHex
  JSR printExtendedFloat
  BSR PrintCR
  LEA fp1Text(PC),A0
  JSR PrintText
  BSR initFloatData
  OPT p=68040
  FMOVE.X FP1,(A1)
  OPT p=68000
  MOVE.L (A1),D0
  JSR Print8DigitHex
  MOVE.L 4(A1),D0
  JSR Print8DigitHex
  MOVE.l 8(A1),D0
  JSR Print8DigitHex
  JSR printExtendedFloat
  BSR PrintCR
  LEA fp2Text(PC),A0
  JSR PrintText
  BSR initFloatData
  OPT p=68040
  FMOVE.X FP2,(A1)
  OPT p=68000
  MOVE.L (A1),D0
  JSR Print8DigitHex
  MOVE.L 4(A1),D0
  JSR Print8DigitHex
  MOVE.L 8(A1),D0
  JSR Print8DigitHex
  JSR printExtendedFloat
  BSR PrintCR
  LEA fp3Text(PC),A0
  JSR PrintText
  BSR initFloatData
  OPT p=68040
  FMOVE.X FP3,(A1)
  OPT p=68000
  MOVE.L (A1),D0
  JSR Print8DigitHex
  MOVE.L 4(A1),D0
  JSR Print8DigitHex
  MOVE.L 8(A1),D0
  JSR Print8DigitHex
  JSR printExtendedFloat
  BSR PrintCR
  LEA fp4Text(PC),A0
  JSR PrintText
  BSR initFloatData
  OPT p=68040
  FMOVE.X FP4,(A1)
  OPT p=68000
  MOVE.L (A1),D0
  JSR Print8DigitHex
  MOVE.L 4(A1),D0
  JSR Print8DigitHex
  MOVE.L 8(A1),D0
  JSR Print8DigitHex
  JSR printExtendedFloat
  BSR PrintCR
  LEA fp5Text(PC),A0
  JSR PrintText
  BSR initFloatData
  OPT p=68040
  FMOVE.X FP5,(A1)
  OPT p=68000
  MOVE.L (A1),D0
  JSR Print8DigitHex
  MOVE.L 4(A1),D0
  JSR Print8DigitHex
  MOVE.L 8(A1),D0
  JSR Print8DigitHex
  JSR printExtendedFloat
  BSR PrintCR
  LEA fp6Text(PC),A0
  JSR PrintText
  BSR initFloatData
  OPT p=68040
  FMOVE.X FP6,(A1)
  OPT p=68000
  MOVE.L (A1),D0
  JSR Print8DigitHex
  MOVE.L 4(A1),D0
  JSR Print8DigitHex
  MOVE.L 8(A1),D0
  JSR Print8DigitHex
  JSR printExtendedFloat
  BSR PrintCR
  LEA fp7Text(PC),A0
  JSR PrintText
  BSR initFloatData
  OPT p=68040
  FMOVE.X FP7,(A1)
  OPT p=68000
  MOVE.L (A1),D0
  JSR Print8DigitHex
  MOVE.L 4(A1),D0
  JSR Print8DigitHex
  MOVE.L 8(A1),D0
  JSR Print8DigitHex
  JSR printExtendedFloat
  BSR PrintCR
  LEA fpiarText(PC),A0
  JSR PrintText
  CLR.L D0
  OPT p=68040
  FMOVE FPIAR,D0
  OPT p=68000
  JSR Print8DigitHex
  LEA fpcrText(PC),A0
  JSR PrintText
  CLR.L D0
  OPT p=68040
  FMOVE FPCR,D0
  OPT p=68000
  JSR Print4DigitHex
  LEA fpsrText(PC),A0
  JSR PrintText

  CLR.L D0
  OPT p=68040
  FMOVE FPSR,D0
  OPT p=68000
  JSR Print8DigitHex
  BSR PrintCR
  JSR getVBR
  MOVE.L (A7)+,LINEF_EMU(A0)
  RTS

initFloatData:
  LEA mt_samplestarts,A1
  MOVE.L #$7fff0000,(a1)
  MOVE.L #$7fffffff,4(A1)
  move.l #$fffff800,8(a1)
  RTS

fmovetrap:
  ADD.L  #4,2(a7)
  RTE
fp0Text DC.B "FP0=",0
fp1Text DC.B "FP1=",0
fp2Text DC.B "FP2=",0
fp3Text DC.B "FP3=",0
fp4Text DC.B "FP4=",0
fp5Text DC.B "FP5=",0
fp6Text DC.B "FP6=",0
fp7Text DC.B "FP7=",0
fpiarText DC.B "FPIAR=",0
fpcrText DC.B " FPCR=",0
fpsrText DC.B " FPSR=",0
  even

printExtendedFloat:
  MOVEM.L D0-D2/A1/a2,-(A7)
  BSR.S extFloat
  MOVEM.L (A7)+,D0-D2/A1/A2
  RTS

extFloat:
  lea 12(a1),a2
  ;get the values
  MOVE.L  -(A2),D1
  MOVE.L  -(A2),D0
  MOVE.L  -(A2),D2

  MOVE.W #":",D0
  JSR PrintChar
  JSR PrintSpace
  MOVEM.L A0/A1,-(A7)
  lea 12(a1),a1
  move.l a1,a0
  JSR LAB_16508
  JSR PrintText
  MOVEM.L (A7)+,A0/A1


LAB_134DA:
  TST.W D0
  BPL.S LAB_134F4
  NEG.W D0
  MOVE.B  #$2d,(A1)+
  BRA.S LAB_134F4
LAB_134E6:
  TST.B D0
  BPL.S LAB_134F0
  NEG.B D0
  MOVE.B  #$2d,(A1)+
LAB_134F0:
  AND.W #$00ff,D0
LAB_134F4:
  SWAP  D0
  CLR.W D0
  SWAP  D0
LAB_134FA:
  TST.L D0
  BEQ.S LAB_1352E
  MOVEM.L D1-D3/A0,-(A7)
  LEA LAB_13534(PC),A0
  MOVEQ #0,D3
LAB_13508:
  MOVE.L  (A0)+,D1
  MOVEQ #-1,D2
LAB_1350C:
  ADDQ.B  #1,D2
  SUB.L D1,D0
  BCC.S LAB_1350C
  TST.B D2
  BNE.S LAB_1351A
  TST.B D3
  BEQ.S LAB_13522
LAB_1351A:
  ADD.B #$30,D2
  MOVE.B  D2,(A1)+
  ADDQ.W  #1,D3
LAB_13522:
  ADD.L D1,D0
  SUBQ.L  #1,D1
  BNE.S LAB_13508
  MOVEM.L (A7)+,D1-D3/A0
  CLR.B (A1)+
  RTS
LAB_1352E:
  MOVE.B  #$30,(A1)+
  RTS

LAB_13534:
  DC.W $3b9a
  DC.W $ca00
  DC.W $05f5
  DC.W $e100
  DC.W $0098
  DC.W $9680
  DC.W $000f
  DC.W $4240
  DC.W $0001
  DC.W $86a0
  DC.W $0000
  DC.W $2710
  DC.W $0000
  DC.W $03e8
  DC.W $0000
  DC.W $0064
  DC.W $0000
  DC.W $000a
  DC.W 0,1

LAB_135EC:
  MOVE.B  (A0)+,(A1)+
  BGE.S LAB_135EC
  BCHG  #7,-1(A1)
  RTS

;LAB_16466:
; MOVE.B  $65(A6),D6
; AND.B #$05,D6
; BNE.S LAB_16474
; ST  $33(A6)
;LAB_16474:
; RTS

LAB_16500:
  DS.L  1
  DC.L  $00000004

LAB_16508:
  MOVEM.L D1-D7/A0/A2-A4,-(A7)
  LEA LAB_16500(PC),A4
  SWAP  D2
  TST.W D2
  SMI D4
  ADD.W D2,D2
  LSR.W #1,D2
  MOVEQ #$10,D3
  MOVE.W  #$3fff,D5
LAB_16520:
  TST.B D4
  BEQ.S LAB_16528
  MOVE.B  #$2d,(A1)+
LAB_16528:
  TST.L D0
  BNE.S LAB_1653A
  TST.L D1
  BNE.S LAB_1653A
  TST.W D2
  BNE.S LAB_1653A
LAB_16534:
  LEA LAB_16738(PC),A0
  BRA.S LAB_1654E
LAB_1653A:
  SUB.W D5,D2
  SUBQ.W  #1,D2
  CMP.W D5,D2
  BNE.S LAB_16564
  TST.L D0
  BNE.S LAB_16558
  TST.L D1
  BNE.S LAB_16558
  LEA LAB_1672C(PC),A0
LAB_1654E:
  BSR.W LAB_135EC
  MOVEQ #0,D0
  BRA.W LAB_165D8
LAB_16558:
  LEA LAB_16734(PC),A0
  LSL.L #2,D0
  BCC.S LAB_16562
  ADDQ.L  #1,A0
LAB_16562:
  BRA.S LAB_1654E
LAB_16564:
  TST.L D0
  BNE.S LAB_1656C
  TST.L D1
  BEQ.S LAB_16534
LAB_1656C:
  TST.L D0
  BMI.S LAB_1657C
  ;BSR.W  LAB_16466
  ADD.L D1,D1
  ADDX.L  D0,D0
  SUBQ.W  #1,D2
  BRA.S LAB_1656C
LAB_1657C:
  MOVE.W  D3,-(A7)
  BSR.S LAB_165EA
  MOVEQ #0,D6
  ADDQ.W  #1,D2
  BMI.S LAB_16590
LAB_16586:
  ADD.L D1,D1
  ADDX.L  D0,D0
  ADDX.W  D6,D6
  DBF D2,LAB_16586
LAB_16590:
  ADD.B #$30,D6
  MOVE.B  D6,(A1)+
  MOVE.B  #$2e,(A1)+
  MOVE.W  (A7)+,D7
LAB_1659C:
  MOVEQ #0,D6
  MOVEQ #9,D4
  MOVEQ #0,D3
  MOVEQ #0,D2
LAB_165A4:
  ADD.L D1,D3
  ADDX.L  D0,D2
  BCC.S LAB_165AC
  ADDQ.B  #1,D6
LAB_165AC:
  DBF D4,LAB_165A4
  ADD.B #$30,D6
  MOVE.B  D6,(A1)+
  MOVE.L  D3,D1
  MOVE.L  D2,D0
  BNE.S LAB_165C0
  TST.L D1
  BEQ.S LAB_165C4
LAB_165C0:
  DBF D7,LAB_1659C
LAB_165C4:
  CMPI.B  #$2e,-(A1)
  BEQ.S LAB_165D2
  CMPI.B  #$30,(A1)
  BEQ.S LAB_165C4
  BRA.S LAB_165D4
LAB_165D2:
  ADDQ.L  #1,A1
LAB_165D4:
  ADDQ.L  #1,A1
  MOVE.W  D5,D0
LAB_165D8:
  MOVEM.L (A7)+,D1-D7/A0/A2-A4
  TST.W D0
  BEQ.S LAB_165E8
  MOVE.B  #$65,(A1)+
  BRA.W LAB_134DA
LAB_165E8:
  CLR.B (A1)+
  RTS

LAB_165EA:
  MOVEQ #0,D5
  MOVEQ #$C,D6
  MOVEQ #3,D7
  MOVEQ #0,D3
  LEA LAB_166CC(PC),A2
  LEA LAB_166FC(PC),A0
  CMP.W #$ffff,D2
  BLT.W LAB_1661C
  EXG A2,A0
LAB_16604:
  MULU  #$000a,D5
LAB_16608:
  BSR.S LAB_1665C
  BLT.S LAB_16612
  BSR.S LAB_16672
  ADDQ.W  #1,D5
  BRA.S LAB_16608
LAB_16612:
  ADDA.L  D6,A0
  ADDA.L  D6,A2
  DBF D7,LAB_16604
  BRA.S LAB_1663A
LAB_1661C:
  MULU  #$000a,D5
LAB_16620:
  BSR.S LAB_1665C
  BGT.S LAB_1662A
  BSR.S LAB_16672
  ADDQ.W  #1,D5
  BRA.S LAB_16620
LAB_1662A:
  ADDA.L  D6,A0
  ADDA.L  D6,A2
  DBF D7,LAB_1661C
  LEA LAB_166EE+2(PC),A2
  BSR.S LAB_16672
  NOT.W D5
LAB_1663A:
  MOVE.L  (A4)+,D6
  ADD.L (A4),D1
  ADDX.L  D6,D0
  BCC.S LAB_16648
  ROXR.L  #1,D0
  ROXR.L  #1,D1
  ADDQ.W  #1,D2
LAB_16648:
  MOVEQ #0,D3
  LEA LAB_166EE+2(PC),A0
  BSR.S LAB_1665C
  BLT.S LAB_1665A
  LEA LAB_16720(PC),A2
  BSR.S LAB_16672
  ADDQ.W  #1,D5
LAB_1665A:
  RTS
LAB_1665C:
  CMP.W (A0),D2
  BNE.S LAB_16670
  CMP.L 2(A0),D0
  BNE.S LAB_16670
  CMP.L 6(A0),D1
  BNE.S LAB_16670
  CMP.W $A(A0),D3
LAB_16670:
  RTS

LAB_16672:
  MOVEM.L D4-D7/A2-A3,-(A7)
  MOVEA.W D2,A3
  MOVE.W  D3,D2
  ADDA.W  (A2)+,A3
  ADDQ.W  #1,A3
  MOVEQ #0,D6
  MOVEQ #0,D3
  MOVEQ #0,D4
  MOVEQ #0,D5
LAB_16686:
  MOVE.W  D6,D7
  LSR.W #3,D7
  NOT.B D6
  BTST  D6,0(A2,D7.W)
  BEQ.S LAB_166A8
  ADD.W D2,D5
  ADDX.L  D1,D4
  ADDX.L  D0,D3
  BCC.S LAB_166A8
  ROXR.L  #1,D3
  ROXR.L  #1,D4
  ROXR.W  #1,D5
  ADDQ.W  #1,A3
  LSR.L #1,D0
  ROXR.L  #1,D1
  ROXR.W  #1,D2
LAB_166A8:
  NOT.B D6
  ADDQ.B  #1,D6
  LSR.L #1,D0
  ROXR.L  #1,D1
  ROXR.W  #1,D2
  TST.L D0
  BNE.S LAB_16686
  TST.L D1
  BNE.S LAB_16686
  TST.W D2
  BNE.S LAB_16686
  MOVE.L  D3,D0
  MOVE.L  D4,D1
  MOVE.W  A3,D2
  MOVE.W  D5,D3
  MOVEM.L (A7)+,D4-D7/A2-A3
  RTS

LAB_166CC:
  DC.W  $0cf8
  DC.W  $f38d
  DC.W  $b1f9
  DC.W  $dd3d
  DC.W  $ac05
  DC.W  $78d2
  DC.W  $014b
  DC.W  $924d
  DC.W  $692c
  DC.W  $a61b
  DC.W  $e758
  DC.W  $593c
  DC.W  $0020
  DC.W  $9502
  DC.W  $f900
  DC.W  0,0
LAB_166EE:
  DC.W  0,2
  DC.W  $a000
  DC.W  0,0
  DC.W  0,0
LAB_166FC:
  DC.W  $f305
  DC.W  $868a
  DC.W  $9188
  DC.W  $a89e
  DC.W  $1467
  DC.W  $1013
  DC.W  $feb2
LAB_1670A:
  DC.W  $dff9
  DC.W  $7724
  DC.W  $7029
  DC.W  $7ebd
  DC.W  $5978
  DC.W  $ffdd
  DC.W  $dbe6
  DC.W  $fece
  DC.W  $bded
  DC.W  $d5be
  DC.W  $b573
LAB_16720:
  DC.W  $fffb
  DC.W  $cccc
  DC.W  $cccc
  DC.W  $cccc
  DC.W  $cccc
  DC.W  $cccd

LAB_1672C:
  ;INFINITY
  DC.B  $49,$4e
  DC.B  $46,$49
  DC.B  $4e,$49
  DC.B  $54,$d9
LAB_16734:
  ;SNAN
  DC.B  $53,$4e
  DC.B  $41,$ce
LAB_16738:
  ;0.0
  DC.B  $30,$2e,$b0,0


CMD_RM:
  JSR getVBR
  MOVE.L ILLEG_OPC(A0),-(A7)
  MOVE.L #vbrtrap,ILLEG_OPC(A0)

  LEA itt0Text(PC),A0
  JSR PrintText
  SUB.L A0,A0
  OPT p=68040
  MOVEC ITT0,A0
  OPT p=68000
  MOVE.L A0,D0
  BSR PrintAddressHex
  LEA itt1Text(PC),A0
  JSR PrintText
  SUB.L A0,A0
  OPT p=68040
  MOVEC ITT1,A0
  OPT p=68000
  MOVE.L A0,D0
  BSR PrintAddressHex
  BSR PrintCR
  LEA dtt0Text(PC),A0
  JSR PrintText
  SUB.L A0,A0
  OPT p=68040
  MOVEC DTT0,A0
  OPT p=68000
  MOVE.L A0,D0
  BSR PrintAddressHex
  LEA dtt1Text(PC),A0
  JSR PrintText
  SUB.L A0,A0
  OPT p=68040
  MOVEC DTT1,A0
  OPT p=68000
  MOVE.L A0,D0
  BSR PrintAddressHex
  BSR PrintCR
  LEA urpText(PC),A0
  JSR PrintText
  SUB.L A0,A0
  OPT p=68040
  MOVEC URP,A0
  OPT p=68000
  MOVE.L A0,D0
  BSR PrintAddressHex
  LEA srpText(PC),A0
  JSR PrintText
  SUB.L A0,A0
  OPT p=68040
  MOVEC SRP,A0
  OPT p=68000
  MOVE.L A0,D0
  BSR PrintAddressHex
  LEA tcText(PC),A0
  JSR PrintText
  SUB.L A0,A0
  OPT p=68040
  MOVEC TC,A0
  OPT p=68000
  MOVE.L A0,D0
  BSR Print4DigitHex
  BSR PrintCR
  LEA mmusrText(PC),A0
  JSR PrintText
  SUB.L A0,A0
  OPT p=68040
  MOVEC MMUSR,A0
  OPT p=68000
  MOVE.L A0,D0
  BSR PrintAddressHex
  BSR PrintCR
  JSR getVBR
  MOVE.L (A7)+,ILLEG_OPC(A0)
  RTS
itt0Text DC.B "ITT0=",0
itt1Text DC.B " ITT1=",0
dtt0Text DC.B "DTT0=",0
dtt1Text DC.B " DTT1=",0
urpText DC.B "URP=",0
srpText DC.B " SRP=",0
tcText DC.B " TC=",0
mmusrText DC.B "MMUSER=",0
  even

CMD_R:
  MOVEM.L D0-D2/A1,-(A7)
  BSR.W readCmdCharSkipSpaces
  TST.B endOfCmdString
  BNE.W LAB_A131EA
  CMPI.W  #$0046,D0
  BEQ.S setFlags
  CMPI.W  #$0044,D0
  BEQ.W SetDataReg
  CMPI.W  #$0041,D0
  BEQ.W SetAddressReg
  MOVE.W  D0,D2
LAB_A130AE:
  BSR.W readCmdChar
  TST.B endOfCmdString
  BNE.W LAB_A131EA
  CMPI.W  #$0020,D0
  BNE.S LAB_A130AE
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.W LAB_A131EA
  CMPI.W  #$0055,D2
  BEQ.S LAB_A130EE
  CMPI.W  #$0050,D2
  BEQ.S LAB_A130F6
  CMPI.W  #$0053,D2
  BNE.W LAB_A131EA
  MOVE.W  D0,SaveOldSr
  BRA.W LAB_A131EA
LAB_A130EE:
  MOVEA.L D0,A1
  MOVE.L  A1,USP
  BRA.W LAB_A131EA
LAB_A130F6:
  MOVE.L  D0,SaveOldPc
  BRA.W LAB_A131EA
setFlags:
  BSR.W readCmdChar
  TST.B endOfCmdString
  BNE.W LAB_A131EA
  CMPI.W  #$0049,D0
  BNE.S LAB_A1313A
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.W LAB_A131EA
  ANDI.W  #7,D0
  ROL.W #8,D0
  ANDI.W  #$f8ff,SaveOldSr
  OR.W  D0,SaveOldSr
  BRA.W LAB_A131EA
LAB_A1313A:
  MOVE.W  #$0010,D1
  CMPI.W  #$0054,D0
  BNE.S LAB_A13148
  MOVE.W  #$000f,D1
LAB_A13148:
  CMPI.W  #$0053,D0
  BNE.S LAB_A13152
  MOVE.W  #$000d,D1
LAB_A13152:
  CMPI.W  #$0058,D0
  BNE.S LAB_A1315C
  MOVE.W  #4,D1
LAB_A1315C:
  CMPI.W  #$004e,D0
  BNE.S LAB_A13166
  MOVE.W  #3,D1
LAB_A13166:
  CMPI.W  #$005a,D0
  BNE.S LAB_A13170
  MOVE.W  #2,D1
LAB_A13170:
  CMPI.W  #$0056,D0
  BNE.S LAB_A1317A
  MOVE.W  #1,D1
LAB_A1317A:
  CMPI.W  #$0043,D0
  BNE.S LAB_A13184
  MOVE.W  #0,D1
LAB_A13184:
  BTST  #4,D1
  BNE.S LAB_A131EA
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.S LAB_A131EA
  TST.L D0
  BEQ.S LAB_A131A6
  CLR.W D0
  BSET  D1,D0
  OR.W  D0,SaveOldSr
  BRA.S LAB_A131EA
LAB_A131A6:
  MOVE.W  #$ffff,D0
  BCLR  D1,D0
  AND.W D0,SaveOldSr
  BRA.S LAB_A131EA
SetDataReg:
  LEA SaveCpuRegs,A1
  BRA.S LAB_A131C2
SetAddressReg:
  LEA SaveCpuRegs2,A1
LAB_A131C2:
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.S LAB_A131EA
  CMPI.L  #7,D0
  BHI.S LAB_A131EA
  LSL.W #2,D0
  MOVE.W  D0,D1
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.S LAB_A131EA
  MOVE.L  D0,0(A1,D1.W)
LAB_A131EA:
  JSR SUB_A131F6
  MOVEM.L (A7)+,D0-D2/A1
  RTS
SUB_A131F6:
  MOVEM.L A0-A1,-(A7)
  LEA SaveCpuRegs,A1
  LEA LAB_A1336B(PC),A0
  JSR PrintText
  MOVEQ #0,D2
LAB_A1320C:
  MOVE.L  (A1)+,D0
  JSR Print8DigitHex
  JSR PrintSpace
  CMPI.W  #3,D2
  BNE.S LAB_A13226
  JSR PrintSpace
LAB_A13226:
  ADDQ.W  #1,D2
  CMPI.W  #7,D2
  BLS.S LAB_A1320C
  LEA LAB_A1336F(PC),A0
  JSR PrintText
  MOVEQ #0,D2
LAB_A1323A:
  MOVE.L  (A1)+,D0
  CMPI.W  #7,D2
  BNE.S LAB_A13244
  ADDQ.L  #6,D0
LAB_A13244:
  JSR Print8DigitHex
  JSR PrintSpace
  CMPI.W  #3,D2
  BNE.S LAB_A1325C
  JSR PrintSpace
LAB_A1325C:
  ADDQ.W  #1,D2
  CMPI.W  #7,D2
  BLS.S LAB_A1323A
  JSR PrintCR
  LEA LAB_A13336(PC),A0
  JSR PrintText
  MOVE.L  (A1)+,D0
  JSR Print8DigitHex
  LEA LAB_A1333C(PC),A0
  JSR PrintText
  MOVE.L  USP,A0
  MOVE.L  A0,D0
  JSR Print8DigitHex
  LEA LAB_A13344(PC),A0
  JSR PrintText
  MOVE.W  (A1)+,D0
  BSR.W Print4DigitHex
  MOVE.W  D0,D2
  LEA LAB_A1334B(PC),A0
  JSR PrintText
  LSL.W #1,D2
  BSR.W PrintCarryDigit
  LEA LAB_A1334F(PC),A0
  JSR PrintText
  LSL.W #2,D2
  BSR.W PrintCarryDigit
  LEA LAB_A13353(PC),A0
  JSR PrintText
  LSL.W #3,D2
  BSR.W PrintCarryDigit
  LSL.W #1,D2
  BSR.W PrintCarryDigit
  LSL.W #1,D2
  BSR.W PrintCarryDigit
  LEA LAB_A13357(PC),A0
  JSR PrintText
  LSL.W #4,D2
  BSR.W PrintCarryDigit
  LEA LAB_A1335B(PC),A0
  JSR PrintText
  LSL.W #1,D2
  BSR.W PrintCarryDigit
  LEA LAB_A1335F(PC),A0
  JSR PrintText
  LSL.W #1,D2
  BSR.W PrintCarryDigit
  LEA LAB_A13363(PC),A0
  JSR PrintText
  LSL.W #1,D2
  BSR.W PrintCarryDigit
  LEA LAB_A13367(PC),A0
  JSR PrintText
  LSL.W #1,D2
  BSR.W PrintCarryDigit
  JSR PrintCR
  MOVEM.L (A7)+,A0-A1
  RTS

LAB_A13336:
  DC.B  "PC = ",0

LAB_A1333C:
  DC.B  " USP = ",0

LAB_A13344:
  DC.B  " SR = ",0

LAB_A1334B:
  DC.B  " T=",0

LAB_A1334F:
  DC.B  $20
  DC.W  $533d
  DS.B  1

LAB_A13353:
  DC.B  $20
  DC.W  $493d
  DS.B  1

LAB_A13357:
  DC.B  $20
  DC.W  $583d
  DS.B  1

LAB_A1335B:
  DC.B  $20
  DC.W  $4e3d
  DS.B  1

LAB_A1335F:
  DC.B  $20
  DC.W  $5a3d
  DS.B  1

LAB_A13363:
  DC.B  $20
  DC.W  $563d
  DS.B  1

LAB_A13367:
  DC.B  $20
  DC.W  $433d
  DS.B  1

LAB_A1336B:
  DC.B  $44
  DC.W  $303d
  DS.B  1

LAB_A1336F:
  DC.B  $D,"A0=",0

CMD_MMM:
  MOVE.W #15,repeatCount
  BRA.S m2
CMD_MM:
  MOVE.W #7,repeatCount
  BRA.S m2
CMD_M:
  CLR.W repeatCount
m2:
  JSR SUB_A30FF8
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.W PrintWTF
  MOVEA.L D0,A1
  BRA.W ShowMemory
CMD_INTERRUPTS:
  JSR PrintInterrupts
  BRA.W PrintReady
CMD_FA:
  JSR FindAddressingOpcode
  BRA.W PrintReady

CMD_CI:
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.W PrintWTF

  MOVE.L D0,A1
  BSR copyLockInfo
  BRA.W PrintReady

copyLockInfo:
  MOVEM.L D0-D2/A0-A1,-(A7)
  MOVE.W #$400,D1
.srch
  ST  decryptins
  MOVE.L  -4(A1),LAB_A489FE
  MOVE.L  -4(A1),LAB_A48A02
  CLR.W LAB_A48A06
  MOVE.L A1,A0
  JSR memSafeReadLong

  CMP.L #$323c000b,D0
  BNE .not


  LEA 4(A1),A0
  MOVE.L  -4(A0),LAB_A489FE
  MOVE.L  -4(A0),LAB_A48A02
  CLR.W LAB_A48A06
  JSR memSafeReadLong
  MOVE.L D0,D1

  LEA 8(A1),A0
  MOVE.L  -4(A0),LAB_A489FE
  MOVE.L  -4(A0),LAB_A48A02
  CLR.W LAB_A48A06
  JSR memSafeReadWord
  MOVE.L D0,D2

  CMP.L #$D099e398,D1
  BEQ.S .typefound

  MOVEQ #0,D0
  CMP.L #$D099e398,D1
  BEQ.S .typefound

  MOVEQ #1,D0
  CMP.L #$DC9851C9,D1
  BEQ.S .typefound

  MOVEQ #2,D0
  CMP.L #$9C9851C9,D1
  BEQ.S .typefound

  MOVEQ #3,D0
  CMP.L #$DC984846,D1
  BEQ.S .typefound

  MOVEQ #4,D0
  CMP.L #$9C984846,D1
  BEQ.S .typefound

  MOVEQ #7,D0
  CMP.W #$4846,D2
  BEQ.S .maybe7

  MOVEQ #5,D0

.maybe7:
  CMP.L #$DC86DC98,D1
  BEQ.S .typefound

  MOVEQ #6,D0
  CMP.L #$DC869C98,D1
  BEQ.S .typefound

  MOVEQ #-1,D0

.typefound:
  SF  decryptins
  TST.L D0
  BMI.S .notype
  LEA .clockType(PC),A0
  BSR PrintText
  BSR.W Print2DigitHex
  BSR PrintCR
.notype:
  LEA .clockSerial(PC),A0
  BSR PrintText
  MOVE.B robdmode,-(A7)
  ST.B robdmode
  MOVE.L A1,D0
  JSR SUB_A12F08
  MOVE.L DefaultAddress,D0
  JSR PrintCR
  JSR SUB_A12F08
  MOVE.L DefaultAddress,D0
  JSR PrintCR
  JSR SUB_A12F08
  MOVE.L DefaultAddress,D0
  JSR PrintCR
  JSR SUB_A12F08
  MOVE.L DefaultAddress,D0
  JSR PrintCR
  JSR SUB_A12F08
  JSR PrintCR
  MOVE.B (A7)+,robdmode
  MOVEM.L (A7)+,D0-D2/A0-A1
  RTS
.not
  SF  decryptins
  LEA 2(A1),A1
  DBF D1,.srch
  LEA .clockNotFound(PC),A0
  BSR PrintText
  MOVEM.L (A7)+,D0-D2/A0-A1
  RTS

.clockSerial
  DC.B "Decrypted Serial code:",10,0
.clockNotFound
  DC.B "Serial code not found",10,10,0
.clockType
  DC.B "Type: ",0

  even
CMD_FC:
  SF  LAB_A480CA
  ST  forceUpper
  ST  copyLockSearch
  LEA onz(pc),A1
  MOVE.L (a1)+,stringWorkspace
  MOVE.l #4,D0
  BRA srch

onz:
  DC.B " ONz",0
  even

CMD_FS:
  ST  LAB_A480CA
  BRA.S LAB_A133B6
CMD_F:
  SF  LAB_A480CA
  SF  forceUpper
LAB_A133B6:
  BSR.W SUB_A1375E
  ST  forceUpper
  TST.W D0
  BEQ.W PrintWTF
srch:
  MOVE.W  D0,-(A7)
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.S LAB_A133F0
  MOVEA.L D0,A1
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.S LAB_A133F6
  MOVEA.L D0,A2
  MOVE.W  (A7)+,D0
  BSR.S PrintSearchInfo
  BSR.W SUB_A174E0
  SF  copyLockSearch
  BRA.W PrintReady
LAB_A133F0:
  MOVEA.L lowestMem,A1
LAB_A133F6:
  MOVEA.L highestMem,A2
  MOVE.W  (A7)+,D0
  BSR.S PrintSearchInfo
  BSR.W SUB_A174E0
  SF  copyLockSearch
  BRA.W PrintReady
SearchFromText:
  DC.B  "Search from: ",0

SearchToText:
  DC.B  " to: ",0

PrintSearchInfo:
  MOVEM.L D0/A0,-(A7)
  LEA SearchFromText(PC),A0
  BSR.W PrintText
  MOVE.L  A1,D0
  BSR.W PrintAddressHex
  LEA SearchToText(PC),A0
  BSR.W PrintText
  MOVE.L  A2,D0
  BSR.W PrintAddressHex
  BSR.W PrintCrIfNotBlankLine
  MOVEM.L (A7)+,D0/A0
  RTS
CMD_TASKS:
  JSR PrintTasks
  BRA.W PrintReady
CMD_E:
  BSR.W ReadParameter
ShowCustomRegValues:
  BCLR  #0,D0
  CMPI.W  #$01ff,D0
  BHI.W PrintWTF
  BSR.W SUB_A135C0
  MOVE.W  D0,D1
  MOVE.W  #$003b,D0
  BSR.W PrintChar
  MOVE.W  D1,D0
  BSR.W Print4DigitHex
  JSR PrintSpace
  MOVE.W  (A1),D0
  BSR.W Print4DigitHex
  JSR PrintSpace
  MOVE.W  #$0025,D0
  BSR.W PrintChar
  MOVE.W  (A1),D0
  BSR.W Print16DigitBinary
  MOVEQ #5,D0
  JSR PrintSpaces
  MOVEQ #$3B,D0
  JSR PrintChar
  MOVE.W  D1,D0
  JSR SUB_A23D40
  JSR PrintCRToPrinter
  MOVE.W  #6,cursorX
  BRA.W PrintCursor
CMD_SEMICOLON:
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.W PrintWTF
  CMPI.W  #$01ff,D0
  BHI.W PrintWTF
  BCLR  #0,D0
  MOVE.W  D0,D1
  MOVE.W  D0,D3
  BSR.W SUB_A135C0
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.W PrintWTF
  CMP.W (A1),D0
  BEQ.S LAB_A134FC
  MOVE.W  D0,D2
  MOVE.W  D1,D0
  BSR.W SUB_A135E0
  MOVE.W  D2,(A1)
  BRA.S LAB_A13518
LAB_A134FC:
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.W PrintWTF
  CMP.W (A1),D0
  BEQ.S LAB_A13518
  MOVE.W  D0,D2
  MOVE.W  D1,D0
  BSR.W SUB_A135E0
  MOVE.W  D2,(A1)
LAB_A13518:
  ADDQ.W  #2,D3
  MOVE.W  D3,D0
  CMPI.W  #$01fe,D0
  BHI.S LAB_A13526
  BRA.W ShowCustomRegValues
LAB_A13526:
  RTS
CMD_QMARK:
  BRA.W Calculate
CMD_YYY:
  MOVE.W #15,repeatCount
  BRA.W ShowBinaryMem
CMD_YY:
  MOVE.W #7,repeatCount
  BRA.W ShowBinaryMem
CMD_Y:
  CLR.W repeatCount
  BRA.W ShowBinaryMem
CMD_YS:
  BRA.W setDisplayBitWidth
CMD_TRANS:
  BSR.W MemTrans
  BRA.W PrintReady
CMD_MQ:
  JSR ShowMemQuick2
  BRA.W PrintReady
CMD_NQ:
  JSR ShowMemQuick
  BRA.W PrintReady
CMD_WS:
  BSR.W MemWriteString
  BRA.W PrintReady
CMD_FR:
  BSR.W StringSearchRelative
  BRA.W PrintReady
CMD_EXECBASE:
  JMP PrintExecbase
CMD_VIRUS:
  MOVE.B  VirusCheckerSettingsPrefs,-(A7)
  BCLR  #1,VirusCheckerSettingsPrefs
  JSR FindVirus
  MOVE.B  (A7)+,VirusCheckerSettingsPrefs
  RTS
CMD_KILLVIRUS:
  MOVE.B  VirusCheckerSettingsPrefs,-(A7)
  BSET  #1,VirusCheckerSettingsPrefs
  JSR FindVirus
  MOVE.B  (A7)+,VirusCheckerSettingsPrefs
  RTS
Print16DigitBinary:
  MOVE.L  D1,-(A7)
  MOVEQ #$10,D1
  BSR.S PrintBinaryDigits
  MOVE.L  (A7)+,D1
  RTS
PrintBinaryDigits:
  MOVEM.L D0-D2,-(A7)
  MOVEQ #$20,D2
  SUB.W D1,D2
  LSL.L D2,D0
  SUBQ.W  #1,D1
  MOVE.L  D0,D2
LAB_A135AA:
  MOVEQ #$31,D0
  ROXL.L  #1,D2
  BCS.S LAB_A135B2
  MOVEQ #$30,D0
LAB_A135B2:
  BSR.W PrintChar
  DBF D1,LAB_A135AA
  MOVEM.L (A7)+,D0-D2
  RTS
SUB_A135C0:
  BSR.S GetSavedHardwareRegValues
  CMPA.L  #$00dff000,A1
  BCS.S LAB_A135DE
  CMPA.L  #$00dff01e,A1
  BCS.S LAB_A135DE
  SUBA.L  #$00dff000,A1
  ADDA.L  RegSnoopAddr,A1
LAB_A135DE:
  RTS
SUB_A135E0:
  BSR.S GetSavedHardwareRegValues
  CMPA.L  #$00dff000,A1
  BCS.S LAB_A135FE
  CMPA.L  #$00dff01e,A1
  BHI.S LAB_A135FE
  SUBA.L  #$00dff000,A1
  ADDA.L  RegSnoopAddr,A1
LAB_A135FE:
  RTS
GetSavedHardwareRegValues:
  LEA LAB_A1361E(PC),A1
LAB_A13604:
  CMP.W (A1)+,D0
  BEQ.S LAB_A1361A
  ADDQ.W  #4,A1
  TST.W (A1)
  BPL.S LAB_A13604
  LEA hardware,A1
  LEA 0(A1,D0.W),A1
  RTS
LAB_A1361A:
  MOVEA.L (A1),A1
  RTS
LAB_A1361E:
  DC.W  $0002
  DC.L  SaveDmaCon
  DC.W  $0010
  DC.L  SaveAdkcon
  DC.W  $001c
  DC.L  SaveIntena
  DC.W  $001e
  DC.L  SaveIntreq
  DC.W  $0028
  DC.L  SaveCopJmp
  DC.W  $002a
  DC.L  SaveCopJmp
  DC.W  $002c
  DC.L  SaveCopJmp
  DC.W  $0038
  DC.L  SaveCopJmp
  DC.W  $003a
  DC.L  SaveCopJmp
  DC.W  $003c
  DC.L  SaveCopJmp
  DC.W  $003e
  DC.L  SaveCopJmp
  DC.W  $0040
  DC.L  SaveBltCon0
  DC.W  $0042
  DC.L  SaveBltCon1
  DC.W  $0044
  DC.L  SaveBltAfwm
  DC.W  $0046
  DC.L  SaveBtlAlwm
  DC.W  $0048
  DC.L  SaveBltCPth
  DC.W  $004a
  DC.L  SaveBltCptl
  DC.W  $004c
  DC.L  SaveBltBPth
  DC.W  $004e
  DC.L  SaveBltBPtl
  DC.W  $0050
  DC.L  SaveBltAPth
  DC.W  $0052
  DC.L  SaveBltAPtl
  DC.W  $0054
  DC.L  SaveBltDPth
  DC.W  $0056
  DC.L  SaveBltDPtl
  DC.W  $0058
  DC.L  SaveBltSize
  DC.W  $0060
  DC.L  SaveBltCMod
  DC.W  $0062
  DC.L  SaveBltBMod
  DC.W  $0064
  DC.L  SaveBltAMod
  DC.W  $0066
  DC.L  SaveBltDMod
  DC.W  $0070
  DC.L  SaveBltCDat
  DC.W  $0072
  DC.L  SaveBltBDat
  DC.W  $0074
  DC.L  SaveBltADat
  DC.W  $007e
  DC.L  SaveDskSync
  DC.W  $0080
  DC.L  SaveCop1Lch
  DC.W  $0082
  DC.L  SaveCop1Lcl
  DC.W  $0088
  DC.L  SaveCopJmp
  DC.W  $008a
  DC.L  SaveCopJmp
  DC.W  $008e
  DC.L  SaveDiwStart
  DC.W  $0090
  DC.L  SaveDiwStop
  DC.W  $0092
  DC.L  SaveDdfStrt
  DC.W  $0094
  DC.L  SaveDdfStop
  DC.W  $0096
  DC.L  SaveDmaCon
  DC.W  $009a
  DC.L  SaveIntena
  DC.W  $009c
  DC.L  SaveIntreq
  DC.W  $009e
  DC.L  SaveAdkcon
  DC.W  $00e0
  DC.L  SaveBpl1Pth
  DC.W  $00e2
  DC.L  SaveBpl1Ptl
  DC.W  $0100
  DC.L  SaveBplCon0
  DC.W  $0102
  DC.L  SaveBplCon1
  DC.W  $0104
  DC.L  SaveBplCon2
  DC.W  $0108
  DC.L  SaveBpl1Mod
  DC.W  $010a
  DC.L  SaveBpl2Mod
  DC.W  $0180
  DC.L  SaveColor00
  DC.W  $0182
  DC.L  SaveColor01
  DC.W  $ffff
SUB_A1375E:
  MOVEM.L D6/A1,-(A7)
  LEA stringWorkspace,A1
  MOVEQ #0,D6
LAB_A1376A:
  BSR.W readCmdCharSkipSpaces
  TST.B endOfCmdString
  BNE.S LAB_A137B0
  CMPI.W  #$0022,D0
  BEQ.S LAB_A13798
  CMPI.W  #$002c,D0
  BEQ.S LAB_A137B0
  BSR.W SUB_A1827E
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.S LAB_A137B0
  MOVE.B  D0,(A1)+
  ADDQ.W  #1,D6
  BRA.S LAB_A1376A
LAB_A13798:
  BSR.W readCmdChar
  TST.B endOfCmdString
  BNE.S LAB_A137B0
  CMPI.W  #$0022,D0
  BEQ.S LAB_A1376A
  MOVE.B  D0,(A1)+
  ADDQ.W  #1,D6
  BRA.S LAB_A13798
LAB_A137B0:
  MOVE.W  D6,D0
  MOVEM.L (A7)+,D6/A1
  RTS
PrintText:
  MOVEM.L D0/A0,-(A7)
  MOVEQ #0,D0
LAB_A137BE:
  TST.B EscapePressed
  BEQ.S LAB_A137CE
  TST.B ShiftKey
  BNE.S LAB_A137DE
LAB_A137CE:
  BSR.W memSafeReadByte
  ADDQ.W  #1,A0
  TST.B D0
  BEQ.S LAB_A137DE
  BSR.W PrintChar
  BRA.S LAB_A137BE
LAB_A137DE:
  MOVEM.L (A7)+,D0/A0
  RTS
InvalidAsciiToSpace:
  CMPI.B  #$1f,D0
  BLS.S LAB_A137F8
  CMPI.B  #$7f,D0
  BLS.S LAB_A137F6
  CMPI.B  #$9f,D0
  BLS.S LAB_A137F8
LAB_A137F6:
  RTS
LAB_A137F8:
  MOVEQ #$20,D0
  RTS
InvalidAsciiToDot:
  CMPI.B  #$1f,D0
  BLS.S LAB_A13810
  CMPI.B  #$7f,D0
  BLS.S LAB_A1380E
  CMPI.B  #$9f,D0
  BLS.S LAB_A13810
LAB_A1380E:
  RTS
LAB_A13810:
  MOVEQ #$2E,D0
  RTS
ShowMemory:
  MOVEM.L D0-D1,-(A7)
repeatm:
  MOVE.W  #$003a,D0
  BSR.W PrintChar
  MOVE.L  A1,D0
  BSR.W PrintAddressHex
  TST.W LAB_A35698
  BNE.W LAB_A1387C
  MOVEQ #$F,D1
LAB_A13832:
  BSR.W PrintSpace
  MOVE.L  A0,-(A7)
  MOVEA.L A1,A0
  BSR.W memSafeReadByte
  BSR.W Print2DigitHex
  ADDQ.W  #1,A1
  MOVEA.L (A7)+,A0
  DBF D1,LAB_A13832
  BSR.W PrintSpace
  MOVEQ #$F,D1
  LEA -16(A1),A1
LAB_A13854:
  MOVE.L  A0,-(A7)
  MOVEA.L A1,A0
  ADDQ.W  #1,A1
  BSR.W memSafeReadByte
  MOVEA.L (A7)+,A0
  BSR.S InvalidAsciiToDot
  BSR.W PrintChar
  DBF D1,LAB_A13854

  TST.W repeatCount
  BEQ.S .norep
  BSR.W PrintCR

  SUB.W #1,repeatCount
  BRA.S repeatm
.norep:
  MOVE.W cpuAddrSize,D1
  ADD.W #2,D1
  MOVE.W  D1,cursorX
  BSR.W PrintCursor
  MOVEM.L (A7)+,D0-D1
  CLR.W repeatCount
  RTS
LAB_A1387C:
  CMPI.W  #1,LAB_A35698
  BNE.S LAB_A138E6
  MOVEQ #7,D1
LAB_A13888:
  BSR.W PrintSpace
  MOVE.L  A0,-(A7)
  MOVEA.L A1,A0
  BSR.W memSafeReadByte
  MOVE.B  D0,D2
  ROL.W #8,D2
  ADDQ.W  #1,A1
  MOVEA.L A1,A0
  BSR.W memSafeReadByte
  MOVE.B  D0,D2
  MOVEQ #0,D0
  MOVE.W  D2,D0
  BSR.W Print4DigitHex
  ADDQ.W  #1,A1
  MOVEA.L (A7)+,A0
  DBF D1,LAB_A13888
  BSR.W PrintSpace
  MOVEQ #$F,D1
  LEA -16(A1),A1
LAB_A138BC:
  MOVE.L  A0,-(A7)
  MOVEA.L A1,A0
  ADDQ.W  #1,A1
  BSR.W memSafeReadByte
  MOVEA.L (A7)+,A0
  BSR.W InvalidAsciiToDot
  BSR.W PrintChar
  DBF D1,LAB_A138BC
  MOVE.W  #8,cursorX
  BSR.W PrintCursor
  MOVEM.L (A7)+,D0-D1
  RTS
LAB_A138E6:
  MOVEQ #3,D1
LAB_A138E8:
  BSR.W PrintSpace
  MOVE.L  A0,-(A7)
  MOVE.L  D3,-(A7)
  MOVEQ #3,D3
LAB_A138F2:
  ROL.L #8,D2
  MOVEA.L A1,A0
  BSR.W memSafeReadByte
  MOVE.B  D0,D2
  ADDQ.W  #1,A1
  DBF D3,LAB_A138F2
  MOVE.L  (A7)+,D3
  MOVE.L  D2,D0
  BSR.W PrintAddressHex
  MOVEA.L (A7)+,A0
  DBF D1,LAB_A138E8
  BSR.W PrintSpace
  MOVEQ #$F,D1
  LEA -16(A1),A1
LAB_A1391A:
  MOVE.L  A0,-(A7)
  MOVEA.L A1,A0
  ADDQ.W  #1,A1
  BSR.W memSafeReadByte
  MOVEA.L (A7)+,A0
  BSR.W InvalidAsciiToDot
  BSR.W PrintChar
  DBF D1,LAB_A1391A
  MOVE.W  #8,cursorX
  BSR.W PrintCursor
  MOVEM.L (A7)+,D0-D1
  RTS
CMD_COLON:
  MOVEM.L D0-D1/D3/A1,-(A7)
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.W PrintWTF
  MOVEA.L D0,A1
  TST.W LAB_A35698
  BNE.W LAB_A1398C
  MOVEQ #$F,D1
LAB_A13964:
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.W PrintWTF
  MOVE.L  A0,-(A7)
  MOVEA.L A1,A0
  ADDQ.W  #1,A1
  BSR.W memSafeUpdateByte
  MOVEA.L (A7)+,A0
  DBF D1,LAB_A13964
  BSR.W ShowMemory
  MOVEM.L (A7)+,D0-D1/D3/A1
  RTS
LAB_A1398C:
  CMPI.W  #1,LAB_A35698
  BNE.S LAB_A139CC
  MOVEQ #7,D1
LAB_A13998:
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.W PrintWTF
  MOVE.L  A0,-(A7)
  ROR.W #8,D0
  MOVEA.L A1,A0
  ADDQ.W  #1,A1
  BSR.W memSafeUpdateByte
  ROR.W #8,D0
  MOVEA.L A1,A0
  ADDQ.W  #1,A1
  BSR.W memSafeUpdateByte
  MOVEA.L (A7)+,A0
  DBF D1,LAB_A13998
  BSR.W ShowMemory
  MOVEM.L (A7)+,D0-D1/D3/A1
  RTS
LAB_A139CC:
  MOVEQ #3,D1
LAB_A139CE:
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.W PrintWTF
  MOVE.L  A0,-(A7)
  MOVEQ #3,D3
LAB_A139E0:
  ROL.L #8,D0
  MOVEA.L A1,A0
  ADDQ.W  #1,A1
  BSR.W memSafeUpdateByte
  DBF D3,LAB_A139E0
  MOVEA.L (A7)+,A0
  DBF D1,LAB_A139CE
  BSR.W ShowMemory
  MOVEM.L (A7)+,D0-D1/D3/A1
  RTS
Init:
  MOVE.L  A0,-(A7)
  MOVE.W  #$0110,dmacon+hardware
  SF  restartFlag
  ST  cursorEnabled
  SF  LAB_A483DB
  SF  printerDumpToggle
  SF  scrollLock
  SF  LAB_A483CB
  CLR.W BlankerCount
  CMPI.B  #$ff,ciabpra
  SNE PrinterFound
  CMPI.L  #ARON_TAG,AronFlag
  BEQ.W LAB_A13B62
  MOVE.L  #ARON_TAG,AronFlag
  SF  trainerModeActive
  LEA LastCmdBuff,A0
  MOVEQ #$4F,D0
LAB_A13A6E:
  MOVE.B  #$20,(A0)+
  DBF D0,LAB_A13A6E
  MOVEQ #4,D0
  LEA BreakpointList,A0
LAB_A13A7E:
  CLR.L (A0)+
  CLR.W (A0)+
  DBF D0,LAB_A13A7E
  LEA MemWatchAddrs,A0
  MOVEQ #4,D0
  MOVEQ #-1,D1
LAB_A13A90:
  MOVE.L  D1,(A0)+
  DBF D0,LAB_A13A90
  MOVE.W  #2,binaryBitWidth
  CLR.W asciiDumpOffset
  LEA highestMem,A0
  CLR.L -4(A0)
  MOVE.L  ChipMemEnd,(A0)
  TST.L SlowMemEnd
  BEQ.S LAB_A13AC2
  MOVE.L  SlowMemEnd,(A0)
LAB_A13AC2:
  TST.L autoConfigMemEnd
  BEQ.S LAB_A13AD6
  MOVE.L  autoConfigMemEnd,D0
  CMP.L (A0),D0
  BLS.S LAB_A13AD6
  MOVE.L  D0,(A0)
LAB_A13AD6:
  MOVE.L  TextPage1Addr,CurrentPage
  CMPI.L  #$5052494e,PrinFlag
  BNE.S LAB_A13B08
  CLR.L PrinFlag
  BSR.W Cls
  LEA AboutArText(PC),A0
  BSR.W PrintText
  MOVE.L  TextPage2Addr,CurrentPage
LAB_A13B08:
  CLR.L cursorX
  CLR.L LAB_A47F3E
  JSR Cls
  LEA aboutText(PC),A0
  JSR PrintText(PC)
  LEA HeaderStarsText(PC),A0
  BSR.W PrintText
  MOVE.W  #8,BreakpointTrapNo
  MOVE.L  TRAP_08.W,SaveTrap
  MOVE.L  #$00000040,TRAP_08.W
  LEA RemarksData,A0
  MOVEQ #$1D,D0
LAB_A13B4A:
  CLR.L (A0)+
  DBF D0,LAB_A13B4A
  JSR GetDrivesConnected
  MOVE.B  DrivesConnectedLo,D0
  AND.B D0,DriveControlPrefsValueLo
LAB_A13B62:
  JSR checkARChecksum
  if arsoft=1
  JSR  checkRamAlloc
  endc
  TST.B LAB_A483CC
  BNE.S LAB_A13B7C
  SF  LAB_A483CD
LAB_A13B7C:
  ST  forceUpper
  SF  EscapePressed
  SF  AltKey
  SF  LAB_A48393
  SF  TBufferAllocated
  SF  LAB_A4839B
  MOVE.L  #$ffffffff,oldTrackPositions
  CLR.L rootBlockLoadedFlags
  ST  LAB_A48334
  CLR.W LAB_A481E8
  SF  trackerPlaying
  CLR.W SaveCopJmp
  CLR.W picViewerMode
  TST.B TraceActive
  BNE.W LAB_A13C7C
  TST.B LAB_A48392
  BEQ.S LAB_A13BEC
  BSR.W Cls
  LEA DangerText(PC),A0
  JSR PrintText(PC)
LAB_A13BEC:
  BSR.W SUB_A188AE
  TST.W D0
  BEQ.S LAB_A13C0E

  if arsoft=1
  CMP.L #ColdCapture,D0
  BEQ.S LAB_A13C0E  ;ignore ourself
  endc

  LEA ResidentProgramText(PC),A0
  BSR.W PrintText
  BSR.W PrintAddressHex
  JSR PrintCrIfNotBlankLine
LAB_A13C0E:
  BTST  #0,VirusCheckerSettingsPrefs
  BEQ.S LAB_A13C1E
  JSR FindVirus
LAB_A13C1E:
  CMPI.L  #$00000046,SaveOldPc
  BNE.S LAB_A13C7C
  LEA SaveCpuRegs,A0
  MOVEA.L $3C(A0),A1    ;get old A7
  MOVE.L  (A1),-(A7)
  MOVEQ #0,D0
  MOVE.W  vbrflag,D0
  ADD.W   D0,D0
  ADDQ.W  #6,D0
  ADD.L D0,$3C(A0)
  MOVEA.L $3C(A0),A0 
  BSR.W	memSafeReadWord
  MOVE.W  D0,SaveOldSr
  ADDQ.L	#2,A0
  BSR.W	memSafeReadLong
  SUBQ.L  #2,D0
  MOVE.L  D0,SaveOldPc
  MOVE.L  (A7)+,(A1)
  ST  restartFlag
  BSR.W SUB_A188F0
  TST.W D0
  BEQ.S LAB_A13C7C
  LEA BreakPointRaisedText(PC),A0
  BSR.W PrintText
  MOVE.L  SaveOldPc,D0
  BSR.W Print8DigitHex
  BSR.W PrintCrIfNotBlankLine
  SF  restartFlag
LAB_A13C7C:
  CMPI.L  #$00000136,SaveOldPc
  BNE LAB_A13D02
  LEA SaveCpuRegs,A0
  MOVEA.L $3C(A0),A1
  MOVE.L  (A1),-(A7)
  MOVEQ #0,D0
  MOVE.W  vbrflag,D0
  ADD.W   D0,D0
  ADDQ.W  #6,D0
  ADD.L D0,$3C(A0)
  MOVEA.L $3C(A0),A0
  BSR.W	memSafeReadWord
  MOVE.W  D0,SaveOldSr
  ADDQ.L	#2,A0
  BSR.W	memSafeReadLong
  MOVE.L  (A7)+,(A1)
  MOVE.L  D0,SaveOldPc
  LEA EXT_13E,A1
  MOVEQ #4,D2
LAB_A13CB6:
  MOVEA.L (A1),A0
  JSR memSafeReadByte
  MOVE.B  -1(A1),D1
  CMP.B D0,D1
  BNE.S LAB_A13CCE
  LEA $A(A1),A1
  DBF D2,LAB_A13CB6
LAB_A13CCE:
  MOVEA.L A0,A1
  MOVE.L  D0,D2
  LEA MemoryByteText(PC),A0
  JSR PrintText(PC)
  MOVE.L  A1,D0
  JSR PrintAddressHex(PC)
  LEA ChangedFromText(PC),A0
  JSR PrintText(PC)
  MOVE.W  D1,D0
  JSR Print2DigitHex(PC)
  LEA ChangedToText(PC),A0
  JSR PrintText(PC)
  MOVE.W  D2,D0
  JSR Print2DigitHex(PC)
  JSR PrintCrIfNotBlankLine
LAB_A13D02:
  MOVE.L  SaveOldPc,DefaultAddress
  MOVEA.L (A7)+,A0
  RTS
MemoryByteText:
  DC.B  "Memorybyte ",0

ChangedFromText:
  DC.B  " has changed from $",0

ChangedToText:
  DC.B  " to $",0

aboutText:
  DC.B  "********************************************************************************"
  DC.B  "                             ACTION REPLAY AMIGA V5",$D
  DC.B  "                           (c)2025 by REbEL / QUARTEX",$D
  DC.B  "                    Hardware Engineering by NA103 and GERBIL",$D,$D
  DC.B  "               Based upon Action Replay MKIII (Datel Electronics)",$D
  DC.B  "                    and Aktion Replay 4 PRO (Parcon Software)",$D,$D
  DC.B  "                 v0.8.0.03022025 - private alpha release for TTE",0

HeaderStarsText:
  DC.B  $D,"********************************************************************************",0

BreakPointRaisedText:
  DC.B  "Breakpoint raised at address: ",0

ResidentProgramText:
  DC.B  "Resident program allocated at: ",0

DangerText:
  DC.B  "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
  DC.B  "+++++++++++++++++++!  D A N G E R  !  D A N G E R  !  D A N G"
  DC.B  " E R  !  D A N G E R  !  D A N G E R !Bootblock is messing wi"
  DC.B  "th the execbase -> maybe a virus (90%)",$D,"  Press f1 to continue"
  DC.B  " booting                    f2 to display bootblock",$D,"        f"
  DC.B  "3 to install normal bootblock            f4 to install anti-v"
  DC.B  "irus-boot",$D,"        f5 to restore execbase and cont. booting  f"
  DC.B  "6 to show changed vectors",$D,"       f10 to exit to monitor",$D,"+++++"
  DC.B  "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
  DC.B  "++++++++++++++",0

AboutArText:
  DC.B  $D,$D
  DC.B  "         _____    /|      ___  ________________________________ _____",$D
  DC.B  "        /     \  / |___  /   \ \  __   \_____  ___  _____/\    V    /",$D
  DC.B  "       /   i   \/  |   |/  :  \|\/  !   \Z!/   | /\/  __)  \   !   /",$D
  DC.B  "      /    |/\  \  |   |       \       _/ /    |/       \_  >     <",$D
  DC.B  "      \    \_ \ /  !   |   i    \   \   \/     |\        / /   i   \",$D
  DC.B  "       \______ /______ |___| ___/___|\   /____ | \_____ / /    |____\",$D
  DC.B  "=============\/=======\|===|/=========\_/=====\|======\/==\____|=============",$D
  DC.B  $D
  DC.B  "                        here we are. born to be kings.",$D
  DC.B  "                      we're the princes of the universe.",$D
  DC.B  "                    here we belong. fighting for survival.",$D
  DC.B  "                      we got to be the rulers of you all",$D
  DC.B  "                   we are immortal. we have inside us blood",$D
  DC.B  "                                   of kings",$D
  DC.B  "                   we have no rival no one can be our equal",$D
  DC.B  "                        bring us the future of you all",$D
  DC.B  $D
  DC.B  "                                always remember",$D
  DC.B  "                       there can be only one - quartex!",$D
  DC.B  $D,0
  even

memSafeReadByte:
  CMPA.L  memSaveEnd,A0
  BCC.S LAB_A1456C
  CMPA.L  #EXT_1000,A0
  BCS.W LAB_A145E2
  MOVE.L  A0,-(A7)
  tst.b full64k
  bne.s .1

  ADD.L A0,A0
  ADDA.L  #ChipramSave1-(EXT_1000*2),A0
  bra.s .2
.1
  ADDA.L  #ChipramSave1-EXT_1000,A0
.2
LAB_A14564:
  MOVEQ #0,D0
  MOVE.B  (A0),D0
  MOVEA.L (A7)+,A0
  BRA.S LAB_A14570
LAB_A1456C:
  MOVEQ #0,D0
  MOVE.B  (A0),D0
LAB_A14570:
  TST.B decryptins
  BEQ.S LAB_A14596
  MOVEM.L D1/A0,-(A7)
  LEA LAB_A489FE,A0
  ADDA.W  LAB_A48A06,A0
  MOVE.B  (A0),D1
  EOR.B D1,D0
  ADDQ.W  #1,LAB_A48A06
  MOVEM.L (A7)+,D1/A0
LAB_A14596:
  TST.B LAB_A489FC
  BEQ.S LAB_A145BC
  MOVEM.L D1/A0,-(A7)
  MOVEA.L A0,A1
  SUBA.L  LAB_A48A08,A1
  MOVE.L  A1,D1
  LEA LAB_A489FE,A1
  ADDA.L  D1,A1
  MOVE.B  (A1),D1
  EOR.B D1,D0
  MOVEM.L (A7)+,D1/A0
LAB_A145BC:
  RTS
CMD_ROBD:
  MOVEM.L D0-D3/A0-A2,-(A7)
  LEA RobDNotActiveText,A0
  NOT.B robdmode
  BEQ.S LAB_A145D6
  LEA DobDActiveText,A0
LAB_A145D6:
  BSR.W PrintText
  MOVEM.L (A7)+,D0-D3/A0-A2
  BRA.W PrintReady
LAB_A145E2:
  MOVE.L  A0,D0
  ANDI.W  #$fffc,D0
  CMPI.L  #$0000006c,D0
  BHI.W LAB_A1456C
  CMPI.L  #$00000068,D0
  BCS.W LAB_A1456C
  MOVE.L  A0,-(A7)
  MOVE.L  A0,D0
  SUBI.W  #$0068,D0
  LEA Int2Save,A0
  LEA 0(A0,D0.W),A0
  BRA.W LAB_A14564
memSafeUpdateByte:
  CMP.L #SECSTRT_0,A0
  BCS.S .notrom
  CMP.L #arramstart,A0
  BCC.S .notrom
  RTS
.notrom
  MOVEM.L D1/A0,-(A7)
  CMPA.L  #EXT_1000,A0
  BCS.S LAB_A1465C
  CMPA.L  memSaveEnd,A0
  BCC.S LAB_A1462E
  tst.b full64k
  bne.s .1
  ADD.L A0,A0
  ADDA.L  #ChipramSave1-(EXT_1000*2),A0
  bra.s .2
.1
  ADDA.L  #ChipramSave1-EXT_1000,A0
.2
LAB_A1462E:
  TST.B LAB_A489FC
  BEQ.S LAB_A14654
  MOVEM.L D1/A0-A1,-(A7)
  MOVEA.L A0,A1
  SUBA.L  LAB_A48A08,A1
  MOVE.L  A1,D1
  LEA LAB_A489FE,A1
  ADDA.L  D1,A1
  MOVE.B  (A1),D1
  EOR.B D1,D0
  MOVEM.L (A7)+,D1/A0-A1
LAB_A14654:
  MOVE.B  D0,(A0)
  MOVEM.L (A7)+,D1/A0
  RTS
LAB_A1465C:
  MOVE.L  A0,D1
  ANDI.W  #$fffc,D1
  CMPI.L  #$0000006c,D1
  BHI.S LAB_A1462E
  CMPI.L  #$00000068,D1
  BCS.S LAB_A1462E
  MOVE.W  A0,D1
  SUBI.W  #$0068,D1
  LEA Int2Save,A0
  LEA 0(A0,D1.W),A0
  BRA.S LAB_A1462E
CMD_C:
  MOVE.L  D0,-(A7)
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.W PrintWTF
  CMP.L ChipMemEnd,D0
  BCC.W PrintWTF
  CMPI.L  #1,D0
  BNE.S LAB_A146AE
  MOVE.L  SaveCop1Lch,D0
  BRA.S LAB_A146C0
LAB_A146AE:
  CMPI.L  #2,D0
  BNE.S LAB_A146C0
  MOVE.L RegSnoopAddr,A1
  MOVE.L  cop2lch(A1),D0
  BRA.W LAB_A146C0
LAB_A146C0:
  BCLR  #0,D0
  BSR.S ShowCopperList
  MOVE.L  (A7)+,D0
  RTS
ShowCopperList:
  MOVEM.L D0-D2/D6/A0-A1,-(A7)
  MOVEA.L D0,A1
  MOVEA.L A1,A0
  JSR memSafeReadLong
  MOVE.L  D0,D6
  MOVE.L  A1,D1
  MOVE.W  #$002c,D0
  BSR.W PrintChar
  MOVE.L  D1,D0
  BSR.W Print6DigitHex
  MOVEA.L D0,A0
  MOVEQ #3,D1
LAB_A146EE:
  BSR.W memSafeReadByte
  ROL.L #8,D2
  MOVE.B  D0,D2
  ADDQ.W  #1,A0
  DBF D1,LAB_A146EE
  MOVE.L  D2,D0
  BTST  #$10,D2
  BNE.S LAB_A1474E
  LEA CopperMoveText(PC),A0
  BSR.W PrintText
  MOVE.W  D2,D0
  BSR.W Print4DigitHex
  MOVE.W  #$002c,D0
  BSR.W PrintChar
  MOVE.W  #$0024,D0
  BSR.W PrintChar
  MOVE.L  D2,D0
  SWAP  D0
  ANDI.W  #$01fe,D0
  MOVE.W  #3,D1
  BSR.W PrintValue
  MOVE.W  D0,D1
  MOVEQ #$C,D0
  BSR.W PrintSpaces
  MOVEQ #$3B,D0
  JSR PrintChar
  MOVE.W  D1,D0
  JSR SUB_A23D40
  BRA.W LAB_A14804
LAB_A1474E:
  BTST  #0,D2
  BNE.S LAB_A1475E
  LEA CopperWaitText(PC),A0
  BSR.W PrintText
  BRA.S LAB_A14766
LAB_A1475E:
  LEA CopperSkipText(PC),A0
  BSR.W PrintText
LAB_A14766:
  MOVE.L  D2,D0
  SWAP  D0
  ANDI.W  #$00fe,D0
  LSL.W #1,D0
  MOVE.W  #3,D1
  BSR.W PrintValue
  MOVE.W  #$002c,D0
  BSR.W PrintChar
  MOVE.W  #$0024,D0
  BSR.W PrintChar
  MOVE.L  D2,D0
  SWAP  D0
  ROR.W #8,D0
  BSR.W Print2DigitHex
  MOVE.W  #$002c,D0
  BSR.W PrintChar
  MOVE.W  #$0024,D0
  BSR.W PrintChar
  MOVE.W  D2,D0
  ANDI.W  #$00fe,D0
  LSL.W #1,D0
  MOVE.W  #3,D1
  BSR.W PrintValue
  MOVE.W  #$002c,D0
  BSR.W PrintChar
  MOVE.W  #$0024,D0
  BSR.W PrintChar
  MOVE.W  D2,D0
  ROR.W #8,D0
  BCLR  #7,D0
  BSR.W Print2DigitHex
  MOVE.W  #$002c,D0
  BSR.W PrintChar
  MOVE.W  #$0024,D0
  BSR.W PrintChar
  MOVE.W  D2,D0
  CLR.B D0
  ROL.W #1,D0
  MOVE.W  #1,D1
  BSR.W PrintValue
  MOVE.W  #$0029,D0
  BSR.W PrintChar
  CMPI.L  #$fffffffe,D2
  BNE.S LAB_A14804
  LEA CopperEndText(PC),A0
  BSR.W PrintText
LAB_A14804:
  MOVE.W  #$0038,D0
  SUB.W cursorX,D0
  JSR PrintSpaces
  LEA DCLText(PC),A0
  JSR PrintText(PC)
  MOVE.L  D6,D0
  JSR Print8DigitHex
  MOVE.W  #$000f,cursorX
  MOVEM.L (A7)+,D0-D2/D6/A0-A1
  RTS
CopperEndText:
  DC.B  " ;end of copperlist",0

CopperMoveText:
  DC.B  " MOVE #$",0

CopperWaitText:
  DC.B  " WAIT ($",0

CopperSkipText:
  DC.B  " SKIP ($",0

DCLText:
  DC.B  "dc.l ",0,0

ChipRegsText:
  DC.B  "bltddat",0
  DC.B  "dmaconr",0
  DC.B  "vposr",0
  DC.B  "vhposr",0
  DC.B  "dskdatr",0
  DC.B  "joy0dat",0
  DC.B  "joy1dat",0
  DC.B  "clxdat",0
  DC.B  "adkconr",0
  DC.B  "pot0dat",0
  DC.B  "pot1dat",0
  DC.B  "potinp",0
  DC.B  "serdat",0
  DC.B  "dskbytr",0
  DC.B  "intenar",0
  DC.B  "intreqr",0
  DC.B  "dskpth",0
  DC.B  "dskptl",0
  DC.B  "dsklen",0
  DC.B  "dskdatr",0
  DC.B  "refptr",0
  DC.B  "vposw",0
  DC.B  "vhposw",0
  DC.B  "copcon",0
  DC.B  "serdat",0
  DC.B  "serper",0
  DC.B  "potgo",0
  DC.B  "joytest",0
  DC.B  "strequ",0
  DC.B  "strvbl",0
  DC.B  "strhor",0
  DC.B  "strlong",0
  DC.B  "bltcon0",0
  DC.B  "bltcon1",0
  DC.B  "bltafwm",0
  DC.B  "bltalwm",0
  DC.B  "bltcpth",0
  DC.B  "bltcptl",0
  DC.B  "bltbpth",0
  DC.B  "bltbptl",0
  DC.B  "bltapth",0
  DC.B  "bltaptl",0
  DC.B  "bltdpth",0
  DC.B  "bltdptl",0
  DC.B  "bltsize",0
  DC.B  "bltcon01 ECS",0
  DC.B  "bltsizv ECS",0
  DC.B  "bltsizh ECS",0
  DC.B  "bltcmod",0
  DC.B  "bltbmod",0
  DC.B  "bltamod",0
  DC.B  "bltdmod",0
  DC.B  "unused",0
  DC.B  "unused",0
  DC.B  "unused",0
  DC.B  "unused",0
  DC.B  "bltcdat",0
  DC.B  "bltbdat",0
  DC.B  "bltadat",0
  DC.B  "unused",0
  DC.B  "sprhdat ECS",0
  DC.B  "bplhdat AGA",0
  DC.B  "deniseid ECS",0
  DC.B  "dsksync",0
  DC.B  "cop1lch",0
  DC.B  "cop1lcl",0
  DC.B  "cop2lch",0
  DC.B  "cop2lcl",0
  DC.B  "copjmp1",0
  DC.B  "copjmp2",0
  DC.B  "copins",0
  DC.B  "diwstrt",0
  DC.B  "diwstop",0
  DC.B  "ddfstrt",0
  DC.B  "ddfstop",0
  DC.B  "dmacon",0
  DC.B  "clxcon",0
  DC.B  "intena",0
  DC.B  "intreq",0
  DC.B  "adkcon",0
  DC.B  "aud0pth",0
  DC.B  "aud0ptl",0
  DC.B  "aud0len",0
  DC.B  "aud0per",0
  DC.B  "aud0vol",0
  DC.B  "aud0dat",0
  DC.B  "unused",0
  DC.B  "unused",0
  DC.B  "aud1pth",0
  DC.B  "aud1ptl",0
  DC.B  "aud1len",0
  DC.B  "aud1per",0
  DC.B  "aud1vol",0
  DC.B  "aud1dat",0
  DC.B  "unused",0
  DC.B  "unused",0
  DC.B  "aud2pth",0
  DC.B  "aud2ptl",0
  DC.B  "aud2len",0
  DC.B  "aud2per",0
  DC.B  "aud2vol",0
  DC.B  "aud2dat",0
  DC.B  "unused",0
  DC.B  "unused",0
  DC.B  "aud3pth",0
  DC.B  "aud3ptl",0
  DC.B  "aud3len",0
  DC.B  "aud3per",0
  DC.B  "aud3vol",0
  DC.B  "aud3dat",0
  DC.B  "unused",0
  DC.B  "unused",0
  DC.B  "bpl0pth",0
  DC.B  "bpl0ptl",0
  DC.B  "bpl1pth",0
  DC.B  "bpl1ptl",0
  DC.B  "bpl2pth",0
  DC.B  "bpl2ptl",0
  DC.B  "bpl3pth",0
  DC.B  "bpl3ptl",0
  DC.B  "bpl4pth",0
  DC.B  "bpl4ptl",0
  DC.B  "bpl5pth",0
  DC.B  "bpl5ptl",0
  DC.B  "bpl6pth AGA",0
  DC.B  "bpl6ptl AGA",0
  DC.B  "bpl7pth AGA",0
  DC.B  "bpl7ptl AGA",0
  DC.B  "bplcon0",0
  DC.B  "bplcon1",0
  DC.B  "bplcon2",0
  DC.B  "bplcon3 ECS",0
  DC.B  "bpl1mod",0
  DC.B  "bpl2mod",0
  DC.B  "bplcon4 AGA",0
  DC.B  "clxcon2 AGA",0
  DC.B  "bpl0dat",0
  DC.B  "bpl1dat",0
  DC.B  "bpl2dat",0
  DC.B  "bpl3dat",0
  DC.B  "bpl4dat",0
  DC.B  "bpl5dat",0
  DC.B  "bpl6dat AGA",0
  DC.B  "bpl7dat",0
  DC.B  "spr0pth",0
  DC.B  "spr0ptl",0
  DC.B  "spr1pth",0
  DC.B  "spr1ptl",0
  DC.B  "spr2pth",0
  DC.B  "spr2ptl",0
  DC.B  "spr3pth",0
  DC.B  "spr3ptl",0
  DC.B  "spr4pth",0
  DC.B  "spr4ptl",0
  DC.B  "spr5pth",0
  DC.B  "spr5ptl",0
  DC.B  "spr6pth",0
  DC.B  "spr6ptl",0
  DC.B  "spr7pth",0
  DC.B  "spr7ptl",0
  DC.B  "spr0pos",0
  DC.B  "spr0ctl",0
  DC.B  "spr0dataa",0
  DC.B  "spr0datab",0
  DC.B  "spr1pos",0
  DC.B  "spr1ctl",0
  DC.B  "spr1dataa",0
  DC.B  "spr1datab",0
  DC.B  "spr2pos",0
  DC.B  "spr2ctl",0
  DC.B  "spr2dataa",0
  DC.B  "spr2datab",0
  DC.B  "spr3pos",0
  DC.B  "spr3ctl",0
  DC.B  "spr3dataa",0
  DC.B  "spr3datab",0
  DC.B  "spr4pos",0
  DC.B  "spr4ctl",0
  DC.B  "spr4dataa",0
  DC.B  "spr4datab",0
  DC.B  "spr5pos",0
  DC.B  "spr5ctl",0
  DC.B  "spr5dataa",0
  DC.B  "spr5datab",0
  DC.B  "spr6pos",0
  DC.B  "spr6ctl",0
  DC.B  "spr6dataa",0
  DC.B  "spr6datab",0
  DC.B  "spr7pos",0
  DC.B  "spr7ctl",0
  DC.B  "spr7dataa",0
  DC.B  "spr7datab",0
  DC.B  "color00",0
  DC.B  "color01",0
  DC.B  "color02",0
  DC.B  "color03",0
  DC.B  "color04",0
  DC.B  "color05",0
  DC.B  "color06",0
  DC.B  "color07",0
  DC.B  "color08",0
  DC.B  "color09",0
  DC.B  "color10",0
  DC.B  "color11",0
  DC.B  "color12",0
  DC.B  "color13",0
  DC.B  "color14",0
  DC.B  "color15",0
  DC.B  "color16",0
  DC.B  "color17",0
  DC.B  "color18",0
  DC.B  "color19",0
  DC.B  "color20",0
  DC.B  "color21",0
  DC.B  "color22",0
  DC.B  "color23",0
  DC.B  "color24",0
  DC.B  "color25",0
  DC.B  "color26",0
  DC.B  "color27",0
  DC.B  "color28",0
  DC.B  "color29",0
  DC.B  "color30",0
  DC.B  "color31",0
  DC.B  "htotal ECS",0
  DC.B  "hsstop ECS",0
  DC.B  "hbstrt ECS",0
  DC.B  "hbstop ECS",0
  DC.B  "vtotal ECS",0
  DC.B  "vsstop ECS",0
  DC.B  "vbstrt ECS",0
  DC.B  "vbstop ECS",0
  DC.B  "sprhstrt ECS",0
  DC.B  "sprhstop ECS",0
  DC.B  "bplhstrt ECS",0
  DC.B  "bplhstop ECS",0
  DC.B  "hhposw ECS",0
  DC.B  "hhposr ECS",0
  DC.B  "beamcon0 ECS",0
  DC.B  "hsstrt ECS",0
  DC.B  "vsstrt ECS",0
  DC.B  "hcenter ECS",0
  DC.B  "diwhigh ECS",0
  DC.B  "bplhmod ECS",0
  DC.B  "sprhpth ECS",0
  DC.B  "sprhptl ECS",0
  DC.B  "bpl1hpth ECS",0
  DC.B  "bpl1hptl ECS",0
  DC.B  "unused",0
  DC.B  "unused",0
  DC.B  "unused",0
  DC.B  "unused",0
  DC.B  "unused",0
  DC.B  "unused",0
  DC.B  "fmode AGA",0
  DC.B  "no-op",0,0

CMD_COMMA:
  MOVEM.L D0-D1/A0,-(A7)
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.W PrintWTF
  CMP.L ChipMemEnd,D0
  BCC.W PrintWTF
  BCLR  #0,D0
  MOVE.L  D0,-(A7)
  CLR.L D1
  BSR.W readCmdCharSkipSpaces
  TST.B endOfCmdString
  BNE.W LAB_A1521A
  CMPI.W  #$004d,D0
  BEQ.S LAB_A1510C
  CMPI.W  #$0053,D0
  BEQ.S LAB_A15160
  CMPI.W  #$0057,D0
  BEQ.S LAB_A1515A
  BRA.W PrintWTF
LAB_A1510C:
  BSR.W readCmdCharSkipSpaces
  TST.B endOfCmdString
  BNE.W PrintWTF
  CMPI.W  #$0023,D0
  BNE.S LAB_A1510C
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.W PrintWTF
  MOVE.W  D0,D1
  BSR.W readCmdCharSkipSpaces
  TST.B endOfCmdString
  BNE.W PrintWTF
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.W PrintWTF
  ANDI.W  #$01fe,D0
  SWAP  D1
  MOVE.W  D0,D1
  SWAP  D1
  BRA.W LAB_A151F6
LAB_A1515A:
  BCLR  #0,D1
  BRA.S LAB_A15164
LAB_A15160:
  BSET  #0,D1
LAB_A15164:
  BSET  #$10,D1
LAB_A15168:
  BSR.W readCmdCharSkipSpaces
  TST.B endOfCmdString
  BNE.W PrintWTF
  CMPI.W  #$0028,D0
  BNE.S LAB_A15168
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.W PrintWTF
  ANDI.W  #$01fc,D0
  LSR.W #1,D0
  SWAP  D1
  OR.W  D0,D1
  BSR.W readCmdCharSkipSpaces
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.W PrintWTF
  LSL.W #8,D0
  OR.W  D0,D1
  SWAP  D1
  BSR.W readCmdCharSkipSpaces
  BSR.W ReadParameter
  TST.B ParamFound
  BNE.S LAB_A151BE
  MOVEQ #-1,D0
LAB_A151BE:
  LSR.W #1,D0
  BCLR  #0,D0
  OR.B  D0,D1
  BSR.W readCmdCharSkipSpaces
  BSR.W ReadParameter
  TST.B ParamFound
  BNE.S LAB_A151D8
  MOVEQ #-1,D0
LAB_A151D8:
  LSL.W #8,D0
  OR.W  D0,D1
  BSR.W readCmdCharSkipSpaces
  BSR.W ReadParameter
  TST.B ParamFound
  BNE.S LAB_A151EE
  MOVEQ #-1,D0
LAB_A151EE:
  ANDI.W  #1,D0
  ROR.W #1,D0
  OR.W  D0,D1
LAB_A151F6:
  MOVEA.L (A7),A0
  MOVE.L  D1,D0
  BTST  #$10,D0
  BNE.S LAB_A15216
  MOVE.L  D0,D1
  BSR.W memSafeReadLong
  ANDI.L  #$01ffffff,D1
  ANDI.L  #$fe000000,D0
  OR.L  D0,D1
  MOVE.L  D1,D0
LAB_A15216:
  BSR.W memSafeWriteLong
LAB_A1521A:
  MOVE.L  (A7)+,D0
  ADDQ.L  #4,D0
  BSR.W ShowCopperList
  MOVEM.L (A7)+,D0-D1/A0
  RTS
MemWriteString:
  MOVEM.L D0-D1/A0-A1,-(A7)
  SF  forceUpper
  BSR.W SUB_A1375E
  ST  forceUpper
  TST.B D0
  BEQ.W PrintWTF
  CLR.L D1
  MOVE.B  D0,D1
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.W PrintWTF
  MOVEA.L D0,A1
  MOVEA.L D0,A0
  CLR.L D0
  SUBQ.B  #1,D1
  LEA stringWorkspace,A1
LAB_A15262:
  MOVE.B  (A1)+,D0
  BSR.W memSafeUpdateByte
  ADDQ.W  #1,A0
  DBF D1,LAB_A15262
  MOVEM.L (A7)+,D0-D1/A0-A1
  RTS
CMD_NO:
  MOVE.L  D0,-(A7)
  BSR.W ReadParameter
  TST.B ParamFound
  BNE.S LAB_A1529A
  MOVE.W  asciiDumpOffset,D0
LAB_A15288:
  LEA CurrentOffsetText(PC),A0
  BSR.W PrintText
  BSR.W Print2DigitHex
  BSR.W PrintCrIfNotBlankLine
  BRA.S LAB_A152A6
LAB_A1529A:
  ANDI.W  #$00ff,D0
  MOVE.W  D0,asciiDumpOffset
  BRA.S LAB_A15288
LAB_A152A6:
  MOVE.L  (A7)+,D0
  RTS
CurrentOffsetText:
  DC.B  "Current offset: ",0,0

PrintCarryDigit:
  MOVEM.L D0-D1,-(A7)
  BCS.S LAB_A152CC
  MOVE.W  #$0030,D0
  BSR.W PrintChar
  BRA.S LAB_A152D4
LAB_A152CC:
  MOVE.W  #$0031,D0
  BSR.W PrintChar
LAB_A152D4:
  MOVEM.L (A7)+,D0-D1
  RTS
InsertSpaceChar:
  MOVEM.L D0-D2/A0,-(A7)
  CLR.L D2
  CMPI.W  #$004f,cursorX
  BEQ.S LAB_A1531E
  MOVE.W  #$004e,D1
  SUB.W cursorX,D1
  MOVEA.L CurrentPage,A0
  MOVE.W  cursorY,D2
  MULU  #$0050,D2
  ADDI.W  #$004e,D2
  ADDA.L  D2,A0
LAB_A1530A:
  MOVE.B  (A0),1(A0)
  SUBQ.L  #1,A0
  DBF D1,LAB_A1530A
  MOVE.B  #$20,1(A0)
  BSR.W SUB_A1727A
LAB_A1531E:
  MOVEM.L (A7)+,D0-D2/A0
  RTS
SUB_A15324:
  MOVE.L  A1,-(A7)
  MOVEA.L A0,A1
  MOVEA.L (A7)+,A1
  MOVE.L  D7,-(A7)
  BSR.W memSafeReadWord
  ADDQ.W  #2,A0
  MOVE.L  D0,D7
  MOVE.W  #$ffff,BranchInstructionType
  MOVE.W  #$ffff,LAB_A47FBA
  MOVE.W  #$ffff,LAB_A47FCC
  MOVE.W  #$ffff,LAB_A47FB8
  JSR SUB_A3187E
  TST.W D0
  BNE.W LAB_A15F80
  MOVE.L  D7,D0
  MOVE.W  #$004f,LAB_A47FB6
  CMPI.W  #$4afc,D0
  BEQ.W LAB_A15F80
  MOVE.W  #$0032,LAB_A47FB6
  CMPI.W  #$4e71,D0
  BEQ.W LAB_A15F80
  MOVE.W  #$0037,LAB_A47FB6
  CMPI.W  #$4e70,D0
  BEQ.W LAB_A15F80
  MOVE.W  #$003c,LAB_A47FB6
  CMPI.W  #$4e73,D0
  BEQ.W LAB_A15F80
  MOVE.W  #$003d,LAB_A47FB6
  CMPI.W  #$4e77,D0
  BEQ.W LAB_A15F80
  MOVE.W  #$003e,LAB_A47FB6
  CMPI.W  #$4e75,D0
  BEQ.W LAB_A15F80
  MOVE.W  #$0041,LAB_A47FB6
  CMPI.W  #$4e72,D0
  BNE.S LAB_A153EA
  MOVE.W  #$000b,LAB_A47FBA
  BSR.W memSafeReadWord
  EXT.L D0
  MOVE.L  D0,LAB_A47FBC
  ADDQ.W  #2,A0
  BRA.W LAB_A15F80
LAB_A153EA:
  MOVE.W  #$004a,LAB_A47FB6
  CMPI.W  #$4e76,D0
  BEQ.W LAB_A15F80
  MOVE.L  D7,D0
  ANDI.W  #$fff8,D0
  CMPI.W  #$4e50,D0
  BNE.S LAB_A1543A
  MOVE.W  #$0021,LAB_A47FB6
  MOVE.W  #$000b,LAB_A47FCC
  BSR.W memSafeReadWord
  ADDQ.W  #2,A0
  EXT.L D0
  MOVE.L  D0,LAB_A47FCE
  MOVE.W  #1,LAB_A47FBA
  BSR.W SUB_A1608E
  MOVE.L  D0,LAB_A47FBC
  BRA.W LAB_A15F80
LAB_A1543A:
  CMPI.W  #$4840,D0
  BNE.S LAB_A1545E
  MOVE.W  #$0047,LAB_A47FB6
  MOVE.W  #0,LAB_A47FBA
  BSR.W SUB_A1608E
  MOVE.L  D0,LAB_A47FBC
  BRA.W LAB_A15F80
LAB_A1545E:
  CMPI.W  #$4e58,D0
  BNE.S LAB_A15482
  MOVE.W  #$004c,LAB_A47FB6
  MOVE.W  #1,LAB_A47FBA
  BSR.W SUB_A1608E
  MOVE.L  D0,LAB_A47FBC
  BRA.W LAB_A15F80
LAB_A15482:
  MOVE.L  D7,D0
  ANDI.W  #$ffb8,D0
  CMPI.W  #$4880,D0
  BNE.S LAB_A154C2
  MOVE.W  #$001d,LAB_A47FB6
  MOVE.W  #2,LAB_A47FB8
  BTST  #6,D7
  BNE.S LAB_A154AC
  MOVE.W  #1,LAB_A47FB8
LAB_A154AC:
  MOVE.W  #0,LAB_A47FBA
  BSR.W SUB_A1608E
  MOVE.L  D0,LAB_A47FBC
  BRA.W LAB_A15F80
LAB_A154C2:
  MOVE.L  D7,D0
  ANDI.W  #$fff0,D0
  CMPI.W  #$4e60,D0
  BNE.S LAB_A1551A
  MOVE.W  #$0028,LAB_A47FB6
  MOVE.W  #2,LAB_A47FB8
  MOVE.W  #$000c,LAB_A47FBA
  MOVE.W  #1,LAB_A47FCC
  BSR.W SUB_A1608E
  MOVE.L  D0,LAB_A47FCE
  BTST  #3,D7
  BNE.W LAB_A15F80
  MOVE.W  #1,LAB_A47FBA
  MOVE.L  D0,LAB_A47FBC
  MOVE.W  #$000c,LAB_A47FCC
  BRA.W LAB_A15F80
LAB_A1551A:
  CMPI.W  #$4e40,D0
  BNE.S LAB_A15540
  MOVE.W  #$0049,LAB_A47FB6
  MOVE.W  #$000b,LAB_A47FBA
  MOVE.L  D7,D0
  ANDI.W  #$000f,D0
  MOVE.L  D0,LAB_A47FBC
  BRA.W LAB_A15F80
LAB_A15540:
  MOVE.L  D7,D0
  ANDI.W  #$ffc0,D0
  CMPI.W  #$4ec0,D0
  BNE.S LAB_A15576
  MOVE.W  #$001e,LAB_A47FB6
LAB_A15554:
  MOVE.L  D7,D0
  BSR.W SUB_A15F98
  MOVE.W  D1,LAB_A47FBA
  MOVE.L  D2,LAB_A47FBC
  MOVE.L  D3,LAB_A47FC0
  MOVE.L  D4,LAB_A47FC4
  BRA.W LAB_A15F80
LAB_A15576:
  CMPI.W  #$4e80,D0
  BNE.S LAB_A15586
  MOVE.W  #$001f,LAB_A47FB6
  BRA.S LAB_A15554
LAB_A15586:
  CMPI.W  #$44c0,D0
  BNE.S LAB_A155C6
  MOVE.W  #$0025,LAB_A47FB6
  MOVE.W  #0,LAB_A47FB8
  MOVE.W  #$000d,LAB_A47FCC
  MOVE.L  D7,D0
  BSR.W SUB_A15F98
  MOVE.W  D1,LAB_A47FBA
  MOVE.L  D2,LAB_A47FBC
  MOVE.L  D3,LAB_A47FC0
  MOVE.L  D4,LAB_A47FC4
  BRA.W LAB_A15F80
LAB_A155C6:
  CMPI.W  #$46c0,D0
  BNE.S LAB_A15606
  MOVE.W  #$0026,LAB_A47FB6
  MOVE.W  #1,LAB_A47FB8
  MOVE.W  #$000e,LAB_A47FCC
LAB_A155E4:
  MOVE.L  D7,D0
  BSR.W SUB_A15F98
  MOVE.W  D1,LAB_A47FBA
  MOVE.L  D2,LAB_A47FBC
  MOVE.L  D3,LAB_A47FC0
  MOVE.L  D4,LAB_A47FC4
  BRA.W LAB_A15F80
LAB_A15606:
  CMPI.W  #$40c0,D0
  BNE.S LAB_A1566A
  MOVE.W  #$0027,LAB_A47FB6
  MOVE.W  #1,LAB_A47FB8
  MOVE.W  #$000e,LAB_A47FBA
LAB_A15624:
  MOVE.L  D7,D0
  BSR.W SUB_A15F98
  MOVE.W  D1,LAB_A47FCC
  MOVE.L  D2,LAB_A47FCE
  MOVE.L  D3,LAB_A47FD2
  MOVE.L  D4,LAB_A47FD6
  CMPI.W  #$000b,LAB_A47FCC
  BNE.W LAB_A15F80
  MOVE.W  #$000e,LAB_A47FCC
  SUBQ.L  #2,A0
  CMPI.W  #2,LAB_A47FB8
  BNE.W LAB_A15F80
  SUBQ.L  #2,A0
  BRA.W LAB_A15F80
LAB_A1566A:
  CMPI.W  #$4800,D0
  BNE.S LAB_A15684
  MOVE.W  #$002f,LAB_A47FB6
  MOVE.W  #0,LAB_A47FB8
  BRA.W LAB_A155E4
LAB_A15684:
  CMPI.W  #$4840,D0
  BNE.S LAB_A15696
  MOVE.W  #$0036,LAB_A47FB6
  BRA.W LAB_A155E4
LAB_A15696:
  CMPI.W  #$4ac0,D0
  BNE.S LAB_A156B0
  MOVE.W  #$0048,LAB_A47FB6
  MOVE.W  #0,LAB_A47FB8
  BRA.W LAB_A155E4
LAB_A156B0:
  MOVE.L  D7,D0
  ANDI.W  #$ffc0,D0
  MOVE.W  #8,LAB_A47FB6
  CMPI.W  #$e1c0,D0
  BEQ.W LAB_A155E4
  MOVE.W  #9,LAB_A47FB6
  CMPI.W  #$e0c0,D0
  BEQ.W LAB_A155E4
  MOVE.W  #$0022,LAB_A47FB6
  CMPI.W  #$e3c0,D0
  BEQ.W LAB_A155E4
  MOVE.W  #$0023,LAB_A47FB6
  CMPI.W  #$e2c0,D0
  BEQ.W LAB_A155E4
  MOVE.W  #$0038,LAB_A47FB6
  CMPI.W  #$e7c0,D0
  BEQ.W LAB_A155E4
  MOVE.W  #$0039,LAB_A47FB6
  CMPI.W  #$e6c0,D0
  BEQ.W LAB_A155E4
  MOVE.W  #$003a,LAB_A47FB6
  CMPI.W  #$e5c0,D0
  BEQ.W LAB_A155E4
  MOVE.W  #$003b,LAB_A47FB6
  CMPI.W  #$e4c0,D0
  BEQ.W LAB_A155E4
  MOVE.L  D7,D0
  ANDI.W  #$f1f0,D0
  CMPI.W  #$c100,D0
  BNE.S LAB_A157A8
  MOVE.W  #0,LAB_A47FB6
LAB_A1574A:
  MOVE.W  #0,LAB_A47FB8
LAB_A15752:
  BSR.W SUB_A1608E
  MOVE.L  D0,LAB_A47FBC
  BSR.W SUB_A16084
  MOVE.L  D0,LAB_A47FCE
  MOVE.W  #0,LAB_A47FBA
  MOVE.W  #0,LAB_A47FCC
  BTST  #3,D7
  BEQ.W LAB_A15F80
  MOVE.W  #4,LAB_A47FBA
  MOVE.W  #4,LAB_A47FCC
  MOVE.L  LAB_A47FCE,D0
  MOVE.L  LAB_A47FBC,LAB_A47FCE
  MOVE.L  D0,LAB_A47FBC
  BRA.W LAB_A15F80
LAB_A157A8:
  CMPI.W  #$8100,D0
  BNE.S LAB_A157B8
  MOVE.W  #$003f,LAB_A47FB6
  BRA.S LAB_A1574A
LAB_A157B8:
  MOVE.L  D7,D0
  ANDI.W  #$f0f8,D0
  CMPI.W  #$50c8,D0
  BNE.S LAB_A15808
  MOVE.W  #$0017,LAB_A47FB6
  MOVE.W  #0,LAB_A47FBA
  BSR.W SUB_A1608E
  MOVE.L  D0,LAB_A47FBC
  MOVE.W  #$000f,LAB_A47FCC
  MOVE.W  #1,LAB_A47FCE
  BSR.W memSafeReadWord
  ADDQ.W  #2,A0
  EXT.L D0
  SUBQ.L  #2,D0
  ADD.L A0,D0
  MOVE.L  D0,LAB_A47FD2
  BSR.W GetBranchType
  BRA.W LAB_A15F80
LAB_A15808:
  MOVE.L  D7,D0
  ANDI.W  #$ff00,D0
  CMPI.W  #$0600,D0
  BNE.S LAB_A15842
  MOVE.W  #3,LAB_A47FB6
LAB_A1581C:
  BSR.W SUB_A16096
  MOVEQ #$3C,D0
  BSR.W SUB_A15F98
  MOVE.W  D1,LAB_A47FBA
  MOVE.L  D2,LAB_A47FBC
  MOVE.L  D3,LAB_A47FC0
  MOVE.L  D4,LAB_A47FC4
  BRA.W LAB_A15624
LAB_A15842:
  CMPI.W  #$0200,D0
  BNE.S LAB_A15852
  MOVE.W  #7,LAB_A47FB6
  BRA.S LAB_A1581C
LAB_A15852:
  MOVE.W  #$0015,LAB_A47FB6
  CMPI.W  #$0c00,D0
  BEQ.S LAB_A1581C
  MOVE.W  #$001b,LAB_A47FB6
  CMPI.W  #$0a00,D0
  BEQ.S LAB_A1581C
  MOVE.W  #$0035,LAB_A47FB6
  CMPI.W  #0,D0
  BEQ.S LAB_A1581C
  MOVE.W  #$0044,LAB_A47FB6
  CMPI.W  #$0400,D0
  BEQ.S LAB_A1581C
  CMPI.W  #$6000,D0
  BNE.S LAB_A158EE
  MOVE.W  #$000d,LAB_A47FB6
LAB_A15898:
  MOVE.W  #$000f,LAB_A47FBA
  MOVE.W  #0,LAB_A47FBC
  MOVE.L  D7,D0
  ANDI.W  #$00ff,D0
  BEQ.S LAB_A158C8
  EXT.W D0
  EXT.L D0
  ADD.L A0,D0
  MOVE.L  D0,LAB_A47FC0
  MOVE.W  #0,LAB_A47FB8
  BRA.W LAB_A15F80
LAB_A158C8:
  MOVE.W  #1,LAB_A47FBC
  BSR.W memSafeReadWord
  ADDQ.W  #2,A0
  EXT.L D0
  ADD.L A0,D0
  SUBQ.L  #2,D0
  MOVE.L  D0,LAB_A47FC0
  MOVE.W  #1,LAB_A47FB8
  BRA.W LAB_A15F80
LAB_A158EE:
  MOVE.W  #$000f,LAB_A47FB6
  CMPI.W  #$6100,D0
  BEQ.S LAB_A15898
  CMPI.W  #$4200,D0
  BNE.S LAB_A15912
  MOVE.W  #$0012,LAB_A47FB6
LAB_A1590A:
  BSR.W SUB_A16096
  BRA.W LAB_A155E4
LAB_A15912:
  MOVE.W  #$0030,LAB_A47FB6
  CMPI.W  #$4400,D0
  BEQ.S LAB_A1590A
  MOVE.W  #$0031,LAB_A47FB6
  CMPI.W  #$4000,D0
  BEQ.S LAB_A1590A
  MOVE.W  #$0033,LAB_A47FB6
  CMPI.W  #$4600,D0
  BEQ.S LAB_A1590A
  MOVE.W  #$004b,LAB_A47FB6
  CMPI.W  #$4a00,D0
  BEQ.S LAB_A1590A
  MOVE.L  D7,D0
  ANDI.W  #$f138,D0
  CMPI.W  #$b108,D0
  BNE.S LAB_A1598C
  MOVE.W  #$0016,LAB_A47FB6
  BSR.W SUB_A16096
  BCS.S LAB_A1598C
  MOVE.W  #3,LAB_A47FBA
  MOVE.W  #3,LAB_A47FCC
  BSR.W SUB_A16084
  MOVE.L  D0,LAB_A47FCE
  BSR.W SUB_A1608E
  MOVE.L  D0,LAB_A47FBC
  BRA.W LAB_A15F80
LAB_A1598C:
  CMPI.W  #$0108,D0
  BNE.S LAB_A159EA
  MOVE.W  #$002b,LAB_A47FB6
  MOVE.W  #1,LAB_A47FB8
  BTST  #6,D7
  BEQ.S LAB_A159B0
  MOVE.W  #2,LAB_A47FB8
LAB_A159B0:
  BTST  #7,D7
  BNE.S LAB_A159D0
  MOVE.W  #0,LAB_A47FCC
  BSR.W SUB_A16084
  MOVE.L  D0,LAB_A47FCE
  BSET  #5,D7
  BRA.W LAB_A155E4
LAB_A159D0:
  MOVE.W  #0,LAB_A47FBA
  BSR.W SUB_A16084
  MOVE.L  D0,LAB_A47FBC
  BSET  #5,D7
  BRA.W LAB_A15624
LAB_A159EA:
  MOVE.L  D7,D0
  ANDI.W  #$fb80,D0
  CMPI.W  #$4880,D0
  BNE.S LAB_A15A70
  MOVE.W  #$002a,LAB_A47FB6
  MOVE.W  #1,LAB_A47FB8
  BTST  #6,D7
  BEQ.S LAB_A15A14
  MOVE.W  #2,LAB_A47FB8
LAB_A15A14:
  BSR.W memSafeReadWord
  ADDQ.W  #2,A0
  BTST  #$A,D7
  BEQ.S LAB_A15A32
  MOVE.W  #$0010,LAB_A47FCC
  MOVE.L  D0,LAB_A47FCE
  BRA.W LAB_A155E4
LAB_A15A32:
  MOVE.W  #$0010,LAB_A47FBA
  MOVE.L  D0,LAB_A47FBC
  MOVE.L  D7,D0
  BSR.W SUB_A15F98
  CMPI.W  #4,D1
  BNE.S LAB_A15A54
  MOVE.W  #$0011,LAB_A47FBA
LAB_A15A54:
  MOVE.W  D1,LAB_A47FCC
  MOVE.L  D2,LAB_A47FCE
  MOVE.L  D3,LAB_A47FD2
  MOVE.L  D4,LAB_A47FD6
  BRA.W LAB_A15F80
LAB_A15A70:
  MOVE.L  D7,D0
  ANDI.W  #$f130,D0
  CMPI.W  #$d100,D0
  BNE.S LAB_A15A8E
  MOVE.W  #5,LAB_A47FB6
LAB_A15A84:
  BSR.W SUB_A16096
  BCS.S LAB_A15A9C
  BRA.W LAB_A15752
LAB_A15A8E:
  MOVE.W  #$0046,LAB_A47FB6
  CMPI.W  #$9100,D0
  BEQ.S LAB_A15A84
LAB_A15A9C:
  MOVE.L  D7,D0
  ANDI.W  #$f1c0,D0
  CMPI.W  #$4180,D0
  BNE.S LAB_A15AC6
  MOVE.W  #$0011,LAB_A47FB6
LAB_A15AB0:
  MOVE.W  #0,LAB_A47FCC
  BSR.W SUB_A16084
  MOVE.L  D0,LAB_A47FCE
  BRA.W LAB_A155E4
LAB_A15AC6:
  MOVE.W  LAB_A47FB8,D1
  MOVE.W  #1,LAB_A47FB8
  MOVE.W  #$0018,LAB_A47FB6
  CMPI.W  #$81c0,D0
  BEQ.S LAB_A15AB0
  MOVE.W  #$0019,LAB_A47FB6
  CMPI.W  #$80c0,D0
  BEQ.S LAB_A15AB0
  MOVE.W  #$002d,LAB_A47FB6
  CMPI.W  #$c1c0,D0
  BEQ.S LAB_A15AB0
  MOVE.W  #$002e,LAB_A47FB6
  CMPI.W  #$c0c0,D0
  BEQ.S LAB_A15AB0
  MOVE.W  D1,LAB_A47FB8
  CMPI.W  #$41c0,D0
  BNE.S LAB_A15B36
  MOVE.W  #$0020,LAB_A47FB6
  MOVE.W  #1,LAB_A47FCC
  BSR.W SUB_A16084
  MOVE.L  D0,LAB_A47FCE
  BRA.W LAB_A155E4
LAB_A15B36:
  MOVE.L  D7,D0
  ANDI.W  #$f130,D0
  CMPI.W  #$c100,D0
  BNE.S LAB_A15BA0
  MOVE.W  #$001c,LAB_A47FB6
  BSR.W SUB_A1608E
  MOVE.L  D0,LAB_A47FBC
  BSR.W SUB_A16084
  MOVE.L  D0,LAB_A47FCE
  MOVE.W  #0,LAB_A47FBA
  MOVE.W  #0,LAB_A47FCC
  MOVE.L  D7,D0
  ANDI.W  #$00c8,D0
  CMPI.W  #$0040,D0
  BEQ.W LAB_A15F80
  MOVE.W  #1,LAB_A47FBA
  MOVE.W  #1,LAB_A47FCC
  CMPI.W  #$0048,D0
  BEQ.W LAB_A15F80
  MOVE.W  #0,LAB_A47FCC
  BRA.W LAB_A15F80
LAB_A15BA0:
  MOVE.L  D7,D0
  ANDI.W  #$f118,D0
  CMPI.W  #$e100,D0
  BNE.S LAB_A15BFE
  MOVE.W  #8,LAB_A47FB6
LAB_A15BB4:
  BSR.W SUB_A16096
  MOVE.W  #0,LAB_A47FBA
  BSR.W SUB_A16084
  MOVE.L  #8,LAB_A47FBC
  TST.L D0
  BEQ.S LAB_A15BD8
  MOVE.L  D0,LAB_A47FBC
LAB_A15BD8:
  MOVE.W  #0,LAB_A47FCC
  BSR.W SUB_A1608E
  MOVE.L  D0,LAB_A47FCE
  BTST  #5,D7
  BNE.W LAB_A15F80
  MOVE.W  #$000b,LAB_A47FBA
  BRA.W LAB_A15F80
LAB_A15BFE:
  MOVE.W  #9,LAB_A47FB6
  CMPI.W  #$e000,D0
  BEQ.S LAB_A15BB4
  MOVE.W  #$0022,LAB_A47FB6
  CMPI.W  #$e108,D0
  BEQ.S LAB_A15BB4
  MOVE.W  #$0023,LAB_A47FB6
  CMPI.W  #$e008,D0
  BEQ.S LAB_A15BB4
  MOVE.W  #$0038,LAB_A47FB6
  CMPI.W  #$e118,D0
  BEQ.W LAB_A15BB4
  MOVE.W  #$0039,LAB_A47FB6
  CMPI.W  #$e018,D0
  BEQ.W LAB_A15BB4
  MOVE.W  #$003a,LAB_A47FB6
  CMPI.W  #$e110,D0
  BEQ.W LAB_A15BB4
  MOVE.W  #$003b,LAB_A47FB6
  CMPI.W  #$e010,D0
  BEQ.W LAB_A15BB4
  MOVE.L  D7,D0
  ANDI.W  #$f0c0,D0
  CMPI.W  #$d0c0,D0
  BNE.S LAB_A15CA8
  MOVE.W  #2,LAB_A47FB6
LAB_A15C7C:
  MOVE.W  #1,LAB_A47FB8
  BTST  #8,D7
  BEQ.S LAB_A15C92
  MOVE.W  #2,LAB_A47FB8
LAB_A15C92:
  MOVE.W  #1,LAB_A47FCC
  BSR.W SUB_A16084
  MOVE.L  D0,LAB_A47FCE
  BRA.W LAB_A155E4
LAB_A15CA8:
  MOVE.W  #$0014,LAB_A47FB6
  CMPI.W  #$b0c0,D0
  BEQ.S LAB_A15C7C
  MOVE.W  #$0043,LAB_A47FB6
  CMPI.W  #$90c0,D0
  BEQ.S LAB_A15C7C
  MOVE.L  D7,D0
  ANDI.W  #$f0c0,D0
  CMPI.W  #$0040,D0
  BNE.S LAB_A15D0E
  MOVE.W  #$000b,LAB_A47FB6
LAB_A15CD8:
  BTST  #8,D7
  BNE.S LAB_A15CF8
  MOVE.W  #$000b,LAB_A47FBA
  BSR.W memSafeReadWord
  ADDQ.W  #2,A0
  EXT.L D0
  MOVE.L  D0,LAB_A47FBC
  BRA.W LAB_A15624
LAB_A15CF8:
  MOVE.W  #0,LAB_A47FBA
  BSR.W SUB_A16084
  MOVE.L  D0,LAB_A47FBC
  BRA.W LAB_A15624
LAB_A15D0E:
  MOVE.W  #$000c,LAB_A47FB6
  CMPI.W  #$0080,D0
  BEQ.S LAB_A15CD8
  MOVE.W  #$000e,LAB_A47FB6
  CMPI.W  #$00c0,D0
  BEQ.S LAB_A15CD8
  MOVE.W  #$0010,LAB_A47FB6
  CMPI.W  #0,D0
  BEQ.S LAB_A15CD8
  MOVE.L  D7,D0
  ANDI.W  #$e1c0,D0
  CMPI.W  #$2040,D0
  BNE.S LAB_A15D78
  MOVE.W  #$0029,LAB_A47FB6
  MOVE.W  #1,LAB_A47FB8
  BTST  #$C,D7
  BNE.S LAB_A15D62
  MOVE.W  #2,LAB_A47FB8
LAB_A15D62:
  MOVE.W  #1,LAB_A47FCC
  BSR.W SUB_A16084
  MOVE.L  D0,LAB_A47FCE
  BRA.W LAB_A155E4
LAB_A15D78:
  MOVE.L  D7,D0
  ANDI.W  #$f0c0,D0
  CMPI.W  #$50c0,D0
  BNE.S LAB_A15D94
  MOVE.W  #$0040,LAB_A47FB6
  BSR.W GetBranchType
  BRA.W LAB_A155E4
LAB_A15D94:
  MOVE.L  D7,D0
  ANDI.W  #$f100,D0
  CMPI.W  #$5000,D0
  BNE.S LAB_A15DD0
  MOVE.W  #4,LAB_A47FB6
LAB_A15DA8:
  BSR.W SUB_A16096
  MOVE.W  #$000b,LAB_A47FBA
  BSR.W SUB_A16084
  MOVE.L  #8,LAB_A47FBC
  TST.L D0
  BEQ.S LAB_A15DCC
  MOVE.L  D0,LAB_A47FBC
LAB_A15DCC:
  BRA.W LAB_A15624
LAB_A15DD0:
  MOVE.W  #$0045,LAB_A47FB6
  CMPI.W  #$5100,D0
  BEQ.S LAB_A15DA8
  MOVE.L  D7,D0
  ANDI.W  #$f100,D0
  CMPI.W  #$b000,D0
  BNE.S LAB_A15E0C
  MOVE.W  #$0013,LAB_A47FB6
  BSR.W SUB_A16096
  MOVE.W  #0,LAB_A47FCC
  BSR.W SUB_A16084
  MOVE.L  D0,LAB_A47FCE
  BRA.W LAB_A155E4
LAB_A15E0C:
  CMPI.W  #$b100,D0
  BNE.S LAB_A15E34
  MOVE.W  #$001a,LAB_A47FB6
  BSR.W SUB_A16096
  MOVE.W  #0,LAB_A47FBA
  BSR.W SUB_A16084
  MOVE.L  D0,LAB_A47FBC
  BRA.W LAB_A15624
LAB_A15E34:
  CMPI.W  #$7000,D0
  BNE.S LAB_A15E70
  MOVE.W  #$002c,LAB_A47FB6
  MOVE.W  #0,LAB_A47FCC
  BSR.W SUB_A16084
  MOVE.L  D0,LAB_A47FCE
  MOVE.W  #$000b,LAB_A47FBA
  MOVE.L  D7,D0
  ANDI.W  #$00ff,D0
  EXT.W D0
  EXT.L D0
  MOVE.L  D0,LAB_A47FBC
  BRA.W LAB_A15F80
LAB_A15E70:
  MOVE.L  D7,D0
  ANDI.W  #$f000,D0
  CMPI.W  #$d000,D0
  BNE.S LAB_A15EB4
  MOVE.W  #1,LAB_A47FB6
LAB_A15E84:
  BSR.W SUB_A16096
  MOVE.W  #0,LAB_A47FBA
  BSR.W SUB_A16084
  MOVE.L  D0,LAB_A47FBC
  BTST  #8,D7
  BNE.W LAB_A15624
  MOVE.W  #0,LAB_A47FCC
  MOVE.L  D0,LAB_A47FCE
  BRA.W LAB_A155E4
LAB_A15EB4:
  MOVE.W  #$0042,LAB_A47FB6
  CMPI.W  #$9000,D0
  BEQ.S LAB_A15E84
  MOVE.W  #6,LAB_A47FB6
  CMPI.W  #$c000,D0
  BEQ.S LAB_A15E84
  MOVE.W  #$0034,LAB_A47FB6
  CMPI.W  #$8000,D0
  BEQ.S LAB_A15E84
  CMPI.W  #$6000,D0
  BNE.S LAB_A15EF4
  MOVE.W  #$000a,LAB_A47FB6
  BSR.W GetBranchType
  BRA.W LAB_A15898
LAB_A15EF4:
  MOVE.W  #$004d,LAB_A47FB6
  CMPI.W  #$a000,D0
  BEQ.S LAB_A15F80
  MOVE.W  #$004e,LAB_A47FB6
  CMPI.W  #$f000,D0
  BEQ.S LAB_A15F80
  MOVE.L  D7,D0
  ANDI.W  #$c000,D0
  BNE.S LAB_A15F80
  MOVE.L  D7,D0
  ANDI.W  #$3000,D0
  BEQ.S LAB_A15F80
  MOVE.W  #$0024,LAB_A47FB6
  ROL.W #4,D0
  SUBQ.W  #1,D0
  BEQ.S LAB_A15F32
  EORI.W  #3,D0
LAB_A15F32:
  MOVE.W  D0,LAB_A47FB8
  MOVE.L  D7,D0
  BSR.S SUB_A15F98
  MOVE.W  D1,LAB_A47FBA
  MOVE.L  D2,LAB_A47FBC
  MOVE.L  D3,LAB_A47FC0
  MOVE.L  D4,LAB_A47FC4
  MOVE.L  D7,D0
  ROL.W #7,D0
  ANDI.W  #7,D0
  MOVE.L  D7,D1
  LSR.W #3,D1
  ANDI.W  #$0038,D1
  OR.W  D1,D0
  BSR.S SUB_A15F98
  MOVE.W  D1,LAB_A47FCC
  MOVE.L  D2,LAB_A47FCE
  MOVE.L  D3,LAB_A47FD2
  MOVE.L  D4,LAB_A47FD6
LAB_A15F80:
  MOVE.L  (A7)+,D7
  RTS
GetBranchType:
  MOVE.W  D0,-(A7)
  MOVE.W  D7,D0
  LSR.W #8,D0
  ANDI.W  #$000f,D0
  MOVE.W  D0,BranchInstructionType
  MOVE.W  (A7)+,D0
  RTS
SUB_A15F98:
  MOVE.L  D7,-(A7)
  ANDI.L  #$0000003f,D0
  MOVE.L  D0,D7
  LSR.W #3,D0
  MOVE.W  D0,D1
  MOVE.L  D7,D0
  ANDI.W  #7,D0
  MOVE.L  D0,D2
  CMPI.W  #7,D1
  BCS.S LAB_A15FBC
  MOVE.L  D7,D0
  ANDI.W  #7,D0
  ADD.W D0,D1
LAB_A15FBC:
  MOVEQ #0,D0
  CMPI.W  #5,D1
  BNE.S LAB_A15FD2
  BSR.W memSafeReadWord
  ADDQ.W  #2,A0
  MOVE.L  D0,D3
  EXT.L D3
  BRA.W LAB_A16080
LAB_A15FD2:
  CMPI.W  #6,D1
  BNE.S LAB_A15FF8
  BSR.W memSafeReadWord
  ADDQ.W  #2,A0
  MOVE.L  D0,D7
  ANDI.W  #$00ff,D0
  MOVE.L  D0,D3
  EXT.W D3
  EXT.L D3
  MOVE.L  D7,D0
  LSR.W #8,D0
  ANDI.W  #$00f8,D0
  MOVE.L  D0,D4
  BRA.W LAB_A16080
LAB_A15FF8:
  CMPI.W  #7,D1
  BNE.S LAB_A1600A
  BSR.W memSafeReadWord
  ADDQ.W  #2,A0
  MOVE.L  D0,D2
  EXT.L D2
  BRA.S LAB_A16080
LAB_A1600A:
  CMPI.W  #8,D1
  BNE.S LAB_A1601A
  BSR.W memSafeReadLong
  ADDQ.W  #4,A0
  MOVE.L  D0,D2
  BRA.S LAB_A16080
LAB_A1601A:
  CMPI.W  #9,D1
  BNE.S LAB_A1602C
  BSR.W memSafeReadWord
  ADDQ.W  #2,A0
  MOVE.L  D0,D3
  EXT.L D3
  BRA.S LAB_A16080
LAB_A1602C:
  CMPI.W  #$000a,D1
  BNE.S LAB_A1604C
  BSR.W memSafeReadWord
  ADDQ.W  #2,A0
  MOVE.L  D0,D3
  ANDI.W  #$00ff,D3
  EXT.W D3
  EXT.L D3
  LSR.W #8,D0
  ANDI.W  #$00ff,D0
  MOVE.L  D0,D4
  BRA.S LAB_A16080
LAB_A1604C:
  CMPI.W  #$000b,D1
  BNE.S LAB_A16080
  CMPI.W  #1,LAB_A47FB8
  BHI.S LAB_A16078
  BSR.W memSafeReadWord
  CMPI.W  #0,LAB_A47FB8
  BNE.S LAB_A16070
  ANDI.W  #$00ff,D0
  EXT.W D0
LAB_A16070:
  EXT.L D0
  ADDQ.W  #2,A0
  MOVE.L  D0,D2
  BRA.S LAB_A16080
LAB_A16078:
  BSR.W memSafeReadLong
  ADDQ.W  #4,A0
  MOVE.L  D0,D2
LAB_A16080:
  MOVE.L  (A7)+,D7
  RTS
SUB_A16084:
  MOVE.L  D7,D0
  ROL.W #7,D0
  ANDI.W  #7,D0
  RTS
SUB_A1608E:
  MOVE.L  D7,D0
  ANDI.W  #7,D0
  RTS
SUB_A16096:
  MOVEM.L D0-D1,-(A7)
  MOVE.W  D7,D0
  LSR.W #6,D0
  ANDI.W  #3,D0
  MOVE.W  D0,LAB_A47FB8
  CMPI.W  #3,D0
  EORI.B  #1,CCR
  MOVEM.L (A7)+,D0-D1
  RTS
readCmdCharSkipSpaces:
  BSR.W readCmdChar
  TST.B endOfCmdString
  BNE.S LAB_A160E0
  CMPI.W  #$0020,D0
  SEQ cmdSpacesSkipped
  BNE.S LAB_A160E0
LAB_A160CE:
  BSR.W readCmdChar
  TST.B endOfCmdString
  BNE.S LAB_A160E0
  CMPI.W  #$0020,D0
  BEQ.S LAB_A160CE
LAB_A160E0:
  RTS
memSafeReadWord:
  MOVE.W  D1,-(A7)
  BSR.W memSafeReadByte
  MOVE.W  D0,D1
  LSL.W #8,D1
  ADDQ.W  #1,A0
  BSR.W memSafeReadByte
  OR.W  D1,D0
  SUBQ.L  #1,A0
  MOVE.W  (A7)+,D1
  RTS
memSafeWriteWord:
  MOVEM.L D0/A0,-(A7)
  ROR.W #8,D0
  BSR.W memSafeUpdateByte
  LEA 1(A0),A0
  ROL.W #8,D0
  BSR.W memSafeUpdateByte
  MOVEM.L (A7)+,D0/A0
  RTS
memSafeWriteLong:
  SWAP  D0
  BSR.S memSafeWriteWord
  SWAP  D0
  LEA 2(A0),A0
  BSR.S memSafeWriteWord
  LEA -2(A0),A0
  RTS
memSafeReadLong:
  MOVE.L  D1,-(A7)
  BSR.S memSafeReadWord
  MOVE.L  D0,D1
  SWAP  D1
  ADDQ.W  #2,A0
  BSR.S memSafeReadWord
  OR.L  D1,D0
  SUBQ.L  #2,A0
  MOVE.L  (A7)+,D1
  RTS
SUB_A1613A:
  MOVEM.L D0-D2/A0,-(A7)
  MOVE.L  D0,D2
  MOVE.W  LAB_A47FB6,D0
  LEA AsmInstructions(PC),A0
LAB_A1614A:
  TST.W D0
  BEQ.S LAB_A16158
LAB_A1614E:
  TST.B (A0)+
  BMI.S LAB_A161C4
  BNE.S LAB_A1614E
  SUBQ.W  #1,D0
  BRA.S LAB_A1614A
LAB_A16158:
  BSR.W PrintText
  TST.W BranchInstructionType
  BMI.S LAB_A1617A
  LEA BranchTypes(PC),A0
  MOVE.W  BranchInstructionType,D0
  MULU  #3,D0
  LEA 0(A0,D0.W),A0
  BSR.W PrintText
LAB_A1617A:
  MOVE.W  LAB_A47FB8,D0
  BMI.S LAB_A16192
  MULU  #3,D0
  LEA InstructionLengths(PC),A0
  LEA 0(A0,D0.W),A0
  BSR.W PrintText
LAB_A16192:
  MOVE.W  #$000f,cursorX
  JSR PrintSpace
  LEA LAB_A47FBA,A1
  BSR.S decodeAddressingMode
  TST.W LAB_A47FCC
  BMI.S LAB_A161BE
  MOVEQ #$2C,D0
  BSR.W PrintChar
  LEA LAB_A47FCC,A1
  BSR.S decodeAddressingMode
LAB_A161BE:
  MOVEM.L (A7)+,D0-D2/A0
  RTS
LAB_A161C4:
  LEA WrongOpnrText(PC),A0
  BSR.W PrintText
  BRA.S LAB_A161BE

BranchTypes:
  DC.B  "T",0,0
  DC.B  "F",0,0
  DC.B  "HI",0
  DC.B  "LS",0
  DC.B  "CC",0
  DC.B  "CS",0
  DC.B  "NE",0
  DC.B  "EQ",0
  DC.B  "VC",0
  DC.B  "VS",0
  DC.B  "PL",0
  DC.B  "MI",0
  DC.B  "GE",0
  DC.B  "LT",0
  DC.B  "GT",0
  DC.B  "LE",0

decodeAddressingMode:
  MOVEM.L D0-D1/A0,-(A7)
  MOVE.W  (A1),D0
  BMI.W LAB_A1643C
  CMPI.W  #0,D0
  BNE.S LAB_A16222
  MOVEQ #$44,D0
  BSR.W PrintChar
  MOVE.L  2(A1),D0
  MOVEQ #1,D1
  BSR.W PrintValue
  BRA.W LAB_A1643C
LAB_A16222:
  CMPI.W  #1,D0
  BNE.S LAB_A1623C
  MOVEQ #$41,D0
  BSR.W PrintChar
  MOVE.L  2(A1),D0
  MOVEQ #1,D1
  BSR.W PrintValue
  BRA.W LAB_A1643C
LAB_A1623C:
  CMPI.W  #2,D0
  BNE.S LAB_A1625E
  LEA LAB_A164CC(PC),A0
  BSR.W PrintText
  MOVE.L  2(A1),D0
  MOVEQ #1,D1
  BSR.W PrintValue
  MOVEQ #$29,D0
  BSR.W PrintChar
  BRA.W LAB_A1643C
LAB_A1625E:
  CMPI.W  #3,D0
  BNE.S LAB_A16282
  LEA LAB_A164CC(PC),A0
  BSR.W PrintText
  MOVE.L  2(A1),D0
  MOVEQ #1,D1
  BSR.W PrintValue
  LEA LAB_A164CF(PC),A0
  BSR.W PrintText
  BRA.W LAB_A1643C
LAB_A16282:
  CMPI.W  #4,D0
  BNE.S LAB_A162A4
  LEA LAB_A164D2(PC),A0
  BSR.W PrintText
  MOVE.L  2(A1),D0
  MOVEQ #1,D1
  BSR.W PrintValue
  MOVEQ #$29,D0
  BSR.W PrintChar
  BRA.W LAB_A1643C
LAB_A162A4:
  CMPI.W  #5,D0
  BNE.S LAB_A162CE
  MOVE.L  6(A1),D0
  BSR.W SUB_A1669A
  LEA LAB_A164CC(PC),A0
  BSR.W PrintText
  MOVE.L  2(A1),D0
  MOVEQ #1,D1
  BSR.W PrintValue
  MOVEQ #$29,D0
  BSR.W PrintChar
  BRA.W LAB_A1643C
LAB_A162CE:
  CMPI.W  #6,D0
  BNE.W LAB_A1635E
  MOVE.L  6(A1),D0
  BSR.W SUB_A1669A
  LEA LAB_A164CC(PC),A0
  BSR.W PrintText
  MOVE.L  2(A1),D0
  MOVEQ #1,D1
  BSR.W PrintValue
LAB_A162F0:
  MOVEQ #$2C,D0
  BSR.W PrintChar
  MOVEQ #$41,D0
  BTST  #7,$D(A1)
  BNE.S LAB_A16302
  MOVEQ #$44,D0
LAB_A16302:
  BSR.W PrintChar
  MOVE.L  $A(A1),D0
  LSR.W #4,D0
  ANDI.W  #7,D0
  MOVEQ #1,D1
  BSR.W PrintValue
  MOVEQ #3,D0
  BTST  #3,$D(A1)
  BEQ.S LAB_A16322
  MOVEQ #6,D0
LAB_A16322:
  LEA InstructionLengths(PC),A0
  LEA 0(A0,D0.W),A0
  BSR.W PrintText
  MOVE.L  LAB_A47FC4,D0
  ANDI.W  #7,D0
  BEQ.S LAB_A16354
  MOVE.W  D0,D1
  MOVEQ #$2A,D0
  BSR.W PrintChar
  CMPI.W  #6,D1
  BNE.S LAB_A1634A
  MOVEQ #8,D1
LAB_A1634A:
  ORI.W #$0030,D1
  MOVE.W  D1,D0
  BSR.W PrintChar
LAB_A16354:
  MOVEQ #$29,D0
  BSR.W PrintChar
  BRA.W LAB_A1643C
LAB_A1635E:
  CMPI.W  #7,D0
  BNE.S LAB_A16378
  MOVE.L  2(A1),D0
  JSR Print8DigitHex
  LEA LAB_A164D6(PC),A0
  BSR.W PrintText
  BRA.W LAB_A1643C
LAB_A16378:
  CMPI.W  #8,D0
  BNE.S LAB_A1638A
  MOVE.L  2(A1),D0
  JSR Print8DigitHex
  BRA.W LAB_A1643C
LAB_A1638A:
  CMPI.W  #9,D0
  BNE.S LAB_A163A8
  MOVE.L  6(A1),D0
  ADDQ.L  #2,D0
  ADD.L D2,D0
  BSR.W SUB_A1669A
  LEA LAB_A164D9(PC),A0
  BSR.W PrintText
  BRA.W LAB_A1643C
LAB_A163A8:
  CMPI.W  #$000a,D0
  BNE.S LAB_A163C2
  MOVE.L  6(A1),D0
  BSR.W SUB_A1669A
  LEA LAB_A164DE(PC),A0
  BSR.W PrintText
  BRA.W LAB_A162F0
LAB_A163C2:
  CMPI.W  #$000b,D0
  BNE.S LAB_A163D8
  MOVEQ #$23,D0
  BSR.W PrintChar
  MOVE.L  2(A1),D0
  BSR.W SUB_A16676
  BRA.S LAB_A1643C
LAB_A163D8:
  JMP LAB_A3169C
LAB_A163DE:
  CMPI.W  #$000f,D0
  BNE.S LAB_A163F4
  MOVE.L  6(A1),D0
  JSR Print8DigitHex
  TST.W 2(A1)
  BNE.S LAB_A1643C
  BRA.S LAB_A1643C
LAB_A163F4:
  CMPI.W  #$0011,D0
  BNE.S LAB_A16422
LAB_A163FA:
  MOVE.L  2(A1),D1
  LSR.W #8,D1
  TST.B D1
  BEQ.S LAB_A16408
  MOVEQ #$44,D2
  BSR.S SUB_A16442
LAB_A16408:
  MOVE.L  2(A1),D1
  TST.B D1
  BEQ.S LAB_A16414
  MOVEQ #$41,D2
  BSR.S SUB_A16442
LAB_A16414:
  JSR moveCursorLeft
  BSR.W PrintSpace
  JSR moveCursorLeft
  BRA.S LAB_A1643C
LAB_A16422:
  CMPI.W  #$0010,D0
  MOVEQ #0,D1
  MOVEQ #$F,D2
  MOVE.L  2(A1),D0
LAB_A1642E:
  ROXR.W  #1,D0
  ROXL.W  #1,D1
  DBF D2,LAB_A1642E
  MOVE.L  D1,2(A1)
  BRA.S LAB_A163FA
LAB_A1643C:
  MOVEM.L (A7)+,D0-D1/A0
  RTS
SUB_A16442:
  MOVEM.L D0-D3,-(A7)
  MOVEQ #7,D3
LAB_A16448:
  BTST  D3,D1
  BEQ.S LAB_A164BC
  MOVE.W  D2,D0
  BSR.W PrintChar
  MOVE.W  D3,D0
  EORI.W  #7,D0
  BNE.S LAB_A1645C
  MOVEQ #0,D0
LAB_A1645C:
  ADDI.W  #$0030,D0
  BSR.W PrintChar
  SUBQ.W  #1,D3
  BMI.S LAB_A164C4
  BTST  D3,D1
  BNE.S LAB_A16474
  MOVEQ #$2F,D0
  BSR.W PrintChar
  BRA.S LAB_A16448
LAB_A16474:
  MOVEQ #$2D,D0
  BSR.W PrintChar
LAB_A1647A:
  SUBQ.W  #1,D3
  BMI.S LAB_A164A4
  BTST  D3,D1
  BNE.S LAB_A1647A
  MOVE.W  D2,D0
  BSR.W PrintChar
  MOVE.W  D3,D0
  ADDQ.W  #1,D0
  EORI.W  #7,D0
  BNE.S LAB_A16494
  MOVEQ #0,D0
LAB_A16494:
  ADDI.W  #$0030,D0
  BSR.W PrintChar
  MOVEQ #$2F,D0
  BSR.W PrintChar
  BRA.S LAB_A16448
LAB_A164A4:
  MOVE.W  D2,D0
  BSR.W PrintChar
  MOVEQ #$37,D0
  BSR.W PrintChar
  MOVEQ #$2F,D0
  BSR.W PrintChar
LAB_A164B6:
  MOVEM.L (A7)+,D0-D3
  RTS
LAB_A164BC:
  SUBQ.W  #1,D3
  BPL.S LAB_A16448
  TST.B D1
  BNE.S LAB_A164B6
LAB_A164C4:
  MOVEQ #$2F,D0
  BSR.W PrintChar
  BRA.S LAB_A164B6
LAB_A164CC:
  DC.B  "(A",0

LAB_A164CF:
  DC.B  $29
  DC.W  $2b00

LAB_A164D2:
  DC.L  $2d284100

LAB_A164D6:
  DC.W  $2e53
  DS.B  1

LAB_A164D9:
  DC.B  "(PC)",0

LAB_A164DE:
  DC.B  "(PC",0

WrongOpnrText:
  DC.B  "wrong opnr!",$D,0,0

InstructionLengths:
  DC.B  ".B",0
  DC.B  ".W",0
  DC.B  ".L",0
  DC.B  ".?",0

AsmInstructions:
  DC.B  "ABCD",0
  DC.B  "ADD",0
  DC.B  "ADDA",0
  DC.B  "ADDI",0
  DC.B  "ADDQ",0
  DC.B  "ADDX",0
  DC.B  "AND",0
  DC.B  "ANDI",0
  DC.B  "ASL",0
  DC.B  "ASR",0
  DC.B  "B",0
  DC.B  "BCHG",0
  DC.B  "BCLR",0
  DC.B  "BRA",0
  DC.B  "BSET",0
  DC.B  "BSR",0
  DC.B  "BTST",0
  DC.B  "CHK",0
  DC.B  "CLR",0
  DC.B  "CMP",0
  DC.B  "CMPA",0
  DC.B  "CMPI",0
  DC.B  "CMPM",0
  DC.B  "DB",0
  DC.B  "DIVS",0
  DC.B  "DIVU",0
  DC.B  "EOR",0
  DC.B  "EORI",0
  DC.B  "EXG",0
  DC.B  "EXT",0
  DC.B  "JMP",0
  DC.B  "JSR",0
  DC.B  "LEA",0
  DC.B  "LINK",0
  DC.B  "LSL",0
  DC.B  "LSR",0
  DC.B  "MOVE",0
  DC.B  "MOVE",0
  DC.B  "MOVE",0
  DC.B  "MOVE",0
  DC.B  "MOVE",0
  DC.B  "MOVEA",0
  DC.B  "MOVEM",0
  DC.B  "MOVEP",0
  DC.B  "MOVEQ",0
  DC.B  "MULS",0
  DC.B  "MULU",0
  DC.B  "NBCD",0
  DC.B  "NEG",0
  DC.B  "NEGX",0
  DC.B  "NOP",0
  DC.B  "NOT",0
  DC.B  "OR",0
  DC.B  "ORI",0
  DC.B  "PEA",0
  DC.B  "RESET",0
  DC.B  "ROL",0
  DC.B  "ROR",0
  DC.B  "ROXL",0
  DC.B  "ROXR",0
  DC.B  "RTE",0
  DC.B  "RTR",0
  DC.B  "RTS",0
  DC.B  "SBCD",0
  DC.B  "S",0
  DC.B  "STOP",0
  DC.B  "SUB",0
  DC.B  "SUBA",0
  DC.B  "SUBI",0
  DC.B  "SUBQ",0
  DC.B  "SUBX",0
  DC.B  "SWAP",0
  DC.B  "TAS",0
  DC.B  "TRAP",0
  DC.B  "TRAPV",0
  DC.B  "TST",0
  DC.B  "UNLK",0
  DC.B  "LINEA",0
  DC.B  "LINEF",0
  DC.B  "ILLEGAL",0
  DC.B  "MOVEC",0
  DC.B  $ff

SUB_A16676:
  MOVEM.L D0-D1,-(A7)
  CMPI.W  #1,LAB_A47FB8
  BNE.S LAB_A1668A
  ANDI.L  #$0000ffff,D0
LAB_A1668A:
  TST.W LAB_A47FB8
  BNE.S LAB_A166B0
  ANDI.L  #$000000ff,D0
  BRA.S LAB_A166B0
SUB_A1669A:
  MOVEM.L D0-D1,-(A7)
  TST.L D0
  BPL.S LAB_A166B0
  MOVE.L  D0,-(A7)
  MOVE.W  #$002d,D0
  BSR.W PrintChar
  MOVE.L  (A7)+,D0
  NEG.L D0
LAB_A166B0:
  MOVE.L  D0,-(A7)
  MOVEQ #1,D1
LAB_A166B4:
  LSR.L #4,D0
  BEQ.S LAB_A166BC
  ADDQ.W  #1,D1
  BRA.S LAB_A166B4
LAB_A166BC:
  MOVE.L  (A7)+,D0
  BSR.W PrintValue
  MOVEM.L (A7)+,D0-D1
  RTS
SUB_A166C8:
  if rsnoop=1
    MOVE.L SaveCop1Lch,copperPos
  else
  MOVE.L  #$0000041e,copperPos
  endc
  MOVE.W  LAB_A480AC,-(A7)
  MOVE.W  #1,LAB_A480AC
  BSR.S SUB_A166EC
  MOVE.W  (A7)+,LAB_A480AC
  BRA.W SUB_A16826
SUB_A166EC:
  MOVEM.L D0-D4/A0-A1,-(A7)
  MOVE.L  #$000007d0,D4
  SF  LAB_A480AA
  MOVE.L RegSnoopAddr,A1
  MOVE.L  SaveCop1Lch,CopyCop1lc
  MOVE.L  cop2lch(A1),CopyCop2lc
  MOVE.L  SaveDiwStart,CopyDiwStart
  MOVE.W  SaveDiwHigh,CopyDiwHigh
  MOVE.L  SaveDdfStrt,CopyDdfStrt
  MOVE.L  SaveBplCon0,CopyBplCon0
  MOVE.W  SaveBplCon2,CopyBplCon2
  MOVE.W  SaveBplCon3,CopyBplCon3
  MOVE.W  SaveBplCon4,CopyBplCon4
  MOVE.W  SaveFmode,CopyFmode
  MOVE.W  SaveBeamCon0,CopyBeamCon0
  MOVE.L  SaveBpl1Mod,CopyBplMod1
  MOVE.W  clxcon(A1),Copyclxcon
  LEA color00(A1),A1
  LEA SaveColor,A0
  MOVEQ #$1F,D0
LAB_A1675A:
  MOVE.W  (A1)+,(A0)+
  DBF D0,LAB_A1675A
  MOVE.L  SaveColor00,SaveColor

  MOVE.L AgaPaletteSave,D0
  BEQ.S .noaga1
  MOVE.L D0,A0
  MOVE.L AgaPaletteCopy,D0
  BEQ.S .noaga1
  MOVE.L D0,A1
  MOVE.W #256-1,D0
.c
  MOVE.L (A0)+,(A1)+
  DBF D0,.c

.noaga1
  MOVE.L RegSnoopAddr,A0
  LEA bpl1pth(A0),A0
  MOVEQ #7,D0
  LEA CopyBpl1Pth,A1
LAB_A16778:
  MOVE.L  (A0)+,(A1)+
  DBF D0,LAB_A16778
  MOVE.L  SaveBpl1Pth,CopyBpl1Pth
  LEA CopySpr0Pt,A1
  MOVE.L RegSnoopAddr,A0
  LEA spr0pos(A0),A0
  MOVEQ #7,D0
LAB_A16796:
  MOVE.L  (A0)+,(A1)+
  DBF D0,LAB_A16796
  BRA.W LAB_A16866
SUB_A167A0:
  MOVEM.L D0-D4/A0-A2,-(A7)
  MOVE.W  LAB_A480AC,D4
  MOVEA.L copperPos,A0
  MOVEA.L A0,A2
LAB_A167B2:
  ADDQ.W  #2,A0
  CMPA.L  foundChipMemEnd,A0
  BGE.S LAB_A16812
  CMPI.W  #$00e0,(A0)
  BNE.S LAB_A167B2
  CMPI.W  #$0020,2(A0)
  BGE.S LAB_A167B2
  ADDQ.W  #4,A0
  MOVE.W  #$0320,D1
  MOVEA.L A0,A1
LAB_A167D2:
  TST.W (A1)
  BEQ.S LAB_A167B2
  CMPI.L  #$fffffffe,(A1)
  BEQ.S LAB_A167E6
  ADDQ.W  #4,A1
  DBF D1,LAB_A167D2
  BRA.S LAB_A167B2
LAB_A167E6:
  MOVE.L  A1,-(A7)
  SUBQ.W  #4,A0
LAB_A167EA:
  MOVE.L  -4(A0),D0
  JSR SUB_A312D2
  TST.W D0
  BNE.S LAB_A167FE
  SUBQ.W  #4,A0
  DBF D1,LAB_A167EA
LAB_A167FE:
  MOVEA.L A0,A2
  MOVEA.L (A7)+,A0
  SUBQ.W  #1,D4
  BNE.S LAB_A167B2
LAB_A16806:
  MOVE.L  A2,copperPos
  MOVEM.L (A7)+,D0-D4/A0-A2
  RTS
LAB_A16812:
  LEA EXT_41E.W,A2
  MOVE.L  A2,copperPos
  MOVE.W  #1,LAB_A480AC
  BRA.S LAB_A16806
SUB_A16826:
  MOVEM.L D0-D4/A0-A1,-(A7)
  ;CLR.W  CopyFmode
  CLR.W CopyDiwHigh
  ;CLR.W  CopyBplCon4
  if rsnoop=1
  MOVE.L SaveCop1Lch,A0
  MOVE.L A0,copperPos
  else
  BSR.W SUB_A167A0
  MOVEA.L copperPos,A0
  endc
  MOVE.L  A0,CopyCop1lc

  MOVE.L RegSnoopAddr,A1
  MOVE.L  $84(A1),CopyCop2lc
  MOVE.L  #$00002000,D4
  SF  LAB_A480AA
LAB_A16866:
  BTST  #7,SaveDmaCon1
  BEQ.W LAB_A16A70
  MOVEA.L copperPos,A0
  SF  LAB_A480AB
  BCLR  #4,LAB_A480AC
  BEQ.S LAB_A1688E
  ST  LAB_A480AB
LAB_A1688E:
  TST.B LAB_A480AB
  BEQ.S LAB_A1689C
  ST  LAB_A480AA
LAB_A1689C:
  BSR.W memSafeReadLong
  ADDQ.W  #4,A0
  SUBQ.W  #1,D4
  BEQ.W LAB_A16A70
  MOVE.L  D0,D1
  BTST  #$10,D1
  BEQ.S LAB_A168DC
  BTST  #0,D1
  BNE.S LAB_A1688E
  TST.B LAB_A480AA
  BEQ.S LAB_A168CE
  SF  LAB_A480AA
  SUBQ.W  #1,LAB_A480AC
  BEQ.W LAB_A16A70
LAB_A168CE:
  MOVE.L  D1,D2
  SWAP  D2
  CMPI.W  #$ffff,D2
  BNE.S LAB_A1688E
  BRA.W LAB_A16A70
LAB_A168DC:
  MOVE.L  D1,D2
  SWAP  D2
  ANDI.W  #$01fe,D2
  CMPI.W  #$008a,D2
  BNE.S LAB_A168F2
  MOVEA.L CopyCop2lc,A0
  BRA.S LAB_A1688E
LAB_A168F2:
  CMPI.W  #$008e,D2
  BNE.S LAB_A16902
  SWAP  D2
  MOVE.W  D2,CopyDiwStart
  BRA.S LAB_A1688E
LAB_A16902:
  CMPI.W  #$0098,D2
  BNE.S LAB_A16910
  SWAP  D2
  MOVE.W  D2,Copyclxcon
LAB_A16910:
  CMPI.W  #$0090,D2
  BNE.S LAB_A16922
  SWAP  D2
  MOVE.W  D2,CopyDiwStop
  BRA.W LAB_A1688E
LAB_A16922:
  CMPI.W  #$0092,D2
  BNE.S LAB_A16934
  SWAP  D2
  MOVE.W  D2,CopyDdfStrt
  BRA.W LAB_A1688E
LAB_A16934:
  CMPI.W  #$0094,D2
  BNE.S LAB_A16946
  SWAP  D2
  MOVE.W  D2,CopyDdfStop
  BRA.W LAB_A1688E
LAB_A16946:
  CMPI.W  #$00e0,D2
  BCS.S LAB_A16968
  CMPI.W  #$00fe,D2
  BHI.S LAB_A16968
  MOVE.W  D2,D3
  SWAP  D2
  LEA CopyBpl1Pth,A1
  SUBI.W  #$00e0,D3
  MOVE.W  D2,0(A1,D3.W)
  BRA.W LAB_A1688E
LAB_A16968:
  CMPI.W  #$010c,D2
  BHI.S LAB_A1698A
  CMPI.W  #$0102,D2
  BLT.S LAB_A1698A
  MOVE.W  D2,D3
  SUBI.W  #$0102,D3
  SWAP  D2
  LEA CopyBplCon1,A1
  MOVE.W  D2,0(A1,D3.W)
  BRA.W LAB_A1688E
LAB_A1698A:
  CMPI.W  #$0120,D2
  BCS.S LAB_A169AC
  CMPI.W  #$0140,D2
  BHI.S LAB_A169AC
  MOVE.W  D2,D3
  SUBI.W  #$0120,D3
  SWAP  D2
  LEA CopySpr0Pt,A1
  MOVE.W  D2,0(A1,D3.W)
  BRA.W LAB_A1688E
LAB_A169AC:
  CMPI.W  #$0180,D2
  BCS.S LAB_A169D6
  CMPI.W  #$01be,D2
  BHI.S LAB_A169D6
  BTST #2,ChipsetIdValue      ;aga
  BNE.S .1

;  MOVEQ #0,D3
;  MOVE.W CopyBplCon3,D3
;  AND.W #%1110001000000000,D3
;  BNE.S LAB_A169D6

  MOVE.L AgaPaletteCopy,D3
  BEQ.S .1
  MOVE.L D3,A1
;
  MOVE.W CopyBplCon3,D3
  BTST #10,D3
  BNE.S .2
  ;low part of palette
  ADDQ #2,A1
.2
  AND.W #$7000,D3
  LSR.W #6,D3
  ;add bank offset
  ADD.L D3,A1

  MOVE.W  D2,D3
  SUBI.W  #$0180,D3
  ADD.W D3,D3
  SWAP  D2
  MOVE.W  D2,0(A1,D3.W)
  BRA.W LAB_A1688E
.1
  MOVE.W  D2,D3
  SUBI.W  #$0180,D3
  SWAP  D2
  LEA SaveColor,A1
  MOVE.W  D2,0(A1,D3.W)
  BRA.W LAB_A1688E
LAB_A169D6:
  CMPI.W  #$0080,D2
  BCS.S LAB_A169F8
  CMPI.W  #$0086,D2
  BHI.S LAB_A169F8
  SUBI.W  #$0080,D2
  MOVE.W  D2,D3
  LEA CopyCop1lc,A1
  SWAP  D2
  MOVE.W  D2,0(A1,D3.W)
  BRA.W LAB_A1688E
LAB_A169F8:
  CMPI.W  #$0088,D2
  BNE.S LAB_A16A08
  MOVEA.L CopyCop1lc,A0
  BRA.W LAB_A1688E
LAB_A16A08:
  CMPI.W  #$0100,D2
  BNE.S LAB_A16A28
  SWAP  D2
  MOVE.W  D2,CopyBplCon0
  ANDI.W  #$7010,D2
  BEQ.W LAB_A1688E
  ST  LAB_A480AA
  BRA.W LAB_A1688E
LAB_A16A28:
  CMPI.W  #$01fc,D2
  BNE.S LAB_A16A3A
  SWAP  D2
  MOVE.W  D2,CopyFmode
  BRA.W LAB_A1688E
LAB_A16A3A:
  CMPI.W  #$01e4,D2
  BNE.S LAB_A16A4C
  SWAP  D2
  MOVE.W  D2,CopyDiwHigh
  BRA.W LAB_A1688E
LAB_A16A4C:
  CMPI.W  #$010c,D2
  BNE.S LAB_A16A5A
  SWAP  D2
  MOVE.W  D2,CopyBplCon4
LAB_A16A5A:
  CMPI.W  #$0106,D2
  BNE.S LAB_A16A6C
  SWAP  D2
  MOVE.W  D2,CopyBplCon3
LAB_A16A6C:
  BRA.W LAB_A1688E
LAB_A16A70:
  MOVEQ #7,D0
  MOVEQ #0,D1
  MOVE.W  CopyBplMod1,D1
  LEA CopyBpl1Pth,A0
  LEA bpl1Work,A1
LAB_A16A86:
  MOVE.L  (A0)+,D2
  ADD.L D1,D2
  MOVE.L  D2,(A1)+
  DBF D0,LAB_A16A86
  MOVEM.L (A7)+,D0-D4/A0-A1
  RTS
PrintValue:
  MOVEM.L D0-D1/D5-D7,-(A7)
  MOVEQ #0,D5
  MOVE.L  D0,D7
  MOVE.W  D1,D6
  SUBQ.W  #1,D6
  MOVEQ #7,D0
  SUB.W D6,D0
  LSL.W #2,D0
  LSL.L D0,D7
LAB_A16AAA:
  ROL.L #4,D7
  MOVE.W  D7,D0
  ANDI.W  #$000f,D0
  ADDI.W  #$0030,D0
  CMPI.W  #$0039,D0
  BLS.S LAB_A16ABE
  ADDQ.W  #7,D0
LAB_A16ABE:
  BSR.S PrintChar
  DBF D6,LAB_A16AAA
  MOVEM.L (A7)+,D0-D1/D5-D7
  RTS
AsciiCharToHexDigit:
  ANDI.W  #$00ff,D0
  SUBI.B  #$41,D0
  BPL.S LAB_A16AD6
  ADDQ.B  #7,D0
LAB_A16AD6:
  ADDI.B  #$0a,D0
  RTS
PrintChar:
  MOVEM.L D0-D3/A0-A2,-(A7)
  LEA EXT_1000,A0
  LEA fontData,A1
  MOVEQ #0,D1
  MOVE.B  D0,D1
  MOVE.L  cursorX,D0
  TST.B D1
  BEQ.W LAB_A16C70
  CMPI.B  #$1f,D1
  BLS.S LAB_A16B08
  CMPI.B  #$7f,D1
  BLS.W LAB_A16C38
LAB_A16B08:
  CMPI.B  #$0d,D1
  BEQ.W PrintLF
  CMPI.B  #$0a,D1
  BEQ.W PrintLF
  CMPI.B  #$1b,D1
  BEQ.W PrintEsc
  CMPI.B  #8,D1
  BEQ.W PrintBackSpace
  CMPI.B  #$84,D1
  BEQ.W PrintDelete
  CMPI.B  #$85,D1
  BEQ.W ShowHelp
  CMPI.B  #CursorLeft,D1
  BEQ.W PrintCursorLeft
  CMPI.B  #CursorRight,D1
  BEQ.W PrintCursorRight
  CMPI.B  #CursorUp,D1
  BEQ.W PrintCursorUp
  CMPI.B  #CursorDown,D1
  BEQ.W PrintCursorDown
  CMPI.B  #9,D1
  BEQ.W PrintTab
  CMPI.B  #$5a,D1
  CMPI.B  #F1Key,D1
  BEQ.W PrintF1
  CMPI.B  #F2Key,D1
  BEQ.W PrintF2
  CMPI.B  #F3Key,D1
  BEQ.W PrintF3
  CMPI.B  #F4Key,D1
  BEQ.W PrintF4
  CMPI.B  #F5Key,D1
  BEQ.W PrintF5
  CMPI.B  #F6Key,D1
  BEQ.W PrintF6
  CMPI.B  #F7Key,D1
  BEQ.W PrintF7
  CMPI.B  #F8Key,D1
  BEQ.W PrintF8
  CMPI.B  #F9Key,D1
  BEQ.W PrintF9
  CMPI.B  #F10Key,D1
  BEQ.W PrintF10
  MOVE.W  #$0080,D2
  CMPI.B  #$c4,D1
  BEQ.S LAB_A16C2E
  MOVE.W  #$0081,D2
  CMPI.B  #$e4,D1
  BEQ.S LAB_A16C2E
  MOVE.W  #$0082,D2
  CMPI.B  #$d6,D1
  BEQ.S LAB_A16C2E
  MOVE.W  #$0083,D2
  CMPI.B  #$f6,D1
  BEQ.S LAB_A16C2E
  MOVE.W  #$0084,D2
  CMPI.B  #$dc,D1
  BEQ.S LAB_A16C2E
  MOVE.W  #$0085,D2
  CMPI.B  #$fc,D1
  BEQ.S LAB_A16C2E
  MOVE.W  #$0086,D2
  CMPI.B  #$df,D1
  BEQ.S LAB_A16C2E
  MOVE.W  #$0087,D2
  CMPI.B  #$a7,D1
  BEQ.S LAB_A16C2E
  MOVE.W  #$008b,D2
  CMPI.W  #$00a3,D1
  BEQ.S LAB_A16C2E
  TST.B LAB_A4839B
  BEQ.S LAB_A16C2A
  MOVE.W  #$0088,D2
  CMPI.W  #$0094,D1
  BEQ.S LAB_A16C2E
  MOVE.W  #$0089,D2
  CMPI.W  #$0095,D1
  BEQ.S LAB_A16C2E
  MOVE.W  #$008a,D2
  CMPI.W  #$0096,D1
  BEQ.S LAB_A16C2E
LAB_A16C2A:
  MOVEQ #$2E,D1
  BRA.S LAB_A16C38
LAB_A16C2E:
  SWAP  D0
  JSR PrintCharToScreenAndPrinter
  MOVE.W  D2,D1
  BRA.S LAB_A16C3E
LAB_A16C38:
  SWAP  D0
  JSR PrintCharToScreenAndPrinter
LAB_A16C3E:
  MOVEQ #0,D2
  MOVE.W  D0,D2
  SWAP  D0
  MULU  #$0280,D0
  ADD.L D0,D2
  SUBI.W  #$0020,D1
  LSL.W #3,D1
  ADDA.L  D1,A1
  MOVEQ #7,D0
LAB_A16C54:
  MOVE.B  (A1)+,D3
  TST.B LAB_A483DB
  BEQ.S LAB_A16C60
  NOT.B D3
LAB_A16C60:
  MOVE.B  D3,0(A0,D2.W)
  ADDI.W  #$0050,D2
  DBF D0,LAB_A16C54
  JSR moveCursorRight
LAB_A16C70:
  JSR PrintCursor
  MOVEM.L (A7)+,D0-D3/A0-A2
  RTS
PrintF9:
  TST.B ShiftKey
  BNE.W LAB_A17078
  ADD.B #1,keymap
  CMP.B #3,keymap
  BNE.S nores
  MOVE.B #$FF,keymap
nores:

  LEA GermanKeymapText(PC),A0
  TST.B keymap
  BEQ.S LAB_A16C94
  LEA UsaKeymapText(PC),A0
  CMP.B #1,keymap
  BEQ.S LAB_A16C94
  LEA ITKeymapText(PC),A0
  CMP.B #2,keymap
  BEQ.S LAB_A16C94
  LEA UKKeymapText(PC),A0
LAB_A16C94:
  BSR.W PrintText
  BRA.S LAB_A16C70

GermanKeymapText:
  DC.B  $D,"Keymap is now german",$D,0

UsaKeymapText:
  DC.B  $D,"Keymap is now usa",$D,0

UKKeymapText:
  DC.B  $D,"Keymap is now uk",$D,0

ITKeymapText:
  DC.B  $D,"Keymap is now italian",$D,0

  even
PrintF1:
  TST.B ShiftKey
  BNE.S LAB_A16CD4
  BSR.W Cls
  BRA LAB_A16C70
LAB_A16CD4:
  JSR CursorHome
  BRA LAB_A16C70
PrintF2:
  TST.B ShiftKey
  BEQ.S LAB_A16D10
  MOVE.L TextPage2Addr,A0
  MOVE.L TextPage1Addr,A1
  CMPA.L  CurrentPage,A0
  BEQ.S LAB_A16CF8
  EXG A0,A1
LAB_A16CF8:
  MOVE.W PageHeight,D0
  ADD.W #1,D0
  MULU #80/4,D0
  SUB.W #1,D0
LAB_A16CFC:
  MOVE.L  (A0)+,(A1)+
  DBF D0,LAB_A16CFC
  MOVE.L  cursorX,CursorStore
  BRA.W LAB_A16C70
LAB_A16D10:
  MOVE.L TextPage2Addr,A0
  MOVE.L TextPage1Addr,A1
  CMPA.L  CurrentPage,A0
  BNE.S LAB_A16D26
  EXG A0,A1
LAB_A16D26:
  MOVE.W PageHeight,D0
  ADD.W #1,D0
  MULU #80/4,D0
  SUB.W #1,D0
LAB_A16D2A:
  MOVE.L  (A0)+,(A1)+
  DBF D0,LAB_A16D2A
  JSR redrawTextPage
  MOVE.L  CursorStore,cursorX
  BRA.W LAB_A16C70
PrintF3:
  JSR DoPrefs
  BRA.W LAB_A16C70
PrintF4:
  JMP RepeatLastCmd
PrintBackSpace:
  JSR SUB_A11168
  BRA.W LAB_A16C70
PrintDelete:
  JSR SUB_A111CA
  BRA.W LAB_A16C70
PrintCursorLeft:
  TST.B ShiftKey
  BEQ.S LAB_A16DB2
  MOVEM.L D0/A0,-(A7)
  MOVEA.L CurrentPage,A0
  MOVE.W  cursorY,D0
  MULU  #$0050,D0
  LEA 0(A0,D0.W),A0
  TST.W cursorX
  BEQ.S LAB_A16DAA
LAB_A16D8C:
  SUBQ.W  #1,cursorX
  BEQ.S LAB_A16DAA
  MOVE.W  cursorX,D0
  CMPI.B  #$20,-1(A0,D0.W)
  BNE.S LAB_A16D8C
  CMPI.B  #$20,0(A0,D0.W)
  BEQ.S LAB_A16D8C
LAB_A16DAA:
  MOVEM.L (A7)+,D0/A0
  BRA.W LAB_A16C70
LAB_A16DB2:
  JSR moveCursorLeft
  BRA.W LAB_A16C70
PrintCursorRight:
  TST.B ShiftKey
  BEQ.S LAB_A16E32
  MOVEM.L D0/A0,-(A7)
  MOVEA.L CurrentPage,A0
  MOVE.W  cursorY,D0
  MULU  #$0050,D0
  LEA 0(A0,D0.W),A0
  CMPI.W  #$004f,cursorX
  BEQ.S LAB_A16E0A
LAB_A16DE4:
  ADDQ.W  #1,cursorX
  CMPI.W  #$004f,cursorX
  BEQ.S LAB_A16E0A
  MOVE.W  cursorX,D0
  CMPI.B  #$20,-1(A0,D0.W)
  BNE.S LAB_A16DE4
  CMPI.B  #$20,0(A0,D0.W)
  BEQ.S LAB_A16DE4
LAB_A16E0A:
  CMPI.W  #$004f,cursorX
  BNE.S LAB_A16E2A
LAB_A16E14:
  MOVE.W  cursorX,D0
  CMPI.B  #$20,-1(A0,D0.W)
  BNE.S LAB_A16E2A
  SUBQ.W  #1,cursorX
  BNE.S LAB_A16E14
LAB_A16E2A:
  MOVEM.L (A7)+,D0/A0
  BRA.W LAB_A16C70
LAB_A16E32:
  JSR moveCursorRight
  BRA.W LAB_A16C70
PrintCursorDown:
  TST.B ShiftKey
  BEQ.S LAB_A16E50
  MOVE.W  PageHeight,cursorY
  BRA.W LAB_A16C70
LAB_A16E50:
  MOVE.W  PageHeight,D7
  CMP.W cursorY,D7
  BNE.W LAB_A16F1A
  MOVEM.L D0-D1/D7/A0-A1,-(A7)
  MOVEA.L CurrentPage,A0
  MOVE.W PageHeight,D1
  MULU #80,D1
  ADD.L D1,A0
  MOVEQ #0,D1
  MOVE.B  (A0)+,D1
  MOVEQ #$46,D7
  JSR ReadParameter
  TST.B ParamFound
  BEQ.W LAB_A16F16
  CMPI.W  #$003a,D1
  BNE.S LAB_A16EA2
  ADDQ.L  #8,D0
  ADDQ.L  #8,D0
  MOVEA.L D0,A1
  JSR SUB_A1127A
  CLR.W cursorX
  JSR ShowMemory(PC)
  BRA.W LAB_A16F22
LAB_A16EA2:
  CMPI.W  #$007e,D1
  BNE.S LAB_A16EC8
  MOVEA.L D0,A0
  BSR.W SUB_A15324
  MOVE.L  A0,DefaultAddress
  MOVE.L  A0,D0
  MOVEA.L D0,A1
  JSR SUB_A1127A
  CLR.W cursorX
  JSR SUB_A12F08(PC)
  BRA.S LAB_A16F22
LAB_A16EC8:
  CMPI.W  #$002e,D1
  BNE.S LAB_A16EE6
  MOVEA.L D0,A0
  LEA $40(A0),A0
  JSR SUB_A1127A
  CLR.W cursorX
  JSR ShowMemAsAscii
  BRA.S LAB_A16F22
LAB_A16EE6:
  CMPI.W  #$002c,D1
  BNE.S LAB_A16EFE
  ADDQ.L  #4,D0
  JSR SUB_A1127A
  CLR.W cursorX
  JSR ShowCopperList(PC)
  BRA.S LAB_A16F22
LAB_A16EFE:
  CMPI.W  #$003b,D1
  BNE.S LAB_A16F16
  ADDQ.W  #2,D0
  JSR SUB_A1127A
  CLR.W cursorX
  JSR ShowCustomRegValues(PC)
  BRA.S LAB_A16F22
LAB_A16F16:
  MOVEM.L (A7)+,D0-D1/D7/A0-A1
LAB_A16F1A:
  JSR moveCursorDown
  BRA.W LAB_A16C70
LAB_A16F22:
  MOVEM.L (A7)+,D0-D1/D7/A0-A1
  BRA.W LAB_A16C70
PrintCursorUp:
  TST.B ShiftKey
  BEQ.S LAB_A16F3C
  CLR.W cursorY
  BRA.W LAB_A16C70
LAB_A16F3C:
  TST.W cursorY
  BNE.W LAB_A17046
  MOVEM.L D0-D1/D7/A0-A1,-(A7)
  MOVEQ #0,D1
  MOVEA.L CurrentPage,A0
  MOVE.B  (A0)+,D1
  MOVEQ #$46,D7
  JSR ReadParameter
  TST.B ParamFound
  BEQ.W LAB_A17042
  CMPI.W  #$003a,D1
  BNE.S LAB_A16F84
  SUBQ.L  #8,D0
  SUBQ.L  #8,D0
  MOVEA.L D0,A1
  JSR SUB_A11244
  CLR.W cursorX
  JSR ShowMemory(PC)
  BRA.W LAB_A1704E
LAB_A16F84:
  CMPI.W  #$007e,D1
  BNE.S LAB_A16FF4
  MOVE.L  D0,D7
  MOVEA.L D0,A0
  LEA -100(A0),A0
LAB_A16F92:
  BSR.W SUB_A15324
  CMP.L A0,D7
  BLS.S LAB_A16FA2
  MOVE.L  A0,DefaultAddress
  BRA.S LAB_A16F92
LAB_A16FA2:
  MOVE.L  DefaultAddress,D0
  BSET  #$1F,D0
  JSR SUB_A11244
  CLR.W cursorX
  MOVE.W  LAB_A47FB6,D1
  CMPI.W  #$003c,D1
  BEQ.S LAB_A16FD6
  CMPI.W  #$003e,D1
  BEQ.S LAB_A16FD6
  CMPI.W  #$000d,D1
  BEQ.S LAB_A16FD6
  CMPI.W  #$001e,D1
  BEQ.S LAB_A16FD6
  BRA.S LAB_A16FEE
LAB_A16FD6:
  LEA LAB_A12FC8(PC),A0
  JSR PrintText(PC)
  JSR SUB_A11244
  CLR.W cursorX
  CLR.W cursorY
LAB_A16FEE:
  JSR SUB_A12F08(PC)
  BRA.S LAB_A1704E
LAB_A16FF4:
  CMPI.W  #$002e,D1
  BNE.S LAB_A17012
  MOVEA.L D0,A0
  LEA -64(A0),A0
  JSR SUB_A11244
  CLR.W cursorX
  JSR ShowMemAsAscii
  BRA.S LAB_A1704E
LAB_A17012:
  CMPI.W  #$002c,D1
  BNE.S LAB_A1702A
  SUBQ.L  #4,D0
  JSR SUB_A11244
  CLR.W cursorX
  JSR ShowCopperList(PC)
  BRA.S LAB_A1704E
LAB_A1702A:
  CMPI.W  #$003b,D1
  BNE.S LAB_A17042
  SUBQ.W  #2,D0
  JSR SUB_A11244
  CLR.W cursorX
  JSR ShowCustomRegValues(PC)
  BRA.S LAB_A1704E
LAB_A17042:
  MOVEM.L (A7)+,D0-D1/D7/A0-A1
LAB_A17046:
  JSR moveCursorUp
  BRA.W LAB_A16C70
LAB_A1704E:
  MOVEM.L (A7)+,D0-D1/D7/A0-A1
  BRA.W LAB_A16C70
PrintLF:
  TST.B printerDumpToggle
  BEQ.S LAB_A1706A
  MOVE.L  D0,-(A7)
  MOVEQ #$A,D0
  JSR PrintCharToPrinter
  MOVE.L  (A7)+,D0
LAB_A1706A:
  CLR.W cursorX
  JSR moveCursorDown
  BRA.W LAB_A16C70
LAB_A17078:
  MOVE.L TextPage1Addr,A0
  MOVE.L TextPage2Addr,A1
  CMP.L  CurrentPage,A1
  BEQ.S LAB_A17090
  MOVE.L A1,A0
LAB_A17090:
  MOVEA.L CurrentPage,A1
  MOVE.W PageHeight,D0
  ADD.W #1,D0
  MULU #80,D0
  SUB.W #1,D0
LAB_A1709A:
  CMPM.B  (A0)+,(A1)+
  BNE.S LAB_A170A4
  MOVE.B  #$20,-1(A1)
LAB_A170A4:
  DBF D0,LAB_A1709A
  MOVEA.L CurrentPage,A0
  BRA.W LAB_A1712E
PrintF10:
  TST.B ShiftKey
  BEQ.W LAB_A170E6
  NOT.W VgaModeFlag
  MOVE.W  #0,beamcon0(A5)
  MOVE.W  #$0018,PageHeight
  TST.B fullPal
  BEQ LAB_A170DC
  MOVE.W  #30,PageHeight
LAB_A170DC:
  MOVEA.L CurrentPage,A0
  BRA.W LAB_A1712E
LAB_A170E6:
  MOVE.L TextPage1Addr,A0
  MOVE.L TextPage2Addr,A1
  MOVE.B  #$31,D0
  CMP.L  CurrentPage,A1
  BEQ.S LAB_A17106
  MOVE.L A1,A0
  MOVE.B  #$32,D0
LAB_A17106:
  MOVE.B  #$50,$4A(A0)
  MOVE.B  #$61,$4B(A0)
  MOVE.B  #$67,$4C(A0)
  MOVE.B  #$65,$4D(A0)
  MOVE.B  #$20,$4E(A0)
  MOVE.B  D0,$4F(A0)
  MOVE.L  A0,CurrentPage
LAB_A1712E:
  JSR redrawTextPage
  BRA.W LAB_A16C70
PrintEsc:
  BRA.W PrintLF
PrintTab:
  BSR.W InsertSpaceChar
  BRA.W LAB_A16C70
ShowHelp:
  LEA HelpText,A0
  JSR WaitNoKeypress
  TST.B ShiftKey
  BEQ.S LAB_A17158
  LEA ShortcutsText,A0
LAB_A17158:
  JSR PrintPagedText
  JSR PrintReady
  BRA.W LAB_A16C70
PrintF5:
  JSR PrintScreenToPrinter
  BRA.W LAB_A16C70
PrintF6:
  BSR.W PrintCrIfNotBlankLine
  TST.B PrinterFound
  BNE.S LAB_A17188
  JSR NoPrinter
  BRA.W LAB_A16C70
LAB_A17188:
  LEA PrinterOnText(PC),A0
  TST.B printerDumpToggle
  BEQ.S LAB_A171A4
  SF  printerDumpToggle
  LEA PrinterOffText(PC),A0
  BSR.W PrintText
  BRA.S LAB_A171AE
LAB_A171A4:
  BSR.W PrintText
  NOT.B printerDumpToggle
LAB_A171AE:
  JSR SUB_A1F3D0
  BRA.W LAB_A16C70
PrintF8:
  LEA MemPeekerText,A0
  JSR WaitNoKeypress
  ST  scrollLock
  JSR PrintPagedText
  JSR PrintReady
  SF  scrollLock
  BRA.W LAB_A16C70
PrintF7:
  BSR.W PrintCrIfNotBlankLine
  LEA InsertModeOnText(PC),A0
  TST.B insertmode
  BNE.S LAB_A171EE
  LEA OverwriteModeOnText(PC),A0
LAB_A171EE:
  BSR.W PrintText
  NOT.B insertmode
  BRA.W LAB_A16C70
InsertModeOnText:
  DC.B  "Insert mode on",$D,0

OverwriteModeOnText:
  DC.B  "Overwrite mode on",$D,0

PrinterOnText:
  DC.B  "Printerdump on",$D,0

PrinterOffText:
  DC.B  "Printerdump off",$D,0

Cls:
  MOVEM.L D0/A0,-(A7)
  CLR.L cursorX
  MOVEA.L CurrentPage,A0
  MOVE.W PageHeight,D0
  ADD.W #1,D0
  MULU #80/4,D0
  SUB.W #1,D0
LAB_A17254:
  MOVE.L  #$20202020,(A0)+
  DBF D0,LAB_A17254
  LEA EXT_1000,A0
  MOVE.W PageHeight,D0
  ADD.W #1,D0
  MULU #80,D0
  SUB.W #1,D0
LAB_A17268:
  CLR.L (A0)+
  CLR.L (A0)+
  DBF D0,LAB_A17268
  JSR PrintCursor
  MOVEM.L (A7)+,D0/A0
  RTS
SUB_A1727A:
  MOVEM.L D0-D1/A0,-(A7)
  MOVE.L  cursorX,-(A7)
  MOVE.B  printerDumpToggle,-(A7)
  SF  printerDumpToggle
  SF  cursorEnabled
  MOVEA.L CurrentPage,A0
  MOVEQ #0,D0
  MOVE.W  cursorY,D0
  MULU  #$0050,D0
  LEA 0(A0,D0.W),A0
  CLR.W cursorX
  MOVEQ #$4F,D1
  MOVE.W  PageHeight,D0
  CMP.W cursorY,D0
  BNE.S LAB_A172C4
  MOVEQ #$4E,D1
LAB_A172C4:
  MOVEQ #0,D0
  MOVE.B  (A0)+,D0
  JSR InvalidAsciiToSpace(PC)
  BSR.W PrintChar
  DBF D1,LAB_A172C4
  ST  cursorEnabled
  MOVE.B  (A7)+,printerDumpToggle
  MOVE.L  (A7)+,cursorX
  MOVEM.L (A7)+,D0-D1/A0
  RTS
redrawTextPage:
  MOVEM.L D0-D2/A0,-(A7)
  MOVE.L  cursorX,-(A7)
  SF  cursorEnabled
  CLR.L cursorX
  MOVEA.L CurrentPage,A0
  MOVE.W PageHeight,D1
  ADD.W #1,D1
 MULU #80,D1
 SUB.W #2,D1
LAB_A1730C:
  MOVE.B  (A0)+,D0
  BNE.S LAB_A17312
  MOVEQ #$20,D0
LAB_A17312:
  BSR.W PrintChar
  DBF D1,LAB_A1730C
  ST  cursorEnabled
  MOVE.L  (A7)+,cursorX
  MOVEM.L (A7)+,D0-D2/A0
  RTS
readCmdChar:
  TST.W D7
  SEQ endOfCmdString
  BEQ.S LAB_A17352
  MOVEQ #0,D0
  MOVE.B  (A0)+,D0
  TST.B forceUpper
  BEQ.S LAB_A17350
  BSR.S UpperCaseChar
LAB_A17350:
  SUBQ.W  #1,D7
LAB_A17352:
  RTS
UpperCaseChar:
  CMPI.B  #$60,D0
  BLS.S LAB_A17364
  CMPI.B  #$7a,D0
  BHI.S LAB_A17364
  SUBI.B  #$20,D0
LAB_A17364:
  RTS
AskYN:
  MOVEM.L D1/A0,-(A7)
  MOVE.B  cursorEnabled,-(A7)
  ST  cursorEnabled
  BSR.W PrintText
  JSR PrintSpace
  MOVE.W  #$0082,D0
  BSR.W PrintChar
  JSR PrintInputChar
  MOVEQ #0,D0
  BSR.S readCmdChar
  MOVE.W  D0,D1
  MOVEQ #0,D0
  CMPI.W  #$0059,D1
  BNE.S LAB_A1739C
  MOVEQ #1,D0
LAB_A1739C:
  MOVE.B  (A7)+,cursorEnabled
  MOVEM.L (A7)+,D1/A0
  RTS
PrintSpace:
  MOVE.L  D0,-(A7)
  MOVEQ #$20,D0
  BSR.W PrintChar
  MOVE.L  (A7)+,D0
  RTS
PrintCR:
  MOVE.L  D0,-(A7)
  MOVEQ #$D,D0
  BSR.W PrintChar
  MOVE.L  (A7)+,D0
  RTS
PrintSpaces:
  MOVEM.L D0-D1,-(A7)
  MOVE.W  D0,D1
  TST.W D0
  BEQ.S LAB_A173D6
  SUBQ.W  #1,D1
  MOVEQ #$20,D0
LAB_A173CE:
  BSR.W PrintChar
  DBF D1,LAB_A173CE
LAB_A173D6:
  MOVEM.L (A7)+,D0-D1
  RTS
PrintCrIfNotBlankLine:
  TST.W cursorX
  BEQ.S LAB_A173E6
  BRA.S PrintCR
LAB_A173E6:
  RTS
StringSearchRelative:
  MOVEM.L D0-D7/A0-A6,-(A7)
  LEA stringWorkspace,A5
  LEA EscapePressed,A6
  MOVE.L  ChipMemEnd,D6
  CLR.L D1
  SF  forceUpper
  BSR.W SUB_A1375E
  ST  forceUpper
  CMPI.B  #1,D0
  BLS.W PrintWTF
  MOVE.W  D0,D1
  MOVEA.L lowestMem,A2
  MOVEA.L highestMem,A3
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.S LAB_A17446
  MOVEA.L D0,A1
  MOVEA.L A1,A2
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.S LAB_A17446
  MOVEA.L D0,A1
  MOVEA.L A1,A3
LAB_A17446:
  MOVEA.L A2,A1
  MOVEA.L A3,A2
  BSR.W PrintSearchInfo
  MOVEA.L A2,A3
  MOVEA.L A1,A2
  CMPA.L  A2,A3
  BCS.W PrintWTF
  MOVEA.L A5,A0
  MOVE.B  (A0),D0
  MOVEQ #0,D5
  MOVE.B  D0,D5
  MOVE.W  D1,D2
LAB_A17462:
  SUB.B D0,(A0)+
  DBF D2,LAB_A17462
  MOVE.L  A3,D3
  SUBQ.B  #1,D1
LAB_A1746C:
  MOVE.W  D1,D2
  MOVEA.L A2,A3
  ADDQ.W  #1,A2
  MOVEA.L A3,A0
  MOVEA.L A5,A4
  ADDQ.W  #1,A4
  BSR.W memSafeReadByte
  MOVE.W  D0,D4
  MOVE.W  D0,LAB_A480CA
LAB_A17484:
  ADDQ.W  #1,A0
  BSR.W memSafeReadByte
  SUB.B D4,D0
  CMP.B (A4)+,D0
  BNE.S LAB_A174B6
  SUBQ.W  #1,D2
  BNE.S LAB_A17484
  MOVE.L  A3,D0
  JSR PrintAddressHex
  LEA OffsetText(PC),A0
  BSR.W PrintText
  MOVEQ #0,D0
  MOVE.W  LAB_A480CA,D0
  SUB.B D5,D0
  NEG.B D0
  JSR Print2DigitHex
  BSR.W PrintCrIfNotBlankLine
LAB_A174B6:
  TST.B (A6)
  BNE.S LAB_A174CE
LAB_A174BA:
  CMP.L A2,D3
  BEQ.S LAB_A174CA
  CMPA.L  D6,A2
  BNE.S LAB_A1746C
  MOVEA.L #$00c00000,A2
  BRA.S LAB_A174BA
LAB_A174CA:
  BSR.W PrintCrIfNotBlankLine
LAB_A174CE:
  MOVEM.L (A7)+,D0-D7/A0-A6
  RTS

OffsetText:
  DC.B  "  offset: ",0,0

SUB_A174E0:
  MOVEM.L D0-D4/D6/A0-A6,-(A7)
  MOVE.W  D0,D6
  MOVE.L  ChipMemEnd,D1
  LEA EscapePressed,A5
  MOVE.B  LAB_A480CA,D4
  MOVE.L memSaveEnd,A6
  SUBQ.W  #1,D6
  LEA stringWorkspace,A0
LAB_A17506:
  TST.B (A5)
  BNE.W LAB_A175C0
LAB_A1750C:
  CMPA.L  A1,A2
  BEQ.W LAB_A175C0
  CMPA.L  D1,A1
  BNE.S LAB_A17538
  TST.L autoConfigMemEnd
  BEQ.S LAB_A17530
  MOVE.L  autoConfigMemEnd,D1
  CMPA.L  D1,A1
  BEQ.S LAB_A17530
  MOVEA.L autoConfigMemStart,A1
  BRA.S LAB_A1750C
LAB_A17530:
  MOVEA.L #$00c00000,A1
  BRA.S LAB_A1750C
LAB_A17538:
  MOVE.W  D6,D0
  MOVEA.L A1,A3
  MOVEA.L A0,A4
LAB_A1753E:
  MOVE.L  D0,D2
  MOVE.L  A0,D3
  MOVEA.L A3,A0
  CMPA.L  A6,A0
  BCC.S LAB_A1758A
  CMPA.L  #EXT_1000,A0
  BCS.S LAB_A17560
  MOVE.L  A0,-(A7)
  tst.b full64k
  bne.s .1
  ADD.L A0,A0
  ADDA.L  #ChipramSave1-(EXT_1000*2),A0
  bra.s .2
.1
  ADDA.L  #ChipramSave1-EXT_1000,A0
.2
LAB_A1755A:
  MOVE.B  (A0),D0
  MOVEA.L (A7)+,A0
  BRA.S LAB_A1758C
LAB_A17560:
  MOVE.L  A0,D0
  ANDI.W  #$fffc,D0
  CMPI.L  #$0000006c,D0
  BHI.S LAB_A1758A
  CMPI.L  #$00000068,D0
  BCS.S LAB_A1758A
  MOVE.L  A0,-(A7)
  MOVE.L  A0,D0
  SUBI.W  #$0068,D0
  LEA Int2Save,A0
  LEA 0(A0,D0.W),A0
  BRA.S LAB_A1755A
LAB_A1758A:
  MOVE.B  (A0),D0
LAB_A1758C:
  TST.B D4
  BEQ.S LAB_A175A0
  CMPI.B  #$60,D0
  BLS.S LAB_A175A0
  CMPI.B  #$7a,D0
  BHI.S LAB_A175A0
  SUBI.B  #$20,D0
LAB_A175A0:
  ADDQ.W  #1,A3
  CMP.B (A4)+,D0
  EXG D0,D2
  EXG D3,A0
  BNE.S LAB_A175BA
  DBF D0,LAB_A1753E
  MOVE.L  A1,D0
  JSR PrintAddressHex
  TST.B copyLockSearch
  BEQ.S .1

  MOVE.L A0,-(A7)
  LEA .clockText(PC),A0
  BSR.W PrintText
  MOVE.L (A7)+,A0
  BSR copyLockInfo
  BRA.S LAB_A175BA

.clockText
  DC.B "...Possible Copylock",10,0
  even

.1
  MOVEQ #2,D0
  BSR.W PrintSpaces
LAB_A175BA:
  ADDQ.W  #1,A1
  BRA.W LAB_A17506
LAB_A175C0:
  BSR.W PrintCrIfNotBlankLine
  MOVEM.L (A7)+,D0-D4/D6/A0-A6
  RTS
ReadParameter:
  MOVEM.L D1-D6/A1,-(A7)
  MOVEQ #0,D1
  BSR.W SUB_A17E88
  TST.B ParamFound
  BEQ.S LAB_A17644
  MOVE.L  D0,D1
LAB_A175DE:
  MOVE.W  D7,D6
  MOVEA.L A0,A1
  MOVEQ #0,D2
  BSR.W readCmdChar
  TST.B endOfCmdString
  BNE.S LAB_A17642
  MOVE.W  D0,D2
  BSR.W SUB_A17E88
  TST.B ParamFound
  BNE.S LAB_A1760C
  MOVE.L  D6,D7
  MOVEA.L A1,A0
  MOVE.W  #$ffff,ParamFound
  BRA.S LAB_A17642
LAB_A1760C:
  CMPI.W  #$002a,D2
  BNE.S LAB_A1761A
  BSR.W SUB_A1A758
  MOVE.L  D0,D1
  BRA.S LAB_A175DE
LAB_A1761A:
  CMPI.W  #$002b,D2
  BNE.S LAB_A17624
  ADD.L D0,D1
  BRA.S LAB_A175DE
LAB_A17624:
  CMPI.W  #$002d,D2
  BNE.S LAB_A1762E
  SUB.L D0,D1
  BRA.S LAB_A175DE
LAB_A1762E:
  CMPI.W  #$002f,D2
  BNE.S LAB_A1763E
  EXG D1,D0
  BSR.W SUB_A1A7DA
  MOVE.L  D0,D1
  BRA.S LAB_A175DE
LAB_A1763E:
  MOVE.W  D6,D7
  MOVEA.L A1,A0
LAB_A17642:
  MOVE.L  D1,D0
LAB_A17644:
  MOVEM.L (A7)+,D1-D6/A1
  RTS
Calculate:
  MOVEM.L D0-D5,-(A7)
  JSR ReadParameter(PC)
  MOVE.L  D0,D1
  MOVE.W  #$0025,D0 ; %
  BSR.W PrintChar
  MOVE.W  #$001f,D2
LAB_A17660:
  ROL.L #1,D1
  BCC.S LAB_A1766E
  MOVE.W  #$0031,D0
  BSR.W PrintChar
  BRA.S LAB_A17676
LAB_A1766E:
  MOVE.W  #$0030,D0
  BSR.W PrintChar
LAB_A17676:
  DBF D2,LAB_A17660
  LEA EqualsHexText(PC),A0
  BSR.W PrintText
  MOVE.L  D1,D0
  JSR Print8DigitHex
  LEA EqualsText(PC),A0
  BSR.W PrintText
  TST.L D1
  BPL.S LAB_A1769E
  NEG.L D1
  MOVE.W  #$002d,D0   ; -
  JSR PrintChar(PC)
LAB_A1769E:
  MOVE.W  #$0021,D0   ;!
  JSR PrintChar(PC)
  CLR.L D0
  JSR Print8DigitHex
  JSR Print2DigitHex
  JSR PrintSpace(PC)
  MOVE.W  #$0082,D0
  BSR.W PrintChar
  BSR.W PrintChar
  MOVEQ #0,D4
  MOVEQ #0,D5
LAB_A176C4:
  CLR.L D0
  MOVE.W  #$0020,D3
  MOVEQ #$A,D2
LAB_A176CC:
  ASL.L #1,D1
  ROXL.L  #1,D0
  CMP.L D2,D0
  BCS.S LAB_A176D8
  SUB.L D2,D0
  ADDQ.L  #1,D1
LAB_A176D8:
  SUBQ.W  #1,D3
  BNE.S LAB_A176CC
  MOVE.L  D1,D2
  MOVEQ #1,D1
  BSR.W PrintValue
  MOVE.W  #$0082,D0
  BSR.W PrintChar
  BSR.W PrintChar
  MOVE.L  D2,D1
  BNE.S LAB_A176C4
  JSR PrintCR(PC)
  MOVEM.L (A7)+,D0-D5
  RTS

EqualsHexText:
  DC.B  " = $",0

EqualsText:
  DC.B  " = ",0,0

CMD_SPR:
  MOVEM.L D0-D3/A0-A2,-(A7)
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.W PrintWTF
  MOVE.L  D0,D1
  MOVE.L  D0,D2
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.S LAB_A1772C
  MOVE.L  D0,D2
LAB_A1772C:
  MOVE.W  #0,LAB_A480AC
  BSR.W SUB_A166C8
  CMPI.L  #8,D1
  BCC.S LAB_A1774C
  LSL.W #2,D1
  LEA CopySpr0Pt,A0
  MOVE.L  0(A0,D1.W),D1
LAB_A1774C:
  CMPI.L  #8,D2
  BCC.S LAB_A17760
  LSL.W #2,D2
  LEA CopySpr0Pt,A0
  MOVE.L  0(A0,D2.W),D2
LAB_A17760:
  CMPI.L  #$000fffff,D1
  BHI.W PrintWTF
  CMPI.L  #$000fffff,D2
  BHI.W PrintWTF
  BCLR  #0,D1
  BCLR  #0,D2
  MOVEA.L D1,A1
  MOVEA.L D2,A2
  LEA 4(A1),A1
  LEA 4(A2),A2
  CMP.L D1,D2
  BEQ.S LAB_A17790
  BSR.S SUB_A1779A
  BRA.S LAB_A17794
LAB_A17790:
  BSR.W SUB_A178B0
LAB_A17794:
  MOVEM.L (A7)+,D0-D3/A0-A2
  RTS
SUB_A1779A:
  MOVEM.L D0-D4/A0-A3,-(A7)
  MOVE.W  #$00a7,D0
  BSR.W PrintChar
  MOVE.L  A1,D0
  JSR PrintAddressHex
  BSR.W PrintSpace
  MOVE.L  A2,D0
  JSR PrintAddressHex
  BSR.W PrintSpace
  MOVEA.L A1,A0
  BSR.W memSafeReadLong
  MOVE.L  D0,D2
  MOVEA.L A2,A0
  BSR.W memSafeReadLong
  MOVE.L  D0,D3
  MOVEQ #$F,D4
LAB_A177CC:
  ROXL.W  #1,D3
  ROXL.W  #1,D0
  SWAP  D3
  ROXL.W  #1,D3
  ROXL.W  #1,D0
  SWAP  D3
  ROXL.W  #1,D2
  ROXL.W  #1,D0
  SWAP  D2
  ROXL.W  #1,D2
  ROXL.W  #1,D0
  SWAP  D2
  MOVEQ #1,D1
  BSR.W PrintValue
  DBF D4,LAB_A177CC
  JSR PrintCRToPrinter
  MOVE.W  #$000f,cursorX
  JSR PrintCursor
  MOVEM.L (A7)+,D0-D4/A0-A3
  RTS
CMD_A7CHAR:
  MOVEM.L D0-D4/A0-A4,-(A7)
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.W PrintWTF
  CMPI.L  #$000fffff,D0
  BHI.W PrintWTF
  BCLR  #0,D0
  MOVEA.L D0,A1
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.W PrintWTF
  CMPI.L  #$000fffff,D0
  BHI.W PrintWTF
  BCLR  #0,D0
  MOVEA.L D0,A2
  MOVEQ #$F,D4
LAB_A17848:
  BSR.W readCmdCharSkipSpaces
  TST.B endOfCmdString
  BNE.W PrintWTF
  BSR.W AsciiCharToHexDigit
  CMPI.W  #$000f,D0
  BHI.W PrintWTF
  SWAP  D2
  ROXR.W  #1,D0
  ROXL.W  #1,D2
  SWAP  D2
  ROXR.W  #1,D0
  ROXL.W  #1,D2
  SWAP  D3
  ROXR.W  #1,D0
  ROXL.W  #1,D3
  SWAP  D3
  ROXR.W  #1,D0
  ROXL.W  #1,D3
  DBF D4,LAB_A17848
  MOVE.L  D2,D0
  MOVEA.L A1,A0
  BSR.W memSafeWriteLong
  MOVE.L  D3,D0
  MOVEA.L A2,A0
  BSR.W memSafeWriteLong
  LEA 4(A1),A1
  LEA 4(A2),A2
  CMPA.L  #$000ffffe,A1
  BHI.S LAB_A178AA
  CMPA.L  #$000ffffe,A2
  BHI.S LAB_A178AA
  BSR.W SUB_A1779A
LAB_A178AA:
  MOVEM.L (A7)+,D0-D4/A0-A4
  RTS
SUB_A178B0:
  MOVEM.L D0-D3/A0,-(A7)
  MOVE.W  #$0026,D0
  BSR.W PrintChar
  MOVE.L  A1,D0
  JSR PrintAddressHex
  BSR.W PrintSpace
  MOVEA.L A1,A0
  BSR.W memSafeReadLong
  MOVE.L  D0,D2
  MOVEQ #$F,D3
  MOVEQ #1,D1
LAB_A178D2:
  CLR.B D0
  ROXL.W  #1,D2
  ROXL.W  #1,D0
  SWAP  D2
  ROXL.W  #1,D2
  ROXL.W  #1,D0
  SWAP  D2
  BSR.W PrintValue
  DBF D3,LAB_A178D2
  JSR PrintCRToPrinter
  MOVE.W  #8,cursorX
  JSR PrintCursor
  MOVEM.L (A7)+,D0-D3/A0
  RTS
CMD_AMP:
  MOVEM.L D0-D3/A0-A2,-(A7)
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.W PrintWTF
  CMPI.L  #$000fffff,D0
  BHI.W PrintWTF
  BCLR  #0,D0
  MOVEA.L D0,A1
  MOVEQ #$F,D1
LAB_A17924:
  BSR.W readCmdCharSkipSpaces
  TST.B endOfCmdString
  BNE.W PrintWTF
  BSR.W AsciiCharToHexDigit
  CMPI.W  #3,D0
  BHI.W PrintWTF
  ROXR.W  #1,D0
  ROXL.W  #1,D2
  SWAP  D2
  ROXR.W  #1,D0
  ROXL.W  #1,D2
  SWAP  D2
  DBF D1,LAB_A17924
  MOVE.L  D2,D0
  SWAP  D0
  MOVEA.L A1,A0
  BSR.W memSafeWriteLong
  LEA 4(A1),A1
  CMPA.L  #$000ffffe,A1
  BHI.S LAB_A17968
  BSR.W SUB_A178B0
LAB_A17968:
  MOVEM.L (A7)+,D0-D3/A0-A2
  RTS
setDisplayBitWidth:
  MOVE.L  D0,-(A7)
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.S LAB_A17998
  TST.L D0
  BEQ.W PrintWTF
  CMPI.L  #8,D0
  BHI.W PrintWTF
  MOVE.W  D0,binaryBitWidth
  BRA.S LAB_A17998
  MOVE.L  (A7)+,D0
  RTS
LAB_A17998:
  LEA BitWidthText(PC),A0
  BSR.W PrintText
  MOVEQ #0,D0
  MOVE.W  binaryBitWidth,D0
  LSL.W #3,D0
  BSR.W ConvertToBCD
  JSR Print2DigitHex
  BSR.W PrintSpace
  LEA BitsText(PC),A0
  BSR.W PrintText
  MOVE.L  (A7)+,D0
  RTS
BitWidthText:
  DC.B  "Current bit width: !",0

BitsText:
  DC.B  "bits",$D,0,0

ShowBinaryMem:
  MOVEM.L D0/A1,-(A7)
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.W PrintWTF
  MOVEA.L D0,A1
  BSR.S ShowBinaryMem2
  MOVEM.L (A7)+,D0/A1
  RTS
ShowBinaryMem2:
  MOVEM.L D0-D2/A0,-(A7)
  MOVE.L  D0,D2
repeaty:
  MOVE.W  #$007c,D0
  BSR.W PrintChar
  MOVE.L  D2,D0
  JSR PrintAddressHex
  BSR.W PrintSpace
  MOVE.W  #$0025,D0
  BSR.W PrintChar
  MOVE.W  binaryBitWidth,D1
  SUBQ.W  #1,D1
  MOVEA.L D2,A0
  MOVE.W  D1,D2
LAB_A17A26:
  BSR.W memSafeReadByte
  ADDQ.W  #1,A0
  MOVEQ #8,D1
  BSR.W PrintBinaryDigits
  DBF D2,LAB_A17A26
  TST.W repeatCount
  BEQ.S .norep
  BSR.W PrintCR

  SUB.W #1,repeatCount
  MOVE.L A0,D2
  BRA.S repeaty
.norep:
  MOVE.W cpuAddrSize,D2
  ADD.W #3,D2
  MOVE.W  D2,cursorX
  JSR PrintCursor
  MOVEM.L (A7)+,D0-D2/A0
  RTS
CMD_BAR:
  MOVEM.L D0-D3/A0,-(A7)
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.W PrintWTF
  MOVEA.L D0,A1
  MOVEA.L D0,A1
  JSR readCmdCharSkipSpaces(PC)
  TST.B endOfCmdString
  BNE.W PrintWTF
  CMPI.W  #$0025,D0
  BNE.W PrintWTF
  MOVE.W  binaryBitWidth,D1
  SUBQ.W  #1,D1
LAB_A17A7C:
  MOVEQ #7,D2
  MOVEQ #0,D3
LAB_A17A80:
  LSL.W #1,D3
  JSR readCmdChar(PC)
  TST.B endOfCmdString
  BNE.W PrintWTF
  CMPI.B  #$30,D0
  BEQ.S LAB_A17AA2
  CMPI.B  #$31,D0
  BNE.W PrintWTF
  ORI.B #1,D3
LAB_A17AA2:
  DBF D2,LAB_A17A80
  MOVE.B  D3,D0
  EXG A0,A1
  JSR memSafeUpdateByte(PC)
  EXG A0,A1
  ADDQ.W  #1,A1
  DBF D1,LAB_A17A7C
  MOVE.L  A1,D0
  JSR ShowBinaryMem2(PC)
  MOVEM.L (A7)+,D0-D3/A0
  RTS
MemTrans:
  MOVEM.L D0-D3/A0-A4,-(A7)
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.W PrintWTF
  MOVEA.L D0,A2
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.W PrintWTF
  SUBQ.L  #1,D0
  MOVEA.L D0,A3
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.W PrintWTF
  MOVEA.L D0,A4
  MOVEA.L A2,A1
  MOVEA.L A3,A1
  MOVEA.L A4,A1
  CMPA.L  A2,A3
  BCS.W PrintWTF
  MOVEA.L A3,A1
  SUBA.L  A2,A1
  MOVE.L  A1,D1
  CMPA.L  A2,A4
  BCS.S LAB_A17B2E
  ADDA.L  A1,A4
LAB_A17B10:
  TST.B EscapePressed
  BNE.S LAB_A17B4A
  MOVEA.L A3,A0
  BSR.W memSafeReadByte
  MOVEA.L A4,A0
  BSR.W memSafeUpdateByte
  SUBQ.L  #1,A3
  SUBQ.L  #1,A4
  SUBQ.L  #1,D1
  BPL.S LAB_A17B10
  BRA.S LAB_A17B4A
LAB_A17B2E:
  TST.B EscapePressed
  BNE.S LAB_A17B4A
  MOVEA.L A2,A0
  BSR.W memSafeReadByte
  MOVEA.L A4,A0
  BSR.W memSafeUpdateByte
  ADDQ.W  #1,A2
  ADDQ.W  #1,A4
  SUBQ.L  #1,D1
  BPL.S LAB_A17B2E
LAB_A17B4A:
  MOVEM.L (A7)+,D0-D3/A0-A4
  RTS
ShowMemAsAscii:
  MOVEM.L D0-D1/A1,-(A7)
  MOVEA.L A0,A1
repeatn:
  MOVE.W  #$002e,D0
  BSR.W PrintChar
  MOVE.L  A1,D0
  JSR PrintAddressHex
  BSR.W PrintSpace
  MOVEQ #$3F,D1
LAB_A17B6A:
  MOVEQ #0,D0
  MOVE.L  A0,-(A7)
  MOVEA.L A1,A0
  ADDQ.W  #1,A1
  BSR.W memSafeReadByte
  MOVEA.L (A7)+,A0
  ADD.B AsciiDumpOffset1,D0
  ANDI.W  #$00ff,D0
  JSR InvalidAsciiToDot(PC)
  BSR.W PrintChar
  DBF D1,LAB_A17B6A

  TST.W repeatCount
  BEQ.S .norep
  BSR.W PrintCR

  SUB.W #1,repeatCount
  BRA.S repeatn
.norep:
  MOVE.W cpuAddrSize,D1
  ADD.W #2,D1
  MOVE.W D1,cursorX
  JSR PrintCursor
  MOVEM.L (A7)+,D0-D1/A1
  RTS
MemFill:
  MOVEM.L D0-D4/A0-A3,-(A7)
  LEA EscapePressed,A3
  SF  forceUpper
  BSR.W SUB_A1375E
  ST  forceUpper
  TST.W D0
  BEQ.W PrintWTF
  MOVE.W  D0,D3
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.W PrintWTF
  MOVE.L  D0,D2
  MOVEA.L D0,A1
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.W PrintWTF
  MOVE.L  D0,D1
  MOVEA.L D0,A1
  CMP.L D2,D1
  BCS.W PrintWTF
  SUB.L D2,D1
  MOVEA.L D2,A0
  LEA stringWorkspace,A2
  MOVEQ #0,D4
LAB_A17BF8:
  TST.B (A3)
  BNE.S LAB_A17C12
  MOVE.B  0(A2,D4.W),D0
  BSR.W memSafeUpdateByte
  ADDQ.W  #1,A0
  ADDQ.W  #1,D4
  CMP.W D3,D4
  BNE.S LAB_A17C0E
  MOVEQ #0,D4
LAB_A17C0E:
  SUBQ.L  #1,D1
  BNE.S LAB_A17BF8
LAB_A17C12:
  MOVEM.L (A7)+,D0-D4/A0-A3
  RTS
  if arhardware=1
HardBoot:
  CMPI.L  #BRON_TAG,bronFlag
  BNE.S LAB_407C98
  TST.B NoresPrefsFlag
  BEQ.S LAB_407C98
.1
  CLR.W FreezeMode

  MOVEA.L 2(A7),A3
  CLR.W (A7)
  CLR.L 2(A7)
  LEA EXT_40000,A7
  JMP (A3)
LAB_407C98:
  MOVEA.L 2(A7),A3
  CLR.W (A7)
  CLR.L 2(A7)

  LEA StackEnd,A7
  MOVE.L  D0,-(A7)
  MOVE.L  A3,D0
  CMPI.B  #$13,kickstartVersion
  BHI.W LAB_407CD0
  ORI.L #$00fc0000,D0
LAB_407CD0:
  ORI.L #$00f80000,D0
  MOVEA.L D0,A3
  MOVE.L  (A7)+,D0

  MOVEM.L D0-D7/A0-A6,-(A7)
  CMPI.L  #BRON_TAG,bronFlag
  BEQ.W LAB_407E64
  MOVE.W RegSnoop+dmacon,D1
  LEA arramstart,A0
  MOVE.W  #$3fff,D0
LAB_407CF6:
  CLR.L (A0)+
  DBF D0,LAB_407CF6
  MOVE.L  #BRON_TAG,bronFlag
  JSR FirstInit
  BSR.W GetDrivesConnected
  JSR FindMemoryRanges
  MOVEQ #$10,D1
  MOVE.W  LAB_A4822E,D0
  BTST  #3,D0
  BEQ.W LAB_407D24
  BSET  #3,D1
LAB_407D24:
  BTST  #2,D0
  BEQ.W LAB_407D34
  BSET  #2,D1
  BRA.W LAB_407D40
LAB_407D34:
  BTST  #1,D0
  BEQ.W LAB_407D40
  BSET  #1,D1
LAB_407D40:
  MOVE.W  D1,memoryControlPrefsValue
  BSR ARInit
  JSR setActivateMode
  MOVEA.L EXT_F80004,A7
  JMP (A7)
LAB_407E64:
  MOVE.B  ExtMemAddPrefsFlag,LAB_A483DA
  NOT.B LAB_A483DA
  CLR.W BlankerCount
  CLR.L LAB_A483A2
  CLR.L LAB_A483A6
  JSR SUB_41BD86
  BSR.W GetDrivesConnected
  MOVE.W  DrivesConnected,D0
  TST.B BurstNibblerFastStartPrefsFlag
  BEQ.W LAB_407EE0
  BTST  #6,ciaapra
  BNE.W LAB_407EE0
  JSR SUB_41BC8A
  MOVE.L  foundChipMemEnd,ChipMemEnd
  MOVE.L  foundSlowMemEnd,SlowMemEnd
  MOVE.W  #$ff00,potgo+hardware
  SF  LAB_A480CA
  CLR.L AronFlag
  JMP doBurst
LAB_407EE0:
  AND.W D0,DriveControlPrefsValue

  SF  DeepTrainerActive
  SF  LAB_A483CC
  SF  LAB_A483D8
  SF  exceptionsActive
  SF  MemwatchActive
  SF  TraceActive
  CLR.L TraceStepCount
  SF  breakpointsActive
  CLR.W P1AutoFirePrefsSetting
  CLR.W P2AutoFirePrefsSetting
  SF  MegaStickPrefsFlag
  SF  autofireP1ORP2
  SF  LAB_A48391
  SF  LAB_A4838E
  SF  LAB_A4838F
  MOVE.W  DriveControlPrefsValue,D0
  CMP.W DrivesConnected,D0
  SNE LAB_A48394
  MOVE.W  BootSelectPrefs,LAB_A4822A
  TST.W BootSelectPrefs
  SPL LAB_A481E5
  SPL LAB_A48336
  BTST  #2,VirusCheckerSettingsPrefs
  SNE LAB_A4838D
  SF  LAB_A4839A
  SF  virusFound
  JSR setActivateMode

  BSR.W SUB_408140
  MOVE.L  LAB_A483B6,D0
  CMP.L LAB_A48452,D0
  BNE.W LAB_407FE0
  MOVE.L  LAB_A4846A,D0
  CMP.L autoConfigMemStart,D0
  BNE.W LAB_407FE0
  MOVE.L  LAB_A4846E,D0
  CMP.L autoConfigMemEnd,D0
  BNE.W LAB_407FE0
  MOVE.W  LAB_A4823C,D0
  CMP.W LAB_A4822E,D0
  BNE.W LAB_407FE0
  MOVE.W  LAB_A4823E,D0
  CMP.W memoryControlPrefsValue,D0
  BEQ.W LAB_407FE6
LAB_407FE0:
  SF  sqInRamdisk
LAB_407FE6:
  MOVE.L  EXT_0.W,-(A7)
  CLR.L EXT_0.W
  BTST  #0,VirusCheckerSettingsPrefs
  BEQ.S LAB_408036
  JSR checkForVirus
  MOVE.B  D0,virusFound
  BNE.W LAB_408010
  BSR.W SUB_A188AE
  TST.W D0
  BEQ.S LAB_408036
LAB_408010:
  BTST  #1,VirusCheckerSettingsPrefs
  BEQ.W LAB_408022
  JSR SUB_A23DCA
LAB_408022:
  MOVE.L  #$0002ffff,D0
LAB_408028:
  MOVE.W  vhposr+hardware,color00+hardware
  SUBQ.L  #1,D0
  BNE.S LAB_408028
LAB_408036:
  MOVE.L  (A7)+,EXT_0.W
  BTST  #4,memoryControlPrefsValueLo
  BEQ.W LAB_4080C6

  MOVE.B  #0,ciaatodlo
  MOVE.B  #0,ciaatodmid

  JSR BootScreenShow
  LEA EXT_C00000,A0
  MOVE.L  SlowMemEnd,D0
  BEQ.W LAB_40806C
LAB_408066:
  CLR.L (A0)+
  CMP.L A0,D0
  BNE.S LAB_408066
LAB_40806C:
  LEA EXT_B000,A0
  MOVE.L  ChipMemEnd,D0
  SUB.L D0,D5
LAB_40807A:
  CLR.L (A0)+
  CMP.L A0,D0
  BNE.S LAB_40807A
  TST.B ExtMemAddPrefsFlag
  BEQ.W LAB_4080A8
  MOVEA.L autoConfigMemStart,A0
  MOVE.L  autoConfigMemEnd,D0
  SUB.L A0,D0
  BEQ.W LAB_4080A8
  LSR.L #2,D0
  SUBQ.L  #1,D0
LAB_4080A2:
  CLR.L (A0)+
  SUBQ.L  #1,D0
  BPL.S LAB_4080A2
LAB_4080A8:

  MOVE.B  ciaatodmid,D5
  LSL.W #8,D5
  MOVE.B  ciaatodlo,D5
  CMP.W #175,D5
  BLE.S LAB_4080A8

  JSR disableAllDma
  SUBA.L  A0,A0
  MOVE.W  #$2c00,D0
LAB_4080B8:
  CLR.L (A0)+
  DBF D0,LAB_4080B8
  MOVEM.L (A7),D0-D7/A0-A6
  MOVE.L  A1,BUS_ERROR.W
LAB_4080C6:
  CMP.B #$13,kickstartVersion
  BNE.S LAB_408104
  MOVE.W  LAB_A4822E,D0
  MOVE.W  memoryControlPrefsValue,D1
  ANDI.W  #8,D0
  ANDI.W  #8,D1
  CMP.W D0,D1
  BNE.W LAB_40812C
  MOVE.W  LAB_A4822E,D0
  MOVE.W  memoryControlPrefsValue,D1
  ANDI.W  #7,D0
  ANDI.W  #7,D1
  CMPI.W  #7,D0
  BNE.W LAB_408120
  CMPI.W  #4,D0
  BNE.W LAB_40812C
LAB_408104:
  MOVEM.L (A7)+,D0-D7/A0-A6
  CLR.L AronFlag
  LEA EXT_40000,A7
  BSR dovpos0
  JMP (A3)

LAB_408120:
  CMPI.W  #3,D0
  BNE.S LAB_408104
  CMPI.W  #2,D0
  BEQ.S LAB_408104
LAB_40812C:
  MOVEM.L (A7)+,D0-D7/A0-A6
  CLR.L AronFlag
  LEA EXT_40000,A7
  BRA.W LAB_40B89E

SUB_408140:
  CLR.L autoConfigMemStart
  CLR.L autoConfigMemEnd
  TST.B ExtMemAddPrefsFlag
  BEQ.W LAB_40816E
  MOVE.L  LAB_A483AA,autoConfigMemStart
  MOVE.L  LAB_A483AE,autoConfigMemEnd
  BRA.W LAB_40818C
LAB_40816E:
  TST.B AutoConfigPrefsFlag
  BNE.W LAB_40818C
  MOVE.L  foundAutoConfigMemStart,autoConfigMemStart
  MOVE.L  foundAutoConfigMemEnd,autoConfigMemEnd
LAB_40818C:
  MOVE.L  #$00080000,ChipMemEnd
  BTST  #3,memoryControlPrefsValueLo
  BEQ.W LAB_4081AC
  MOVE.L  foundChipMemEnd,ChipMemEnd
LAB_4081AC:
  MOVE.L  foundSlowMemEnd,SlowMemEnd
  BTST  #2,memoryControlPrefsValueLo
  BNE.W LAB_4081DE
  MOVE.L  #$00c80000,SlowMemEnd
  BTST  #1,memoryControlPrefsValueLo
  BNE.W LAB_4081DE
  CLR.L SlowMemEnd
LAB_4081DE:
  RTS
  endc

dovpos0
  TST.B DisableVposWrite
  BNE.S .1
  MOVE.L  #0,vposw+hardware
.1
  RTS

ARInit:
  MOVE.B  #$13,kickstartVersion
  CMPI.B  #$f8,EXT_F80005
  BEQ.S .k2
  CMPI.B  #$f8,EXT_FC0005
  BNE.W .k3
.k2
  MOVE.B  #$20,kickstartVersion
.k3
  
  JSR SUB_41BB88
  JSR SUB_A17DF4
  MOVE.B  ExtMemAddPrefsFlag,LAB_A483DA
  NOT.B LAB_A483DA
  MOVE.W  DrivesConnected,DriveControlPrefsValue
  MOVE.W  #$ffff,BootSelectPrefs
  MOVE.W  #8,cpuAddrSize
  MOVE.W  #6,cpuAddrSize+$ff000000
  SF  LAB_A483CC
  SF  LAB_A483D8
  SF  exceptionsActive
  SF  MemwatchActive
  SF  TraceActive
  CLR.L TraceStepCount
  SF  TestPrefsFlag
  SF  LAB_A481E5
  CLR.B currDriveNo
  SF  LAB_A48397
  ST  BurstNibblerFastStartPrefsFlag
  ST  DisableVposWrite

  MOVE.W  #$0018,PageHeight
  TST.B fullPal
  BEQ LAB_A17D26
  MOVE.W  #30,PageHeight
LAB_A17D26:
  MOVE.W  #$0aaa,ArBgCol
  MOVE.W  #0,ArFgCol
  CLR.W BlankerCount
  MOVE.L  #$5052494e,PrinFlag
  SF  LAB_A483CC
  SF  BootblockCoderPrefsFlag
  if arsoft=0
  ST  keymap
  ST  insertmode
  endc
  SF  sqInRamdisk
  CLR.W P1AutoFirePrefsSetting
  CLR.W P2AutoFirePrefsSetting
  SF  MegaStickPrefsFlag
  SF  autofireP1ORP2
  SF  LAB_A48391
  SF  LAB_A4838E
  SF  LAB_A4838F
  MOVE.B  #3,VirusCheckerSettingsPrefs
  SF  NoresPrefsFlag
  SF  MegaStickPrefsFlag
  ST  BlankerPrefsFlag
  SF  SaveDiskResidentPrefsFlag
  SF  SetmapDPrefsFlag
  SF  LAB_A483D6
  SF  DeepTrainerActive
  LEA LAB_A483E0,A0
  MOVEQ #$35,D0
LAB_A17DC8:
  CLR.B (A0)+
  DBF D0,LAB_A17DC8
  RTS

ArEntry1:
  CLR.L AronFlag
  CLR.W arramstart+16384
  JSR FirstInit

  MOVE.L EXT_200.W,Save200
  MOVEM.L D0-D7/A0-A6,SaveEntryRegs
  MOVE.L  D0,-(A7)
  MOVE.L  EXT_F80004,D0
  ANDI.L  #$ffff0000,D0
  MOVEA.L D0,A3
  MOVE.L  A3,D0
  ORI.L #$00f80000,D0
  MOVEA.L D0,A3
  MOVE.L  (A7)+,D0
  MOVE.L  #BRON_TAG,bronFlag
  BSR.W GetDrivesConnected
  MOVE.L RegSnoopAddr,A0
  MOVE.W  #$0020,color00(A0)
  CLR.L memWatchSlotsUsed1
  CLR.W memWatchSlotsUsed2
  CLR.B deepMemWatch
  JSR FindMemoryRanges
  MOVEQ #$10,D1
  MOVE.W  LAB_A4822E,D0
  BTST  #3,D0
  BEQ.S LAB_A17C80
  BSET  #3,D1
LAB_A17C80:
  BTST  #2,D0
  BEQ.S LAB_A17C8C
  BSET  #2,D1
  BRA.S LAB_A17C96
LAB_A17C8C:
  BTST  #1,D0
  BEQ.S LAB_A17C96
  BSET  #1,D1
LAB_A17C96:
  MOVE.W  D1,memoryControlPrefsValue
  BSR ARInit
  JSR setActivateMode
  TST.L checksum
  BNE.S LAB_A17DDE
  BSR.W calcArChecksum
LAB_A17DDE:
  MOVEM.L SaveEntryRegs,D0-D7/A0-A6
  MOVE.L Save200,EXT_200.W
  JMP AREntry2

FirstInit:
  CLR.W arramstart
  CLR.W arramstart+16384
  MOVE.W #$1234,arramstart
  MOVE.L #EXT_4E80,memSaveEnd
  MOVE.L #TextPage1,TextPage1Addr
  MOVE.L #TextPage2,TextPage2Addr
  TST.W arramstart+16384
  BNE.S .1
  ST.B full64k
  JSR CheckPalMode
  TST.B fullPal
  BEQ.S .2
  ADD.L #$1180,memSaveEnd
  MOVE.L #ChipRamSave2-($a00*2),TextPage1Addr
  MOVE.L #ChipRamSave2-($a00),TextPage2Addr
  MOVE.L #TextPage1,AgaPaletteSave
  MOVE.L #TextPage1+1024,AgaPaletteCopy
  BRA.S .1
.2:
  MOVE.L #ChipRamSave2-2048,AgaPaletteSave
  MOVE.L #ChipRamSave2-1024,AgaPaletteCopy
.1:
  CLR.W arramstart

  MOVE.L #RegSnoop,RegSnoopAddr

  if arhardware=1
  JSR CheckARRam
  CMP.L #1024,D0
  BLT.S .3
  MOVE.L #arramstart+$10000,newRamdiskAddr

  ;relies on CheckPalMode having saved D1 to tempD1
  ;kickstart sets DMACON to $7FFF very early on
  CMP.W #$7fff,tempD1+2
  BEQ.S .old

  LEA arramstart+$BF000,A0
  MOVE.L A0,RegSnoopAddr
  MOVE.W #$100-1,D0
.clr
  CLR.W (A0)+
  DBF D0,.clr

.old
  LEA EXT_7000.W,A0
  BSET #4,DrivesConnectedLo
  MOVE.B #4,currDriveNo
  ST.B FastFileSystemFlag2
  JSR formatInitialise
  MOVE.B #0,currDriveNo
.3
  endc
  RTS

SUB_A17DF4:
  CLR.L autoConfigMemStart
  CLR.L autoConfigMemEnd
  TST.B ExtMemAddPrefsFlag
  BEQ.S LAB_A17E1E
  MOVE.L  LAB_A483AA,autoConfigMemStart
  MOVE.L  LAB_A483AE,autoConfigMemEnd
  BRA.S LAB_A17E3A
LAB_A17E1E:
  TST.B AutoConfigPrefsFlag
  BNE.S LAB_A17E3A
  MOVE.L  foundAutoConfigMemStart,autoConfigMemStart
  MOVE.L  foundAutoConfigMemEnd,autoConfigMemEnd
LAB_A17E3A:
  MOVE.L  #$00080000,ChipMemEnd
  BTST  #3,memoryControlPrefsValueLo
  BEQ.S LAB_A17E58
  MOVE.L  foundChipMemEnd,ChipMemEnd
LAB_A17E58:
  MOVE.L  foundSlowMemEnd,SlowMemEnd
  BTST  #2,memoryControlPrefsValueLo
  BNE.S LAB_A17E86
  MOVE.L  #$00c80000,SlowMemEnd
  BTST  #1,memoryControlPrefsValueLo
  BNE.S LAB_A17E86
  CLR.L SlowMemEnd
LAB_A17E86:
  RTS
SUB_A17E88:
  MOVEM.L D1-D5/A1,-(A7)
  MOVE.B  forceUpper,-(A7)
  ST  forceUpper
  MOVE.W  #$ffff,ParamFound
  CLR.L D0
  CLR.L D1
  CLR.L D2
  CLR.L D3
  SF  D5
  SF  LAB_A481DE
  SF  LAB_A481DF
LAB_A17EB6:
  BSR.W readCmdCharSkipSpaces
  TST.B endOfCmdString
  BNE.W LAB_A17F60
  CMPI.B  #$21,D0
  BEQ.W LAB_A17FA6
  CMPI.B  #$53,D0
  BEQ.W LAB_A18164
  CMPI.B  #$54,D0
  BEQ.W LAB_A180B2
  CMPI.B  #$25,D0
  BEQ.W LAB_A17F98
  CMPI.B  #$24,D0
  BEQ.W LAB_A17FB4
  CMPI.B  #$5c,D0
  BEQ.W LAB_A17FC2
  CMPI.B  #$2d,D0
  BNE.S LAB_A17EFE
  NOT.B D5
  BRA.S LAB_A17EB6
LAB_A17EFE:
  MOVE.W  D0,D1
  JSR AsciiCharToHexDigit(PC)
  CMPI.B  #$0f,D0
  BHI.S LAB_A17F60
  MOVE.W  D1,D0
  ST  LAB_A481DE
  MOVE.W  #$000f,D1
  MOVE.W  #$0010,D3
LAB_A17F1A:
  JSR AsciiCharToHexDigit(PC)
  CMP.W D0,D1
  BCS.S LAB_A17F5A
  TST.B LAB_A481DE
  BEQ.S LAB_A17F30
  ST  LAB_A481DF
LAB_A17F30:
  CMPI.W  #2,D3
  BEQ.S LAB_A17F8A
  CMPI.W  #$000a,D3
  BEQ.S LAB_A17F8E
  LSL.L #4,D2
LAB_A17F3E:
  EXT.W D0
  ADD.L D0,D2
  BSR.W readCmdChar
  TST.B endOfCmdString
  BNE.S LAB_A17F68
  ST  LAB_A481DE
  CMPI.B  #$20,D0
  BNE.S LAB_A17F1A
LAB_A17F5A:
  BSR.W SUB_A1827E
  BRA.S LAB_A17F68
LAB_A17F60:
  CLR.W ParamFound
  CLR.L D2
LAB_A17F68:
  TST.B LAB_A481DF
  BNE.S LAB_A17F76
  CLR.W ParamFound
LAB_A17F76:
  MOVE.L  D2,D0
  TST.B D5
  BEQ.S LAB_A17F7E
  NEG.L D0
LAB_A17F7E:
  MOVE.B  (A7)+,forceUpper
  MOVEM.L (A7)+,D1-D5/A1
  RTS
LAB_A17F8A:
  LSL.L #1,D2
  BRA.S LAB_A17F3E
LAB_A17F8E:
  MOVE.L  D2,D4
  LSL.L #3,D2
  LSL.L #1,D4
  ADD.L D4,D2
  BRA.S LAB_A17F3E
LAB_A17F98:
  MOVE.W  #1,D1
  MOVE.W  #2,D3
  MOVEQ #$30,D0
  BRA.W LAB_A17F1A
LAB_A17FA6:
  MOVE.W  #9,D1
  MOVE.W  #$000a,D3
  MOVEQ #$30,D0
  BRA.W LAB_A17F1A
LAB_A17FB4:
  MOVE.W  #$000f,D1
  MOVE.W  #$0010,D3
  MOVEQ #$30,D0
  BRA.W LAB_A17F1A
LAB_A17FC2:
  JSR readCmdCharSkipSpaces(PC)
  TST.B endOfCmdString
  BNE.S LAB_A17F60
  CMPI.B  #$41,D0
  BNE.S LAB_A18022
  LEA SaveCpuRegs2,A1
LAB_A17FDA:
  JSR readCmdCharSkipSpaces(PC)
  TST.B endOfCmdString
  BNE.W LAB_A17F60
  CMPI.B  #$30,D0
  BCS.W LAB_A17F60
  CMPI.B  #$37,D0
  BHI.W LAB_A17F60
  SUBI.B  #$30,D0
  MOVEQ #0,D2
  CMPI.B  #7,D0
  BNE.S LAB_A1800E
  CMPA.L  #SaveCpuRegs2,A1
  BNE.S LAB_A1800E
  MOVEQ #6,D2
LAB_A1800E:
  EXT.W D0
  LSL.W #2,D0
  ADD.L 0(A1,D0.W),D2
  MOVE.W  #$ffff,ParamFound
  BRA.W LAB_A17F76
LAB_A18022:
  CMPI.B  #$44,D0
  BNE.S LAB_A18030
  LEA SaveCpuRegs,A1
  BRA.S LAB_A17FDA
LAB_A18030:
  CMPI.B  #$53,D0
  BNE.S LAB_A1805C
  JSR readCmdCharSkipSpaces(PC)
  TST.B endOfCmdString
  BNE.W LAB_A17F60
  CMPI.B  #$50,D0
  BNE.W LAB_A17F60
  MOVE.L  USP,A1
  MOVE.L  A1,D2
  MOVE.W  #$ffff,ParamFound
  BRA.W LAB_A17F76
LAB_A1805C:
  CMPI.B  #$42,D0
  BNE.S LAB_A18082
  TST.B TBufferAllocated
  BNE.S LAB_A18070
  JSR AllocTBuff
LAB_A18070:
  MOVE.L  DiskMonBuffer,D2
  MOVE.W  #$ffff,ParamFound
  BRA.W LAB_A17F76
LAB_A18082:
  CMPI.B  #$50,D0
  BNE.W LAB_A17F60
  JSR readCmdCharSkipSpaces(PC)
  TST.B endOfCmdString
  BNE.W LAB_A17F60
  CMPI.B  #$43,D0
  BNE.W LAB_A17F60
  MOVE.L  SaveOldPc,D2
  MOVE.W  #$ffff,ParamFound
  BRA.W LAB_A17F76
LAB_A180B2:
  TST.B TBufferAllocated
  BEQ.W LAB_A17F60
  BSR.W SUB_A17E88
  TST.B ParamFound
  BEQ.W LAB_A17F60
  MOVEQ #0,D2
  MOVEQ #0,D3
  MOVE.L  D0,D1
  MOVEQ #0,D0
  MOVE.B  (A0),D0
  JSR UpperCaseChar(PC)
  CMPI.B  #$53,D0
  BNE.S LAB_A18114
  BSR.W readCmdChar
  BSR.W SUB_A17E88
  TST.B ParamFound
  BEQ.W LAB_A17F60
  MOVE.L  D0,D2
  MOVEQ #0,D0
  MOVE.B  (A0),D0
  JSR UpperCaseChar(PC)
  CMPI.B  #$4f,D0
  BNE.S LAB_A18114
  BSR.W readCmdChar
  BSR.W SUB_A17E88
  TST.B ParamFound
  BEQ.W LAB_A17F60
  MOVE.L  D0,D3
LAB_A18114:
  CMP.B LAB_A4838A,D1
  BCS.W LAB_A17F60
  CMP.B LAB_A4838B,D1
  BHI.W LAB_A17F60
  SUB.B LAB_A4838A,D1
  CMPI.L  #$0000000a,D2
  BHI.W LAB_A17F60
  ANDI.W  #$00ff,D1
  MULU  #$000b,D1
  ADD.W D2,D1
  LSL.L #8,D1
  LSL.L #1,D1
  ADD.L D3,D1
  ADD.L DiskMonBuffer,D1
  MOVE.L  D1,D0
  MOVE.W  #$ffff,ParamFound
  MOVE.B  (A7)+,forceUpper
  MOVEM.L (A7)+,D1-D5/A1
  RTS
LAB_A18164:
  TST.B TBufferAllocated
  BEQ.W LAB_A17F60
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.W LAB_A17F60
  DIVU  #$000b,D0
  MOVEQ #0,D1
  MOVEQ #0,D2
  MOVE.W  D0,D1
  SWAP  D0
  MOVE.W  D0,D2
  MOVEQ #0,D3
  MOVEQ #0,D0
  MOVE.B  (A0),D0
  JSR UpperCaseChar(PC)
  CMPI.B  #$4f,D0
  BNE.W LAB_A18114
  BSR.W readCmdChar
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.W LAB_A17F60
  MOVE.L  D0,D3
  BRA.W LAB_A18114

CMD_RCOLOR:
  LEA ColorsRestoredText(PC),A0
  JSR PrintText(PC)
  MOVE.W  #$005a,ArBgCol
  MOVE.W  #$0fff,ArFgCol
  JSR PrintReady
  RTS

CMD_DEBUG:
  MOVEM.L SaveCpuRegs,D0-D7/A0-A7 
  MOVE.L #$00FC2338,$80
  TRAP #0
  RTS

CMD_FLASH:
  JSR readCmdChar
  CMPI.B  #"F",D0
  BEQ.S .1
  
  TST.L newRamdiskAddr
  BNE.S .1

  LEA notSupportedText(PC),A0
  JMP PrintText 

.1
  JSR GetFilename
  MOVE.W  D0,D1
  MOVEQ #-14,D0
  TST.W D1
  BEQ.W .loaderr2

  LEA EXT_20000,A1
  MOVEA.L A1,A2
  LEA EXT_7000.W,A0
  JSR backupMfmBuffer
  LEA stringWorkspace,A1
  MOVE.W  D1,D0
  MOVE.B  currDriveNo,-(A7)
  JSR OpenFile
  BMI .loaderr
  MOVE.L  A0,-(A7)
  LEA LoadingFromText,A0
  JSR PrintText
  MOVE.L  A2,D0
  JSR PrintAddressHex
  ADD.L fileSize,D0
  LEA LoadingToText,A0
  JSR PrintText
  JSR PrintAddressHex
  JSR PrintCrIfNotBlankLine
  MOVEA.L (A7)+,A0
  MOVE.L  fileSize,D0
  JSR readFileData

  MOVE.B  (A7)+,currDriveNo
  JSR restoreMfmBuffer

  LEA EXT_20000+4,A0
  CMP.L #"ACTI",(A0)
  BEQ.S .romok

  LEA invalidrom(PC),A0
  JSR PrintText(PC)
  JMP PrintReady
.romok

  LEA EXT_20000+$7c,A0
  MOVEQ #0,D1
  MOVEQ #0,D2
.crc:
  ADD.L (A0)+,D1
  CMP.L #EXT_20000+$40000-4,A0
  BNE.S .crc
  CMP.L EXT_20000+$40000-4,D1
  BEQ.S .romok2

  LEA invalidcrc(PC),A0
  JSR PrintText(PC)

.romok2
  LEA flashwarn(PC),A0
  JSR AskYN
  TST.W D0
  BNE.S .goflash

  JMP PrintReady

.goflash
  MOVE.L D1,EXT_20000+$40000-4
  LEA flashcode(PC),A0
  LEA mt_sin,A1
.copy
  MOVE.W (A0)+,(A1)+
  CMP.L #flashend,A0
  BNE.S .copy

  JSR mt_sin
  ;JSR flashcode
  RTS

.loaderr:
  MOVE.B  (A7)+,currDriveNo
  JSR PrintDiskOpResult
  JSR restoreMfmBuffer
  RTS

.loaderr2
  JMP PrintDiskOpResult

flashcode
  LEA SECSTRT_0+4,A0
  CMP.L #"ACTI",(A0)
  BNE.W badflash

  LEA hardware,A6
  MOVE.W intenar(a6),D7
  SWAP D7
  MOVE.W dmaconr(a6),D7
  OR.L #$80008000,D7
  MOVE.L D7,tempD0

  MOVE.W #$7fff,intena(a6)
  MOVE.W #$7fff,dmacon(a6)

  ;enter product identification mode (chip1)
  MOVE.B #$AA,SECSTRT_0+($5555*2)
  MOVE.B #$55,SECSTRT_0+($2AAA*2)
  MOVE.B #$90,SECSTRT_0+($5555*2)
  BSR FlDelay

  ;read id
  MOVEQ #0,D0
  MOVE.B SECSTRT_0+$400,D0
  LSL.W #8,D0
  MOVE.B SECSTRT_0+$400+2,D0

  ;exit product identification mode (chip1)
  MOVE.B #$AA,SECSTRT_0+($5555*2)
  MOVE.B #$55,SECSTRT_0+($2AAA*2)
  MOVE.B #$F0,SECSTRT_0+($5555*2)
  BSR FlDelay

  LEA SECSTRT_0+4,A0
  CMP.L #"ACTI",(A0)
  BNE.W badflash

  ;check product id
  CMP.W #$1FD5,D0
  BNE noflash

  ;enter product identification mode (chip2)
  MOVE.B #$AA,SECSTRT_0+1+($5555*2)
  MOVE.B #$55,SECSTRT_0+1+($2AAA*2)
  MOVE.B #$90,SECSTRT_0+1+($5555*2)
  BSR FlDelay

  ;read id
  MOVEQ #0,D0
  MOVE.B SECSTRT_0+$400+1,D0
  LSL.W #8,D0
  MOVE.B SECSTRT_0+$400+2+1,D0

  ;exit product identification mode (chip2)
  MOVE.B #$AA,SECSTRT_0+1+($5555*2)
  MOVE.B #$55,SECSTRT_0+1+($2AAA*2)
  MOVE.B #$F0,SECSTRT_0+1+($5555*2)
  BSR FlDelay

  LEA SECSTRT_0+4,A0
  CMP.L #"ACTI",(A0)
  BNE.W badflash

  LEA hardware,A6
  MOVE.L tempD0,D1
  MOVE.W D1,dmacon(A6)
  SWAP D1
  MOVE.W D1,intena(A6)

  ;check product id
  CMP.W #$1FD5,D0
  BNE noflash

  JSR Cls
  SF  cursorEnabled

  MOVE.W  #35,cursorX
  MOVE.W  #10,cursorY
  LEA flashingtext,A0
  JSR PrintText

  MOVE.W  #34,cursorX
  MOVE.W  #14,cursorY
  LEA verifyingtext,A0
  JSR PrintText

  LEA hardware,A6
  MOVE.W intenar(a6),D1
  SWAP D1
  MOVE.W dmaconr(a6),D1
  OR.L #$80008000,D1
  MOVE.L D1,tempD0

  MOVE.W #$7fff,intena(a6)
  MOVE.W #$7fff,dmacon(a6)

  lea $60000,a0
  move.w  #bpl1pth,(A0)+
  move.w  #0,(A0)+
  move.w  #bpl1ptl,(A0)+
  move.w  #EXT_1000,(A0)+
  move.w  #$ffff,(A0)+
  move.w  #$fffe,(A0)+

  move.l  #$60000,cop1lch(a6)
  clr.w copjmp1(a6)
  move.w #$8380,dmacon(a6)

  MOVE.W #1,D3  ;two passes (one for each chip)

.write3
  LEA SECSTRT_0,A0
  LEA EXT_20000,A2
  LEA (A0,D3),A0
  LEA (A2,D3),A2
  MOVE.W #1024-1,D2   ;1024 sectors (of 128 bytes)
.write2

  ;enable software protect
  LEA SECSTRT_0,A3
  LEA (A3,D3),A3  ;pick correct chip (offset 0 or 1)
  MOVE.L A3,A4
  ADD.L #$5555*2,A3
  ADD.L #$2AAA*2,A4
  MOVE.B #$AA,(A3)
  MOVE.B #$55,(A4)
  MOVE.B #$A0,(A3)

  ;write sector
  MOVE.W #128-1,D1
.write

  CMP.L #SECSTRT_0+4,A0
  BLT.S .s1
  MOVE.B (A2),D0
  MOVE.B D0,(A0)
  BRA.S .s2
.s1
  ;kludge to ensure 128 bytes written
  ;in first sector where the first 4 bytes are registers
  MOVE.B 4(A2),D0
  MOVE.B D0,4(A0)
.s2
  LEA 2(A2),A2
  LEA 2(A0),A0
  DBF D1,.write

  ;wait for sector flash to complete
.wait
  MOVE.B -2(A0),D0
  MOVE.B -2(A0),D1
  CMP.B D1,D0
  BNE.S .wait

  LEA EXT_1000+97*80-8,A3
  BSR DoProgress

  DBF D2,.write2
  DBF D3,.write3

  CLR.L bronFlag
  ;verify results
  MOVEQ #-1,D7
  MOVE.L #$20000-1,D4
  LEA SECSTRT_0+4,A0
  LEA EXT_20000+4,A1
.2
  MOVE.L D4,D2
  AND.L #$3F,D2
  BNE.S .1

  CLR.W D3
  MOVE.L D4,D2
  LSR.L #6,D2
  LEA EXT_1000+129*80-8,A3
  BSR DoProgress
.1
  CMP.W (A0)+,(A1)+
  BEQ.S .ok
  MOVEQ #0,D7
.ok
  SUB.L #1,D4

  CMP.L #arramstart,A0
  BNE.S .2

  TST.L D7
  BEQ.W badflash

goodflash
  MOVE.W #$7fff,intena+hardware
  MOVE.W #$0f0,color00+hardware
  BRA.S goodflash

DoProgress
  MOVE.W D3,D0
  LSL.W #6,D0
  LSL.W #4,D0
  ADD.W D2,D0
  LSR.W #2,D0
  MOVEQ #0,D1
  MOVE.W D0,D1
  LSR.W #3,D1
  SUB.L D1,A3
  AND.W #7,D0
  BSET D0,(A3)
  BSET D0,80(A3)
  BSET D0,160(A3)
  BSET D0,240(A3)
  BSET D0,320(A3)
  BSET D0,400(A3)
  BSET D0,480(A3)
  BSET D0,560(A3)
  RTS


FlDelay:
  MOVE.B  #0,ciaatodlo
.1:
  CMP.B #2,ciaatodlo
  BNE.S .1
  RTS

noflash
  LEA hardware,A6
  MOVE.L tempD0,D1
  MOVE.W D1,dmacon(A6)
  SWAP D1
  MOVE.W D1,intena(A6)

  LEA noflashText,A0
  JSR PrintText
  RTS

badflash
  MOVE.W #$7fff,intena+hardware
  MOVE.W #$f00,color00+hardware
  BRA.S badflash
flashend

notSupportedText
  DC.B "Flashing is not supported on this hardware",$D,0

flashingtext
  DC.B  "FLASHING..",0

verifyingtext
  DC.B  "VERIFYING...",0

invalidrom:
  DC.B  "This is not an action replay rom.",$D,0

invalidcrc:
  DC.B  "Warning: The ROM CRC is incorrect. It will be corrected during flashing.",$D,$D,0

flashwarn:
  DC.B "Flashing is about to begin, the process will take 20-30 seconds.",$D
  DC.B "DO NOT POWER OFF DURING THIS TIME! On completion the screen will turn",$D
  DC.B "green for success or red for failure, after this you must reset.",$D,$D
  DC.B "Do you wish to continue (Y/N)?",$D,0

noflashText
  DC.B "Unable to find flash chip.",$D,0

  even

CMD_COLOR:
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.S LAB_A181FA
  MOVE.W  D0,D1
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.S LAB_A181FA
  MOVE.W  D1,ArBgCol
  MOVE.W  D0,ArFgCol
LAB_A181FA:
  MOVEQ #3,D1
  LEA ColorsText(PC),A0
  BSR.W PrintText
  MOVE.W  ArBgCol,D0
  BSR.W PrintValue
  LEA PenText(PC),A0
  BSR.W PrintText
  MOVE.W  ArFgCol,D0
  BSR.W PrintValue
  BRA.W PrintReady
ColorsRestoredText:
  DC.B  "Cartrige colors are restored - back: $aaa  pen: $000",$D,0

ColorsText:
  DC.B  "Cartrige colors - back: $",0

PenText:
  DC.B  "  pen: $",0,0

SUB_A1827E:
  SUBQ.L  #1,A0
  ADDQ.W  #1,D7
  RTS
CMD_TS:
  BSR.S ActivateTrainer
  BRA.W PrintReady
CMD_TX:
  BSR.W DeactivateTrainer
  BRA.W PrintReady
CMD_T:
  BSR.W TrainerUpdate
  BRA.W PrintReady
ActivateTrainer:
  ST  forceUpper
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.W PrintWTF
  MOVE.B  D0,trainerSearchVal
  BSR.W ReadParameter
  TST.B ParamFound
  BNE.W LAB_A182C4
  MOVEQ #0,D0
LAB_A182C4:
  MOVE.L  D0,D2
  MOVEA.L D0,A1
  MOVE.L  D0,trainerContinueAddress
  ST  LAB_A481DC
  MOVE.W  #$0817,D0
  LEA mt_sin,A1
LAB_A182DE:
  CLR.L (A1)+
  DBF D0,LAB_A182DE
  ST  trainerModeActive
  MOVE.L  #mt_sin,trainerWorkspacePtr
  LEA FirstTrainpassText(PC),A0
  BSR.W PrintText
  MOVE.L  trainerContinueAddress,D0
  JSR PrintAddressHex
  BSR.W PrintCR
  LEA ChangeCounterText(PC),A0
  BSR.W PrintText
  BRA.S LAB_A18348
TrainerUpdate:
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.W LAB_A18602
  TST.B trainerModeActive
  BEQ.W LAB_A1844C
  MOVE.B  trainerSearchVal,D5
  CMP.B D0,D5
  BEQ.W LAB_A18410
  MOVE.B  D0,trainerSearchVal
  TST.B LAB_A481DC
  BEQ.W LAB_A18454
LAB_A18348:
  BSR.W PrintCrIfNotBlankLine
  SF  LAB_A481DC
  MOVEA.L trainerContinueAddress,A0
  MOVE.B  trainerSearchVal,D3
  MOVEA.L trainerWorkspacePtr,A4
  MOVE.L  SlowMemEnd,D6
  BNE.S LAB_A1837A
  MOVE.L  autoConfigMemEnd,D6
  BNE.S LAB_A1837A
  MOVE.L  ChipMemEnd,D6
LAB_A1837A:
  MOVE.L  TextPage1Addr,D5
  MOVE.L  ChipMemEnd,D7
  CMPA.L  D7,A0
  BCS.S LAB_A183AE
  TST.L autoConfigMemEnd
  BEQ.S LAB_A1839C
  MOVE.L  autoConfigMemEnd,D7
  CMPA.L  D7,A0
  BCS.S LAB_A183AE
LAB_A1839C:
  TST.L SlowMemEnd
  BEQ.S LAB_A18404
  MOVE.L  SlowMemEnd,D7
  CMPA.L  D7,A0
  BEQ.S LAB_A18404
LAB_A183AE:
  BSR.W memSafeReadByte
  CMP.B D0,D3
  BNE.S LAB_A183C0
  MOVE.L  A0,(A4)+
  ADDQ.W  #1,A0
  CMPA.L  D5,A4
  BNE.S LAB_A183C2
  BRA.S LAB_A18404
LAB_A183C0:
  ADDQ.W  #1,A0
LAB_A183C2:
  TST.B EscapePressed
  BNE.S LAB_A1843A
  CMPA.L  D7,A0
  BCS.S LAB_A183AE
  CMP.L D6,D7
  BEQ.S LAB_A18404
  CMP.L ChipMemEnd,D7
  BNE.S LAB_A183F6
  MOVEA.L autoConfigMemStart,A0
  MOVE.L  autoConfigMemEnd,D7
  BNE.S LAB_A183AE
  MOVE.L  SlowMemEnd,D7
  MOVEA.L #$00c00000,A0
  BRA.S LAB_A183AE
LAB_A183F6:
  MOVEA.L #$00c00000,A0
  MOVE.L  SlowMemEnd,D7
  BRA.S LAB_A183AE
LAB_A18404:
  MOVE.L  A0,trainerContinueAddress
  MOVE.L  A4,trainerWorkspacePtr
LAB_A18410:
  TST.B trainerModeActive
  BEQ.S LAB_A1844A
  LEA SearchedUptoText(PC),A0
  BSR.W PrintText
  MOVE.L  trainerContinueAddress,D0
  JSR PrintAddressHex
  BSR.W PrintCrIfNotBlankLine
  CMPI.L  #mt_sin,trainerWorkspacePtr
  BNE.S LAB_A18442
LAB_A1843A:
  LEA TrainerFailText(PC),A0
  BRA.W PrintText
LAB_A18442:
  LEA TrainerModeActiveText(PC),A0
  BRA.W PrintText
LAB_A1844A:
  RTS
LAB_A1844C:
  LEA TrainerStartText(PC),A0
  BRA.W PrintText
LAB_A18454:
  BSR.S LAB_A1845A
  BRA.W LAB_A18348
LAB_A1845A:
  SF  D4
  LEA mt_sin,A1
  MOVEA.L trainerWorkspacePtr,A2
LAB_A18468:
  CMPA.L  A1,A2
  BEQ.S LAB_A18480
  MOVEA.L (A1)+,A0
  BSR.W memSafeReadByte
  CMP.B trainerSearchVal,D0
  BEQ.S LAB_A18468
  CLR.L -4(A1)
  BRA.S LAB_A18468
LAB_A18480:
  LEA mt_sin,A1
  MOVEA.L A1,A2
LAB_A18488:
  MOVEA.L A2,A0
  CMPA.L  trainerWorkspacePtr,A0
  BEQ.S LAB_A184A2
  TST.L (A2)
  BEQ.S LAB_A1849E
  MOVE.L  (A2),D0
  BSET  #$1F,D0
  MOVE.L  D0,(A1)+
LAB_A1849E:
  ADDQ.W  #4,A2
  BRA.S LAB_A18488
LAB_A184A2:
  MOVE.L  A1,trainerWorkspacePtr
  LEA mt_sin,A1
LAB_A184AE:
  CMPA.L  trainerWorkspacePtr,A1
  BEQ.S LAB_A184DA
  MOVE.L  (A1)+,D3
  BCLR  #$1F,D3
  BEQ.S LAB_A184AE
  TST.B D4
  BNE.S LAB_A184CC
  ST  D4
  LEA PossibleAddressesText(PC),A0
  BSR.W PrintText
LAB_A184CC:
  MOVE.L  D3,D0
  JSR PrintAddressHex
  MOVEQ #2,D0
  BSR.W PrintSpaces
  BRA.S LAB_A184AE
LAB_A184DA:
  TST.B D4
  BNE.S LAB_A184F4
  LEA NothingFoundText(PC),A0
  BSR.W PrintText
  MOVE.L  trainerContinueAddress,D0
  JSR PrintAddressHex
  BRA.W PrintCR
LAB_A184F4:
  RTS
TrainerStartText:
  DC.B  "Start trainer with ts-command",$D,0

PossibleAddressesText:
  DC.B  "Possible addresses: ",$D,0

NothingFoundText:
  DC.B  "Nothing found! continues from address =",0

SearchedUptoText:
  DC.B  "Searched up to: ",0

TrainerModeActiveText:
  DC.B  "Trainmode active!",$D,0

FirstTrainpassText:
  DC.B  "First trainpass from address =",0

ChangeCounterText:
  DC.B  "Change the countvalue next time!",$D,0

TrainerFailText:
  DC.B  "Trainermaker was not successful!",$D,"Start new train (TS) or exit"
  DC.B  " train (TX)",$D,0

LAB_A18602:
  TST.B trainerModeActive
  BEQ.S LAB_A1860E
  BRA.W LAB_A1845A
LAB_A1860E:
  RTS
DeactivateTrainer:
  MOVE.L  A0,-(A7)
  TST.B trainerModeActive
  BEQ.S LAB_A1862C
  SF  trainerModeActive
  BSR.W PrintCrIfNotBlankLine
  LEA TrainerInactiveText(PC),A0
  BSR.W PrintText
LAB_A1862C:
  MOVEA.L (A7)+,A0
  RTS
TrainerInactiveText:
  DC.B  "Trainmode inactive!",$D,0,0

CMD_BS:
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.W PrintWTF
  BCLR  #0,D0
  MOVEA.L D0,A1
  
  MOVE.W (A1),D3
  NOT.W (A1)
  NOT.W D3
  MOVE.W (A1),D4
  NOT.W (A1)

  CMP.W D3,D4
  BNE.S cantBpHere
  
  LEA BreakpointList,A3
  MOVEQ #4,D3
LAB_A18662:
  TST.L (A3)+
  BEQ.S LAB_A18680
  CMP.L -4(A3),D0
  BEQ.S LAB_A18680
  LEA 2(A3),A3
  DBF D3,LAB_A18662
  LEA TooManyBreakpointsText(PC),A0
  BSR.W PrintText
  BRA.W PrintReady
LAB_A18680:
  MOVE.L  D0,-4(A3)
  LEA BreakpointInsertedText(PC),A0
  BSR.W PrintText
  BRA.W PrintReady
cantBpHere:
  LEA cantBpHereText(PC),A0
  BSR.W PrintText
  BRA.W PrintReady
CMD_BD:
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.W PrintWTF
  MOVE.L  D0,D3
  LEA BreakpointList,A3
  MOVEQ #4,D2
LAB_A186A8:
  MOVE.L  (A3)+,D1
  LEA 2(A3),A3
  CMP.L D3,D1
  BEQ.S LAB_A186DE
  DBF D2,LAB_A186A8
  LEA BreakpointNotFoundText(PC),A0
  BSR.W PrintText
  BRA.W PrintReady
CMD_BDA:
  MOVEQ #4,D0
  LEA BreakpointList,A0
LAB_A186CA:
  CLR.L (A0)+
  ADDQ.W  #2,A0
  DBF D0,LAB_A186CA
  LEA BreakpointsDeletedText(PC),A0
  BSR.W PrintText
  BRA.W PrintReady
LAB_A186DE:
  CLR.L -6(A3)
  LEA BreakpointDelText(PC),A0
  BSR.W PrintText
  BRA.W PrintReady
CMD_B:
  LEA BreakpointsAtText(PC),A0
  BSR.W PrintText
  MOVEQ #4,D3
  LEA BreakpointList,A2
LAB_A186FE:
  MOVE.L  (A2)+,D0
  LEA 2(A2),A2
  TST.L D0
  BEQ.S LAB_A18714
  JSR PrintAddressHex
  MOVE.W  #2,D0
  BSR.W PrintSpaces
LAB_A18714:
  DBF D3,LAB_A186FE
  BRA.W PrintReady
BreakpointsAtText:
  DC.B  "Breakpoints at addresses:  ",0

BreakpointNotFoundText:
  DC.B  "Breakpoint not found!",$D,0

TooManyBreakpointsText:
  DC.B  "Too many breakpoints!",$D,0

BreakpointDelText:
  DC.B  "Breakpoint deleted   ",$D,0

BreakpointInsertedText:
  DC.B  "Breakpoint inserted  ",$D,0

cantBpHereText:
  DC.B  "Cannot breakpoint at this address!  ",$D,0

BreakpointsDeletedText:
  DC.B  "All breakpoints deleted!",$D,0

  even

SetupBreakpoints:
  LEA BreakpointList,A3
  MOVEQ #4,D3
LAB_A187B6:
  TST.L (A3)+
  BNE.S LAB_A187C4
  LEA 2(A3),A3
LAB_A187BE:
  DBF D3,LAB_A187B6
  RTS
LAB_A187C4:
  MOVE.L  -4(A3),D0
  BCLR  #0,D0
  EXG D0,A0
  MOVE.W  (A3)+,D1
  BSR.W memSafeReadWord
  ANDI.W  #$fff0,D0
  CMPI.W  #$4e40,D0
  BNE.S LAB_A187BE
  MOVE.L  D1,D0
  BSR.W memSafeWriteWord
  BRA.S LAB_A187BE
RestoreBreakpoints:
  MOVE.W  BreakpointTrapNo,D0
  LSL.W #2,D0
  LEA TRAP_00.W,A0
  CMPI.L  #$00000040,0(A0,D0.W)
  BEQ.S LAB_A18804
  MOVE.L  0(A0,D0.W),SaveTrap
LAB_A18804:
  LEA BreakpointList,A3
  MOVEQ #4,D3
  SF  LAB_A480CA
LAB_A18812:
  MOVE.L  SaveOldPc,D0
  CMP.L (A3)+,D0
  BEQ.S LAB_A18822
  SUBQ.L  #4,A3
  TST.L (A3)+
  BNE.S LAB_A18882
LAB_A18822:
  LEA 2(A3),A3
LAB_A18826:
  DBF D3,LAB_A18812
  TST.B LAB_A480CA
  BNE.S LAB_A1884E
  MOVE.W  BreakpointTrapNo,D0
  LSL.W #2,D0
  LEA TRAP_00.W,A0
  MOVE.L  SaveTrap,0(A0,D0.W)
  SF  breakpointsActive
  RTS
LAB_A1884E:
  MOVE.W  BreakpointTrapNo,D0
  JSR getVBR
  LSL.W #2,D0
  LEA TRAP_00(A0),A0
  MOVE.L  #$00000040,0(A0,D0.W)
  LEA EXT_40.W,A3

  if arhardware=1
  MOVE.L  #$4a3900bf,(a3)+
  MOVE.L  #$e00160f8,(a3)+
  else
  MOVE.L  #$4e714e71,(a3)+  ;nop nop
  MOVE.L  #$4e4f4e73,(a3)+  ;trap 15 rte

  MOVE.L  a3,TRAP_15-TRAP_00(A0)
  MOVE.W #$4ef9,(a3)+
  MOVE.L #ExceptionEntry2,(a3)+ ;jmp ExceptionEntry2
  endc

  ST  breakpointsActive
  RTS
LAB_A18882:
  ST  LAB_A480CA
  MOVE.L  -4(A3),D0
  BCLR  #0,D0
  EXG D0,A0
  BSR.W memSafeReadWord
  MOVE.W  D0,(A3)+
  MOVE.W  BreakpointTrapNo,D0
  ANDI.W  #$000f,D0
  ORI.W #$4e40,D0
  BSR.W memSafeWriteWord
  BRA.W LAB_A18826
SUB_A188AE:
  BSR.W checkExecBaseValid
  BEQ.S LAB_A188EC
  MOVE.L  EXT_4.W,D0
  BCLR  #0,D0
  EXG D0,A1
  MOVE.L  EXT_4.W,D0
  BCLR  #0,D0
  EXG D0,A1
  LEA $2A(A1),A0
  JSR memSafeReadLong
  BNE.S LAB_A188EE

  LEA $2E(A1),A0
  JSR memSafeReadLong
  BNE.S LAB_A188EE

  LEA $32(A1),A0
  JSR memSafeReadLong
  BNE.S LAB_A188EE

  LEA $222(A1),A0
  JSR memSafeReadLong
  BNE.S LAB_A188EE

  LEA $226(A1),A0
  JSR memSafeReadLong
  BNE.S LAB_A188EE

  LEA $22A(A1),A0
  JSR memSafeReadLong
  BNE.S LAB_A188EE
LAB_A188EC:
  MOVEQ #0,D0
LAB_A188EE:
  RTS
SUB_A188F0:
  MOVEQ #4,D1
  LEA BreakpointList,A0
LAB_A188F8:
  MOVE.L  (A0)+,D2
  LEA 2(A0),A0
  CMP.L SaveOldPc,D2
  BEQ.S LAB_A18948
  DBF D1,LAB_A188F8
  MOVE.W  BreakpointTrapNo,D0
  LEA TRAP_00.W,A0
  LSL.W #2,D0
  MOVE.L  SaveTrap,0(A0,D0.W)
  ADDQ.W  #1,BreakpointTrapNo
  ANDI.W  #$000f,BreakpointTrapNo
  MOVE.W  BreakpointTrapNo,D0
  LSL.W #2,D0
  MOVE.L  0(A0,D0.W),SaveTrap
  MOVE.L  #$00000040,0(A0,D0.W)
  MOVEQ #0,D0
  RTS
LAB_A18948:
  MOVEQ #-1,D0
  RTS
SUB_A1894C:
  MOVEM.L D0/A1,-(A7)
  MOVEQ #0,D0
LAB_A18952:
  BSR.W SUB_A135C0
  MOVE.W  (A1),(A0)+
  ADDQ.W  #2,D0
  CMPI.W  #$01c0,D0
  BNE.S LAB_A18952
  MOVEM.L (A7)+,D0/A1
  RTS
PrintWtf:
  MOVEM.L D0/A1-A2,-(A7)
  LEA $20(A0),A0
  LEA LAB_A18994(PC),A2
  MOVEQ #$20,D0
LAB_A18974:
  CMP.W (A2),D0
  BNE.S LAB_A1897E
  ADDQ.W  #2,A2
  ADDQ.W  #2,A0
  BRA.S LAB_A18984
LAB_A1897E:
  BSR.W SUB_A135E0
  MOVE.W  (A0)+,(A1)
LAB_A18984:
  ADDQ.W  #2,D0
  CMPI.W  #$01be,D0
  BNE.S LAB_A18974
  ADDQ.W  #2,A0
  MOVEM.L (A7)+,D0/A1-A2
  RTS
LAB_A18994:
  DC.L  $00260028,$002a002c,$0038003a,$003c003e
  DC.L  $0058005a,$005c005e,$0068006a,$006c006e
  DC.L  $00760078,$007a007c,$0088008a,$00ac00ae
  DC.L  $00bc00be,$00cc00ce,$00dc00de,$00f800fa
  DC.L  $00fc00fe,$0106010c,$010e011c,$011effff
ConvertToBCD:
  MOVEM.L D1-D3,-(A7)
  TST.L D0
  BEQ.S LAB_A18A0C
  CLR.L D3
  CLR.L D2
LAB_A189F0:
  MOVEQ #$A,D1
  BSR.W SUB_A1A7DA
  OR.B  D1,D3
  ROR.L #4,D3
  ADDQ.L  #1,D2
  TST.L D0
  BNE.S LAB_A189F0
  MOVEQ #$F,D0
  SUB.W D2,D0
LAB_A18A04:
  ROR.L #4,D3
  DBF D0,LAB_A18A04
  MOVE.L  D3,D0
LAB_A18A0C:
  MOVEM.L (A7)+,D1-D3
  RTS
memCompare:
  MOVEM.L D0-D5,-(A7)
  BSR.W ReadParameter
  MOVE.L  D0,D2
  TST.B ParamFound
  BEQ.W PrintWTF
  MOVEA.L D0,A1
  BSR.W ReadParameter
  SUBQ.L  #1,D0
  MOVE.L  D0,D3
  TST.B ParamFound
  BEQ.S PrintWTF
  MOVEA.L D0,A1
  BSR.W ReadParameter
  MOVE.L  D0,D4
  TST.B ParamFound
  BEQ.S PrintWTF
  MOVEA.L D0,A1
  SUB.L D2,D3
  BMI.S PrintWTF
LAB_A18A4E:
  TST.B EscapePressed
  BNE.S LAB_A18A70
  MOVEA.L D2,A0
  BSR.W memSafeReadByte
  MOVE.B  D0,D5
  ADDQ.L  #1,D2
  MOVEA.L D4,A0
  BSR.W memSafeReadByte
  ADDQ.L  #1,D4
  CMP.B D5,D0
  BNE.S LAB_A18A7A
LAB_A18A6C:
  SUBQ.L  #1,D3
  BPL.S LAB_A18A4E
LAB_A18A70:
  BSR.W PrintCrIfNotBlankLine
  MOVEM.L (A7)+,D0-D5
  RTS
LAB_A18A7A:
  MOVE.L  D4,D0
  SUBQ.L  #1,D0
  JSR Print8DigitHex
  MOVEQ #2,D0
  BSR.W PrintSpaces
  BRA.S LAB_A18A6C
PrintWTF:
  SF  LAB_A489FC
  BSR.W PrintCrIfNotBlankLine
  LEA wtfText(PC),A0
  BSR.W PrintText
  MOVEA.L saveSp,A7
  JMP arCommandLoop
wtfText:
  DC.B  "???",$D,0,0

PrintReady:
  TST.B apiCall
  BNE.S .1
  MOVE.L  A0,-(A7)
  BSR.W PrintCrIfNotBlankLine
  LEA ReadyText(PC),A0
  BSR.W PrintText
  MOVEA.L (A7)+,A0

.1
  RTS

ReadyText:
  DC.B  "Ready.",$D,0

CMD_PC:
  ST  LAB_A480CA
  BSR.S SUB_A18AD6
  BRA.S PrintReady
memPeeker:
  SF  LAB_A480CA
SUB_A18AD6:
  ;CLR.W  CopyFmode
  CLR.W CopyDiwHigh
  ;CLR.W  CopyBplCon4
  CLR.W memPeekerBitplaneLocks
  CLR.W memPeekerColorReg
  MOVE.W  #$ffff,memPeekerBlackFlag
  SF  memPeekerHelpFlag
  SF  memPeekerDdfMode
  CLR.W D0
  CLR.W D1
  BSR.W setMemPeekerXY
  MOVE.W  #$ffff,potgo+hardware
  TST.B LAB_A480CA
  BNE.W LAB_A1A03C
  BSR.W ReadParameter
  TST.B ParamFound
  BNE.S LAB_A18B30
  MOVEQ #1,D0
LAB_A18B30:
  MOVE.W  D0,LAB_A480AC
  BSR.W SUB_A166C8
  BSR.W SUB_A1D2F6
LAB_A18B3E:
  CMPI.B  #$34,CopyDdfStrtLo
  BCC.S LAB_A18B70
  CMPI.B  #$d0,CopyDdfStopLo
  BHI.S LAB_A18B70
  ADDQ.B  #8,CopyDdfStrtLo
  ADDQ.B  #8,CopyDdfStopLo
  ADDI.B  #$10,CopyDiwStartLo
  ADDI.B  #$10,CopyDiwStopLo
  BRA.S LAB_A18B3E
LAB_A18B70:
  MOVEQ #0,D0
  MOVE.B  CopyDiwStop,D0
  LSL.W #1,D0
  EORI.W  #$0100,D0
  MOVE.B  CopyDiwStop,D0
  MOVEQ #0,D1
  MOVE.B  CopyDiwStart,D1
  SUB.W D1,D0
  CMPI.W  #$0116,D0
  BLS.S LAB_A18B98
  MOVE.W  #$0116,D0
LAB_A18B98:
  CMPI.W  #$007f,D0
  BHI.S LAB_A18BB4
  MOVE.B  #$80,CopyDiwStop
  MOVE.W  #$0080,D1
  SUB.W D0,D1
  MOVE.B  D1,CopyDiwStart
  BRA.S LAB_A18BCA
LAB_A18BB4:
  MOVE.B  #$20,CopyDiwStart
  MOVE.B  CopyDiwStart,D1
  ADD.W D0,D1
  MOVE.B  D1,CopyDiwStop
LAB_A18BCA:
  MOVE.W  D0,LAB_A480DE
  BSR.W SwapChipRam1
  ST  picViewerMode
  MOVE.W CopyBplCon0,D0
  AND.W #$7010,D0
  BTST #4,D0
  BEQ.S .1
  ADD.W #$8000,D0
  BCLR #4,D0
.1:
  ROL.W #4,D0
  MOVE.W D0,bitplaneCount

  MOVEQ #0,D0
memPeekMainLoop:
  CLR.W LAB_A481D6
  BTST  #6,ciaapra
  BNE.S LAB_A18BF4
  MOVE.W  #$0067,LAB_A481D6
LAB_A18BF4:
  BTST  #2,potgor+hardware
  BNE.S LAB_A18C06
  MOVE.W  #$0065,LAB_A481D6
LAB_A18C06:
  CMPI.W  #$0067,LAB_A481D6
  BNE.S LAB_A18C52
  ADDQ.L  #1,D0
  CMPI.W  #2,LAB_A480DA
  BLS.S LAB_A18C52
  MOVE.W  #0,LAB_A480DA
  CMPI.B  #$80,CopyDiwStop
  BNE.S LAB_A18C46
  CMPI.B  #$7f,CopyDiwStart
  BEQ.S LAB_A18C52
  SUBQ.W  #1,LAB_A480DE
  ADDQ.B  #1,CopyDiwStart
  BRA.S LAB_A18C52
LAB_A18C46:
  SUBQ.W  #1,LAB_A480DE
  SUBQ.B  #1,CopyDiwStop
LAB_A18C52:
  CMPI.W  #$0065,LAB_A481D6
  BNE.S LAB_A18C9C
  CMPI.W  #2,LAB_A480DA
  BLS.S LAB_A18C9C
  MOVE.W  #0,LAB_A480DA
  CMPI.B  #$20,CopyDiwStart
  BEQ.S LAB_A18C86
  SUBQ.B  #1,CopyDiwStart
  ADDQ.W  #1,LAB_A480DE
  BRA.S LAB_A18C9C
LAB_A18C86:
  CMPI.B  #$36,CopyDiwStop
  BEQ.S LAB_A18C9C
  ADDQ.B  #1,CopyDiwStop
  ADDQ.W  #1,LAB_A480DE
LAB_A18C9C:
  ST.B IgnoreShift
  JSR GetMappedKeyCode
  SF.B IgnoreShift
  MOVE.W  KeyCode,D0
  JSR UpperCaseChar(PC)
  BEQ.W LAB_A19C8E
  CMPI.W  #$0031,D0
  BEQ.W memPeekKey1
  CMPI.W  #$0032,D0
  BEQ.W memPeekKey2
  CMPI.W  #$0033,D0
  BEQ.W memPeekKey3
  CMPI.W  #$0034,D0
  BEQ.W memPeekKey4
  CMPI.W  #$0035,D0
  BEQ.W memPeekKey5
  CMPI.W  #$0036,D0
  BEQ.W memPeekKey6
  CMPI.W  #$0037,D0
  BEQ.W memPeekKey7
  CMPI.W  #$0038,D0
  BEQ.W memPeekKey8
  ;CMPI.W #$0039,D0
  ;BEQ.W  memPeekKey9
  CMPI.W  #$0043,D0
  BEQ.W memPeekKeyC
  CMPI.W  #$0058,D0
  BEQ.W memPeekKeyX
  CMPI.W  #$002b,D0
  BEQ.W memPeekKeyPlus
  CMPI.W  #$002d,D0
  BEQ.W memPeekKeyMinus
  CMPI.W  #$003d,D0
  BEQ.W memPeekKeyEquals
  CMPI.W  #$004d,D0
  BEQ.W memPeekKeyM
  CMPI.W  #$004e,D0
  BEQ.W memPeekKeyN
  CMPI.W  #$004f,D0
  BEQ.W memPeekKeyO
  CMPI.W  #$0050,D0
  BEQ.W memPeekKeyP
  CMPI.W  #$0051,D0
  BEQ.W memPeekKeyQ
  CMPI.W  #$004c,D0
  BEQ.W memPeekKeyL
  CMPI.W  #$0048,D0
  BEQ.W memPeekKeyH
  CMPI.W  #$0047,D0
  BEQ.W memPeekKeyG
  CMPI.W  #$0041,D0
  BEQ.W memPeekKeyA
  CMPI.W  #$0044,D0
  BEQ.W memPeekKeyD
  CMPI.W  #$0053,D0
  BEQ.W memPeekKeyS
  CMPI.W  #$0045,D0
  BEQ.W memPeekKeyE
  CMPI.W  #$0046,D0
  BEQ.W memPeekKeyF
  CMPI.W  #$003c,D0
  BEQ.W memPeekKeyLt
  CMPI.W  #$003e,D0
  BEQ.W memPeekKeyGt
  CMPI.W  #$0049,D0
  BEQ.W memPeekKeyI
  CMPI.W  #$0042,D0
  BEQ.W memPeekKeyB
  CMPI.W  #$0057,D0
  BEQ.W memPeekKeyW
  CMPI.W  #$0059,D0
  BEQ.W memPeekKeyY
  CMPI.W  #$0052,D0
  BEQ.W memPeekKeyR
  CMPI.W  #$0030,D0
  BEQ.W memPeekKey0
  CMPI.W  #CursorUp,D0
  BEQ.W memPeekKeyUp
  CMPI.W  #CursorDown,D0
  BEQ.W memPeekKeyDown
  CMPI.W  #CursorLeft,D0
  BEQ.W memPeekKeyLeft
  CMPI.W  #CursorRight,D0
  BEQ.W memPeekKeyRight
  CMPI.W  #$0084,D0
  BEQ.W memPeekKeyDel
  CMPI.W  #$0085,D0
  BEQ.W memPeekKeyHelp
  CMPI.W  #F1Key,D0
  BEQ.W memPeekKeyF1
  CMPI.W  #F2Key,D0
  BEQ.W memPeekKeyF2
  CMPI.W  #F3Key,D0
  BNE.S memPeekKeyF3
  ADDQ.W  #1,LAB_A480AC
  BSR.W SUB_A16826
  BRA.W LAB_A19028
memPeekKeyF3:
  CMPI.W  #F4Key,D0
  BEQ.W memPeekKeyF4
  CMPI.W  #F5Key,D0
  BEQ.W memPeekKeyF5
  CMPI.W  #F6Key,D0
  BEQ.W memPeekKeyF6
  CMPI.W  #F10Key,D0
  BEQ.W memPeekKeyF10
  BRA.W LAB_A19C8E
memPeekKeyG:
  TST.B ShiftKey
  BNE.S LAB_A18E80
  BSET  #2,CopyBplCon0Lo
  MOVEQ #0,D0
  MOVE.W  CopyDdfStop,D0
  SUB.W CopyDdfStrt,D0
  ADDQ.W  #7,D0
  ANDI.W  #$fff8,D0
  ADDQ.W  #8,D0
  LSR.W #1,D0
  BTST  #7,CopyBplCon0
  BNE.S LAB_A18E5A
  LSR.W #1,D0
LAB_A18E5A:
  LEA bpl1Work,A0
  LEA CopyBpl1Pth,A1
  MOVEQ #7,D1
LAB_A18E68:
  MOVE.L  (A1)+,D2
  ADD.L D0,D2
  MOVE.L  D2,(A0)+
  DBF D1,LAB_A18E68
  MOVE.W  D0,CopyBplMod1
  MOVE.W  D0,CopyBplMod2
  BRA.S LAB_A18E94
LAB_A18E80:
  BCLR  #2,CopyBplCon0Lo
  CLR.W CopyBplMod1
  CLR.W CopyBplMod2
LAB_A18E94:
  JSR PrintMemPeekerHelpLine1
  JSR PrintMemPeekerHelpLine3
  BRA.W LAB_A19C8E
memPeekKeyY:
  NOT.B memPeekerDdfMode
  BSR.W Delay
  BRA.W LAB_A19C8E
memPeekKeyR:
  BSR.W SUB_A19996
  BRA.W LAB_A19C8E
memPeekKeyW:
  MOVE.W  #$ffff,memPeekerBlackFlag
  TST.B ShiftKey
  BEQ.W LAB_A19C8E
  CLR.W memPeekerBlackFlag
  BRA.W LAB_A19C8E
memPeekKeyF4:
  MOVE.W  memPeekerColorReg,D0
  JSR GetSavedPaletteColor
  SWAP D0
  ANDI.W  #$0fff,D0
  MOVE.W  D0,D2
  ADDI.W  #$0100,D2
  TST.B ShiftKey
  BEQ.S LAB_A18EFE
  SUBI.W  #$0200,D2
LAB_A18EFE:
  ANDI.W  #$0f00,D2
  ANDI.W  #$00ff,D0
  OR.W  D2,D0
  ANDI.W  #$0fff,D0
  MOVE.W D0,D1
  SWAP D1
  MOVE.W D0,D1
  MOVE.W memPeekerColorReg,D0
  JSR SetSavedPaletteColor
  BSR.W PrintMemPeekerHelpLine5_2
  BSR.W Delay
  BRA.W LAB_A19C8E
memPeekKeyF5:
  MOVE.W  memPeekerColorReg,D0
  JSR GetSavedPaletteColor
  SWAP D0
  ANDI.W  #$0fff,D0
  MOVE.W  D0,D2
  ADDI.W  #$0010,D2
  TST.B ShiftKey
  BEQ.S LAB_A18F44
  SUBI.W  #$0020,D2
LAB_A18F44:
  ANDI.W  #$00f0,D2
  ANDI.W  #$0f0f,D0
  OR.W  D2,D0
  ANDI.W  #$0fff,D0
  MOVE.W D0,D1
  SWAP D1
  MOVE.W D0,D1
  MOVE.W memPeekerColorReg,D0
  JSR SetSavedPaletteColor
  BSR.W PrintMemPeekerHelpLine5_2
  BSR.W Delay
  BRA.W LAB_A19C8E
memPeekKeyF6:
  MOVE.W  memPeekerColorReg,D0
  JSR GetSavedPaletteColor
  SWAP D0
  ANDI.W  #$0fff,D0
  MOVE.W  D0,D2
  ADDI.W  #1,D2
  TST.B ShiftKey
  BEQ.S LAB_A18F8A
  SUBI.W  #2,D2
LAB_A18F8A:
  ANDI.W  #$000f,D2
  ANDI.W  #$0ff0,D0
  OR.W  D2,D0
  ANDI.W  #$0fff,D0
  MOVE.W D0,D1
  SWAP D1
  MOVE.W D0,D1
  MOVE.W memPeekerColorReg,D0
  JSR SetSavedPaletteColor
  BSR.W PrintMemPeekerHelpLine5_2
  BSR.W Delay
  BRA.W LAB_A19C8E
memPeekKeyC:
  ADDQ.W  #1,memPeekerColorReg
  TST.B ShiftKey
  BEQ.S .1
  ADD.W  #15,memPeekerColorReg
.1
  ANDI.W  #$ff,memPeekerColorReg
  BTST.B #2,ChipsetIdValue     ;aga
  BEQ.S .aga
  ANDI.W  #$001f,memPeekerColorReg
.aga
  BSR.W Delay
  BSR.W PrintMemPeekerHelpLine5_2
  BRA.W LAB_A19C8E
memPeekKeyX:
  SUBQ.W  #1,memPeekerColorReg
  TST.B ShiftKey
  BEQ.S .1
  SUB.W  #15,memPeekerColorReg
.1
  ANDI.W  #$ff,memPeekerColorReg
  BTST.B #2,ChipsetIdValue     ;aga
  BEQ.S .aga
  ANDI.W  #$001f,memPeekerColorReg
.aga
  BSR.W Delay
  BSR.W PrintMemPeekerHelpLine5_2
  BRA.W LAB_A19C8E
ClearSpriteData:
  LEA hardware,A0
  CLR.L $144(A0)
  CLR.L $14C(A0)
  CLR.L $154(A0)
  CLR.L $15C(A0)
  CLR.L $164(A0)
  CLR.L $16C(A0)
  CLR.L $174(A0)
  CLR.L $17C(A0)
  RTS
memPeekKeyHelp:
  TST.B trainerModeActive
  BNE.W LAB_A19C8E
  TST.B memPeekerHelpFlag
  BNE.W LAB_A19C8E
  LEA LAB_A442F6,A1
  LEA EXT_100,A0
  MOVE.W  #$01b0-1,D0
LAB_A19022:
  MOVE.L (A0),(A1)+
  CLR.L (A0)+
  DBF D0,LAB_A19022
LAB_A19028:
  ST  memPeekerHelpFlag
  LEA LAB_A19E86(PC),A0
  MOVEQ #0,D0
  MOVEQ #0,D1
  BSR.W setMemPeekerXY
  BSR.W PrintMemPeekerHelpValue
  MOVE.W  #$0017,memPeekHelpX
  MOVE.W  #6,memPeekHelpY
  MOVEQ #7,D1
  MOVE.L  copperPos,D0
  BSR.W PrintMemPeekHelpValue
  MOVE.W  #$0011,memPeekHelpX
  MOVE.W  #7,memPeekHelpY
  MOVEQ #2,D1
  MOVEQ #0,D0
  MOVE.W  CopyFmode,D0
  ANDI.W  #$00ff,D0
  BSR.W PrintMemPeekHelpValue
  MOVE.W  #$001c,memPeekHelpX
  MOVE.W  #7,memPeekHelpY
  MOVEQ #4,D1
  MOVEQ #0,D0
  MOVE.W  CopyDiwHigh,D0
  BSR.W PrintMemPeekHelpValue
  BSR.S PrintMemPeekerHelpLocks
  BSR.W PrintMemPeekerHelpLine5_1
  BSR.W PrintMemPeekerHelpLine2
  BSR.W PrintMemPeekerHelpLine3
  BSR.W PrintMemPeekerHelpLine1
  BSR.W PrintMemPeekerHelpLine4_1
  BSR.W PrintMemPeekerHelpLine4_2
  BSR.W PrintMemPeekerHelpLine5_2
  BRA.W LAB_A19C8E
PrintMemPeekerHelpLocks:
  MOVEM.L D0-D4/A0,-(A7)
  TST.B memPeekerHelpFlag
  BEQ.S LAB_A1912E
  MOVEQ #1,D3
  MOVE.W bitplaneCount,D4
  BEQ.S LAB_A1912E
  MOVE.W  D4,D2
  SUBQ.W  #1,D2
  LEA CopyBpl1Pth,A0
  CLR.W memPeekHelpY
  MOVEQ #7,D1
LAB_A190EA:
  MOVE.W  #2,memPeekHelpX
  MOVE.L  (A0)+,D0
  BSR.W PrintMemPeekHelpValue
  BTST  D3,memPeekerBitplaneLocks
  BEQ.S LAB_A19112
  MOVE.W  #2,memPeekHelpX
  MOVE.W  #$0015,D0
  BSR.W PrintMemPeekerHelpChar
  BRA.S LAB_A19122
LAB_A19112:
  MOVE.W  #2,memPeekHelpX
  MOVE.W  #$0027,D0
  BSR.W PrintMemPeekerHelpChar
LAB_A19122:
  ADDQ.W  #1,memPeekHelpY
  ADDQ.W  #1,D3
  DBF D2,LAB_A190EA
LAB_A1912E:
  MOVEM.L (A7)+,D0-D4/A0
  RTS
PrintMemPeekerHelpLine1:
  MOVEM.L D0/A0,-(A7)
  CLR.W memPeekHelpY
  MOVE.W  #$0010,memPeekHelpX
  MOVE.W  CopyBplCon0,D0
  BTST  #$F,D0
  BNE.S LAB_A1916E
  BTST  #$B,D0
  BNE.S LAB_A19174
  BTST  #$A,D0
  BNE.S LAB_A1917A
  ANDI.W  #$7000,D0
  CMPI.W  #$6000,D0
  BEQ.S LAB_A19180
  LEA LoresText(PC),A0
  BRA.S LAB_A19188
LAB_A1916E:
  LEA HiresText(PC),A0
  BRA.S LAB_A19188
LAB_A19174:
  LEA HamText(PC),A0
  BRA.S LAB_A19188
LAB_A1917A:
  LEA DualPFText(PC),A0
  BRA.S LAB_A19188
LAB_A19180:
  LEA HalfBrText(PC),A0
  BRA.W LAB_A19188
LAB_A19188:
  BSR.W PrintMemPeekerHelpValue
  MOVE.W  #$0017,memPeekHelpX
  LEA LAB_A1933E(PC),A0
  BTST  #2,CopyBplCon0Lo
  BEQ.S LAB_A191A6
  LEA LaceText(PC),A0
LAB_A191A6:
  JSR PrintMemPeekerHelpValue
  MOVEM.L (A7)+,D0/A0
  RTS
PrintMemPeekerHelpLine2:
  MOVEM.L D0-D1,-(A7)
  MOVEQ #4,D1
  MOVE.W  #1,memPeekHelpY
  MOVE.W  #$0017,memPeekHelpX
  MOVEQ #4,D1
  MOVE.W  CopyDdfStrt,D0
  BSR.W PrintMemPeekHelpValue
  MOVE.W  #$001c,memPeekHelpX
  MOVE.W  CopyDdfStop,D0
  BSR.W PrintMemPeekHelpValue
  MOVEM.L (A7)+,D0-D1
  RTS
PrintMemPeekerHelpLine3:
  MOVEM.L D0-D1,-(A7)
  MOVEQ #4,D1
  MOVE.W  #2,memPeekHelpY
  MOVE.W  #$0012,memPeekHelpX
  MOVE.W  CopyBplMod1,D0
  BSR.W PrintMemPeekHelpValue
  MOVE.W  #$0017,memPeekHelpX
  MOVE.W  CopyBplMod2,D0
  BSR.W PrintMemPeekHelpValue
  MOVEM.L (A7)+,D0-D1
  RTS
PrintMemPeekerHelpLine4_1:
  MOVEM.L D0-D3,-(A7)
  MOVEQ #4,D1
  MOVE.W  #$0017,memPeekHelpX
  MOVE.W  #3,memPeekHelpY
  MOVEQ #0,D2
  MOVEQ #0,D3
  MOVE.B  CopyDiwStopLo,D2
  MOVE.B  CopyDiwStartLo,D3
  SUB.W D3,D2
  ADDI.W  #$0100,D2
  MOVE.W  D2,D0
  BTST  #7,CopyBplCon0
  BEQ.S LAB_A1925E
  ADD.W D0,D0
LAB_A1925E:
  BSR.W ConvertToBCD
  BSR.W PrintMemPeekHelpValue
  MOVEM.L (A7)+,D0-D3
  RTS
PrintMemPeekerHelpLine4_2:
  MOVEM.L D0-D1,-(A7)
  MOVEQ #4,D1
  MOVE.W  #$001c,memPeekHelpX
  MOVE.W  #3,memPeekHelpY
  MOVE.W  LAB_A480DE,D0
  BSR.W ConvertToBCD
  BSR.W PrintMemPeekHelpValue
  MOVEM.L (A7)+,D0-D1
  RTS
PrintMemPeekerHelpLine5_1:
  MOVEM.L D0-D1,-(A7)
  MOVEQ #4,D1
  MOVE.W  #$0017,memPeekHelpX
  MOVE.W  #5,memPeekHelpY
  MOVE.W bitplaneCount,D0
  BSR.W PrintMemPeekHelpValue
  MOVEM.L (A7)+,D0-D1
  RTS
PrintMemPeekerHelpLine5_2:
  MOVEM.W D0-D1/A0,-(A7)
  MOVEQ #0,D0
  MOVEQ #4,D1
  MOVE.W  #$0017,memPeekHelpX
  MOVE.W  #4,memPeekHelpY
  MOVE.W  memPeekerColorReg,D0
  BSR.W ConvertToBCD
  BSR.W PrintMemPeekHelpValue
  MOVE.W  #$001c,memPeekHelpX
  MOVE.W  memPeekerColorReg,D0
  JSR GetSavedPaletteColor
  CLR.W D0
  SWAP D0
  BSR.W PrintMemPeekHelpValue
  MOVEM.W (A7)+,D0-D1/A0
  RTS

GetSavedPaletteColor:
  BTST #2,ChipsetIdValue      ;aga
  BEQ.S .agaPalette
  
  CMP.W #32,D0
  BLT.S .1
  CLR.L D0
  RTS
  
.1
  ADD.W D0,D0
  LEA SaveColor,A0
  MOVE.W  0(A0,D0.W),D0
  ANDI.L  #$0fff,D0
  MOVE.W D0,-(A7)
  SWAP D0
  MOVE.W (A7)+,D0
  RTS
.agaPalette:
  TST.L AgaPaletteSave
  BEQ.S .notstored
  MOVE.L A5,-(A7)
  MOVE.L AgaPaletteSave,A5
  ADD.W D0,D0
  ADD.W D0,D0
  MOVE.L (A5,D0),D0
  MOVE.L (A7)+,A5
  RTS

.notstored
  JSR getagacolour
  RTS

SetSavedPaletteColor:
  BTST #2,ChipsetIdValue      ;aga
  BEQ.S .agaPalette

  CMP.W #32,D0
  BLT.S .1
  CLR.W D0
  RTS
  
.1 
  ADD.W D0,D0
  LEA SaveColor,A0
  MOVE.W  D1,0(A0,D0.W)
  RTS
.agaPalette:
  TST.L AgaPaletteSave
  BEQ.S .notstored
  MOVE.L A5,-(A7)
  MOVE.L AgaPaletteSave,A5
  ADD.W D0,D0
  ADD.W D0,D0
  MOVE.L D1,(A5,D0)
  MOVE.L (A7)+,A5
  
  RTS

.notstored
  JSR setagacolour
  RTS

getagacolour:
  MOVEM.L A5/D2-D4,-(A7)
  MOVE.L RegSnoopAddr,A5
  MOVE.W bplcon2(A5),D4
  SWAP D4
  MOVE.W bplcon3(A5),D4

  LEA hardware,A5
  MOVE.W #$100,bplcon2(A5)

  MOVE.W D0,D3
  LSR.W #5,D3
  ROR.W #3,D3
  
  OR.W #512,D3

  AND.W #31,D0
  ADD.W D0,D0
  ADD.W #$180,D0
  
  MOVE.W d3,bplcon3(A5)
  MOVE.W (a5,d0.w),D2
  EOR.W #512,D3
  MOVE.W d3,bplcon3(a5)
  SWAP D2

  MOVE.W (a5,d0.w),D2
  SWAP D2
  MOVE.L D2,D0
  
  MOVE.W D4,bplcon3(A5)
  SWAP D4
  MOVE.W D4,bplcon2(A5)

  MOVEM.L (A7)+,A5/D2-D4
  RTS

setagacolour:
  MOVEM.L A5/D2-D4,-(A7)
  MOVE.L RegSnoopAddr,A5
  MOVE.W bplcon2(A5),D4
  SWAP D4
  MOVE.W bplcon3(A5),D4

  LEA hardware,A5
  MOVE.W #$100,bplcon2(A5)

  MOVE.W D0,D3
  LSR.W #5,D3
  ROR.W #3,D3
  
  OR.W #512,D3

  AND.W #31,D0
  ADD.W D0,D0
  ADD.W #$180,D0
  
  MOVE.W d3,bplcon3(A5)
  MOVE.W d1,(a5,d0.w)
  EOR.W #512,D3
  MOVE.W d3,bplcon3(a5)
  SWAP D1

  MOVE.W d1,(a5,d0.w)
  SWAP D1
  
  MOVE.W D4,bplcon3(A5)
  SWAP D4
  MOVE.W D4,bplcon2(A5)

  MOVEM.L (A7)+,A5/D2-D4
  RTS

HiresText:
  DC.B  "HIRES  ",0

LoresText:
  DC.B  "LORES  ",0

HamText:
  DC.B  "HAM    ",0

HalfBrText:
  DC.B  "HALF BR",0

DualPFText:
  DC.B  "DUAL PF",0

LaceText:
  DC.B  " LACE",0

LAB_A1933E:
  DC.B  "     ",0

memPeekKeyDel:
  TST.B memPeekerHelpFlag
  BEQ.W LAB_A19C8E

  LEA LAB_A442F6,A1
  LEA EXT_100,A0
  MOVE.W  #$01b0-1,D0
restorePeekRam:
  MOVE.L (A1)+,(A0)+
  DBF D0,restorePeekRam

  SF  memPeekerHelpFlag
  MOVE.W  #$0020,dmacon+hardware
  BSR.W ClearSpriteData
  BRA.W LAB_A19C8E
memPeekKeyF2:
  MOVE.W #$FF,D2
LAB_A1936C:
  JSR random
  MOVE.W D0,D1
  SWAP D1
  MOVE.W D0,D1 
  AND.L #$fff0fff,D1
  
  MOVE.W D2,D0
  BSR SetSavedPaletteColor

  DBF D2,LAB_A1936C
  BSR.W PrintMemPeekerHelpLine5_2
  BRA.W LAB_A19C8E
memPeekKeyF10:

  BTST.B #2,ChipsetIdValue     ;aga
  BNE.S .ecs
  TST.L AgaPaletteSave
  BEQ.S .ecs

  JSR restoreAgaColors2
  BRA.S colsdone

.ecs
  LEA SaveColor,A0
  LEA color02+hardware,A1
  MOVE.L  (A0)+,SaveColor00
  MOVEQ #$E,D0
LAB_A19398:
  MOVE.L  (A0)+,(A1)+
  DBF D0,LAB_A19398

colsdone
  MOVE.W  CopyBplCon0,D0
  ANDI.W  #$fe14,D0
  MOVE.W  D0,SaveBplCon0
  MOVE.W  CopyBplCon1,SaveBplCon1
  MOVE.W  CopyBplCon2,SaveBplCon2
  MOVE.W  CopyBplCon3,SaveBplCon3
  MOVE.W  CopyBplCon4,SaveBplCon4
  MOVE.W  CopyBeamCon0,SaveBeamCon0
  MOVE.W  CopyFmode,SaveFmode
  MOVE.W  CopyBplMod1,SaveBpl1Mod
  MOVE.W  CopyBplMod2,SaveBpl2Mod
  MOVE.W  CopyDiwStart,SaveDiwStart
  MOVE.W  CopyDiwStop,SaveDiwStop
  MOVE.W  CopyDiwHigh,SaveDiwHigh
  MOVE.W  CopyDdfStrt,SaveDdfStrt
  MOVE.W  CopyDdfStop,SaveDdfStop
  BRA.W LAB_A19C8E
memPeekKeyF1:
  LEA SaveColor,A0
  MOVE.W  CopyBplCon0,D0
  ANDI.W  #$7010,D0
  CMPI.W  #$1000,D0
  BEQ.S LAB_A1942A
  CMPI.W  #$2000,D0
  BEQ.S LAB_A19438
  CMPI.W  #$3000,D0
  BEQ.W LAB_A1944E
  CMPI.W  #$4000,D0
  BEQ.W LAB_A1946E
  CMPI.W  #$5000,D0
  BEQ.W LAB_A194A6
  CMPI.W  #$6000,D0
  BEQ.W setDefPal64
  CMPI.W  #$7000,D0
  BEQ.W setDefPal128
  CMPI.W  #$0010,D0
  BEQ.W setDefPal256

; 2 colours
LAB_A1942A:
  MOVEQ #0,D0
  MOVE.L D0,D1
  JSR SetSavedPaletteColor
  MOVEQ #1,D0
  MOVE.L  #$0fff0fff,D1
  JSR SetSavedPaletteColor

  BSR.W PrintMemPeekerHelpLine5_2
  BRA.W LAB_A19C8E
; 4 colours
LAB_A19438:
  MOVEQ #0,D0
  MOVE.L D0,D1
  JSR SetSavedPaletteColor
  MOVEQ #1,D0
  MOVE.L  #$0f000f00,D1
  JSR SetSavedPaletteColor
  MOVEQ #2,D0
  MOVE.L  #$00f000f0,D1
  JSR SetSavedPaletteColor
  MOVEQ #3,D0
  MOVE.L  #$000f000f,D1
  JSR SetSavedPaletteColor
  BSR.W PrintMemPeekerHelpLine5_2
  BRA.W LAB_A19C8E
; 8 colours
LAB_A1944E:
  MOVEQ #0,D0
  MOVE.L D0,D1
  JSR SetSavedPaletteColor
  MOVEQ #1,D0
  MOVE.L  #$000f000f,D1
  JSR SetSavedPaletteColor
  MOVEQ #2,D0
  MOVE.L  #$00f000f0,D1
  JSR SetSavedPaletteColor
  MOVEQ #3,D0
  MOVE.L  #$00ff00ff,D1
  JSR SetSavedPaletteColor
  MOVEQ #4,D0
  MOVE.L  #$0f000f00,D1
  JSR SetSavedPaletteColor
  MOVEQ #5,D0
  MOVE.L  #$0f0f0f0f,D1
  JSR SetSavedPaletteColor
  MOVEQ #6,D0
  MOVE.L  #$0ff00ff0,D1
  JSR SetSavedPaletteColor
  MOVEQ #7,D0
  MOVE.L  #$0fff0fff,D1
  JSR SetSavedPaletteColor
  BSR.W PrintMemPeekerHelpLine5_2
  BRA.W LAB_A19C8E
;16 colours
LAB_A1946E:
  MOVEQ #0,D0
  MOVE.L D0,D1
  JSR SetSavedPaletteColor
  MOVEQ #1,D0
  MOVE.L  #$00080008,D1
  JSR SetSavedPaletteColor
  MOVEQ #2,D0
  MOVE.L  #$000f000f,D1
  JSR SetSavedPaletteColor
  MOVEQ #3,D0
  MOVE.L  #$00800080,D1
  JSR SetSavedPaletteColor
  MOVEQ #4,D0
  MOVE.L  #$00f000f0,D1
  JSR SetSavedPaletteColor
  MOVEQ #5,D0
  MOVE.L  #$00f800f8,D1
  JSR SetSavedPaletteColor
  MOVEQ #6,D0
  MOVE.L  #$00ff00ff,D1
  JSR SetSavedPaletteColor
  MOVEQ #7,D0
  MOVE.L  #$08000800,D1
  JSR SetSavedPaletteColor
  MOVEQ #8,D0
  MOVE.L  #$0f000f00,D1
  JSR SetSavedPaletteColor
  MOVEQ #9,D0
  MOVE.L  #$0f080f08,D1
  JSR SetSavedPaletteColor
  MOVEQ #10,D0
  MOVE.L  #$0f0f0f0f,D1
  JSR SetSavedPaletteColor
  MOVEQ #11,D0
  MOVE.L  #$0f800f80,D1
  JSR SetSavedPaletteColor
  MOVEQ #12,D0
  MOVE.L  #$0ff00ff0,D1
  JSR SetSavedPaletteColor
  MOVEQ #13,D0
  MOVE.L  #$0f880f88,D1
  JSR SetSavedPaletteColor
  MOVEQ #14,D0
  MOVE.L  #$0fff0fff,D1
  JSR SetSavedPaletteColor
  MOVEQ #15,D0
  MOVE.L  #$0ff80ff8,D1
  JSR SetSavedPaletteColor
  BSR.W PrintMemPeekerHelpLine5_2
  BRA.W LAB_A19C8E

;32 colours
LAB_A194A6:
  MOVEQ #$F,D0
  MOVEQ #0,D1
  MOVEQ #0,D2
  BSR SUB_A194AA
  BSR.W PrintMemPeekerHelpLine5_2
  BRA.W LAB_A19C8E

;64 colours
setDefPal64:
  MOVEQ #$F,D0
  MOVEQ #0,D1
  MOVEQ #0,D2
  BSR SUB_A194AA
  MOVEQ #$F,D0
  MOVEQ #0,D1
  MOVEQ #32,D2
  BSR SUB_A194AA
  BSR.W PrintMemPeekerHelpLine5_2
  BRA.W LAB_A19C8E

;128 colours
setDefPal128:
  MOVEQ #$F,D0
  MOVEQ #0,D1
  MOVEQ #0,D2
  BSR SUB_A194AA
  MOVEQ #$F,D0
  MOVEQ #0,D1
  MOVEQ #32,D2
  BSR SUB_A194AA
  MOVEQ #$F,D0
  MOVEQ #0,D1
  MOVEQ #64,D2
  BSR SUB_A194AA
  MOVEQ #$F,D0
  MOVEQ #0,D1
  MOVEQ #96,D2
  BSR SUB_A194AA
  BSR.W PrintMemPeekerHelpLine5_2
  BRA.W LAB_A19C8E

;256 colours
setDefPal256:
  MOVEQ #$F,D0
  MOVEQ #0,D1
  MOVEQ #0,D2
  BSR SUB_A194AA
  MOVEQ #$F,D0
  MOVEQ #0,D1
  MOVEQ #32,D2
  BSR SUB_A194AA
  MOVEQ #$F,D0
  MOVEQ #0,D1
  MOVEQ #64,D2
  BSR SUB_A194AA
  MOVEQ #$F,D0
  MOVEQ #0,D1
  MOVEQ #96,D2
  BSR SUB_A194AA
  MOVEQ #$F,D0
  MOVEQ #0,D1
  MOVE.L #128,D2
  BSR SUB_A194AA
  MOVEQ #$F,D0
  MOVEQ #0,D1
  MOVE.L #160,D2
  BSR SUB_A194AA
  MOVEQ #$F,D0
  MOVEQ #0,D1
  MOVE.L #192,D2
  BSR SUB_A194AA
  MOVEQ #$F,D0
  MOVEQ #0,D1
  MOVE.L #224,D2
  BSR SUB_A194AA
  BSR.W PrintMemPeekerHelpLine5_2
  BRA.W LAB_A19C8E

SUB_A194AA:
  MOVE.W D0,-(A7)
  MOVE.W D2,D0
  MOVE.W  D1,D3
  SWAP D1
  MOVE.W D3,D1
  JSR SetSavedPaletteColor

  ADDI.W  #$0010,D1
  ADD.W #1,D2
  
  MOVE.W D2,D0
  MOVE.W  D1,D3
  SWAP D1
  MOVE.W D3,D1
  JSR SetSavedPaletteColor
  ADDI.W  #$0101,D1
  ADD.W #1,D2
  MOVE.W (A7)+,D0
  DBF D0,SUB_A194AA
  RTS

memPeekKeyB:
  LEA SaveColor,A0
  MOVE.W #$FF,D3
  TST.B ShiftKey
  BEQ.S LAB_A1950E

;brightness down
LAB_A194D2:
  MOVEQ #0,D2

  MOVE.W D3,D0
  JSR GetSavedPaletteColor
  SWAP D0
  MOVE.W D0,D1
  ANDI.W  #$0f00,D1
  BEQ.S LAB_A194E2
  SUBI.W  #$0100,D1
  OR.W  D1,D2
LAB_A194E2:
  MOVE.W D0,D1
  ANDI.W  #$00f0,D1
  BEQ.S LAB_A194F0
  SUBI.W  #$0010,D1
  OR.W  D1,D2
LAB_A194F0:
  MOVE.W D0,D1
  ANDI.W  #$000f,D1
  BEQ.S LAB_A194FC
  SUBQ.W  #1,D1
  OR.W  D1,D2
LAB_A194FC:
  MOVE.W D2,D1
  SWAP D1
  MOVE.W D2,D1
  MOVE.W D3,D0
  JSR SetSavedPaletteColor
  DBF D3,LAB_A194D2
  BSR.W PrintMemPeekerHelpLine5_2
  BSR.W Delay
  BRA.W LAB_A19C8E

;brightness up
LAB_A1950E:
  MOVEQ #0,D2
  MOVE.W D3,D0
  JSR GetSavedPaletteColor
  SWAP D0
  MOVE.W D0,D1

  ANDI.W  #$0f00,D1
  CMPI.W  #$0f00,D1
  BEQ.S LAB_A19520
  ADDI.W  #$0100,D1
LAB_A19520:
  OR.W  D1,D2
  MOVE.W  D0,D1
  ANDI.W  #$00f0,D1
  CMPI.W  #$00f0,D1
  BEQ.S LAB_A19532
  ADDI.W  #$0010,D1
LAB_A19532:
  OR.W  D1,D2
  MOVE.W  D0,D1
  ANDI.W  #$000f,D1
  CMPI.W  #$000f,D1
  BEQ.S LAB_A19542
  ADDQ.W  #1,D1
LAB_A19542:
  OR.W  D1,D2
  MOVE.W D2,D1
  SWAP D1
  MOVE.W D2,D1
  MOVE.W D3,D0
  JSR SetSavedPaletteColor
  DBF D3,LAB_A1950E
  BSR.W PrintMemPeekerHelpLine5_2
  BSR.W Delay
  BRA.W LAB_A19C8E
memPeekKeyI:
  MOVE.W #$FF,D2
LAB_A1955E:
  MOVE.W D2,D0
  BSR GetSavedPaletteColor
  MOVE.L D0,D1
  NOT.L D1
  AND.L #$fff0fff,D1
  
  MOVE.W D2,D0
  BSR SetSavedPaletteColor

  DBF D2,LAB_A1955E
  BSR.W PrintMemPeekerHelpLine5_2
  BSR.W Delay
  BRA.W LAB_A19C8E
memPeekKeyS:
  SUBQ.B  #1,CopyDiwStartLo
  TST.B ShiftKey
  BEQ.S LAB_A1959A
  ADDQ.B  #2,CopyDiwStartLo
  BRA.S LAB_A1959A
memPeekKeyE:
  ADDQ.B  #1,CopyDiwStopLo
  TST.B ShiftKey
  BEQ.S LAB_A1959A
  SUBQ.B  #2,CopyDiwStopLo
LAB_A1959A:
  BSR.W SUB_A19BAC
  BSR.W PrintMemPeekerHelpLine2
  BSR.W PrintMemPeekerHelpLine4_1
  BRA.W LAB_A19C8E
memPeekKeyD:
  ANDI.W  #$fbff,CopyBplCon0
  ORI.W #$0400,CopyBplCon0
  TST.B ShiftKey
  BEQ.S LAB_A195CA
  BCLR  #2,CopyBplCon0
LAB_A195CA:
  BSR.W PrintMemPeekerHelpLine1
  BRA.W LAB_A19C8E
memPeekKeyA:
  MOVEQ #0,D0
  MOVE.B  CopyDiwStopLo,D0
  SUB.B CopyDiwStartLo,D0
  ADDI.W  #$0100,D0
  BTST  #7,CopyBplCon0
  BEQ.S LAB_A195F0
  ADD.W D0,D0
LAB_A195F0:
  LSR.W #3,D0
  MULU  LAB_A480DE,D0
  LEA CopyBpl1Pth,A0
  LEA bpl1Work,A2
  MOVEQ #7,D1
  MOVE.L  D3,-(A7)
  MOVE.L  (A0)+,D2
  MOVE.L  (A2)+,D3
LAB_A1960C:
  ADD.L D0,D2
  ADD.L D0,D3
  MOVE.L  D2,(A0)+
  MOVE.L  D3,(A2)+
  DBF D1,LAB_A1960C
  MOVE.L  (A7)+,D3
  BSR.W PrintMemPeekerHelpLocks
  BRA.W LAB_A19C8E
memPeekKeyLt:
  TST.B CopyBplCon1Lo
  BEQ.S LAB_A19634
  SUBI.B  #$11,CopyBplCon1Lo
  BRA.S LAB_A1963C
LAB_A19634:
  MOVE.B  #$ff,CopyBplCon1Lo
LAB_A1963C:
  BSR.W Delay
  BRA.W LAB_A19C8E
memPeekKeyGt:
  CMPI.B  #$ff,CopyBplCon1Lo
  BEQ.S LAB_A19658
  ADDI.B  #$11,CopyBplCon1Lo
  BRA.S LAB_A1965E
LAB_A19658:
  CLR.B CopyBplCon1Lo
LAB_A1965E:
  BSR.W Delay
  BRA.W LAB_A19C8E
memPeekKey1:
  BSET  #1,memPeekerBitplaneLocks
  TST.B ShiftKey
  BEQ.W LAB_A1971E
  BCLR  #1,memPeekerBitplaneLocks
  BRA.W LAB_A1971E
memPeekKey2:
  BSET  #2,memPeekerBitplaneLocks
  TST.B ShiftKey
  BEQ.W LAB_A1971E
  BCLR  #2,memPeekerBitplaneLocks
  BRA.W LAB_A1971E
memPeekKey3:
  BSET  #3,memPeekerBitplaneLocks
  TST.B ShiftKey
  BEQ.W LAB_A1971E
  BCLR  #3,memPeekerBitplaneLocks
  BRA.W LAB_A1971E
memPeekKey4:
  BSET  #4,memPeekerBitplaneLocks
  TST.B ShiftKey
  BEQ.S LAB_A1971E
  BCLR  #4,memPeekerBitplaneLocks
  BRA.W LAB_A1971E
memPeekKey5:
  BSET  #5,memPeekerBitplaneLocks
  TST.B ShiftKey
  BEQ.S LAB_A1971E
  BCLR  #5,memPeekerBitplaneLocks
  BRA.S LAB_A1971E
memPeekKey6:
  BSET  #6,memPeekerBitplaneLocks
  TST.B ShiftKey
  BEQ.S LAB_A1971E
  BCLR  #6,memPeekerBitplaneLocks
  BRA.S LAB_A1971E
memPeekKey7:
  BSET  #7,memPeekerBitplaneLocks
  TST.B ShiftKey
  BEQ.S LAB_A1971E
  BCLR  #7,memPeekerBitplaneLocks
  BRA.S LAB_A1971E
memPeekKey8:
  BSET  #0,memPeekerBitplaneLocks
  TST.B ShiftKey
  BEQ.S LAB_A1971E
  BCLR  #0,memPeekerBitplaneLocks
LAB_A1971E:
  BSR.W PrintMemPeekerHelpLocks
  BRA.W LAB_A19C8E
memPeekKey0:
  CLR.W memPeekerBitplaneLocks
  TST.B ShiftKey
  BEQ.S LAB_A1973C
  MOVE.W  #$ffff,memPeekerBitplaneLocks
LAB_A1973C:
  BSR.W PrintMemPeekerHelpLocks
  BRA.W LAB_A19C8E
memPeekKeyPlus:
  MOVE.W #6,D2
  BTST.B #2,ChipsetIdValue     ;aga
  BNE.S .2
  MOVE.W #8,D2
.2:

  MOVE.W bitplaneCount,D0
  CMP.W D2,D0
  BEQ.W LAB_A19C8E

  MOVE.W  CopyBplCon0,D2

  MOVE.W D0,D1
  LSL.W #2,D1
  LEA CopyBpl1Pth,A0
  LEA bpl1Work,A2
  MOVE.L  0(A0,D1.W),4(A0,D1.W)
  MOVE.L  0(A2,D1.W),4(A2,D1.W)

  ADDQ.W  #1,D0
  MOVE.W D0,bitplaneCount
  BTST.B #2,ChipsetIdValue     ;aga
  BEQ.S .1

  CMPI.W  #5,D0
  BEQ.S LAB_A197A6
.1:
  JSR BplCountToBplCon
  ANDI.W  #$8fef,D2
  OR.W  D0,D2
LAB_A19788:
  MOVE.W  D2,CopyBplCon0
  BSR.W Delay
  BSR.W PrintMemPeekerHelpLocks
  BSR.W PrintMemPeekerHelpLine5_1
  BSR.W PrintMemPeekerHelpLine1
  BSR.W PrintMemPeekerHelpLine4_1
  BRA.W LAB_A19C8E
LAB_A197A6:
  ANDI.W  #$0fef,D2
  ORI.W #$5000,D2
  BRA.S LAB_A19788
memPeekKeyMinus:
  MOVE.W bitplaneCount,D0
  MOVE.W  CopyBplCon0,D1
  CMP.W #1,D0
  BEQ.W LAB_A19C8E
  SUB.W #1,D0
  MOVE.W D0,bitplaneCount
  JSR BplCountToBplCon

  BTST.B #2,ChipsetIdValue     ;aga
  BEQ.S .1

  CMPI.W  #$5000,D0
  BEQ.S LAB_A19810
.1:

  ANDI.W  #$8fef,D1
  OR.W  D0,D1
LAB_A197D8:
  MOVE.W  D1,CopyBplCon0
  MOVE.W  D2,memPeekHelpY
  MOVE.W  #2,memPeekHelpX
  LEA LAB_A19808(PC),A0
  BSR.W PrintMemPeekerHelpValue
  BSR.W Delay
  BSR.W PrintMemPeekerHelpLine5_1
  BSR.W PrintMemPeekerHelpLine1
  BSR.W PrintMemPeekerHelpLine4_1
  BRA.W LAB_A19C8E
LAB_A19808:
  MOVE.L  $30(A0,D3.W),D0
  MOVE.W  0(A0,D3.W),D0
LAB_A19810:
  ANDI.W  #$03ef,D1
  ORI.W #$5000,D1
  BRA.S LAB_A197D8
memPeekKeyEquals:
  TST.B ShiftKey
  BNE.W memPeekKeyPlus

  MOVE.L  CopyBpl1Pth,D0
  MOVE.L  D0,CopyBpl2Pth
  MOVE.L  D0,CopyBpl3Pth
  MOVE.L  D0,CopyBpl4Pth
  MOVE.L  D0,CopyBpl5Pth
  MOVE.L  D0,CopyBpl6Pth
  MOVE.L  D0,CopyBpl7Pth
  MOVE.L  D0,CopyBpl8Pth
  MOVE.L  bpl1Work,D0
  MOVE.L  D0,bpl2Work
  MOVE.L  D0,bpl3Work
  MOVE.L  D0,bpl4Work
  MOVE.L  D0,bpl5Work
  MOVE.L  D0,bpl6Work
  MOVE.L  D0,bpl7Work
  MOVE.L  D0,bpl8Work
  BSR.W PrintMemPeekerHelpLocks
  BRA.W LAB_A19C8E
memPeekKeyM:
  ADDQ.W  #2,CopyBplMod1
  ADDQ.W  #2,CopyBplMod2
  BSR.W Delay
  BSR.W PrintMemPeekerHelpLine3
  BRA.W LAB_A19C8E
memPeekKeyN:
  SUBQ.W  #2,CopyBplMod1
  SUBQ.W  #2,CopyBplMod2
  BSR.W Delay
  BSR.W PrintMemPeekerHelpLine3
  BRA.W LAB_A19C8E
memPeekKeyO:
  LEA CopyBplMod1,A0
  TST.B ShiftKey
  BEQ.S LAB_A198AE
  LEA CopyBplMod2,A0
LAB_A198AE:
  SUBQ.W  #2,(A0)
  BSR.W Delay
  BSR.W PrintMemPeekerHelpLine3
  BRA.W LAB_A19C8E
memPeekKeyP:
  LEA CopyBplMod1,A0
  TST.B ShiftKey
  BEQ.S LAB_A198D0
  LEA CopyBplMod2,A0
LAB_A198D0:
  ADDQ.W  #2,(A0)
  BSR.W Delay
  BSR.W PrintMemPeekerHelpLine3
  BRA.W LAB_A19C8E
memPeekKeyQ:
  CLR.W CopyBplMod1
  CLR.W CopyBplMod2
  BSR.W Delay
  BSR.W PrintMemPeekerHelpLine3
  BRA.W LAB_A19C8E
memPeekKeyL:
  ANDI.W  #$7fff,CopyBplCon0
  TST.B ShiftKey
  BEQ.S LAB_A1990E
  ORI.W #$8000,CopyBplCon0
LAB_A1990E:
  BSR.W PrintMemPeekerHelpLine1
  BSR.W PrintMemPeekerHelpLine4_1
  BRA.W LAB_A19C8E
memPeekKeyH:
  ANDI.W  #$f3ff,CopyBplCon0
  TST.B ShiftKey
  BNE.S LAB_A19932
  ORI.W #$0800,CopyBplCon0
LAB_A19932:
  BSR.W PrintMemPeekerHelpLine1
  BRA.W LAB_A19C8E
memPeekKeyLeft:
  LEA CopyBpl1Pth,A0
  LEA bpl1Work,A2
  MOVEQ #7,D0
  MOVEQ #1,D1
LAB_A1994A:
  BTST  D1,memPeekerBitplaneLocks
  BNE.S LAB_A19956
  SUBQ.L  #2,(A0)
  SUBQ.L  #2,(A2)
LAB_A19956:
  ADDQ.W  #4,A0
  ADDQ.W  #4,A2
  ADDQ.W  #1,D1
  DBF D0,LAB_A1994A
  BSR.W PrintMemPeekerHelpLocks
  BRA.W LAB_A19C8E
memPeekKeyRight:
  LEA CopyBpl1Pth,A0
  LEA bpl1Work,A2
  MOVEQ #7,D0
  MOVEQ #1,D1
LAB_A19978:
  BTST  D1,memPeekerBitplaneLocks
  BNE.S LAB_A19984
  ADDQ.L  #2,(A0)
  ADDQ.L  #2,(A2)
LAB_A19984:
  ADDQ.W  #4,A0
  ADDQ.W  #4,A2
  ADDQ.W  #1,D1
  DBF D0,LAB_A19978
  BSR.W PrintMemPeekerHelpLocks
  BRA.W LAB_A19C8E
SUB_A19996:
  LEA CopyBpl1Pth,A0
  MOVE.W bitplaneCount,D0
  SUBQ.W  #2,D0
  BMI.S LAB_A199C2
  MOVE.L  (A0)+,D1
LAB_A199AE:
  MOVE.L  (A0)+,-8(A0)
  DBF D0,LAB_A199AE
  MOVE.L  D1,-4(A0)
  BSR.W Delay
  BRA.W PrintMemPeekerHelpLocks
LAB_A199C2:
  RTS
memPeekKeyUp:
  LEA CopyBpl1Pth,A0
  LEA bpl1Work,A2
  MOVEQ #7,D0
  MOVEQ #1,D1
  MOVEQ #0,D2
  MOVEQ #0,D3
  TST.B memPeekerDdfMode
  BEQ.S LAB_A199F4
  MOVE.B  CopyDdfStopLo,D2
  MOVE.B  CopyDdfStrtLo,D3
  SUB.W D3,D2
  LSR.W #2,D2
  ADDQ.W  #2,D2
  BRA.S LAB_A19A08
LAB_A199F4:
  MOVE.B  CopyDiwStartLo,D3
  MOVE.B  CopyDiwStopLo,D2
  ADDI.W  #$0100,D2
  SUB.W D3,D2
  LSR.W #3,D2
LAB_A19A08:
  BTST  #7,CopyBplCon0
  BEQ.S LAB_A19A14
  ADD.W D2,D2
LAB_A19A14:
  MOVE.W  CopyBplMod1,D4
  BPL.S LAB_A19A1E
  NOT.W D4
LAB_A19A1E:
  EXT.L D4
  ADD.L D4,D2
  TST.W CopyFmode
  BEQ.S LAB_A19A42
  MOVE.W  CopyFmode,D4
  ADDQ.W  #1,D4
  LSR.W #1,D4
  BTST  #7,CopyBplCon0
  BNE.S LAB_A19A40
  ADDQ.W  #2,D4
LAB_A19A40:
  ADD.W D4,D2
LAB_A19A42:
  TST.B ShiftKey
  BEQ.S LAB_A19A4E
  ADD.W D2,D2
  ADD.W D2,D2
LAB_A19A4E:
  BTST  D1,memPeekerBitplaneLocks
  BNE.S LAB_A19A5A
  SUB.L D2,(A0)
  SUB.L D2,(A2)
LAB_A19A5A:
  ADDQ.W  #4,A0
  ADDQ.W  #4,A2
  ADDQ.W  #1,D1
  DBF D0,LAB_A19A4E
  BSR.W PrintMemPeekerHelpLocks
  BRA.W LAB_A19C8E
memPeekKeyF:
  LEA CopyBpl1Pth,A0
  LEA bpl1Work,A2
  MOVEQ #7,D0
  MOVEQ #1,D1
  MOVEQ #0,D2
  MOVE.B  CopyDiwStopLo,D2
  SUB.B CopyDiwStartLo,D2
  ADDI.W  #$0100,D2
  LSR.W #3,D2
  MULU  LAB_A480DE,D2
  TST.W CopyFmode
  BEQ.S LAB_A19AB6
  MOVE.W  CopyFmode,D4
  ADDQ.W  #1,D4
  LSR.W #1,D4
  BTST  #7,CopyBplCon0
  BNE.S LAB_A19AB4
  ADDQ.W  #2,D4
LAB_A19AB4:
  ADD.W D4,D2
LAB_A19AB6:
  TST.B ShiftKey
  BEQ.S LAB_A19AC0
  NEG.L D2
LAB_A19AC0:
  BTST  #7,CopyBplCon0
  BEQ.S LAB_A19ACC
  ADD.W D2,D2
LAB_A19ACC:
  BTST  D1,memPeekerBitplaneLocks
  BNE.S LAB_A19AD8
  ADD.L D2,(A0)
  ADD.L D2,(A2)
LAB_A19AD8:
  ADDQ.W  #4,A0
  ADDQ.W  #4,A2
  ADDQ.W  #1,D1
  DBF D0,LAB_A19ACC
  BSR.W Delay
  BSR.W PrintMemPeekerHelpLocks
  BRA.W LAB_A19C8E
memPeekKeyDown:
  LEA CopyBpl1Pth,A0
  LEA bpl1Work,A2
  MOVEQ #7,D0
  MOVEQ #1,D1
  MOVEQ #0,D2
  MOVEQ #0,D3
  TST.B memPeekerDdfMode
  BEQ.S LAB_A19B1E
  MOVE.B  CopyDdfStopLo,D2
  MOVE.B  CopyDdfStrtLo,D3
  SUB.W D3,D2
  LSR.W #2,D2
  ADDQ.W  #2,D2
  BRA.S LAB_A19B32
LAB_A19B1E:
  MOVE.B  CopyDiwStartLo,D3
  MOVE.B  CopyDiwStopLo,D2
  ADDI.W  #$0100,D2
  SUB.W D3,D2
  LSR.W #3,D2
LAB_A19B32:
  BTST  #7,CopyBplCon0
  BEQ.S LAB_A19B3E
  ADD.W D2,D2
LAB_A19B3E:
  MOVE.W  CopyBplMod1,D4
  BPL.S LAB_A19B48
  NOT.W D4
LAB_A19B48:
  EXT.L D4
  ADD.L D4,D2
  TST.W CopyFmode
  BEQ.S LAB_A19B6C
  MOVE.W  CopyFmode,D4
  ADDQ.W  #1,D4
  LSR.W #1,D4
  BTST  #7,CopyBplCon0
  BNE.S LAB_A19B6A
  ADDQ.W  #2,D4
LAB_A19B6A:
  ADD.W D4,D2
LAB_A19B6C:
  TST.B ShiftKey
  BEQ.S LAB_A19B78
  ADD.W D2,D2
  ADD.W D2,D2
LAB_A19B78:
  BTST  D1,memPeekerBitplaneLocks
  BNE.S LAB_A19B84
  ADD.L D2,(A0)
  ADD.L D2,(A2)
LAB_A19B84:
  ADDQ.W  #4,A0
  ADDQ.W  #4,A2
  ADDQ.W  #1,D1
  DBF D0,LAB_A19B78
  BSR.W PrintMemPeekerHelpLocks
  BRA.W LAB_A19C8E
debugDelay:
  MOVE.L D0,-(A7)
  MOVE.W #25,D0
.dloop
  BSR.S Delay
  DBF D0,.dloop
  MOVE.L (A7)+,D0
  RTS
Delay:
  MOVE.B  #0,ciaatodlo
LAB_A19BA0:
  CMP.B #2,ciaatodlo
  BNE.S LAB_A19BA0
  RTS
SUB_A19BAC:
  MOVEM.L D0-D1,-(A7)
  MOVEQ #0,D0
  MOVE.B  CopyDiwStopLo,D0
  SUB.B CopyDiwStartLo,D0
  ADDI.W  #$0100,D0
  BTST  #7,CopyBplCon0
  BNE.S LAB_A19BF6
  MOVEQ #0,D1
  MOVE.B  CopyDiwStartLo,D1
  SUBI.W  #$0011,D1
  LSR.W #1,D1
  ANDI.W  #$fff8,D1
  MOVE.W  D1,CopyDdfStrt
  LSR.W #1,D0
  SUBQ.W  #8,D0
  ADD.W D1,D0
  MOVE.W  D0,CopyDdfStop
  MOVEM.L (A7)+,D0-D1
  RTS
LAB_A19BF6:
  MOVEQ #0,D1
  MOVE.B  CopyDiwStartLo,D1
  SUBI.W  #9,D1
  LSR.W #1,D1
  ANDI.W  #$fffc,D1
  MOVE.W  D1,CopyDdfStrt
  LSR.W #1,D0
  SUBQ.W  #8,D0
  ADD.W D1,D0
  MOVE.W  D0,CopyDdfStop
  MOVE.W  #$00cc,CopyDdfStop
  MOVEM.L (A7)+,D0-D1
  RTS
SUB_A19C28:
  MOVE.W  joy0dat+hardware,D0
  MOVEQ #0,D1
  MOVE.B  D0,D1
  ADD.W D1,D1
  LSR.W #8,D0
  LEA EXT_100,A0
  MOVEQ #7,D2
LAB_A19C3E:
  CMPI.W  #$0020,D0
  BHI.S LAB_A19C48
  MOVE.W  #$0020,D0
LAB_A19C48:
  CMPI.W  #$0120,D0
  BLS.S LAB_A19C52
  MOVE.W  #$0120,D0
LAB_A19C52:
  MOVEQ #0,D3
  MOVE.W  D0,D4
  ADDI.W  #$0030,D4
  MOVE.B  D0,D3
  LSL.W #8,D3
  MOVE.W  D1,D5
  LSR.W #1,D5
  MOVE.B  D5,D3
  SWAP  D3
  MOVE.B  D4,D3
  LSL.W #8,D3
  CMPI.W  #$00ff,D0
  BLS.S LAB_A19C74
  BSET  #2,D3
LAB_A19C74:
  CMPI.W  #$00ff,D4
  BLS.S LAB_A19C7E
  BSET  #1,D3
LAB_A19C7E:
  MOVE.L  D3,(A0)
  ADDI.W  #$0010,D1
  LEA $D8(A0),A0
  DBF D2,LAB_A19C3E
  RTS
LAB_A19C8E:
  TST.B memPeekerHelpFlag
  BEQ.S LAB_A19CBA
  BSR.S SUB_A19C28
  BSR.W PrintMemPeekerHelpLine4_2
  LEA CopyBpl1Pth,A0
  LEA bpl1Work,A2
  MOVEQ #7,D0
LAB_A19CAA:
  ANDI.L  #$001fffff,(A0)+
  ANDI.L  #$001fffff,(A2)+
  DBF D0,LAB_A19CAA
LAB_A19CBA:
  BSR.W Delay
  TST.B EscapePressed
  BEQ.W memPeekMainLoop
  BSR.W SUB_A1D328
  TST.B memPeekerHelpFlag
  BEQ.S LAB_A19CDE
  SF  memPeekerHelpFlag
  BSR.W ClearSpriteData

  LEA LAB_A442F6,A1
  LEA EXT_100,A0
  MOVE.W  #$01b0-1,D0
restorePeekRam2:
  MOVE.L (A1)+,(A0)+
  DBF D0,restorePeekRam2


LAB_A19CDE:
  SF  picViewerMode
  MOVE.W  #$0020,dmacon+hardware
  BSR.W SwapChipRam1

  LEA spr0data+hardware,A5
  CLR.L (A5)
  CLR.L 8(A5)
  CLR.L $10(A5)
  CLR.L $18(A5)
  CLR.L $20(A5)
  CLR.L $28(A5)
  CLR.L $30(A5)
  CLR.L $38(A5)
  LEA PicHeightText(PC),A0
  BSR.W PrintText
  MOVEQ #0,D0
  MOVE.W  LAB_A480DE,D0
  BSR.W ConvertToBCD
  MOVEQ #3,D1
  BSR.W PrintValue
  BSR.W PrintCrIfNotBlankLine
  LEA CopperPosText(PC),A0
  BSR.W PrintText
  MOVE.L  copperPos,D0
  JSR Print6DigitHex
  BRA.W PrintCrIfNotBlankLine

PicHeightText:
  DC.B  "picture heigth: !",0

CopperPosText:
  DC.B  "Copper Position :",0

setMemPeekerXY:
  MOVE.W  D0,memPeekHelpX
  MOVE.W  D1,memPeekHelpY
  RTS
SUB_A19D7A:
  CMPI.B  #$20,D0
  BEQ.S LAB_A19D98
  CMPI.B  #$39,D0
  BHI.S LAB_A19D8C
  CMPI.B  #$30,D0
  BCC.S LAB_A19D9E
LAB_A19D8C:
  CMPI.B  #$3a,D0
  BEQ.S LAB_A19DA4
  SUBI.B  #$37,D0
  BRA.S LAB_A19DAC
LAB_A19D98:
  MOVE.B  #$27,D0
  BRA.S LAB_A19DAC
LAB_A19D9E:
  SUBI.B  #$30,D0
  BRA.S LAB_A19DAC
LAB_A19DA4:
  MOVE.B  #$25,D0
  BRA.W LAB_A19DAC
LAB_A19DAC:
  RTS
PrintMemPeekerHelpValue:
  MOVEM.L D0/A0,-(A7)
  MOVEQ #0,D0
  TST.B memPeekerHelpFlag
  BEQ.S LAB_A19DD2
LAB_A19DBC:
  MOVE.B  (A0)+,D0
  BEQ.S LAB_A19DD2
  CMPI.B  #$0d,D0
  BEQ.S LAB_A19DD8
  BSR.S SUB_A19D7A
  BSR.S PrintMemPeekerHelpChar
  ADDQ.W  #1,memPeekHelpX
  BRA.S LAB_A19DBC
LAB_A19DD2:
  MOVEM.L (A7)+,D0/A0
  RTS
LAB_A19DD8:
  CLR.W memPeekHelpX
  ADDQ.W  #1,memPeekHelpY
  BRA.S LAB_A19DBC
PrintMemPeekerHelpChar:
  MOVEM.L D0-D4/A0-A1,-(A7)
  ANDI.W  #$00ff,D0
  MOVE.W  memPeekHelpX,D1
  LSR.W #2,D1
  MULU  #$00d8,D1
  MOVE.W  memPeekHelpY,D2
  MULU  #$0018,D2
  LEA EXT_104,A0
  LEA 0(A0,D1.W),A0
  LEA 0(A0,D2.W),A0
  MOVE.W  memPeekHelpX,D2
  ANDI.W  #3,D2
  MOVEQ #3,D1
  SUB.W D2,D1
  ADD.W D1,D1
  ADD.W D1,D1
  MOVE.W  #$fff0,D2
  ROL.W D1,D2
  LEA LAB_A19F98(PC),A1
  ADD.W D0,D0
  ADD.W D0,D0
  MOVE.L  0(A1,D0.W),D0
  SWAP  D0
  MOVEQ #4,D3
LAB_A19E3A:
  LSL.W D1,D0
  AND.W D2,(A0)
  OR.W  D0,(A0)
  ADDQ.W  #4,A0
  CLR.W D0
  ROL.L #4,D0
  DBF D3,LAB_A19E3A
  MOVEM.L (A7)+,D0-D4/A0-A1
  RTS
PrintMemPeekHelpValue:
  TST.B memPeekerHelpFlag
  BEQ.S LAB_A19E84
  MOVEM.L D0-D3,-(A7)
  SUBQ.W  #1,D1
  MOVE.W  D1,D2
  LSL.W #2,D2
  ROR.L D2,D0
LAB_A19E64:
  MOVE.W  D0,D3
  ANDI.W  #$000f,D0
  BSR.W PrintMemPeekerHelpChar
  MOVE.W  D3,D0
  ADDQ.W  #1,memPeekHelpX
  ANDI.W  #$fff0,D0
  ROL.L #4,D0
  DBF D1,LAB_A19E64
  MOVEM.L (A7)+,D0-D3
LAB_A19E84:
  RTS

LAB_A19E86:
  DC.B  "1: 000000 MODE:        HIRES     ",$D,"2: 000000 DDFSTRT END  0000"
  DC.B  " 0000 ",$D,"3: 000000 MODULO:      0000      ",$D,"4: 000000 WIDTH HEIG"
  DC.B  "HT 0000 0000 ",$D,"5: 000000 COLOR VALUE  0000 0000 ",$D,"6: 000000 PLA"
  DC.B  "NES:      0000      ",$D,"7: 000000 COPPER:      0000000   ",$D,"8: 000"
  DC.B  "000 FMODE: 00  NMODE: 0000 ",$D,$D,0

LAB_A19F98:
  DC.L  $000eaaae,$00044444,$000e2e8e,$000e262e
  DC.L  $0008ae22,$000e8e2e,$000e8eae,$000e2648
  DC.L  $000eaeae,$000eae2e,$0004aeaa,$000cacac
  DC.L  $000e888e,$000caaac,$000e8c8e,$000e8c88
  DC.L  $000e8eae,$000aaeaa,$00040444,$000222a4
  DC.L  $000aacaa,$0008888e,$000aeaaa,$000aeeea
  DC.L  $000eaaae,$000eae88,$000eaaee,$000cacca
  DC.L  $0006842c,$000e4444,$000aaaae,$000aaae4
  DC.L  $000aaaea,$000aa4aa,$000aa444,$000e248e
  DC.L  $00044404,$00004040,$00000002
  DS.L  1
  DC.L  $000e2644
LAB_A1A03C:
  LEA hardware,A5
  MOVE.W  #1,LAB_A480AC
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.S LAB_A1A05C
  MOVE.W  D0,LAB_A480AC
LAB_A1A05C:
  BSR.W SUB_A166C8
  MOVEQ #0,D0
  MOVE.B  CopyDiwStop,D0
  LSL.W #1,D0
  EORI.W  #$0100,D0
  MOVE.B  CopyDiwStop,D0
  MOVEQ #0,D1
  MOVE.B  CopyDiwStart,D1
  SUB.W D1,D0
  CMPI.W  #$0116,D0
  BLS.S LAB_A1A088
  MOVE.W  #$0116,D0
LAB_A1A088:
  CMPI.W  #$007f,D0
  BHI.S LAB_A1A0A4
  MOVE.B  #$80,CopyDiwStop
  MOVE.W  #$0080,D1
  SUB.W D0,D1
  MOVE.B  D1,CopyDiwStart
  BRA.S LAB_A1A0BA
LAB_A1A0A4:
  MOVE.B  #$20,CopyDiwStart
  MOVE.B  CopyDiwStart,D1
  ADD.W D0,D1
  MOVE.B  D1,CopyDiwStop
LAB_A1A0BA:
  BSR.W SUB_A1A2B0
  MOVE.W  #$010b,LAB_A480CE
  MOVE.W  #$0028,LAB_A480D2
  MOVE.W  #$010b,LAB_A480D6
  MOVE.W  #$0028,LAB_A480DA
  BSR.W SwapChipRam1
  BSR.W SUB_A1A35C
  MOVE.B  #$80,picViewerMode
  MOVE.W  #$ffff,$34(A5)
LAB_A1A0F4:
  TST.B EscapePressed
  BNE.W LAB_A1A184
  BTST  #6,ciaapra
  BEQ.S LAB_A1A112
  BTST  #2,$16(A5)
  BEQ.S LAB_A1A112
  BRA.S LAB_A1A0F4
LAB_A1A112:
  MOVE.W  $A(A5),LAB_A480DE
LAB_A1A11A:
  BSR.W SUB_A1A35C
  TST.B EscapePressed
  BNE.S LAB_A1A184
  BTST  #6,ciaapra
  BEQ.S LAB_A1A13A
  BTST  #2,$16(A5)
  BEQ.S LAB_A1A13A
  BRA.S LAB_A1A0F4
LAB_A1A13A:
  BSR.W GetMouseDelta
  BTST  #6,ciaapra
  BNE.S LAB_A1A166
  ADD.W LAB_A480CE,D0
  ADD.W LAB_A480D2,D1
  BSR.W SUB_A1A212
  MOVE.W  D0,LAB_A480CE
  MOVE.W  D1,LAB_A480D2
  BRA.S LAB_A1A11A
LAB_A1A166:
  ADD.W LAB_A480D6,D0
  ADD.W LAB_A480DA,D1
  BSR.W SUB_A1A212
  MOVE.W  D0,LAB_A480D6
  MOVE.W  D1,LAB_A480DA
  BRA.S LAB_A1A11A
LAB_A1A184:
  MOVE.W  #$0020,$96(A5)
  CLR.L $144(A5)
  CLR.L $14C(A5)
  BSR.W SUB_A1A32A
  SF  picViewerMode
  BSR.W SwapChipRam1
  LEA WidthText(PC),A0
  BSR.W PrintText
  MOVE.W  LAB_A480D6,D0
  ADDI.W  #$000e,D0
  SUB.W LAB_A480CE,D0
  BTST  #7,CopyBplCon0
  BEQ.S LAB_A1A1C4
  LSL.W #1,D0
LAB_A1A1C4:
  BSR.W ConvertToBCD
  MOVEQ #3,D1
  BSR.W PrintValue
  LEA HeightText(PC),A0
  BSR.W PrintText
  MOVE.W  LAB_A480DA,D0
  SUB.W LAB_A480D2,D0
  ADDI.W  #$000e,D0
  BSR.W ConvertToBCD
  MOVEQ #3,D1
  BSR.W PrintValue
  BRA.W PrintCrIfNotBlankLine
WidthText:
  DC.B  "Width:  x = !",0

HeightText:
  DC.B  $D,"Height: y = !",0,0

SUB_A1A212:
  CMPI.W  #$006a,D0
  BHI.S LAB_A1A21C
  MOVE.W  #$006b,D0
LAB_A1A21C:
  CMPI.W  #$01c9,D0
  BLS.S LAB_A1A226
  MOVE.W  #$01c9,D0
LAB_A1A226:
  CMPI.W  #$0019,D1
  BHI.S LAB_A1A230
  MOVE.W  #$001a,D1
LAB_A1A230:
  CMPI.W  #$0138,D1
  BLS.S LAB_A1A23A
  MOVE.W  #$0138,D1
LAB_A1A23A:
  RTS
GetMouseDelta:
  MOVEM.L D2-D3,-(A7)
  MOVEQ #0,D1
  MOVEQ #0,D3
  MOVE.W  joy0dat+hardware,D0
  MOVE.W  LAB_A480DE,D2
  MOVE.W  D0,LAB_A480DE
  MOVE.B  D0,D1
  LSR.W #8,D0
  MOVE.B  D2,D3
  LSR.W #8,D2
  SUB.W D0,D2
  SUB.W D1,D3
  CMPI.W  #$007f,D2
  BGT.S LAB_A1A288
  CMPI.W  #$007f,D3
  BGT.S LAB_A1A292
  CMPI.W  #$ff81,D2
  BLT.S LAB_A1A29C
  CMPI.W  #$ff81,D3
  BLT.S LAB_A1A2A6
LAB_A1A27A:
  MOVE.W  D2,D1
  MOVE.W  D3,D0
  NEG.W D0
  NEG.W D1
  MOVEM.L (A7)+,D2-D3
  RTS
LAB_A1A288:
  MOVE.W  #$00ff,D0
  SUB.W D2,D0
  MOVE.W  D0,D2
  BRA.S LAB_A1A27A
LAB_A1A292:
  MOVE.W  #$00ff,D0
  SUB.W D3,D0
  MOVE.W  D0,D3
  BRA.S LAB_A1A27A
LAB_A1A29C:
  MOVE.W  #$ff01,D0
  SUB.W D2,D0
  MOVE.W  D0,D2
  BRA.S LAB_A1A27A
LAB_A1A2A6:
  MOVE.W  #$ff01,D0
  SUB.W D3,D0
  MOVE.W  D0,D3
  BRA.S LAB_A1A27A
SUB_A1A2B0:
  MOVEM.L D0/A0-A3,-(A7)
  LEA EXT_100.W,A0
  LEA EXT_200.W,A1
  LEA mt_sin,A2
  MOVE.L RegSnoopAddr,A3
  MOVE.L  (A0)+,(A2)+
  MOVE.L  (A1)+,(A2)+
  MOVEQ #7,D0
LAB_A1A2C8:
  MOVE.L  (A0),(A2)+
  MOVE.L  (A1),(A2)+
  MOVE.L  #$00008000,(A0)+
  MOVE.L  #$00010000,(A1)+
  MOVE.L  (A0),(A2)+
  MOVE.L  (A1),(A2)+
  MOVE.L  #$80000000,(A0)+
  MOVE.L  #1,(A1)+
  DBF D0,LAB_A1A2C8
  MOVE.L  color17(A3),(A2)+
  MOVE.L  EXT_0,(A2)+
  MOVE.W  bplcon2(a3),(A2)+
  MOVE.L  #$5555aaaa,EXT_104.W
  MOVE.L  #$aaaa5555,-(A1)
  CLR.L EXT_0.W
  MOVE.W  bplcon2(A3),D0
  ANDI.W  #$003f,D0
  ORI.W #$0024,D0
  MOVE.W  D0,CopyBplCon2

  MOVE.W bplcon3(A3),D0
  MOVE.W  D0,CopyBplCon3

  MOVE.W bplcon4(A3),D0
  MOVE.W  D0,CopyBplCon4

  MOVE.W beamcon0(A3),D0
  MOVE.W  D0,CopyBeamCon0
  MOVE.W fmode(A3),D0
  MOVE.W  D0,CopyFmode

  MOVEM.L (A7)+,D0/A0-A3
  RTS
SUB_A1A32A:
  MOVEM.L D0/A0-A2,-(A7)
  LEA EXT_100.W,A0
  LEA EXT_200.W,A1
  LEA mt_sin,A2
  MOVEQ #$10,D0
LAB_A1A33E:
  MOVE.L  (A2)+,(A0)+
  MOVE.L  (A2)+,(A1)+
  DBF D0,LAB_A1A33E
  MOVE.L  (A2)+,color17+hardware
  MOVE.L  (A2)+,EXT_0.W
  MOVE.W  (A2)+,bplcon2+hardware
  MOVEM.L (A7)+,D0/A0-A2
  RTS
SUB_A1A35C:
  MOVEM.L D0-D1/D3-D4,-(A7)
  MOVE.W  LAB_A480CE,D4
  MOVE.W  LAB_A480D2,D3
  BSR.S SUB_A1A398
  MOVE.W  D0,EXT_100.W
  MOVE.W  D1,EXT_102.W
  MOVE.W  LAB_A480D6,D4
  MOVE.W  LAB_A480DA,D3
  BSR.S SUB_A1A398
  MOVEM.W D0-D1,EXT_200.W
  MOVE.W  #$8020,dmacon+hardware
  MOVEM.L (A7)+,D0-D1/D3-D4
  RTS
SUB_A1A398:
  MOVEM.L D2-D4,-(A7)
  MOVEQ #0,D0
  MOVEQ #0,D1
  MOVE.W  D4,D0
  LSR.W #1,D0
  MOVE.W  D4,D1
  ANDI.W  #1,D1
  MOVE.W  D3,D2
  LSL.W #8,D2
  OR.W  D2,D0
  MOVE.W  D3,D2
  LSR.W #6,D2
  ANDI.W  #4,D2
  OR.W  D2,D1
  ADDI.W  #$0010,D3
  MOVE.W  D3,D2
  LSL.W #8,D2
  OR.W  D2,D1
  MOVE.W  D3,D2
  LSR.W #7,D2
  ANDI.W  #2,D2
  OR.W  D2,D1
  MOVEM.L (A7)+,D2-D4
  RTS
SwapChipRam1:
  MOVEM.L D0-D1/A0-A1,-(A7)
  LEA ChipramSave1,A0
  LEA EXT_1000,A1
LAB_A1A3E8:
  tst.b full64k
  bne.s .1
  MOVE.B  (A0),D1
  MOVE.B  (A1),(A0)
  ADDQ.W  #2,A0
  bra.s .2
.1
  MOVE.B  (A0),D1
  MOVE.B  (A1),(A0)+
.2
  MOVE.B  D1,(A1)+
  CMP.L memSaveEnd,A1
  BNE.S LAB_A1A3E8
  MOVEM.L (A7)+,D0-D1/A0-A1
  RTS
CMD_TM:
  BSR.S ShowRemarks
  BRA.W PrintReady
CMD_TMD:
  BSR.W DeleteRemark
  BRA.W PrintReady
CMD_TMS:
  BSR.W SetRemark
  BRA.W PrintReady
ShowRemarks:
  LEA RemarksData,A3
  MOVEQ #9,D3
  LEA RemarksHeaderText(PC),A0
  JSR PrintText
LAB_A1A42C:
  TST.B (A3)
  BEQ.S LAB_A1A4A2
  LEA remarkTypes(PC),A0
  MOVE.W  (A0)+,D1
  CMP.B (A3),D1
  BCC.S LAB_A1A43E
  MOVE.B  #1,(A3)
LAB_A1A43E:
  MOVEQ #0,D0
  MOVE.B  (A3),D0
  SUBQ.W  #1,D0
  MULU  #$000b,D0
  LEA 0(A0,D0.W),A0
  JSR PrintText
  MOVEQ #0,D0
  MOVE.B  1(A3),D0
  SUBQ.W  #1,D0
  CMPI.W  #2,D0
  BLS.S LAB_A1A460
  MOVEQ #3,D0
LAB_A1A460:
  MULU  #6,D0
  LEA dataSizeText(PC),A0
  LEA 0(A0,D0.W),A0
  JSR PrintText
  BSR.W PrintSpace
  MOVE.L  2(A3),D0
  JSR PrintAddressHex
  BSR.W PrintSpace
  BSR.W PrintSpace
  MOVE.L  6(A3),D0
  JSR Print8DigitHex
  MOVEQ #3,D0
  BSR.W PrintSpaces
  MOVE.B  $A(A3),D0
  MOVEQ #1,D1
  BSR.W PrintValue
  MOVE.B  $B(A3),D0
LAB_A1A4A2:
  LEA $C(A3),A3
  BSR.W PrintCrIfNotBlankLine
  DBF D3,LAB_A1A42C
  BRA.W PrintCrIfNotBlankLine
RemarksHeaderText:
  DC.B  "name     length address maxcount player",$D,0,0

remarkTypes:
  DC.W  $000f

  DC.B  "counter   ",0
  DC.B  "lives     ",0
  DC.B  "energy    ",0
  DC.B  "time      ",0
  DC.B  "score     ",0
  DC.B  "shield    ",0
  DC.B  "money     ",0
  DC.B  "bombs     ",0
  DC.B  "ext-weap1 ",0
  DC.B  "ext-weap2 ",0
  DC.B  "level     ",0
  DC.B  "status    ",0
  DC.B  "keys      ",0
  DC.B  "counter1  ",0
  DC.B  "counter2  ",0,0

dataSizeText:
  DC.B  "byte ",0
  DC.B  "word ",0
  DC.B  "long ",0
  DC.B  "???? ",0

DeleteRemark:
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.W PrintWTF
  MOVE.L  D0,D3
  MOVEQ #9,D1
  LEA RemarksData,A1
LAB_A1A5B4:
  TST.B (A1)
  BEQ.S LAB_A1A5BE
  CMP.L 2(A1),D0
  BEQ.S LAB_A1A5D2
LAB_A1A5BE:
  LEA $C(A1),A1
  DBF D1,LAB_A1A5B4
  LEA CounterNotFoundText(PC),A0
  JSR PrintText
  BRA.W ShowRemarks
LAB_A1A5D2:
  CLR.B (A1)
  LEA CounterDeletedText(PC),A0
  JSR PrintText
  BRA.W ShowRemarks
CounterNotFoundText:
  DC.B  "Counter not found!",$D,0

CounterDeletedText:
  DC.B  "Counter deleted",$D,0,0

SetRemark:
  LEA RemarksData,A4
  MOVEQ #9,D1
LAB_A1A60E:
  TST.B (A4)
  BEQ.S LAB_A1A626
  LEA $C(A4),A4
  DBF D1,LAB_A1A60E
  LEA TooManyNotesText(PC),A0
  JSR PrintText
  BRA.W ShowRemarks
LAB_A1A626:
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.W PrintWTF
  MOVE.L  D0,2(A4)
  LEA LAB_A1A6F2(PC),A0
  JSR PrintText
  LEA remarkTypes(PC),A0
  MOVE.W  (A0)+,D2
  SUBQ.W  #1,D2
  MOVEQ #1,D3
LAB_A1A64A:
  MOVE.W  D3,D0
  JSR Print2DigitHex
  BSR.W PrintSpace
  JSR PrintText
  LEA $B(A0),A0
  MOVEQ #7,D0
  BSR.W PrintSpaces
  ADDQ.W  #1,D3
  DBF D2,LAB_A1A64A
  BSR.W PrintCrIfNotBlankLine
  JSR PrintInputChar
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.W PrintWTF
  LEA 1(A4),A4
  MOVE.B  D0,D5
  BEQ.W ShowRemarks
  LEA CounterLengthText(PC),A0
  JSR PrintText
  JSR PrintInputChar
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.W PrintWTF
  MOVE.B  D0,(A4)+
  ADDQ.W  #4,A4
  LEA MaxCountText(PC),A0
  JSR PrintText
  JSR PrintInputChar
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.W PrintWTF
  MOVE.L  D0,(A4)+
  LEA PlayerText(PC),A0
  JSR PrintText
  JSR PrintInputChar
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.W PrintWTF
  MOVE.B  D0,(A4)+
  CLR.B (A4)+
  MOVE.B  D5,-12(A4)
  BRA.W ShowRemarks
LAB_A1A6F2:
  MOVEQ #$79,D2
  MOVEQ #$65,D0
  MOVE.W  A5,-(A7)
  DS.B  1
TooManyNotesText:
  DC.B  "Too many notes!",$D,0

CounterLengthText:
  DC.B  "counterlength?",$D,"1 byte, 2 word, 3 long",$D,0
  DC.B  "counteraddress?",$D,0

MaxCountText:
  DC.B  "max-count?",$D,0

PlayerText:
  DC.B  "player?",$D,0,0

SUB_A1A758:
  CLR.L LAB_A481C8
  CLR.L LAB_A481CC
  MOVE.L  D0,LAB_A481C0
  MOVE.L  D1,LAB_A481C4
  MOVE.W  LAB_A481C2,D0
  MULU  LAB_A481C6,D0
  MOVE.L  D0,LAB_A481CC
  MOVE.W  LAB_A481C0,D0
  MULU  LAB_A481C6,D0
  ADD.L LAB_A481CA,D0
  MOVE.L  D0,LAB_A481CA
  MOVE.W  LAB_A481C2,D0
  MULU  LAB_A481C4,D0
  ADD.L LAB_A481CA,D0
  BCC.S LAB_A1A7B4
  ADDQ.W  #1,LAB_A481C8
LAB_A1A7B4:
  MOVE.L  D0,LAB_A481CA
  MOVE.W  LAB_A481C0,D0
  MULU  LAB_A481C4,D0
  ADD.L LAB_A481C8,D0
  MOVE.L  D0,LAB_A481C8
  MOVE.L  LAB_A481CC,D0
  RTS
SUB_A1A7DA:
  MOVEM.L D3-D5,-(A7)
  MOVEQ #$1F,D3
  MOVE.L  D0,D4
  MOVE.L  D1,D5
  MOVEQ #0,D0
  MOVE.L  D4,D1
LAB_A1A7E8:
  ASL.L #1,D1
  ROXL.L  #1,D0
  CMP.L D5,D0
  BCS.S LAB_A1A7F4
  SUB.L D5,D0
  ADDQ.L  #1,D1
LAB_A1A7F4:
  DBF D3,LAB_A1A7E8
  EXG D0,D1
  MOVEM.L (A7)+,D3-D5
  RTS
EditCiaData:
  MOVEQ #0,D1
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.S LAB_A1A818
  CMPI.W  #$0016,D0
  BHI.W PrintWTF
  MOVE.W  D0,D1
LAB_A1A818:
  MOVE.W  D1,D0
  BRA.W LAB_A1A81E
LAB_A1A81E:
  MOVE.W  D0,D2
  MOVE.W  #$0027,D0
  BSR.W PrintChar
  MOVE.W  D2,D0
  JSR Print2DigitHex
  BSR.W PrintSpace
  LEA saveCIAA,A0
  LEA 0(A0,D2.W),A0
  MOVE.W  #$0025,D0
  BSR.W PrintChar
  MOVE.B  (A0),D0
  MOVEQ #8,D1
  JSR PrintBinaryDigits
  BSR.W PrintSpace
  MOVE.W  #$0025,D0
  BSR.W PrintChar
  MOVE.B  $18(A0),D0
  JSR PrintBinaryDigits
  MOVEQ #5,D0
  JSR PrintSpaces(PC)
  MOVE.W  #$003b,D0
  BSR.W PrintChar
  LEA CiaRegsTable(PC),A0
  MOVE.W  D2,D0
  JSR PrintTableEntry
  JSR PrintCRToPrinter
  MOVE.W  #5,cursorX
  JMP PrintCursor

CiaRegsTable:
  DC.B  "parallel port a",0
  DC.B  "parallel port a direction",0
  DC.B  "parallel port b",0
  DC.B  "parallel port b direction",0
  DC.B  "timer a low",0
  DC.B  "timer a high",0
  DC.B  "timer b low",0
  DC.B  "timer b high",0
  DC.B  "eventcounter low",0
  DC.B  "eventcounter med",0
  DC.B  "eventcounter high",0
  DC.B  "unused",0
  DC.B  "serial port",0
  DC.B  "interrupt control reg",0
  DC.B  "control reg a",0
  DC.B  "control reg b",0
  DC.B  "ext 1",0
  DC.B  "ext 2",0
  DC.B  "ext 3",0
  DC.B  "ext 4",0
  DC.B  "ext 5",0
  DC.B  "ext 6",0
  DC.B  "ext 7",0
  DC.B  "ext 8",0,0

CMD_APOS:
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.W PrintWTF
  CMPI.W  #$0017,D0
  BHI.W PrintWTF
  MOVE.W  D0,D2
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.W PrintWTF
  MOVE.W  D0,D3
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.W PrintWTF
  MOVE.W  D0,D4
  MOVE.W  D2,D0
  LEA saveCIAA,A0
  LEA 0(A0,D0.W),A0
  MOVE.B  D3,(A0)
  MOVE.B  D4,$18(A0)
  MOVE.W  D2,D0
  ADDQ.W  #1,D0
  CMPI.W  #$0017,D0
  BHI.S LAB_A1AA18
  BRA.W LAB_A1A81E
LAB_A1AA18:
  RTS
SUB_A1AA1A:
  MOVEM.L D0-D4/A1-A5,-(A7)
  LEA EscapePressed,A4
  MOVE.W  #$f128,D2
  MOVE.W  #$5128,D3
  MOVE.W  #$00c0,D4
  MOVEQ #7,D7
  LEA SaveCpuRegs,A5
  MOVE.L  A0,D0
  CMP.L ChipMemEnd,D0
  BGT.S LAB_A1AA4A
  MOVE.L  ChipMemEnd,D6
  BRA.S LAB_A1AA72
LAB_A1AA4A:
  TST.L autoConfigMemEnd
  BEQ.S LAB_A1AA62
  CMP.L autoConfigMemEnd,D0
  BGT.S LAB_A1AA62
  MOVE.L  autoConfigMemEnd,D0
  BRA.S LAB_A1AA72
LAB_A1AA62:
  TST.L SlowMemEnd
  BEQ.W LAB_A1AB18
  MOVE.L  SlowMemEnd,D6
LAB_A1AA72:
  SUBQ.L  #2,D6
LAB_A1AA74:
  TST.B (A4)
  BNE.W LAB_A1AB18
  BSR.W memSafeReadWord
  ADDQ.W  #2,A0
  CMPA.L  D6,A0
  BNE.S LAB_A1AABA
  ADDQ.L  #2,D6
  CMP.L ChipMemEnd,D6
  BNE.S LAB_A1AAA4
  TST.L autoConfigMemEnd
  BEQ.S LAB_A1AAA4
  MOVEA.L autoConfigMemStart,A0
  MOVE.L  autoConfigMemEnd,D6
  BRA.S LAB_A1AAB8
LAB_A1AAA4:
  TST.L SlowMemEnd
  BEQ.S LAB_A1AB18
  MOVEA.L #$00c00000,A0
  MOVE.L  SlowMemEnd,D6
LAB_A1AAB8:
  SUBQ.L  #2,D6
LAB_A1AABA:
  MOVE.W  D0,D1
  ANDI.W  #$ff00,D1
  CMPI.W  #$0400,D1
  BEQ.S LAB_A1AB20
LAB_A1AAC6:
  MOVE.W  D0,D1
  AND.W D2,D1
  CMP.W D3,D1
  BNE.S LAB_A1AA74
  MOVE.W  D0,D1
  AND.W D4,D1
  CMP.W D4,D1
  BEQ.S LAB_A1AA74
  MOVE.W  D0,D1
  MOVEA.L A0,A2
  BTST  #4,D0
  BEQ.S LAB_A1AAFE
  BTST  #0,D0
  BNE.S LAB_A1AAF2
  MOVEQ #0,D0
  BSR.W memSafeReadWord
  CMPA.L  D0,A1
  BNE.S LAB_A1AA74
  BRA.S LAB_A1AB1A
LAB_A1AAF2:
  BSR.W memSafeReadLong
  CMP.L A1,D0
  BNE.W LAB_A1AA74
  BRA.S LAB_A1AB1A
LAB_A1AAFE:
  BSR.W memSafeReadWord
  EXT.L D0
  AND.W D7,D1
  ADD.W D1,D1
  ADD.W D1,D1
  MOVEA.L A5,A3
  ADD.L $20(A3,D1.W),D0
  CMPA.L  D0,A1
  BNE.W LAB_A1AA74
  BRA.S LAB_A1AB1A
LAB_A1AB18:
  SUBA.L  A0,A0
LAB_A1AB1A:
  MOVEM.L (A7)+,D0-D4/A1-A5
  RTS
LAB_A1AB20:
  MOVE.L  A0,LAB_A480DA
  MOVE.W  D0,D1
  ANDI.W  #$00c0,D1
  CMPI.W  #$00c0,D1
  BEQ.W LAB_A1ABC2
  CMPI.W  #$0080,D1
  EXG D0,D1
  BEQ.S LAB_A1AB44
  BSR.W memSafeReadWord
  ADDQ.W  #2,A0
  BRA.S LAB_A1AB4A
LAB_A1AB44:
  BSR.W memSafeReadLong
  ADDQ.W  #4,A0
LAB_A1AB4A:
  MOVE.L  D0,LAB_A480DE
  EXG D0,D1
  MOVE.W  D0,D1
  ANDI.W  #$003f,D1
  CMPI.W  #$0038,D1
  BEQ.S LAB_A1AB76
  CMPI.W  #$0039,D1
  BEQ.S LAB_A1AB82
  ANDI.W  #$0038,D1
  CMPI.W  #$0010,D1
  BEQ.S LAB_A1AB8C
  CMPI.W  #$0028,D1
  BEQ.S LAB_A1ABA2
  BRA.S LAB_A1ABC2
LAB_A1AB76:
  BSR.W memSafeReadWord
  EXT.L D0
  CMPA.L  D0,A1
  BEQ.S LAB_A1ABCC
  BRA.S LAB_A1ABC2
LAB_A1AB82:
  BSR.W memSafeReadLong
  CMPA.L  D0,A1
  BEQ.S LAB_A1ABCC
  BRA.S LAB_A1ABC2
LAB_A1AB8C:
  MOVE.W  D0,D1
  ANDI.W  #7,D1
  LSL.W #2,D1
  LEA SaveCpuRegs,A3
  CMPA.L  $20(A3,D1.W),A1
  BEQ.S LAB_A1ABCC
  BRA.S LAB_A1ABC2
LAB_A1ABA2:
  MOVE.W  D0,D1
  ANDI.W  #7,D1
  LSL.W #2,D1
  MOVEQ #0,D0
  BSR.W memSafeReadWord
  LEA SaveCpuRegs,A3
  ADD.L $20(A3,D1.W),D0
  CMPA.L  D0,A1
  BEQ.S LAB_A1ABCC
  BRA.W LAB_A1ABC2
LAB_A1ABC2:
  MOVEA.L LAB_A480DA,A0
  BRA.W LAB_A1AAC6
LAB_A1ABCC:
  MOVEA.L LAB_A480DA,A0
  BRA.W LAB_A1AB1A
CMD_TF:
  ST  LAB_A480CE
  BSR.S findDecrementOpcode
  BRA.W PrintReady
CMD_TFD:
  SF  LAB_A480CE
  BSR.S findDecrementOpcode
  BRA.W PrintReady
findDecrementOpcode:
  MOVEM.L D0-D1/D5-D6/A0-A2,-(A7)
  SF  LAB_A480CA
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.W PrintWTF
  MOVEA.L D0,A1
  SUBA.L  A0,A0
LAB_A1AC0A:
  TST.B EscapePressed
  BNE.W LAB_A1ACA8
  BSR.W SUB_A1AA1A
  MOVE.L  A0,D1
  TST.L D1
  BEQ.S LAB_A1AC80
  MOVEA.L A0,A2
  LEA SubFoundText(PC),A0
  JSR PrintText
  MOVE.L  A2,D0
  SUBQ.L  #2,D0
  JSR Print8DigitHex
  BSR.W PrintCrIfNotBlankLine
  TST.B LAB_A480CE
  BNE.S LAB_A1AC76
  LEA -2(A2),A0
  BSR.W memSafeReadWord
  ANDI.W  #$ff00,D0
  CMPI.W  #$0400,D0
  BEQ.S LAB_A1AC5C
  MOVE.B  #$4a,D0
  MOVEA.L A2,A0
  SUBQ.L  #2,A0
  BSR.W memSafeUpdateByte
  BRA.S LAB_A1AC76
LAB_A1AC5C:
  JSR memSafeReadWord(PC)
  MOVE.W  D0,D1
  MOVEQ #0,D0
  ADDQ.W  #2,A0
  JSR memSafeWriteWord(PC)
  BTST  #7,D1
  BEQ.S LAB_A1AC76
  ADDQ.W  #2,A0
  JSR memSafeWriteWord(PC)
LAB_A1AC76:
  ST  LAB_A480CA
  MOVEA.L A2,A0
  BRA.S LAB_A1AC0A
LAB_A1AC80:
  TST.B LAB_A480CE
  BNE.S LAB_A1AC98
  TST.B LAB_A480CA
  BEQ.S LAB_A1AC98
  LEA SubsEliminatedText(PC),A0
  JSR PrintText
LAB_A1AC98:
  TST.B LAB_A480CA
  BNE.S LAB_A1ACA8
  LEA NotFoundText(PC),A0
  JSR PrintText
LAB_A1ACA8:
  MOVEM.L (A7)+,D0-D1/D6-D7/A0-A2
  RTS
SubFoundText:
  DC.B  "SUB found at:",0

NotFoundText:
  DC.B  "Nothing found!",$D,0

SubsEliminatedText:
  DC.B  "SUB's eliminated",$D,0

FindMemoryRanges:
  MOVEM.L D0-D4/A0-A4,-(A7)
  if arhardware=1
  MOVEA.L #$00c00000,A0
  MOVEA.L #$00dc0000,A1
  MOVEA.L A0,A4
  ADDA.L  #$00040000,A0
LAB_40B096:
  MOVEA.L A4,A2
  ADDA.L  #$00040000,A2
  MOVE.W -3942(A2),D2
  MOVE.W -4068(A2),D3
  MOVE.W -3942(A0),D4
  MOVE.W  #$3fff,-3942(A2)
  TST.W -4068(A2)
  BNE.W LAB_40B0BC
  MOVE.W  #$bfff,-3942(A2)
  CMPI.W  #$3fff,-4068(A2)
  BEQ.W LAB_40B0FC
LAB_40B0BC:
  MOVE.W  D0,-3942(A0)
  MOVE.L  #$0000f2d4,D1
  MOVE.W  D1,-3942(A2)
  CMP.W -3942(A2),D1
  BNE.W LAB_40B102
  CMP.W -3942(A0),D1
  BEQ.W LAB_40B0F2
LAB_40B0DC:
  MOVE.L  #$0000b698,D1
  MOVE.W  D1,-3942(A2)
  CMP.W -3942(A2),D1
  BNE.W LAB_40B102
  BRA.W LAB_40B0F6
LAB_40B0F2:
  CMPA.L  A0,A2
  BEQ.S LAB_40B0DC
LAB_40B0F6:
  MOVE.W D2,-3942(A2)
  MOVE.W D3,-4068(A2)
  MOVE.W D4,-3942(A0)

  MOVEA.L A2,A4
  CMPA.L  A4,A1
  BHI.S LAB_40B096
LAB_40B0FC:
  MOVE.W  #$7fff,EXT_FFFFF09A.W
LAB_40B102:
  SUBA.L  #$00040000,A0
  CMPA.L  A0,A4
  BNE.W LAB_40B110
  SUBA.L  A4,A4
LAB_40B110:
  MOVE.L  A4,foundSlowMemEnd
  ANDI.W  #$0018,LAB_A4822E
  CMPA.L  #0,A4
  BEQ.W LAB_40B14A
  CMPA.L  #$00c80000,A4
  BLS.W LAB_40B13A
  BSET  #2,memConfigFlags
LAB_40B13A:
  BSET  #1,memConfigFlags
  BSET  #0,memConfigFlags
LAB_40B14A:
  endc

  LEA EXT_0.W,A0
  LEA EXT_200000,A1
  MOVEQ #0,D1
  MOVEA.L A0,A2
  MOVE.L  #$f2d4b698,D0
  MOVE.L  (A2),D2
  MOVE.L  D1,(A0)

LAB_A1ACF8:
  MOVE.L  D1,(A0)
  LEA $1000(A0),A0
  CMPA.L  A0,A1
  BLS.S LAB_A1AD0E
  MOVE.L  (A0),D1
  MOVE.L  D0,(A0)
  TST.L (A2)
  BNE.S LAB_A1AD0E
  CMP.L (A0),D0
  BEQ.S LAB_A1ACF8
LAB_A1AD0E:
  MOVE.L D2,(A2)
  MOVEA.L A0,A3
  MOVE.L  A3,foundChipMemEnd
  BCLR  #3,memConfigFlags
  CMPA.L  #$80000,A3
  BEQ.S LAB_A1AD2E
  BSET  #3,memConfigFlags
LAB_A1AD2E:
  MOVEM.L (A7)+,D0-D4/A0-A4
  RTS
PrintLibraries:
  LEA ListOfLibsText(PC),A0
  JSR PrintText
  MOVE.W  #$017a,D0
  BRA.W LAB_A1B2FC
PrintPorts:
  LEA ListOfPortsText(PC),A0
  JSR PrintText
  MOVE.W  #$0188,D0
  BRA.W LAB_A1B2FC
PrintResources:
  LEA ListOfResourcesText(PC),A0
  JSR PrintText
  MOVE.W  #$0150,D0
  BRA.W LAB_A1B2FC
PrintTasks:
  LEA RunningTaskText(PC),A0
  JSR PrintText
  MOVE.W  #$0114,D0
  BSR.W SUB_A1B2EC
  BSR.W PrintCR
  LEA ReadyTasksText(PC),A0
  JSR PrintText
  MOVE.W  #$0196,D0
  BSR.W LAB_A1B2FC
  BSR.W PrintCR
  LEA WaitingTasksText(PC),A0
  JSR PrintText
  MOVE.W  #$01a4,D0
  BRA.W LAB_A1B2FC

ListOfDevicesText:
  DC.B  "List of devices:",$D,0

ListOfInterruptsText:
  DC.B  "List of interrupts:",$D,0

ListOfLibsText:
  DC.B  "List of libraries:",$D,0

ListOfPortsText:
  DC.B  "List of ports:",$D,0

ListOfResourcesText:
  DC.B  "List of resources:",$D,0

RunningTaskText:
  DC.B  "Running task:",$D,0

ReadyTasksText:
  DC.B  "Ready tasks:",$D,0

WaitingTasksText:
  DC.B  "Waiting tasks:",$D,0

ShowMemQuick2:
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.W PrintWTF
  MOVEA.L D0,A4

  MOVEQ #0,D6
.dumpnextbyte:
  TST.L D6
  BNE.S .2
  MOVE.L #16,D6 

  JSR PrintCR
  TST.B EscapePressed
  BNE .3

  MOVE.L  A4,D0
  JSR PrintAddressHex
.2
  SUBQ.L  #1,D6
 
  JSR PrintSpace
  MOVE.B (A4)+,D0
  JSR Print2DigitHex
  MOVEQ #0,D0
  MOVE.W cursorX,D0
  MOVE.W D0,-(A7)
  SUB.W cpuAddrSize,D0
  SUB.W #1,D0
  DIVU #3,D0
  ADD.W #57,D0
  MOVE.W D0,cursorX
  MOVE.B -1(A4),D0
  JSR InvalidAsciiToDot
  JSR PrintChar
  MOVE.W (A7)+,cursorX
  
.3
  MOVEQ #-8,D0
  TST.B EscapePressed
  BEQ.S .dumpnextbyte

  BSR.W PrintCrIfNotBlankLine
  MOVE.L  A4,D0
  LEA QuickDunpText(PC),A0
  JSR PrintText
  JSR PrintAddressHex
  BRA.W PrintCrIfNotBlankLine


ShowMemQuick:
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.W PrintWTF
  MOVEA.L D0,A1
  MOVEQ #0,D2
  MOVEQ #7,D1
  ST  D6
LAB_A1AE3E:
  MOVEA.L A1,A0
  JSR memSafeReadByte(PC)
  CMPI.B  #$2e,D0
  BEQ.S LAB_A1AE94
  JSR InvalidAsciiToDot
  CMPI.B  #$2e,D0
  BEQ.S LAB_A1AE8A
  CMPI.B  #$c4,D0
  BEQ.S LAB_A1AE94
  CMPI.B  #$e4,D0
  BEQ.S LAB_A1AE94
  CMPI.B  #$d6,D0
  BEQ.S LAB_A1AE94
  CMPI.B  #$f6,D0
  BEQ.S LAB_A1AE94
  CMPI.B  #$dc,D0
  BEQ.S LAB_A1AE94
  CMPI.B  #$fc,D0
  BEQ.S LAB_A1AE94
  CMPI.B  #$df,D0
  BEQ.S LAB_A1AE94
  CMPI.B  #$a7,D0
  BEQ.S LAB_A1AE94
  CMPI.W  #$009f,D0
  BLS.S LAB_A1AE94
LAB_A1AE8A:
  TST.B D6
  BNE.S LAB_A1AEAC
  ST  D6
  MOVEQ #$2E,D0
  BRA.S LAB_A1AE96
LAB_A1AE94:
  SF  D6
LAB_A1AE96:
  SUBQ.W  #1,D2
  BPL.S LAB_A1AEA8
  MOVEQ #$47,D2
  EXG D0,A1
  BSR.W PrintValue
  EXG D0,A1
  BSR.W PrintSpace
LAB_A1AEA8:
  BSR.W PrintChar
LAB_A1AEAC:
  TST.B EscapePressed
  BNE.S LAB_A1AEBA
  ADDQ.W  #1,A1
  BRA.W LAB_A1AE3E
LAB_A1AEBA:
  BSR.W PrintCrIfNotBlankLine
  MOVE.L  A0,D0
  LEA QuickDunpText(PC),A0
  JSR PrintText
  JSR PrintAddressHex
  BRA.W PrintCrIfNotBlankLine

QuickDunpText:
  DC.B  "Quick-dump up to address: ",0
  even

CMD_RAMTEST:
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.W PrintWTF
  MOVEA.L D0,A1
  BCLR  #0,D0
  MOVEA.L D0,A2
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.W PrintWTF
  MOVEA.L D0,A1
  BCLR  #0,D0
  MOVEA.L D0,A3
  CMPA.L  A2,A3
  BLS.W PrintWTF
  CMPA.L  #EXT_7000,A2
  BCC.S LAB_A1AF2A
  LEA EXT_7000.W,A2
LAB_A1AF2A:
  LEA RamTesterHeaderText(PC),A0
  JSR PrintText
  LEA RamTesterPass1Text(PC),A0
  JSR PrintText
  MOVEA.L A2,A0
LAB_A1AF3C:
  CLR.W (A0)+
  CMPA.L  A0,A3
  BHI.S LAB_A1AF3C
  MOVE.L  #$004c4b40,D0
LAB_A1AF48:
  SUBQ.L  #1,D0
  BNE.S LAB_A1AF48
  MOVEA.L A2,A0
  SF  LAB_A480CA
LAB_A1AF54:
  TST.W (A0)+
  BNE.W LAB_A1AFCE
LAB_A1AF58:
  CMPA.L  A0,A3
  BHI.S LAB_A1AF54
  TST.B LAB_A480CA
  BNE.S LAB_A1AF6C
  LEA RamTesterOkText(PC),A0
  JSR PrintText
LAB_A1AF6C:
  BSR.W PrintCrIfNotBlankLine
  LEA RamTesterPass2Text(PC),A0
  JSR PrintText
  MOVEA.L A2,A0
LAB_A1AF7A:
  MOVE.W  #$ffff,(A0)+
  CMPA.L  A0,A3
  BHI.S LAB_A1AF7A
  MOVE.L  #$004c4b40,D0
LAB_A1AF88:
  SUBQ.L  #1,D0
  BNE.S LAB_A1AF88
  MOVEA.L A2,A0
  SF  LAB_A480CA
LAB_A1AF94:
  CMPI.W  #$ffff,(A0)
  BNE.S LAB_A1AFBA
LAB_A1AF9A:
  LEA 2(A0),A0
  CMPA.L  A0,A3
  BHI.S LAB_A1AF94
  TST.B LAB_A480CA
  BNE.S LAB_A1AFB2
  LEA RamTesterOkText(PC),A0
  JSR PrintText
LAB_A1AFB2:
  BSR.W PrintCrIfNotBlankLine
  BRA.W PrintReady
LAB_A1AFBA:
  ST  LAB_A480CA
  CMP.B #$ff,(A0)
  BEQ.S .1
  MOVE.L  A0,D0
  JSR PrintAddressHex
  MOVEQ #2,D0
  BSR.W PrintSpaces

.1
  CMP.B #$ff,1(A0)
  BEQ.S .2

  MOVE.L A0,D0
  ADDQ.L #1,D0
  JSR PrintAddressHex
  MOVEQ #2,D0
  BSR.W PrintSpaces
.2
  BRA.S LAB_A1AF9A
LAB_A1AFCE:
  ST  LAB_A480CA

  TST.B -2(A0)
  BEQ.S .1
  MOVE.L  A0,D0
  SUBQ.L  #2,D0
  JSR PrintAddressHex
  MOVEQ #2,D0
  BSR.W PrintSpaces

.1
  TST.B -1(A0)
  BEQ.S .2
  MOVE.L  A0,D0
  SUBQ.L  #1,D0
  JSR PrintAddressHex
  MOVEQ #2,D0
  BSR.W PrintSpaces
.2
  BRA.W LAB_A1AF58

RamTesterHeaderText:
  DC.B  "Ram-tester in action!",$D,"=====================",$D,0

RamTesterPass1Text:
  DC.B  "Pass one (ram filled with $0000)",$D,0

RamTesterPass2Text:
  DC.B  "Pass two (ram filled with $ffff)",$D,0

RamTesterOkText:
  DC.B  "RAM's are o.k.",$D,0,0

checkExecBaseValid:
  MOVEM.L D1-D2/A0-A2,-(A7)
  MOVE.L  EXT_4,D0
  MOVEA.L D0,A1
  BTST  #0,D0
  BNE.S LAB_A1B0B4
  LEA $26(A1),A0
  BSR.S SUB_A1B0EE
  BNE.S LAB_A1B0B4
  ADD.L A1,D0
  NOT.L D0
  BNE.S LAB_A1B0B4
  MOVEQ #0,D1
  MOVEQ #$16,D2
  LEA $22(A1),A0
LAB_A1B090:
  BSR.S SUB_A1B0D0
  BNE.S LAB_A1B0B4
  ADDQ.W  #2,A0
  ADD.W D0,D1
  DBF D2,LAB_A1B090
  NOT.W D1
  LEA $52(A1),A0
  JSR SUB_A1B0D0
  CMP.W D0,D1
  BNE.S LAB_A1B0B4
  MOVEQ #1,D0
  MOVEM.L (A7)+,D1-D2/A0-A2
  RTS
LAB_A1B0B4:
  MOVEQ #0,D0
  MOVEM.L (A7)+,D1-D2/A0-A2
  RTS
SUB_A1B0BC:
  MOVE.L  A1,-(A7)
  MOVEA.L A0,A1
  MOVEQ #0,D0
  JSR memSafeReadByte
  MOVEA.L (A7)+,A1
  TST.B invalidMemAddr
  RTS
SUB_A1B0D0:
  MOVEM.L D1/A0,-(A7)
  BSR.S SUB_A1B0BC
  BNE.S LAB_A1B0E2
  ADDQ.W  #1,A0
  LSL.W #8,D0
  MOVE.W  D0,D1
  BSR.S SUB_A1B0BC
  OR.W  D1,D0
LAB_A1B0E2:
  MOVEM.L (A7)+,D1/A0
  TST.B invalidMemAddr
  RTS
SUB_A1B0EE:
  MOVEM.L D1/A0,-(A7)
  BSR.S SUB_A1B0D0
  BNE.S LAB_A1B100
  ADDQ.W  #2,A0
  SWAP  D0
  MOVE.L  D0,D1
  BSR.S SUB_A1B0D0
  OR.L  D1,D0
LAB_A1B100:
  MOVEM.L (A7)+,D1/A0
  TST.B invalidMemAddr
  RTS
PrintDevices:
  LEA ListOfDevicesText(PC),A0
  JSR PrintText
  MOVE.W  #$015e,D0
  BRA.W LAB_A1B2FC
PrintAvailMem:
  BSR.W checkExecBaseValid
  BEQ.W LAB_A1B1FC
  MOVEA.L EXT_4,A0
  LEA $142(A0),A0
  LEA 4(A0),A2
  BSR.S SUB_A1B0EE
  BNE.W LAB_A1B1FC
  MOVEA.L D0,A1
  MOVEQ #0,D2
  MOVEQ #0,D3
LAB_A1B13E:
  TST.B EscapePressed
  BNE.W LAB_A1B1FC
  CMPA.L  A1,A2
  BEQ.S LAB_A1B17E
  LEA $E(A1),A0
  BSR.W SUB_A1B0D0
  BNE.W LAB_A1B1FC
  MOVE.W  D0,D1
  LEA $1C(A1),A0
  BSR.S SUB_A1B0EE
  BNE.W LAB_A1B1FC
  BTST  #1,D1
  BEQ.S LAB_A1B16E
  ADD.L D0,D2
  BRA.S LAB_A1B170
LAB_A1B16E:
  ADD.L D0,D3
LAB_A1B170:
  MOVEA.L A1,A0
  BSR.W SUB_A1B0EE
  BNE.W LAB_A1B1FC
  MOVEA.L D0,A1
  BRA.S LAB_A1B13E
LAB_A1B17E:
  LEA MemBytesFreeText(PC),A0
  JSR PrintText

  MOVEQ #$21,D0
  MOVEQ #7,D1
  BSR.W PrintChar
  MOVE.L  D2,D0
  BSR.W ConvertToBCD
  BSR.W PrintValue
  MOVEQ #3,D0
  BSR.W PrintSpaces
  MOVEQ #$21,D0
  MOVEQ #8,D1
  BSR.W PrintChar
  MOVE.L  D3,D0
  BSR.W printBigVal
  MOVEQ #2,D0
  BSR.W PrintSpaces
  MOVEQ #$21,D0
  BSR.W PrintChar
  MOVE.L  D2,D0
  ADD.L D3,D0
  BSR.W printBigVal
  BRA.W PrintCrIfNotBlankLine

MemBytesFreeText:
  DC.B  "Memorybytes free:",$D,"Chipmem    Fastmem       Totalmem",$D,0
  even

printBigVal:
  MOVEM.L D0-D7,-(SP)
  MOVE.L D0,D1
  CLR.L D0
  JSR Print8DigitHex
  JSR Print2DigitHex
  JSR PrintSpace(PC)
  MOVE.L cursorX,-(A7)
  MOVE.W  #CursorLeft,D0
  BSR.W PrintChar
  BSR.W PrintChar
  MOVEQ #0,D4
  MOVEQ #0,D5
.1:
  CLR.L D0
  MOVE.W  #$0020,D3
  MOVEQ #$A,D2
.2:
  ASL.L #1,D1
  ROXL.L  #1,D0
  CMP.L D2,D0
  BCS.S .3
  SUB.L D2,D0
  ADDQ.L  #1,D1
.3:
  SUBQ.W  #1,D3
  BNE.S .2
  MOVE.L  D1,D2
  MOVEQ #1,D1
  BSR.W PrintValue

  MOVE.W  #CursorLeft,D0
  BSR.W PrintChar
  BSR.W PrintChar
  MOVE.L  D2,D1
  BNE.S .1
  MOVE.L (A7)+,cursorX
  MOVEM.L (Sp)+,D0-D7
  RTS

LAB_A1B1FC:
  MOVE.L  A0,-(A7)
  LEA ExecbaseInvalidText(PC),A0
  JSR PrintText
  MOVEA.L (A7)+,A0
  RTS

ExecbaseInvalidText:
  DC.B  "Execbase not valid!",$D,0,0

SUB_A1B220:
  MOVEM.L D0-D1/A1-A2,-(A7)
  MOVEA.L A0,A2
  BSR.W SUB_A1B2C0
  BEQ.S LAB_A1B28E
  MOVE.L  A2,D0
  JSR PrintAddressHex
  MOVEQ #2,D0
  BSR.W PrintSpaces
  EXG A0,A1
  JSR PrintText
  LEA 8(A2),A0
  BSR.W SUB_A1B0BC
  BNE.S LAB_A1B28E
  CMPI.B  #$0d,D0
  BNE.S LAB_A1B286
  BSR.W PrintSpace
  LEA $AC(A2),A0
  BSR.W SUB_A1B0EE
  BNE.S LAB_A1B28E
  TST.L D0
  BEQ.S LAB_A1B286
  LSL.L #2,D0
  MOVEA.L D0,A0
  LEA $10(A0),A0
  BSR.W SUB_A1B0EE
  BNE.S LAB_A1B28E
  TST.L D0
  BEQ.S LAB_A1B286
  LSL.L #2,D0
  MOVEA.L D0,A0
  MOVEQ #$3C,D0
  BSR.W PrintChar
  BSR.S SUB_A1B296
  MOVEQ #$3E,D0
  BSR.W PrintChar
LAB_A1B286:
  MOVEA.L A1,A0
  MOVEM.L (A7)+,D0-D1/A1-A2
  RTS
LAB_A1B28E:
  SUBA.L  A0,A0
  MOVEM.L (A7)+,D0-D1/A1-A2
  RTS
SUB_A1B296:
  MOVEM.L D0-D1/A0,-(A7)
  JSR memSafeReadByte
  ADDQ.W  #1,A0
  TST.W D0
  BEQ.S LAB_A1B2BA
  SUBQ.W  #1,D0
  MOVE.W  D0,D1
LAB_A1B2A8:
  JSR memSafeReadByte
  ADDQ.W  #1,A0
  JSR InvalidAsciiToDot
  BSR.W PrintChar
  DBF D1,LAB_A1B2A8
LAB_A1B2BA:
  MOVEM.L (A7)+,D0-D1/A0
  RTS
SUB_A1B2C0:
  MOVE.L  D0,-(A7)
  BSR.W SUB_A1B0EE
  BNE.S LAB_A1B2E6
  MOVEA.L D0,A1
  LEA $A(A0),A0
  BSR.W SUB_A1B0EE
  BNE.S LAB_A1B2E6
  MOVEA.L D0,A0
  EXG A0,A1
  BSR.W SUB_A1B0EE
  BNE.S LAB_A1B2E6
  TST.L D0
  BEQ.S LAB_A1B2E6
  MOVE.L  (A7)+,D0
  RTS
LAB_A1B2E6:
  MOVE.L  (A7)+,D0
  SUBA.L  A0,A0
  RTS
SUB_A1B2EC:
  ST  LAB_A481E1
  BSR.S LAB_A1B306
  SF  LAB_A481E1
  RTS
LAB_A1B2FC:
  SF  LAB_A481E1
  BRA.W LAB_A1B306
LAB_A1B306:
  MOVE.L  A0,-(A7)
  MOVE.L  D0,D1
  BSR.W checkExecBaseValid
  BEQ.S LAB_A1B35A
  MOVEA.L EXT_4.W,A0
  MOVE.L  D1,D0
  LEA 0(A0,D0.W),A0
  MOVE.L  A0,D0
  BSR.W SUB_A1B0EE
  BNE.S LAB_A1B35A
  MOVEA.L D0,A0
  BSR.W SUB_A1B0EE
  BNE.S LAB_A1B35A
  TST.L D0
  BNE.S LAB_A1B338
  LEA EmptyText(PC),A0
  JSR PrintText
  BRA.S LAB_A1B356
LAB_A1B338:
  TST.B EscapePressed
  BNE.S LAB_A1B356
  BSR.W SUB_A1B220
  BSR.W PrintCrIfNotBlankLine
  MOVE.L  A0,D0
  TST.B LAB_A481E1
  BNE.S LAB_A1B356
  TST.L D0
  BNE.S LAB_A1B338
LAB_A1B356:
  MOVEA.L (A7)+,A0
  RTS
LAB_A1B35A:
  MOVEA.L (A7)+,A0
  MOVEQ #0,D0
  RTS
EmptyText:
  DC.B  "empty!",$D,0

PrintInterrupts:
  LEA ListOfInterruptsText(PC),A0
  JSR PrintText
  MOVE.W  #$016c,D0
  BRA.S LAB_A1B2FC

LAB_40B89E:
  CMPI.B  #$13,kickstartVersion
  BLS.W LAB_40B9CE
  BRA.W LAB_40B8B0
LAB_40B8AE:
  MOVE.L  A1,(A0)+
LAB_40B8B0:
  DBF D1,LAB_40B8AE
  MOVEQ #0,D2
  MOVEQ #0,D3
  MOVEQ #0,D4
  MOVEQ #0,D5
  MOVEQ #0,D6
  MOVEQ #0,D7
  SUBA.L  A6,A6
  MOVEA.L A6,A5
  MOVEQ #0,D0
  MOVEA.L D0,A2
  MOVEA.L ChipMemEnd,A3
  MOVE.L  D2,-(A7)
  LEA EXT_400.W,A0
  LEA EXT_F8031C,A1
  MOVE.L  A3,D0
  MOVE.L  A0,D1
  SUB.L D1,D0
  MOVE.W  #$0303,D1
  MOVEQ #-10,D2
  PEA $00f81f32
  JSR SUB_A253D0
  MOVE.L  (A7)+,D2
  LEA EXT_400.W,A0
  MOVE.L  #$0000057c,D0
  PEA $00f81c02
  JSR SUB_A253D0
  MOVEA.L D0,A6
  SUBA.W  #$fce8,A6
  MOVE.L  A6,EXT_4.W
  MOVEA.L A6,A0
  MOVE.W  #$0098,D1
LAB_40B91A:
  CLR.L (A0)+
  DBF D1,LAB_40B91A
  MOVE.W  EXT_F8000E,$22(A6)
  MOVE.W  A2,$128(A6)
  MOVE.L  A3,$3E(A6)
  MOVE.L  A5,$26(A6)
  MOVEM.L D2-D4,$222(A6)
  MOVEM.L D5-D7,$2A(A6)
  MOVEQ #-1,D6
  CMPI.L  #$48454c50,EXT_0.W
  BNE.W LAB_40B958
  MOVEM.L EXT_100.W,D6-D7
  BSET  #$1F,D6
LAB_40B958:
  MOVEM.L D6-D7,$202(A6)
  MOVEA.L A6,A0
  LEA EXT_F81F84,A1
  MOVEA.L A1,A2
  PEA $00f81ad0
  JSR SUB_A253D0
  MOVE.W  D0,$10(A6)
  MOVE.W  #$0264,$12(A6)
  LEA $17A(A6),A0
  MOVE.L  A0,8(A0)
  ADDQ.L  #4,A0
  CLR.L (A0)
  MOVE.L  A0,-(A0)
  LEA $142(A6),A0
  MOVE.L  A0,8(A0)
  ADDQ.L  #4,A0
  CLR.L (A0)
  MOVE.L  A0,-(A0)
  LEA EXT_400.W,A1
  PEA $00f81904
  JSR SUB_A253D0
  LEA EXT_C00000,A0
  LEA EXT_DC0000,A1
  MOVEA.L SlowMemEnd,A4
  BSR dovpos0
  JMP EXT_F802C2
LAB_40B9CC:
  MOVE.L  A1,(A0)+
LAB_40B9CE:
  DBF D1,LAB_40B9CC
  MOVE.L  #$ffffffff,D6
  CMPI.L  #$48454c50,EXT_0.W
  BNE.S LAB_40B9EC
  CLR.L EXT_0.W
  MOVEM.L EXT_100.W,D6-D7
LAB_40B9EC:
  LEA EXT_400.W,A6
  SUBA.W  #$fd8a,A6
  LEA EXT_C00000,A0
  LEA EXT_DC0000,A1
  MOVEA.L SlowMemEnd,A4
  MOVE.L  A4,D0
  BEQ.W LAB_40BA12
  LEA EXT_C00276,A6
LAB_40BA12:
  LEA EXT_0.W,A0
  LEA EXT_200000,A1
  MOVEA.L ChipMemEnd,A3
  LEA EXT_FC0240,A5
  BSR dovpos0
  JMP (A5)
GetDrivesConnected:
  MOVEM.L D0-D4,-(A7)
  MOVEQ #0,D3
  MOVEQ #3,D4
  MOVE.B  #$ff,ciabddrb
LAB_A1B386:
  BSET  D4,ciabprb
  NOP
  NOP
  NOP
  NOP
  BCLR  #7,ciabprb
  NOP
  NOP
  NOP
  NOP
  BCLR  D4,ciabprb
  NOP
  NOP
  NOP
  NOP
  BSET  D4,ciabprb
  NOP
  NOP
  NOP
  NOP
  BSET  #7,ciabprb
  NOP
  NOP
  NOP
  NOP
  BCLR  D4,ciabprb
  NOP
  NOP
  NOP
  NOP
  BSET  D4,ciabprb
  MOVEQ #0,D0
  MOVEQ #$1F,D1
LAB_A1B3E8:
  LSL.L #1,D0
  BCLR  D4,ciabprb
  NOP
  NOP
  NOP
  NOP
  MOVE.B  ciaapra,D2
  LSR.B #5,D2
  ANDI.B  #1,D2
  OR.B  D2,D0
  BSET  D4,ciabprb
  NOP
  NOP
  DBF D1,LAB_A1B3E8
  BCLR  D3,DrivesConnectedLo
  NOT.L D0
  BEQ.S LAB_A1B424
  BSET  D3,DrivesConnectedLo
LAB_A1B424:
  ADDQ.W  #1,D3
  ADDQ.W  #1,D4
  CMPI.W  #4,D3
  BNE.W LAB_A1B386
  BSET  #0,DrivesConnectedLo
  MOVEM.L (A7)+,D0-D4
  RTS
CMD_FAQ:
  ST  LAB_A480CA
  BSR.S FindAddrOpcodeQuick
  BRA.W PrintReady
FindAddressingOpcode:
  SF  LAB_A480CA
FindAddrOpcodeQuick:
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.W PrintWTF
  MOVE.L  D0,D1
  MOVEA.L lowestMem,A1
  MOVEA.L highestMem,A2
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.S LAB_A1B490
  BCLR  #0,D0
  MOVEA.L D0,A1
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.S LAB_A1B490
  BCLR  #0,D0
  MOVEA.L D0,A2
LAB_A1B490:
  CMPA.L  A2,A1
  BGT.W PrintWTF
  JSR PrintSearchInfo
  MOVEA.L A1,A0
  LEA EscapePressed,A5
  MOVEA.L A2,A6
  MOVE.L  ChipMemEnd,D0
  CMP.L A0,D0
  BLS.S LAB_A1B4B6
  CMP.L A2,D0
  BGT.S LAB_A1B506
  MOVEA.L D0,A2
LAB_A1B4B6:
  TST.L autoConfigMemEnd
  BEQ.S LAB_A1B4DE
  MOVE.L  autoConfigMemEnd,D0
  CMP.L A0,D0
  BLS.S LAB_A1B4DE
  MOVE.L  autoConfigMemStart,D0
  CMP.L A0,D0
  BGT.S LAB_A1B4DE
  MOVE.L  autoConfigMemEnd,D0
  CMP.L A2,D0
  BGT.S LAB_A1B506
  MOVE.L  A2,D0
LAB_A1B4DE:
  TST.L SlowMemEnd
  BEQ.S LAB_A1B506
  MOVE.L  SlowMemEnd,D0
  CMP.L A0,D0
  BLS.S LAB_A1B506
  MOVE.L  #$00c00000,D0
  CMP.L A0,D0
  BGT.S LAB_A1B506
  MOVE.L  SlowMemEnd,D0
  CMP.L A2,D0
  BGT.S LAB_A1B506
  MOVEA.L D0,A2
LAB_A1B506:
  TST.B (A5)
  BNE.W LAB_A1B5D0
  CMPA.L  A2,A0
  BLE.S LAB_A1B572
  CMPA.L  A6,A2
  BGE.W LAB_A1B5D0
  MOVE.L  ChipMemEnd,D0
  CMP.L A2,D0
  BNE.S LAB_A1B55E
  TST.L autoConfigMemEnd
  BEQ.S LAB_A1B53E
  MOVEA.L autoConfigMemStart,A0
  MOVE.L  autoConfigMemEnd,D0
  MOVEA.L A6,A2
  CMP.L A6,D0
  BGE.S LAB_A1B53C
  MOVEA.L D0,A2
LAB_A1B53C:
  BRA.S LAB_A1B572
LAB_A1B53E:
  TST.L SlowMemEnd
  BEQ.W LAB_A1B5D0
  MOVEA.L #$00c00000,A0
  MOVE.L  SlowMemEnd,D0
  MOVEA.L A6,A2
  CMP.L A6,D0
  BGE.S LAB_A1B55C
  MOVEA.L D0,A2
LAB_A1B55C:
  BRA.S LAB_A1B572
LAB_A1B55E:
  TST.L autoConfigMemEnd
  BEQ.S LAB_A1B5D0
  MOVE.L  autoConfigMemEnd,D0
  CMP.L A2,D0
  BEQ.S LAB_A1B53E
  BRA.S LAB_A1B5D0
LAB_A1B572:
  MOVEA.L A0,A4
  BSR.W memSafeReadWord
  TST.W D0
  BEQ.S LAB_A1B594
  ANDI.W  #$f000,D0
  CMPI.W  #$f000,D0
  BEQ.S LAB_A1B594
  CMPI.W  #$7000,D0
  BEQ.S LAB_A1B594
  CMPI.W  #$a000,D0
  BEQ.S LAB_A1B594
  BRA.S LAB_A1B59A
LAB_A1B594:
  ADDQ.W  #2,A0
  BRA.W LAB_A1B506
LAB_A1B59A:
  MOVEM.L D0-D3/A1-A4,-(A7)
  BSR.W SUB_A15324
  MOVEM.L (A7)+,D0-D3/A1-A4
  LEA LAB_A47FBA,A3
  BSR.S SUB_A1B622
  CMP.L D0,D1
  BEQ.S LAB_A1B60A
  LEA LAB_A47FCC,A3
  BSR.S SUB_A1B622
  CMP.L D0,D1
  BEQ.S LAB_A1B60A
LAB_A1B5BE:
  TST.B LAB_A480CA
  BNE.W LAB_A1B506
  LEA 2(A4),A0
  BRA.W LAB_A1B506
LAB_A1B5D0:
  LEA SearchedUptoAddrText(PC),A0
  JSR PrintText
  MOVE.L  A4,D0
  CMPI.L  #$00c00000,D0
  BNE.S LAB_A1B5EA
  MOVE.L  ChipMemEnd,D0
LAB_A1B5EA:
  JSR PrintAddressHex
  BRA.W PrintCrIfNotBlankLine

SearchedUptoAddrText:
  DC.B  "Searched up to adr: ",0,0

LAB_A1B60A:
  MOVE.L  A4,D0
  JSR PrintAddressHex
  MOVEQ #1,D0
  BSR.W PrintSpaces
  JSR SUB_A1613A(PC)
  BSR.W PrintCrIfNotBlankLine
  BRA.S LAB_A1B5BE
SUB_A1B622:
  MOVEM.L D1-D2/A0,-(A7)
  MOVEQ #-1,D0
  MOVE.W  (A3),D1
  BMI.S LAB_A1B650
  CMPI.W  #2,D1
  BEQ.S LAB_A1B656
  CMPI.W  #5,D1
  BEQ.S LAB_A1B668
  CMPI.W  #7,D1
  BEQ.S LAB_A1B680
  CMPI.W  #8,D1
  BEQ.S LAB_A1B680
  CMPI.W  #9,D1
  BEQ.S LAB_A1B686
  CMPI.W  #$000f,D1
  BEQ.S LAB_A1B690
LAB_A1B650:
  MOVEM.L (A7)+,D1-D2/A0
  RTS
LAB_A1B656:
  MOVE.L  2(A3),D1
  LSL.W #2,D1
  LEA SaveCpuRegs2,A0
  MOVE.L  0(A0,D1.W),D0
  BRA.S LAB_A1B650
LAB_A1B668:
  MOVE.L  2(A3),D1
  MOVE.L  6(A3),D2
  LSL.W #2,D1
  LEA SaveCpuRegs2,A0
  MOVE.L  0(A0,D1.W),D0
  ADD.L D2,D0
  BRA.S LAB_A1B650
LAB_A1B680:
  MOVE.L  2(A3),D0
  BRA.S LAB_A1B650
LAB_A1B686:
  MOVE.L  A4,D0
  ADDQ.L  #2,D0
  ADD.L 6(A3),D0
  BRA.S LAB_A1B650
LAB_A1B690:
  MOVE.L  6(A3),D0
  BRA.S LAB_A1B650
CMD_A:
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.W PrintWTF
  MOVEA.L D0,A1
  MOVEQ #$5E,D0
  BSR.W PrintChar
  MOVE.L  A1,D0
  JSR PrintAddressHex
  BRA.W PrintSpace
memSafeWriteWordA1:
  MOVE.L  A0,-(A7)
  MOVEA.L A1,A0
  BSR.W memSafeWriteWord
  MOVEA.L (A7)+,A0
  RTS
CMD_UPARROW:
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.W PrintWTF
  MOVEA.L D0,A1
  MOVEM.L D7/A0,-(A7)
  BSR.W readCmdCharSkipSpaces
  MOVEM.L (A7)+,D7/A0
  TST.B endOfCmdString
  BEQ.S LAB_A1B6EA
  RTS
LAB_A1B6EA:
  TST.B robdmode
  BEQ.S LAB_A1B714
  ST  LAB_A489FC
  MOVE.L  -4(A1),LAB_A489FE
  MOVE.L  -4(A1),LAB_A48A02
  MOVE.L  A1,LAB_A48A08
  CLR.W LAB_A48A06
LAB_A1B714:
  MOVE.L  #$0020002e,D0
  BSR.W SUB_A1C7FE
  SWAP  D0
  TST.W D0
  BEQ.W LAB_A1C162
  SWAP  D0
  MOVE.L  D0,D2
  SWAP  D0
  BSR.W SUB_A1C7B6
  TST.W D0
  BMI.W PrintWTF
  MOVE.W  D1,LAB_A480CA
  MOVE.W  D0,LAB_A47FB6
  SUBI.W  #$003a,LAB_A47FB6
  MOVE.W  #$ffff,LAB_A47FB8
  CMPI.W  #$002e,D2
  BNE.S LAB_A1B788
  BSR.W readCmdChar
  MOVE.W  #0,LAB_A47FB8
  CMPI.B  #$42,D0
  BEQ.S LAB_A1B788
  MOVE.W  #1,LAB_A47FB8
  CMPI.B  #$57,D0
  BEQ.S LAB_A1B788
  MOVE.W  #2,LAB_A47FB8
  CMPI.B  #$4c,D0
  BNE.W PrintWTF
LAB_A1B788:
  BSR.W SUB_A1C374
  CMPI.W  #9,LAB_A47FBA
  BNE.S LAB_A1B7A6
  MOVE.L  LAB_A47FBC,D0
  SUB.L A1,D0
  SUBQ.L  #2,D0
  MOVE.L  D0,LAB_A47FBC
LAB_A1B7A6:
  LEA 2(A1),A4
  MOVE.W  LAB_A47FB6,D0
  ADDI.W  #$003a,D0
  BNE.W LAB_A1B848
  TST.W LAB_A47FB8
  BPL.W PrintWTF
  TST.W LAB_A47FCC
  BPL.W PrintWTF
  MOVE.W  #$6100,D0
LAB_A1B7D0:
  SUBQ.W  #1,LAB_A47FBA
  ORI.W #1,LAB_A47FBA
  CMPI.W  #7,LAB_A47FBA
  BNE.W PrintWTF
  MOVE.L  LAB_A47FBC,D1
  SUB.L A1,D1
  SUBQ.L  #2,D1
  CMPI.W  #1,LAB_A47FB8
  BEQ.S LAB_A1B810
  MOVE.L  D1,D2
  ANDI.L  #$ffffff80,D2
  BEQ.S LAB_A1B83E
  EORI.L  #$ffffff80,D2
  BEQ.S LAB_A1B83E
LAB_A1B810:
  MOVE.L  D1,D2
  ANDI.L  #$ffff8000,D2
  BEQ.S LAB_A1B824
  EORI.L  #$ffff8000,D2
  BNE.W PrintWTF
LAB_A1B824:
  BSR.W memSafeWriteWordA1
  MOVEM.L D0/A0,-(A7)
  MOVEA.L A4,A0
  MOVE.W  D1,D0
  BSR.W memSafeWriteWord
  ADDQ.W  #2,A4
  MOVEM.L (A7)+,D0/A0
  BRA.W LAB_A1C162
LAB_A1B83E:
  OR.B  D1,D0
  BSR.W memSafeWriteWordA1
  BRA.W LAB_A1C162
LAB_A1B848:
  CMPI.W  #$0010,D0
  BHI.S LAB_A1B88C
  TST.W LAB_A47FB8
  BPL.W PrintWTF
  TST.W LAB_A47FCC
  BPL.W PrintWTF
  MOVE.W  LAB_A47FBA,D1
  MOVE.W  #$01fd,D2
  BTST  D1,D2
  BEQ.W PrintWTF
  MOVE.W  D0,D1
  SUBQ.W  #1,D1
  MOVE.W  #$50c0,D0
  BSR.W SUB_A1C17E
  LEA LAB_A47FBA,A0
  BSR.W SUB_A1C1E2
  BRA.W LAB_A1C162
LAB_A1B88C:
  CMPI.W  #$0020,D0
  BHI.S LAB_A1B8BA
  TST.W LAB_A47FCC
  BPL.W PrintWTF
  CMPI.W  #8,LAB_A47FBA
  BNE.W PrintWTF
  MOVE.W  D0,D1
  SUBI.W  #$0011,D1
  MOVE.W  #$6000,D0
  BSR.W SUB_A1C17E
  BRA.W LAB_A1B7D0
LAB_A1B8BA:
  CMPI.W  #$0021,D0
  BNE.S LAB_A1B8C6
  MOVE.W  #$0011,D0
  BRA.S LAB_A1B88C
LAB_A1B8C6:
  CMPI.W  #$0022,D0
  BNE.S LAB_A1B90E
  TST.W LAB_A47FB8
  BPL.W PrintWTF
  TST.W LAB_A47FCC
  BPL.W PrintWTF
  CMPI.W  #$000b,LAB_A47FBA
  BNE.W PrintWTF
  MOVE.W  #$4e72,D0
  BSR.W memSafeWriteWordA1
  MOVEM.L D0/A0,-(A7)
  MOVEA.L A4,A0
  MOVE.W  LAB_A47FBE,D0
  BSR.W memSafeWriteWord
  ADDQ.W  #2,A4
  MOVEM.L (A7)+,D0/A0
  BRA.W LAB_A1C162
LAB_A1B90E:
  CMPI.W  #$0023,D0
  BNE.S LAB_A1B946
  TST.W LAB_A47FB8
  BPL.W PrintWTF
  TST.W LAB_A47FCC
  BPL.W PrintWTF
  CMPI.W  #$000b,LAB_A47FBA
  BNE.W PrintWTF
  MOVE.W  #$4e40,D0
  OR.L  LAB_A47FBC,D0
  BSR.W memSafeWriteWordA1
  BRA.W LAB_A1C162
LAB_A1B946:
  CMPI.W  #$0024,D0
  BNE.W LAB_A1BAE8
  CMPI.W  #$000b,LAB_A47FBA
  BHI.S LAB_A1B9C2
  CMPI.W  #8,LAB_A47FCC
  BHI.S LAB_A1B9C2
  MOVE.W  LAB_A47FB8,D1
  BPL.S LAB_A1B972
  MOVEQ #1,D1
  MOVE.W  D1,LAB_A47FB8
LAB_A1B972:
  CMPI.W  #2,D1
  BEQ.S LAB_A1B97E
  ADDQ.W  #1,D1
  ORI.W #1,D1
LAB_A1B97E:
  ROR.W #4,D1
  MOVE.W  D1,D0
  LEA LAB_A47FBA,A0
  BSR.W SUB_A1C1E2
  MOVEM.L D0/A0,-(A7)
  MOVEA.L A1,A0
  BSR.W memSafeReadWord
  MOVE.W  D0,D2
  MOVEM.L (A7)+,D0/A0
  MOVEQ #0,D0
  LEA LAB_A47FCC,A0
  BSR.W SUB_A1C1E2
  MOVE.W  D0,D1
  LSL.W #3,D0
  ANDI.W  #$01c0,D0
  ROR.W #7,D1
  ANDI.W  #$0e00,D1
  OR.W  D1,D0
  OR.W  D2,D0
  BSR.W memSafeWriteWordA1
  BRA.W LAB_A1C162
LAB_A1B9C2:
  CMPI.W  #$000c,LAB_A47FCC
  BNE.S LAB_A1BA00
  MOVE.W  LAB_A47FBA,D1
  MOVE.W  #$0ffd,D2
  BTST  D1,D2
  BEQ.W PrintWTF
  TST.W LAB_A47FB8
  BPL.W PrintWTF
  LEA LAB_A47FBA,A0
  MOVE.W  #1,LAB_A47FB8
  MOVE.W  #$44c0,D0
  BSR.W SUB_A1C1E2
  BRA.W LAB_A1C162
LAB_A1BA00:
  CMPI.W  #$000d,LAB_A47FCC
  BNE.S LAB_A1BA56
  MOVE.W  LAB_A47FBA,D1
  MOVE.W  #$0ffd,D2
  BTST  D1,D2
  BEQ.W PrintWTF
  MOVE.W  #$46c0,D0
  TST.W LAB_A47FB8
  BMI.S LAB_A1BA40
  CMPI.W  #1,LAB_A47FB8
  BEQ.S LAB_A1BA40
  CMPI.W  #0,LAB_A47FB8
  BNE.W PrintWTF
  MOVE.W  #$44c0,D0
LAB_A1BA40:
  LEA LAB_A47FBA,A0
  MOVE.W  #1,LAB_A47FB8
  BSR.W SUB_A1C1E2
  BRA.W LAB_A1C162
LAB_A1BA56:
  CMPI.W  #$000d,LAB_A47FBA
  BNE.S LAB_A1BA8C
  TST.W LAB_A47FB8
  BPL.W PrintWTF
  MOVE.W  LAB_A47FCC,D1
  MOVE.W  #$01fd,D2
  BTST  D1,D2
  BEQ.W PrintWTF
  LEA LAB_A47FCC,A0
  MOVE.W  #$40c0,D0
  BSR.W SUB_A1C1E2
  BRA.W LAB_A1C162
LAB_A1BA8C:
  TST.W LAB_A47FB8
  BPL.W PrintWTF
  CMPI.W  #$000f,LAB_A47FBA
  BNE.S LAB_A1BABE
  CMPI.W  #1,LAB_A47FCC
  BNE.W PrintWTF
  MOVE.W  #$4e68,D0
  OR.L  LAB_A47FCE,D0
  BSR.W memSafeWriteWordA1
  BRA.W LAB_A1C162
LAB_A1BABE:
  CMPI.W  #$000f,LAB_A47FCC
  BNE.W PrintWTF
  CMPI.W  #1,LAB_A47FBA
  BNE.W PrintWTF
  MOVE.W  #$4e60,D0
  OR.L  LAB_A47FBC,D0
  BSR.W memSafeWriteWordA1
  BRA.W LAB_A1C162
LAB_A1BAE8:
  CMPI.W  #$0025,D0
  BNE.S LAB_A1BB44
  CMPI.W  #1,LAB_A47FCC
  BNE.W PrintWTF
  MOVE.W  LAB_A47FBA,D1
  MOVE.W  #$0fff,D0
  BTST  D1,D0
  BEQ.W PrintWTF
  MOVE.W  LAB_A47FB8,D1
  BEQ.W PrintWTF
  BPL.S LAB_A1BB1E
  MOVEQ #1,D1
  MOVE.W  D1,LAB_A47FB8
LAB_A1BB1E:
  MOVE.W  #$3040,D0
  CMPI.W  #1,D1
  BEQ.S LAB_A1BB2C
  MOVE.W  #$2040,D0
LAB_A1BB2C:
  MOVE.L  LAB_A47FCE,D1
  ROR.W #7,D1
  OR.W  D1,D0
  LEA LAB_A47FBA,A0
  BSR.W SUB_A1C1E2
  BRA.W LAB_A1C162
LAB_A1BB44:
  CMPI.W  #$0027,D0
  BNE.W LAB_A1BBE6
  MOVE.W  LAB_A47FB8,D1
  BEQ.W PrintWTF
  BPL.S LAB_A1BB60
  MOVEQ #1,D1
  MOVE.W  D1,LAB_A47FB8
LAB_A1BB60:
  SUBQ.W  #1,D1
  LSL.W #6,D1
  MOVE.W  #$0188,D0
  OR.W  D1,D0
  MOVE.L  LAB_A47FCE,D2
  OR.L  LAB_A47FD2,D0
  MOVE.L  LAB_A47FBC,D3
  ROR.W #7,D3
  OR.W  D3,D0
  CMPI.W  #0,LAB_A47FBA
  BEQ.S LAB_A1BBC0
  MOVE.W  #$0108,D0
  OR.W  D1,D0
  MOVE.L  LAB_A47FBC,D2
  OR.L  LAB_A47FC0,D0
  MOVE.L  LAB_A47FCE,D1
  ROR.W #7,D1
  OR.W  D1,D0
  CMPI.W  #0,LAB_A47FCC
  BNE.W PrintWTF
  CMPI.W  #5,LAB_A47FBA
  BNE.W PrintWTF
  BRA.S LAB_A1BBCC
LAB_A1BBC0:
  CMPI.W  #5,LAB_A47FCC
  BNE.W PrintWTF
LAB_A1BBCC:
  BSR.W memSafeWriteWordA1
  MOVEM.L D0/A0,-(A7)
  MOVEA.L A4,A0
  MOVE.W  D2,D0
  BSR.W memSafeWriteWord
  ADDQ.W  #2,A4
  MOVEM.L (A7)+,D0/A0
  BRA.W LAB_A1C162
LAB_A1BBE6:
  CMPI.W  #$0028,D0
  BNE.S LAB_A1BC38
  CMPI.W  #$000b,LAB_A47FBA
  BNE.W PrintWTF
  CMPI.W  #0,LAB_A47FCC
  BNE.W PrintWTF
  TST.W LAB_A47FB8
  BPL.W PrintWTF
  MOVE.W  #$7000,D0
  MOVE.L  LAB_A47FCE,D1
  ROR.W #7,D1
  OR.W  D1,D0
  MOVE.L  LAB_A47FBC,D1
  CMPI.W  #$00ff,D1
  BHI.W PrintWTF
  ANDI.W  #$00ff,D1
  OR.W  D1,D0
  BSR.W memSafeWriteWordA1
  BRA.W LAB_A1C162
LAB_A1BC38:
  CMPI.W  #$0026,D0
  BNE.W LAB_A1BD06
  MOVE.W  LAB_A47FB8,D1
  BEQ.W PrintWTF
  BPL.S LAB_A1BC50
  MOVE.W  #1,D1
LAB_A1BC50:
  LSR.W #1,D1
  LSL.W #6,D1
  CMPI.W  #$000e,LAB_A47FBA
  BNE.S LAB_A1BCB2
  MOVE.W  LAB_A47FCC,D2
  MOVE.W  #$01f4,D3
  BTST  D2,D3
  BEQ.W PrintWTF
  MOVE.L  LAB_A47FBC,D2
  CMPI.W  #4,LAB_A47FCC
  BEQ.S LAB_A1BC8C
  MOVE.W  D2,D3
  MOVEQ #0,D2
  MOVEQ #$F,D4
LAB_A1BC84:
  LSR.W #1,D3
  ROXL.W  #1,D2
  DBF D4,LAB_A1BC84
LAB_A1BC8C:
  MOVEM.L D0/A0,-(A7)
  MOVEA.L A4,A0
  MOVE.W  D2,D0
  BSR.W memSafeWriteWord
  ADDQ.W  #2,A4
  MOVEM.L (A7)+,D0/A0
  MOVE.W  #$4880,D0
  OR.W  D1,D0
  LEA LAB_A47FCC,A0
  BSR.W SUB_A1C1E2
  BRA.W LAB_A1C162
LAB_A1BCB2:
  CMPI.W  #$000e,LAB_A47FCC
  BNE.W PrintWTF
  MOVE.W  LAB_A47FBA,D2
  MOVE.W  #$07ec,D3
  BTST  D2,D3
  BEQ.W PrintWTF
  MOVE.L  LAB_A47FCE,D2
  MOVEQ #0,D3
  MOVEQ #$F,D4
LAB_A1BCD8:
  LSR.W #1,D2
  ROXL.W  #1,D3
  DBF D4,LAB_A1BCD8
  MOVEM.L D0/A0,-(A7)
  MOVEA.L A4,A0
  MOVE.W  D3,D0
  BSR.W memSafeWriteWord
  ADDQ.W  #2,A4
  MOVEM.L (A7)+,D0/A0
  MOVE.W  #$4c80,D0
  OR.W  D1,D0
  LEA LAB_A47FBA,A0
  BSR.W SUB_A1C1E2
  BRA.W LAB_A1C162
LAB_A1BD06:
  CMPI.W  #$0038,D0
  BHI.S LAB_A1BD76
  TST.W LAB_A47FB8
  BPL.W PrintWTF
  TST.W LAB_A47FBA
  BNE.W PrintWTF
  CMPI.W  #8,LAB_A47FCC
  BNE.W PrintWTF
  SUBI.W  #$0029,D0
  MOVE.W  D0,D1
  MOVE.W  #$50c8,D0
  BSR.W SUB_A1C17E
  OR.L  LAB_A47FBC,D0
  MOVE.L  LAB_A47FCE,D1
  SUB.L A4,D1
  MOVE.L  D1,D2
  ANDI.L  #$ffff8000,D2
  BEQ.S LAB_A1BD5C
  EORI.L  #$ffff8000,D2
  BNE.W PrintWTF
LAB_A1BD5C:
  MOVEM.L D0/A0,-(A7)
  MOVEA.L A4,A0
  MOVE.W  D1,D0
  BSR.W memSafeWriteWord
  ADDQ.W  #2,A4
  MOVEM.L (A7)+,D0/A0
  BSR.W memSafeWriteWordA1
  BRA.W LAB_A1C162
LAB_A1BD76:
  CMPI.W  #$0039,D0
  BNE.S LAB_A1BD82
  MOVE.W  #$002a,D0
  BRA.S LAB_A1BD06
LAB_A1BD82:
  MOVE.W  LAB_A47FB6,D0
  MULU  #6,D0
  SUBA.L  A4,A4
  LEA LAB_A1CA90(PC),A3
  LEA 0(A3,D0.L),A3
  MOVE.W  LAB_A480CA,D7
LAB_A1BD9C:
  MOVEQ #0,D0
  MOVE.B  (A3),D0
  BNE.S LAB_A1BDD0
  TST.W LAB_A47FB8
  BPL.W LAB_A1C158
  TST.W LAB_A47FBA
  BPL.W LAB_A1C158
  TST.W LAB_A47FCC
  BPL.W LAB_A1C158
  MOVE.W  4(A3),D0
  BSR.W memSafeWriteWordA1
  LEA 2(A1),A4
  BRA.W LAB_A1C162
LAB_A1BDD0:
  SUBQ.W  #1,D0
  BNE.S LAB_A1BE24
  TST.W LAB_A47FBA
  BNE.W LAB_A1C158
  MOVE.W  LAB_A47FCC,D0
  MOVE.W  2(A3),D1
  BTST  D0,D1
  BEQ.W LAB_A1C158
  MOVE.W  4(A3),D0
  BSR.W SUB_A1C184
  BCS.W LAB_A1C158
  MOVE.W  LAB_A47FB8,D1
  LSL.W #6,D1
  OR.W  D1,D0
  LEA LAB_A47FBA,A0
  MOVE.L  2(A0),D1
  ROR.W #7,D1
  OR.W  D1,D0
  LEA LAB_A47FCC,A0
  LEA 2(A1),A4
  BSR.W SUB_A1C1E2
  BRA.W LAB_A1C162
LAB_A1BE24:
  SUBQ.W  #1,D0
  BNE.S LAB_A1BE78
  TST.W LAB_A47FCC
  BNE.W LAB_A1C158
  MOVE.W  LAB_A47FBA,D0
  MOVE.W  2(A3),D1
  BTST  D0,D1
  BEQ.W LAB_A1C158
  MOVE.W  4(A3),D0
  BSR.W SUB_A1C184
  BCS.W LAB_A1C158
  MOVE.W  LAB_A47FB8,D1
  LSL.W #6,D1
  OR.W  D1,D0
  LEA LAB_A47FCC,A0
  MOVE.L  2(A0),D1
  ROR.W #7,D1
  OR.W  D1,D0
  LEA LAB_A47FBA,A0
  LEA 2(A1),A4
  BSR.W SUB_A1C1E2
  BRA.W LAB_A1C162
LAB_A1BE78:
  SUBQ.W  #1,D0
  BNE.S LAB_A1BEC8
  CMPI.W  #4,LAB_A47FBA
  BNE.W LAB_A1C158
  CMPI.W  #4,LAB_A47FCC
  BNE.W LAB_A1C158
  MOVE.W  4(A3),D0
  BSR.W SUB_A1C184
  BCS.W LAB_A1C158
  MOVE.W  LAB_A47FB8,D1
  LSL.W #6,D1
  OR.W  D1,D0
  MOVE.L  LAB_A47FBC,D1
  ROR.W #7,D1
  OR.W  D1,D0
  MOVE.L  LAB_A47FCE,D1
  OR.W  D1,D0
  BSR.W memSafeWriteWordA1
  LEA 2(A1),A4
  BRA.W LAB_A1C162
LAB_A1BEC8:
  SUBQ.W  #1,D0
  BNE.S LAB_A1BF1A
  CMPI.W  #1,LAB_A47FCC
  BNE.W LAB_A1C158
  MOVE.W  2(A3),D2
  MOVE.W  LAB_A47FBA,D1
  BTST  D1,D2
  BEQ.W LAB_A1C158
  MOVE.W  4(A3),D0
  BSR.W SUB_A1C184
  BCS.W LAB_A1C158
  MOVE.W  LAB_A47FB8,D1
  LSL.W #7,D1
  OR.W  D1,D0
  MOVE.L  LAB_A47FCE,D1
  ROR.W #7,D1
  OR.W  D1,D0
  LEA LAB_A47FBA,A0
  LEA 2(A1),A4
  BSR.W SUB_A1C1E2
  BRA.W LAB_A1C162
LAB_A1BF1A:
  SUBQ.W  #1,D0
  BNE.S LAB_A1BF9C
  CMPI.W  #$000b,LAB_A47FBA
  BNE.W LAB_A1C158
  MOVE.W  2(A3),D2
  MOVE.W  D2,D0
  MOVE.W  LAB_A47FCC,D1
  BTST  D1,D2
  BEQ.W LAB_A1C158
  MOVE.W  4(A3),D0
  BSR.W SUB_A1C184
  BCS.W LAB_A1C158
  MOVE.W  LAB_A47FB8,D1
  LSL.W #6,D1
  OR.W  D1,D0
  LEA LAB_A47FCC,A0
  LEA 2(A1),A4
  CMPI.W  #2,LAB_A47FB8
  BNE.S LAB_A1BF7E
  MOVEM.L D0/A0,-(A7)
  MOVEA.L A4,A0
  MOVE.L  LAB_A47FBC,D0
  BSR.W memSafeWriteLong
  ADDQ.W  #4,A4
  MOVEM.L (A7)+,D0/A0
  BRA.S LAB_A1BF94
LAB_A1BF7E:
  MOVEM.L D0/A0,-(A7)
  MOVEA.L A4,A0
  MOVE.W  LAB_A47FBE,D0
  BSR.W memSafeWriteWord
  ADDQ.W  #2,A4
  MOVEM.L (A7)+,D0/A0
LAB_A1BF94:
  BSR.W SUB_A1C1E2
  BRA.W LAB_A1C162
LAB_A1BF9C:
  SUBQ.W  #1,D0
  BNE.S LAB_A1BFF2
  CMPI.W  #$000b,LAB_A47FBA
  BNE.W LAB_A1C158
  MOVE.W  2(A3),D2
  MOVE.W  LAB_A47FCC,D1
  BTST  D1,D2
  BEQ.W LAB_A1C158
  MOVE.W  4(A3),D0
  BSR.W SUB_A1C184
  BCS.W LAB_A1C158
  MOVE.W  LAB_A47FB8,D1
  LSL.W #6,D1
  OR.W  D1,D0
  MOVE.L  LAB_A47FBC,D1
  ANDI.W  #7,D1
  ROR.W #7,D1
  OR.W  D1,D0
  LEA LAB_A47FCC,A0
  LEA 2(A1),A4
  BSR.W SUB_A1C1E2
  BRA.W LAB_A1C162
LAB_A1BFF2:
  SUBQ.W  #1,D0
  BNE.S LAB_A1C032
  CMPI.W  #$000b,LAB_A47FBA
  BNE.W LAB_A1C158
  CMPI.W  #$000c,LAB_A47FCC
  BNE.W LAB_A1C158
  BSR.W SUB_A1C184
  BCS.W LAB_A1C158
  MOVE.W  4(A3),D0
  BSR.W memSafeWriteWordA1
  ADDQ.W  #2,A1
  MOVE.W  LAB_A47FBE,D0
  BSR.W memSafeWriteWordA1
  ADDQ.W  #2,A1
  MOVEA.L A1,A4
  BRA.W LAB_A1C162
LAB_A1C032:
  SUBQ.W  #1,D0
  BNE.S LAB_A1C072
  CMPI.W  #$000b,LAB_A47FBA
  BNE.W LAB_A1C158
  CMPI.W  #$000d,LAB_A47FCC
  BNE.W LAB_A1C158
  BSR.W SUB_A1C184
  BCS.W LAB_A1C158
  MOVE.W  4(A3),D0
  BSR.W memSafeWriteWordA1
  ADDQ.W  #2,A1
  MOVE.W  LAB_A47FBE,D0
  BSR.W memSafeWriteWordA1
  ADDQ.W  #2,A1
  MOVEA.L A1,A4
  BRA.W LAB_A1C162
LAB_A1C072:
  SUBQ.W  #1,D0
  BNE.S LAB_A1C07A
  BRA.W PrintWTF
LAB_A1C07A:
  SUBQ.W  #1,D0
  BNE.S LAB_A1C0C0
  TST.W LAB_A47FCC
  BPL.W LAB_A1C158
  MOVE.W  LAB_A47FBA,D1
  MOVE.W  2(A3),D2
  BTST  D1,D2
  BEQ.W LAB_A1C158
  BSR.W SUB_A1C184
  BCS.W LAB_A1C158
  MOVE.W  4(A3),D0
  MOVE.W  LAB_A47FB8,D1
  LSL.W #6,D1
  OR.W  D1,D0
  LEA LAB_A47FBA,A0
  LEA 2(A1),A4
  BSR.W SUB_A1C1E2
  BRA.W LAB_A1C162
LAB_A1C0C0:
  SUBQ.W  #1,D0
  BNE.S LAB_A1C108
  CMPI.W  #3,LAB_A47FBA
  BNE.W LAB_A1C158
  CMPI.W  #3,LAB_A47FCC
  BNE.S LAB_A1C158
  BSR.W SUB_A1C184
  BCS.S LAB_A1C158
  MOVE.W  LAB_A47FB8,D1
  LSL.W #6,D1
  MOVE.W  4(A3),D0
  OR.W  D1,D0
  OR.L  LAB_A47FBC,D0
  MOVE.L  LAB_A47FCE,D1
  ROR.W #7,D1
  OR.W  D1,D0
  BSR.W memSafeWriteWordA1
  LEA 2(A1),A4
  BRA.S LAB_A1C162
LAB_A1C108:
  SUBQ.W  #1,D0
  BNE.S LAB_A1C158
  CMPI.W  #1,LAB_A47FBA
  BNE.S LAB_A1C158
  CMPI.W  #$000b,LAB_A47FCC
  BNE.S LAB_A1C158
  BSR.S SUB_A1C184
  BCS.S LAB_A1C158
  MOVE.W  4(A3),D0
  MOVE.W  LAB_A47FB8,D1
  LSL.W #6,D1
  OR.W  D1,D0
  OR.L  LAB_A47FBC,D0
  BSR.W memSafeWriteWordA1
  LEA 2(A1),A4
  MOVEM.L D0/A0,-(A7)
  MOVEA.L A4,A0
  MOVE.W  LAB_A47FD0,D0
  BSR.W memSafeWriteWord
  ADDQ.W  #2,A4
  MOVEM.L (A7)+,D0/A0
  BRA.S LAB_A1C162
LAB_A1C158:
  ADDQ.W  #6,A3
  DBF D7,LAB_A1BD9C
  BRA.W PrintWTF
LAB_A1C162:
  MOVE.W  #$005e,D0
  JSR PrintChar(PC)
  MOVE.L  A4,D0
  JSR PrintAddressHex
  BSR.W PrintSpace
  SF  LAB_A489FC
  RTS
SUB_A1C17E:
  LSL.W #8,D1
  OR.W  D1,D0
  RTS
SUB_A1C184:
  MOVEM.L D1-D2,-(A7)
  MOVEQ #0,D2
  MOVE.B  1(A3),D2
  MOVE.W  LAB_A47FB8,D1
  BMI.S LAB_A1C1A4
  BTST  D1,D2
  BEQ.S LAB_A1C1D8
LAB_A1C19A:
  ANDI.W  #$fffe,SR
  MOVEM.L (A7)+,D1-D2
  RTS
LAB_A1C1A4:
  MOVE.W  #1,LAB_A47FB8
  BTST  #1,D2
  BNE.S LAB_A1C19A
  MOVE.W  #0,LAB_A47FB8
  CMPI.W  #0,D2
  BEQ.S LAB_A1C19A
  SUBQ.W  #1,D2
  MOVE.W  D2,LAB_A47FB8
  CMPI.W  #3,D2
  BNE.S LAB_A1C19A
  SUBQ.W  #1,D2
  MOVE.W  D2,LAB_A47FB8
  BRA.S LAB_A1C19A
LAB_A1C1D8:
  ORI.W #1,SR
  MOVEM.L (A7)+,D1-D2
  RTS
SUB_A1C1E2:
  MOVEM.L D1-D3,-(A7)
  MOVE.W  (A0),D1
  CMPI.W  #6,D1
  BHI.W LAB_A1C274
  LSL.W #3,D1
  CMPI.W  #$0020,D1
  BHI.S LAB_A1C208
  MOVE.L  2(A0),D2
  OR.W  D2,D1
  OR.W  D1,D0
  BSR.W memSafeWriteWordA1
  BRA.W LAB_A1C36E
LAB_A1C208:
  CMPI.W  #$0028,D1
  BHI.S LAB_A1C234
  MOVE.L  2(A0),D2
  MOVE.L  6(A0),D3
  OR.W  D3,D1
  OR.W  D1,D0
  BSR.W memSafeWriteWordA1
  MOVEM.L D0/A0,-(A7)
  MOVEA.L A4,A0
  MOVE.W  D2,D0
  BSR.W memSafeWriteWord
  ADDQ.W  #2,A4
  MOVEM.L (A7)+,D0/A0
  BRA.W LAB_A1C36E
LAB_A1C234:
  MOVE.L  2(A0),D2
  MOVE.L  6(A0),D3
  OR.W  D3,D1
  OR.W  D1,D0
  BSR.W memSafeWriteWordA1
  ANDI.W  #$00ff,D2
  MOVE.L  $A(A0),D3
  ROR.W #1,D3
  OR.W  D3,D2
  MOVE.L  $E(A0),D3
  ROR.W #4,D3
  OR.W  D3,D2
  SWAP  D3
  LSR.W #4,D3
  OR.W  D3,D2
  MOVEM.L D0/A0,-(A7)
  MOVEA.L A4,A0
  MOVE.W  D2,D0
  BSR.W memSafeWriteWord
  ADDQ.W  #2,A4
  MOVEM.L (A7)+,D0/A0
  BRA.W LAB_A1C36E
LAB_A1C274:
  CMPI.W  #7,D1
  BNE.S LAB_A1C29A
  ORI.W #$0038,D0
  BSR.W memSafeWriteWordA1
  MOVEM.L D0/A0,-(A7)
  MOVE.W  4(A0),D0
  MOVEA.L A4,A0
  BSR.W memSafeWriteWord
  ADDQ.W  #2,A4
  MOVEM.L (A7)+,D0/A0
  BRA.W LAB_A1C36E
LAB_A1C29A:
  CMPI.W  #8,D1
  BNE.S LAB_A1C2C0
  ORI.W #$0039,D0
  BSR.W memSafeWriteWordA1
  MOVEM.L D0/A0,-(A7)
  MOVE.L  2(A0),D0
  MOVEA.L A4,A0
  BSR.W memSafeWriteLong
  ADDQ.W  #4,A4
  MOVEM.L (A7)+,D0/A0
  BRA.W LAB_A1C36E
LAB_A1C2C0:
  CMPI.W  #9,D1
  BNE.S LAB_A1C2E6
  ORI.W #$003a,D0
  BSR.W memSafeWriteWordA1
  MOVEM.L D0/A0,-(A7)
  MOVE.W  4(A0),D0
  MOVEA.L A4,A0
  BSR.W memSafeWriteWord
  ADDQ.W  #2,A4
  MOVEM.L (A7)+,D0/A0
  BRA.W LAB_A1C36E
LAB_A1C2E6:
  CMPI.W  #$000a,D1
  BNE.S LAB_A1C326
  ORI.W #$003b,D0
  BSR.W memSafeWriteWordA1
  MOVE.L  2(A0),D1
  ANDI.W  #$00ff,D1
  MOVE.L  6(A0),D2
  ROR.W #1,D2
  OR.W  D2,D1
  MOVE.L  $A(A0),D2
  ROR.W #4,D2
  OR.W  D2,D1
  SWAP  D2
  ROR.W #4,D2
  OR.W  D2,D1
  MOVEM.L D0/A0,-(A7)
  MOVEA.L A4,A0
  MOVE.W  D1,D0
  BSR.W memSafeWriteWord
  ADDQ.W  #2,A4
  MOVEM.L (A7)+,D0/A0
  BRA.S LAB_A1C36E
LAB_A1C326:
  CMPI.W  #$000b,D1
  BNE.S LAB_A1C36A
  ORI.W #$003c,D0
  BSR.W memSafeWriteWordA1
  CMPI.W  #1,LAB_A47FB8
  BHI.S LAB_A1C354
  MOVEM.L D0/A0,-(A7)
  MOVE.W  4(A0),D0
  MOVEA.L A4,A0
  BSR.W memSafeWriteWord
  ADDQ.W  #2,A4
  MOVEM.L (A7)+,D0/A0
  BRA.S LAB_A1C36E
LAB_A1C354:
  MOVEM.L D0/A0,-(A7)
  MOVE.L  2(A0),D0
  MOVEA.L A4,A0
  BSR.W memSafeWriteLong
  ADDQ.W  #4,A4
  MOVEM.L (A7)+,D0/A0
  BRA.S LAB_A1C36E
LAB_A1C36A:
  BSR.W memSafeWriteWordA1
LAB_A1C36E:
  MOVEM.L (A7)+,D1-D3
  RTS
SUB_A1C374:
  MOVEM.L D0/A1,-(A7)
  MOVE.W  #$ffff,LAB_A47FBA
  MOVE.W  #$ffff,LAB_A47FCC
  BSR.W readCmdCharSkipSpaces
  TST.B endOfCmdString
  BNE.S LAB_A1C3C2
  BSR.W SUB_A1827E
  LEA LAB_A47FBA,A1
  BSR.S SUB_A1C3C8
  TST.B endOfCmdString
  BNE.S LAB_A1C3C2
  CMPI.W  #$002c,D0
  BNE.W PrintWTF
  LEA LAB_A47FCC,A1
  BSR.S SUB_A1C3C8
  TST.B endOfCmdString
  BEQ.W PrintWTF
LAB_A1C3C2:
  MOVEM.L (A7)+,D0/A1
  RTS
SUB_A1C3C8:
  MOVEM.L D1-D6/A1-A6,-(A7)
  BSR.W readCmdChar
  MOVEQ #0,D1
  MOVE.W  D0,D1
  BSR.W readCmdChar
  CMPI.W  #$0037,D0
  BHI.S LAB_A1C45C
  CMPI.W  #$002f,D0
  BLS.S LAB_A1C45C
  CMPI.W  #$0041,D1
  BEQ.S LAB_A1C42A
  CMPI.W  #$0044,D1
  BNE.S LAB_A1C45C
  CLR.W (A1)
  SUBI.W  #$0030,D0
  MOVE.L  D0,2(A1)
  BSR.W readCmdChar
  CMPI.W  #$002d,D0
  BEQ.W LAB_A1C72E
  CMPI.W  #$002f,D0
  BEQ.W LAB_A1C72E
  CMPI.W  #$0020,D0
  BEQ.S LAB_A1C41A
  CMPI.W  #$002c,D0
  BNE.S LAB_A1C458
LAB_A1C41A:
  CMPI.W  #$0020,D0
  BNE.S LAB_A1C424
  BSR.W readCmdCharSkipSpaces
LAB_A1C424:
  MOVEM.L (A7)+,D1-D6/A1-A6
  RTS
LAB_A1C42A:
  MOVE.W  #1,(A1)
  SUBI.W  #$0030,D0
  MOVE.L  D0,2(A1)
  BSR.W readCmdChar
  CMPI.W  #$002d,D0
  BEQ.W LAB_A1C72E
  CMPI.W  #$002f,D0
  BEQ.W LAB_A1C72E
  CMPI.W  #$0020,D0
  BEQ.S LAB_A1C41A
  CMPI.W  #$002c,D0
  BNE.S LAB_A1C458
  BRA.S LAB_A1C41A
LAB_A1C458:
  JSR SUB_A1827E(PC)
LAB_A1C45C:
  CMPI.W  #$0055,D1
  BNE.S LAB_A1C480
  CMPI.W  #$0053,D0
  BNE.W PrintWTF
  BSR.W readCmdChar
  CMPI.W  #$0050,D0
  BNE.W PrintWTF
  MOVE.W  #$000f,(A1)
  BSR.W readCmdCharSkipSpaces
  BRA.S LAB_A1C424
LAB_A1C480:
  CMPI.W  #$0043,D0
  BNE.S LAB_A1C4AA
  CMPI.W  #$0043,D1
  BNE.S LAB_A1C4AA
  BSR.W readCmdChar
  BSR.W SUB_A1827E
  CMPI.W  #$0052,D0
  BNE.S LAB_A1C4AA
  BSR.W readCmdChar
  BSR.W readCmdCharSkipSpaces
  MOVE.W  #$000c,(A1)
  BRA.W LAB_A1C424
LAB_A1C4AA:
  BSR.W SUB_A1827E
  BSR.W SUB_A1827E
  BSR.W readCmdChar
  CMPI.W  #$002d,D0
  BEQ.W LAB_A1C6EA
  CMPI.W  #$0028,D0
  BEQ.W LAB_A1C6A0
  CMPI.W  #$0023,D0
  BEQ.W LAB_A1C682
  CMPI.W  #$0053,D0
  BNE.S LAB_A1C4EC
  BSR.W readCmdChar
  CMPI.W  #$0052,D0
  BNE.W LAB_A1C424
  BSR.W readCmdCharSkipSpaces
  MOVE.W  #$000d,(A1)
  BRA.W LAB_A1C424
LAB_A1C4EC:
  BSR.W SUB_A1827E
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.W LAB_A1C424
  MOVE.L  D0,2(A1)
  BSR.W readCmdChar
  CMPI.W  #$0028,D0
  BNE.W LAB_A1C65A
  BSR.W readCmdChar
  CMPI.W  #$0041,D0
  BEQ.W LAB_A1C5BA
  CMPI.W  #$0050,D0
  BNE.W LAB_A1C424
  BSR.W readCmdChar
  CMPI.W  #$0043,D0
  BNE.W LAB_A1C424
  BSR.W readCmdChar
  CMPI.W  #$0029,D0
  BEQ.S LAB_A1C5AE
  CMPI.W  #$002c,D0
  BNE.W LAB_A1C424
  BSR.W readCmdChar
  MOVE.L  #0,6(A1)
  CMPI.W  #$0044,D0
  BEQ.S LAB_A1C562
  MOVE.L  #1,6(A1)
  CMPI.W  #$0041,D0
  BNE.W LAB_A1C424
LAB_A1C562:
  BSR.W readCmdChar
  JSR AsciiCharToHexDigit(PC)
  CMPI.W  #7,D0
  BHI.W LAB_A1C424
  MOVE.L  D0,$A(A1)
LAB_A1C576:
  BSR.W readCmdChar
  CMPI.W  #$0029,D0
  BNE.S LAB_A1C58C
  BSR.W readCmdCharSkipSpaces
  MOVE.W  #$000a,(A1)
  BRA.W LAB_A1C424
LAB_A1C58C:
  CMPI.W  #$002e,D0
  BNE.W LAB_A1C424
  BSR.W readCmdChar
  CMPI.W  #$0057,D0
  BEQ.S LAB_A1C576
  CMPI.W  #$004c,D0
  BNE.W LAB_A1C424
  BSET  #7,$A(A1)
  BRA.S LAB_A1C576
LAB_A1C5AE:
  BSR.W readCmdCharSkipSpaces
  MOVE.W  #9,(A1)
  BRA.W LAB_A1C424
LAB_A1C5BA:
  BSR.W readCmdChar
  JSR AsciiCharToHexDigit(PC)
  CMPI.W  #7,D0
  BHI.W LAB_A1C424
  MOVE.L  D0,6(A1)
  BSR.W readCmdChar
  CMPI.W  #$0029,D0
  BNE.S LAB_A1C5E4
  BSR.W readCmdCharSkipSpaces
  MOVE.W  #5,(A1)
  BRA.W LAB_A1C424
LAB_A1C5E4:
  CMPI.W  #$002c,D0
  BNE.W LAB_A1C424
  BSR.W readCmdChar
  MOVE.L  #0,$A(A1)
  CMPI.W  #$0044,D0
  BEQ.S LAB_A1C60E
  MOVE.L  #1,$A(A1)
  CMPI.W  #$0041,D0
  BNE.W LAB_A1C424
LAB_A1C60E:
  BSR.W readCmdChar
  JSR AsciiCharToHexDigit(PC)
  CMPI.W  #7,D0
  BHI.W LAB_A1C424
  MOVE.L  D0,$E(A1)
LAB_A1C622:
  BSR.W readCmdChar
  CMPI.W  #$0029,D0
  BNE.S LAB_A1C638
  BSR.W readCmdCharSkipSpaces
  MOVE.W  #6,(A1)
  BRA.W LAB_A1C424
LAB_A1C638:
  CMPI.W  #$002e,D0
  BNE.W LAB_A1C424
  BSR.W readCmdChar
  CMPI.W  #$0057,D0
  BEQ.S LAB_A1C622
  CMPI.W  #$004c,D0
  BNE.W LAB_A1C424
  BSET  #7,$E(A1)
  BRA.S LAB_A1C622
LAB_A1C65A:
  MOVE.W  #8,(A1)
  CMPI.W  #$002e,D0
  BNE.W LAB_A1C41A
  MOVE.W  #$ffff,(A1)
  BSR.W readCmdChar
  CMPI.W  #$0053,D0
  BNE.W LAB_A1C424
  MOVE.W  #7,(A1)
  BSR.W readCmdCharSkipSpaces
  BRA.W LAB_A1C424
LAB_A1C682:
  BSR.W ReadParameter
  TST.B ParamFound
  BEQ.W LAB_A1C424
  MOVE.L  D0,2(A1)
  MOVE.W  #$000b,(A1)
  BSR.W readCmdCharSkipSpaces
  BRA.W LAB_A1C424
LAB_A1C6A0:
  BSR.W readCmdChar
  CMPI.W  #$0041,D0
  BNE.W LAB_A1C424
  BSR.W readCmdChar
  JSR AsciiCharToHexDigit(PC)
  CMPI.W  #7,D0
  BHI.W LAB_A1C424
  MOVE.L  D0,2(A1)
  BSR.W readCmdChar
  CMPI.W  #$0029,D0
  BNE.W LAB_A1C424
  BSR.W readCmdCharSkipSpaces
  CMPI.W  #$002b,D0
  BEQ.S LAB_A1C6DE
  MOVE.W  #2,(A1)
  BRA.W LAB_A1C424
LAB_A1C6DE:
  BSR.W readCmdCharSkipSpaces
  MOVE.W  #3,(A1)
  BRA.W LAB_A1C424
LAB_A1C6EA:
  BSR.W readCmdChar
  CMPI.W  #$0028,D0
  BNE.W LAB_A1C424
  BSR.W readCmdChar
  CMPI.W  #$0041,D0
  BNE.W LAB_A1C424
  BSR.W readCmdChar
  JSR AsciiCharToHexDigit(PC)
  CMPI.W  #7,D0
  BHI.W LAB_A1C424
  MOVE.L  D0,2(A1)
  BSR.W readCmdChar
  CMPI.W  #$0029,D0
  BNE.W LAB_A1C424
  BSR.W readCmdCharSkipSpaces
  MOVE.W  #4,(A1)
  BRA.W LAB_A1C424
LAB_A1C72E:
  BSR.W SUB_A1827E
  BSR.W SUB_A1827E
  BSR.W SUB_A1827E
  MOVE.W  #$ffff,(A1)
  MOVEQ #0,D2
LAB_A1C740:
  BSR.S SUB_A1C784
  BCS.W LAB_A1C424
  MOVE.W  D0,D3
  BSET  D0,D2
  BSR.W readCmdChar
  CMPI.W  #$002f,D0
  BEQ.S LAB_A1C740
  CMPI.W  #$002d,D0
  BNE.S LAB_A1C778
  BSR.S SUB_A1C784
  BCS.W LAB_A1C424
  CMP.W D0,D3
  BLT.W LAB_A1C424
LAB_A1C766:
  BSET  D3,D2
  SUBQ.W  #1,D3
  CMP.W D3,D0
  BLE.S LAB_A1C766
  BSR.W readCmdChar
  CMPI.W  #$002f,D0
  BEQ.S LAB_A1C740
LAB_A1C778:
  MOVE.W  #$000e,(A1)
  MOVE.L  D2,2(A1)
  BRA.W LAB_A1C41A
SUB_A1C784:
  BSR.W readCmdChar
  MOVE.W  D0,D1
  BSR.W readCmdChar
  BSR.W AsciiCharToHexDigit
  CMPI.W  #7,D0
  BHI.S LAB_A1C7B0
  EORI.W  #7,D0
  CMPI.W  #$0041,D1
  BEQ.S LAB_A1C7AA
  CMPI.W  #$0044,D1
  BNE.S LAB_A1C7B0
  ADDQ.W  #8,D0
LAB_A1C7AA:
  ANDI.B  #$fe,CCR
  RTS
LAB_A1C7B0:
  ORI.W #1,SR
  RTS
SUB_A1C7B6:
  MOVEM.L D2-D4/A0-A1,-(A7)
  MOVE.W  D0,D1
  SUBQ.W  #1,D1
  MOVEQ #0,D0
  LEA AsmCommandsTable(PC),A0
LAB_A1C7C4:
  MOVE.W  D1,D2
  LEA stringWorkspace,A1
LAB_A1C7CC:
  CMPI.B  #7,(A0)
  BLS.S LAB_A1C7E0
  CMPM.B  (A0)+,(A1)+
  BNE.S LAB_A1C7E0
  DBF D2,LAB_A1C7CC
  CMPI.B  #7,(A0)
  BLS.S LAB_A1C7F4
LAB_A1C7E0:
  CMPI.B  #7,(A0)+
  BHI.S LAB_A1C7E0
  MOVE.B  -1(A0),D3
  EXT.W D3
  ADD.W D3,D0
  TST.B (A0)
  BPL.S LAB_A1C7C4
  MOVEQ #-1,D0
LAB_A1C7F4:
  MOVEQ #0,D1
  MOVE.B  (A0),D1
  MOVEM.L (A7)+,D2-D4/A0-A1
  RTS
SUB_A1C7FE:
  MOVEM.L D1-D2/D5/A1,-(A7)
  MOVE.L  D0,D1
  MOVEQ #0,D0
  MOVEQ #0,D2
  LEA stringWorkspace,A1
  BSR.W readCmdCharSkipSpaces
  MOVE.W  #$ffff,D2
  TST.B endOfCmdString
  BNE.S LAB_A1C860
  BSR.W SUB_A1827E
  SF  D5
LAB_A1C824:
  BSR.W readCmdChar
  CMPI.W  #$0028,D0
  BNE.S LAB_A1C830
  ST  D5
LAB_A1C830:
  CMPI.W  #$0029,D0
  BNE.S LAB_A1C838
  SF  D5
LAB_A1C838:
  MOVE.W  #$ffff,D2
  TST.B endOfCmdString
  BNE.S LAB_A1C860
  TST.B D5
  BNE.S LAB_A1C856
  MOVE.W  D1,D2
  CMP.B D0,D1
  BEQ.S LAB_A1C860
  SWAP  D1
  MOVE.W  D1,D2
  CMP.B D0,D1
  BEQ.S LAB_A1C860
LAB_A1C856:
  MOVE.B  D0,(A1)+
  ADDI.L  #$00010000,D2
  BRA.S LAB_A1C824
LAB_A1C860:
  MOVE.L  D2,D0
  MOVEM.L (A7)+,D1-D2/D5/A1
  RTS

AsmCommandsTable:
  DC.B  "BSR"
  DC.B  $01

  DC.B  "ST"
  DC.B  $01

  DC.B  "SF"
  DC.B  $01

  DC.B  "SHI"
  DC.B  $01

  DC.B  "SLS"
  DC.B  $01
  DC.B  $53

  DC.B  "CC"
  DC.B  $01

  DC.B  "SCS"
  DC.B  $01

  DC.B  "SNE"
  DC.B  $01

  DC.B  "SEQ"
  DC.B  $01

  DC.B  "SVC"
  DC.B  $01

  DC.B  "SVS"
  DC.B  $01

  DC.B  "SPL"
  DC.B  $01

  DC.B  "SMI"
  DC.B  $01

  DC.B  "SGE"
  DC.B  $01

  DC.B  "SLT"
  DC.B  $01

  DC.B  "SGT"
  DC.B  $01

  DC.B  "SLE"
  DC.B  $01

  DC.B  "BT"
  DC.B  $01

  DC.B  "BF"
  DC.B  $01

  DC.B  "BHI"
  DC.B  $01

  DC.B  "BLS"
  DC.B  $01

  DC.B  "BCC"
  DC.B  $01

  DC.B  "BCS"
  DC.B  $01

  DC.B  "BNE"
  DC.B  $01

  DC.B  "BEQ"
  DC.B  $01

  DC.B  "BVC"
  DC.B  $01

  DC.B  "BVS"
  DC.B  $01

  DC.B  "BPL"
  DC.B  $01

  DC.B  "BMI"
  DC.B  $01

  DC.B  "BGE"
  DC.B  $01

  DC.B  "BLT"
  DC.B  $01

  DC.B  "BGT"
  DC.B  $01

  DC.B  "BLE"
  DC.B  $01

  DC.B  "BRA"
  DC.B  $01

  DC.B  "STOP"
  DC.B  $01

  DC.B  "TRAP"
  DC.B  $01

  DC.B  "MOVE"
  DC.B  $01

  DC.B  "MOVEA"
  DC.B  $01

  DC.B  "MOVEM"
  DC.B  $01

  DC.B  "MOVEP"
  DC.B  $01

  DC.B  "MOVEQ"
  DC.B  $01

  DC.B  "DBT"
  DC.B  $01

  DC.B  "DBF"
  DC.B  $01

  DC.B  "DBHI"
  DC.B  $01

  DC.B  "DBLS"
  DC.B  $01

  DC.B  "DBCC"
  DC.B  $01

  DC.B  "DBCS"
  DC.B  $01

  DC.B  "DBNE"
  DC.B  $01

  DC.B  "DBEQ"
  DC.B  $01

  DC.B  "DBVC"
  DC.B  $01

  DC.B  "DBVS"
  DC.B  $01

  DC.B  "DBPL"
  DC.B  $01

  DC.B  "DBMI"
  DC.B  $01

  DC.B  "DBGE"
  DC.B  $01

  DC.B  "DBLT"
  DC.B  $01

  DC.B  "DBGT"
  DC.B  $01

  DC.B  "DBLE"
  DC.B  $01

  DC.B  "DBRA"
  DC.B  $01

  DC.B  "ABCD"
  DC.B  $02

  DC.B  "ADD"
  DC.B  $04

  DC.B  "ADDA"
  DC.B  $01

  DC.B  "ADDI"
  DC.B  $01

  DC.B  "ADDQ"
  DC.B  $01

  DC.B  "ADDX"
  DC.B  $02

  DC.B  "AND"
  DC.B  $06

  DC.B  "ANDI"
  DC.B  $04

  DC.B  "ASL"
  DC.B  $03

  DC.B  "ASR"
  DC.B  $03

  DC.B  "BCHG"
  DC.B  $02

  DC.B  "BCLR"
  DC.B  $02

  DC.B  "BSET"
  DC.B  $02

  DC.B  "BTST"
  DC.B  $02

  DC.B  "CHK"
  DC.B  $01

  DC.B  "CLR"
  DC.B  $01

  DC.B  "CMP"
  DC.B  $03

  DC.B  "CMPA"
  DC.B  $01

  DC.B  "CMPI"
  DC.B  $01

  DC.B  "CMPM"
  DC.B  $01

  DC.B  "DIVS"
  DC.B  $01

  DC.B  "DIVU"
  DC.B  $01

  DC.B  "EOR"
  DC.B  $05

  DC.B  "EORI"
  DC.B  $04

  DC.B  "EXG"
  DC.B  $03

  DC.B  "EXT"
  DC.B  $01

  DC.B  "ILLEGAL"
  DC.B  $01

  DC.B  "JMP"
  DC.B  $01

  DC.B  "JSR"
  DC.B  $01

  DC.B  "LEA"
  DC.B  $01

  DC.B  "LINK"
  DC.B  $01

  DC.B  "LSL"
  DC.B  $03

  DC.B  "LSR"
  DC.B  $03

  DC.B  "MULS"
  DC.B  $01

  DC.B  "MULU"
  DC.B  $01

  DC.B  "NBCD"
  DC.B  $01

  DC.B  "NEG"
  DC.B  $01

  DC.B  "NEGX"
  DC.B  $01

  DC.B  "NOP"
  DC.B  $01

  DC.B  "NOT"
  DC.B  $01

  DC.B  "OR"
  DC.B  $06

  DC.B  "ORI"
  DC.B  $04

  DC.B  "PEA"
  DC.B  $01

  DC.B  "RESET"
  DC.B  $01

  DC.B  "ROL"
  DC.B  $03

  DC.B  "ROR"
  DC.B  $03

  DC.B  "ROXL"
  DC.B  $03

  DC.B  "ROXR"
  DC.B  $03

  DC.B  "RTE"
  DC.B  $01

  DC.B  "RTR"
  DC.B  $01

  DC.B  "RTS"
  DC.B  $01

  DC.B  "SBCD"
  DC.B  $02

  DC.B  "SUB"
  DC.B  $04

  DC.B  "SUBA"
  DC.B  $01

  DC.B  "SUBI"
  DC.B  $01

  DC.B  "SUBQ"
  DC.B  $01

  DC.B  "SUBX"
  DC.B  $02

  DC.B  "SWAP"
  DC.B  $01

  DC.B  "TAS"
  DC.B  $01

  DC.B  "TRAPV"
  DC.B  $01

  DC.B  "TST"
  DC.B  $01

  DC.B  "UNLK"
  DC.B  $01

  DC.B  "LINEA"
  DC.B  $01

  DC.B  "LINEF"
  DC.W  $01ff

LAB_A1CA90:
  DC.L  $02010001,$c1000301,$0000c108,$02070fff
  DC.L  $d0000107,$01fcd100,$04060fff,$d0c00507
  DC.L  $01fd0600,$04060fff,$d0c00507,$01fd0600
  DC.L  $060701ff,$50000207,$0001d100,$03070000
  DC.L  $d1080207,$0ffdc000,$010701fc,$c1000507
  DC.L  $01fc0200,$07010000,$023c0802,$0000027c
  DC.L  $08010000,$023c0507,$01fc0200,$07010000
  DC.L  $023c0802,$0000027c,$08010000,$023c0107
  DC.L  $0001e120,$06070001,$e1000a01,$01fce1c0
  DC.L  $01070001,$e0200607,$0001e000,$0a0101fc
  DC.L  $e0c00100,$01fd0140,$050001fd,$08400100
  DC.L  $01fd0180,$050001fd,$08800100,$01fd01c0
  DC.L  $050001fd,$08c00100,$01fd0100,$050001fd
  DC.L  $08000200,$0ffd4180,$0a0701fd,$42000207
  DC.L  $0fffb000,$04060fff,$b0c00507,$01fd0c00
  DC.L  $04060fff,$b0c00507,$01fd0c00,$0b070000
  DC.L  $b1080200,$0ffd81c0,$02000ffd,$80c00107
  DC.L  $01fdb100,$050701fd,$0a000700,$00000a3c
  DC.L  $08020000,$0a7c0801,$00000a3c,$050701fd
  DC.L  $0a000700,$00000a3c,$08020000,$0a7c0801
  DC.L  $00000a3c,$02000001,$c1400200,$0002c188
  DC.L  $04000002,$c1480a06,$00014880
  DS.L  1
  DC.L  $4afc0a00,$07e44ec0,$0a0007e4,$4e800400
  DC.L  $07e441c0,$0c000000,$4e500107,$0001e128
  DC.L  $06070001,$e1080a00,$01fce3c0,$01070001
  DC.L  $e0280607,$0001e008,$0a0001fc,$e2c00200
  DC.L  $0ffdc1c0,$02000ffd,$c0c00a01,$01fd4800
  DC.L  $0a0701fd,$44000a07,$01fd4000
  DS.L  1
  DC.L  $4e710a07,$01fd4600,$02070ffd,$80000107
  DC.L  $01fc8100,$050701fd,$00000700,$0000003c
  DC.L  $08020000,$007c0801,$0000003c,$050701fd
  DC.L  $00000700,$0000003c,$08020000,$007c0801
  DC.L  $0000003c,$0a0007e4,$48400000,$00004e70
  DC.L  $01070001,$e1380607,$0001e118,$0a0101fc
  DC.L  $e7c00107,$0001e038,$06070001,$e0180a01
  DC.L  $01fce6c0,$01070001,$e1300607,$0001e110
  DC.L  $0a0101fc,$e5c00107,$0001e030,$06070001
  DC.L  $e0100a01,$01fce4c0
  DS.L  1
  DC.L  $4e730000,$00004e77
  DS.L  1
  DC.L  $4e750201,$00018100,$03010000,$81080207
  DC.L  $0fff9000,$010701fc,$91000406,$0fff90c0
  DC.L  $050701fd,$04000406,$0fff90c0,$050701fd
  DC.L  $04000607,$01ff5100,$02070001,$91000307
  DC.L  $00009108,$0a000001,$48400a00,$01fd4ac0
  DS.L  1
  DC.L  $4e760a07,$01fd4a00,$0a000002
  DC.W  $4e58
BootScreenShow:
  MOVE.W  #$0020,intreq+hardware
LAB_40D56A:
  BTST  #5,intreqr+1+hardware
  BEQ.S LAB_40D56A
  MOVE.W  #$0020,intreq+hardware
  CLR.L spr0data+hardware
  CLR.L spr1data+hardware
  CLR.L spr2data+hardware
  CLR.L spr3data+hardware
  CLR.L spr4data+hardware
  CLR.L spr5data+hardware
  CLR.L spr6data+hardware
  CLR.L spr7data+hardware
  LEA SUB_A1D77C(PC),A0
  MOVE.L  A0,UnpackSourceEnd
  MOVE.L  #$0000100,UnpackDest
  JSR UnpackNoFlash
  LEA BootScreenCopper(PC),A0
  LEA EXT_0.W,A1
LAB_40D5CE:
  MOVE.L  (A0),(A1)+
  CMPI.L  #$fffffffe,(A0)+
  BNE.S LAB_40D5CE
  CLR.L cop1lch+hardware
  MOVE.W  #$04d2,copjmp1+hardware
  MOVE.W  #$7fff,intreq+hardware
LAB_40D624:
  BTST  #5,intreqr+1+hardware
  BEQ.S LAB_40D624
  MOVE.W  #$7fff,dmacon+hardware
  MOVE.W  #$8380,dmacon+hardware
  RTS

BootScreenCopper:
  DC.L  $01020000,$01040024,$008e2c81,$0090b7c1
  DC.L  $00920034,$009400cc,$01080000,$010a0000
  DC.L  $01800000,$01820103,$01840104,$01860134
  DC.L  $01880205,$018a0215,$018c0216,$018e0245
  DC.L  $01900317,$01920328,$01940356,$01960429
  DC.L  $01980467,$019a0539,$019c053A,$019e0578
  DC.L  $01a0064B,$01a20689,$01a4075C,$01a6075D
  DC.L  $01a8079A,$01aa086D,$01ac08AB,$01ae097E
  DC.L  $01b009BC,$01b20A8F,$01b40ACD,$01b60BDE
  DC.L  $01b80CEF,$01ba0DFF,$01bc0090,$01be0F00
  DC.L  $00e00000,$00e20100,$00e40000,$00e616e0
  DC.L  $00e80000,$00ea2cc0,$00ec0000,$00ee42a0
  DC.L  $00f00000,$00f25880
  DC.L  $01005200,$fffffffe
disableAllDma:
  MOVE.W  #$7fff,dmacon+hardware
  RTS
PrintExceptions:
  LEA ExceptionsText(PC),A0
  MOVEA.L A0,A1
  JSR PrintText
  MOVEQ #7,D1
  MOVEQ #$F,D2
  LEA LAB_A1CDC4(PC),A2
LAB_A1CD6E:
  MOVE.W  (A2)+,D0
  EXT.L D0
  JSR getVBR
  ADD.L D0,A0
  JSR memSafeReadLong
  BSR.W PrintValue
  MOVEA.L A1,A0
  BSR.W FindNull
  JSR PrintText
  MOVEA.L A0,A1
  DBF D2,LAB_A1CD6E
  BSR.W PrintCR
  MOVEQ #$F,D2
  MOVEQ #0,D3
  LEA TRAP_00,A0
LAB_A1CD9C:
  MOVE.W  D3,D0
  MOVEQ #1,D1
  BSR.W PrintValue
  BSR.W PrintSpace
  MOVEQ #7,D1
  JSR memSafeReadLong
  ADDQ.L  #4,A0
  BSR.W PrintValue
  MOVEQ #1,D0
  BSR.W PrintSpaces
  ADDQ.W  #1,D3
  DBF D2,LAB_A1CD9C
  BRA.W PrintReady
LAB_A1CDC4:
  DC.L  $0008000c,$00100014,$0018001c,$00200024
  DC.L  $0028002c,$00640068,$006c0070,$00740078

ExceptionsText:
  DC.B  "List of exceptions:"
  DC.B  $0d
  DS.B  1

  DC.B  " = Bus error ($8)"
  DC.W  $0d00

  DC.B  " = Address error ($c)"
  DC.B  $0d
  DS.B  1

  DC.B  " = Illegal instruction ($10)"
  DC.B  $0d
  DS.B  1

  DC.B  " = Division by zero ($14)"
  DC.W  $0d00

  DC.B  " = Chk exception ($18)"
  DC.W  $0d00

  DC.B  " = Trapv exception ($1c)"
  DC.W  $0d00

  DC.B  " = Privilege violation ($20)"
  DC.W  $0d00

  DC.B  " = Trace exception ($24)"
  DC.W  $0d00

  DC.B  " = Line-A ($28)"
  DC.B  $0d
  DS.B  1

  DC.B  " = Line-F ($2c)"
  DC.W  $0d00

  DC.B  " = Interrupt request 1 ($64)"
  DC.W  $0d00

  DC.B  " = Interrupt request 2 ($68)"
  DC.W  $0d00

  DC.B  " = Interrupt request 3 ($6c)"
  DC.W  $0d00

  DC.B  " = Interrupt request 4 ($70)"
  DC.W  $0d00

  DC.B  " = Interrupt request 5 ($74)"
  DC.W  $0d00

  DC.B  " = Interrupt request 6 ($78)"
  DC.W  $0d00

  DC.B  "List of traps"
  DC.B  $0d
  DS.W  1

CMD_SETEXCEPT:
  MOVEQ #4,D0
  LEA EXT_100.W,A0
LAB_A1CFB2:

  if arhardware=1
  MOVE.L  #$4a3900bf,(A0)+
  MOVE.W  #$e001,(A0)+
  else
  MOVE.L  #$4e4e4e73,(A0)+
  MOVE.W  #$4e71,(A0)+
  endc
  DBF D0,LAB_A1CFB2

  MOVE.L A0,A1
  JSR getVBR

  if arhardware=0
  MOVE.L a1,TRAP_14(A0)

  MOVE.W #$4ef9,(a1)+
  MOVE.L #ExceptionEntry,(a1)+
  endc

  MOVE.L  #$00000100,ADR_ERROR(A0)
  MOVE.L  #$00000106,ILLEG_OPC(A0)
  MOVE.L  #$0000010c,DIVISION0(A0)
  MOVE.L  #$00000112,LINEA_EMU(A0)
  MOVE.L  #$00000118,LINEF_EMU(A0)
  ST  exceptionsActive
  LEA ExceptionHandlerInsText(PC),A0
  JSR PrintText
  BRA.W PrintReady
  RTS
ExceptionHandlerInsText:
  DC.B  "Exceptionhandler installed!",$D,"Exceptions: 1) Address error",$D,"    "
  DC.B  "        2) Illegal opcode",$D,"            3) Line-A",$D,"            4"
  DC.B  ") Line-F",$D,"            5) Division by zero error",$D,0

SUB_A1D0A8:
  if arhardware=1
  CMPI.L  #$00000124,SaveOldPc
  BHI.S LAB_A1D0F0
  CMPI.L  #$00000106,SaveOldPc
  BEQ.S LAB_A1D0F2
  CMPI.L  #$0000010c,SaveOldPc
  BEQ.S LAB_A1D0F8
  CMPI.L  #$00000112,SaveOldPc
  BEQ.S LAB_A1D0FE
  CMPI.L  #$00000118,SaveOldPc
  BEQ.S LAB_A1D104
  CMPI.L  #$0000011e,SaveOldPc
  BEQ.S LAB_A1D10A
  else
  CMPI.L  #$0000011c,SaveOldPc
  BHI.S LAB_A1D0F0
  CMPI.L  #$00000102,SaveOldPc
  BEQ.S LAB_A1D0F2
  CMPI.L  #$00000108,SaveOldPc
  BEQ.S LAB_A1D0F8
  CMPI.L  #$0000010e,SaveOldPc
  BEQ.S LAB_A1D0FE
  CMPI.L  #$00000114,SaveOldPc
  BEQ.S LAB_A1D104
  CMPI.L  #$0000011a,SaveOldPc
  BEQ.S LAB_A1D10A
  endc
LAB_A1D0F0:
  RTS
LAB_A1D0F2:
;#6?
  MOVEQ #$E,D0
  MOVEQ #0,D1
  BRA.S LAB_A1D118
LAB_A1D0F8:
  MOVEQ #6,D0
  MOVEQ #1,D1
  BRA.S LAB_A1D118
LAB_A1D0FE:
  MOVEQ #6,D0
  MOVEQ #2,D1
  BRA.S LAB_A1D118
LAB_A1D104:
  MOVEQ #6,D0
  MOVEQ #3,D1
  BRA.S LAB_A1D118
LAB_A1D10A:
  MOVEQ #6,D0
  MOVEQ #4,D1
  BRA.S LAB_A1D118
  MOVEQ #6,D0
  MOVEQ #5,D1
  BRA.W LAB_A1D118
LAB_A1D118:
  ADD.W vbrflag,D0
  ADD.W vbrflag,D0

  MOVEA.L #SaveCpuA7,A0
  MOVE.L A0,A1
  ADD.L D0,(A0)
  MOVEA.L (A0),A0
  JSR memSafeReadWord
  MOVE.W  D0,SaveOldSr
  ADDQ.W  #2,A0
  JSR memSafeReadLong
  MOVE.L  D0,SaveOldPc
  MOVE.L  D0,DefaultAddress
  LEA ExceptionTypesTable(PC),A0
  MOVE.W  D1,D0
  JSR PrintTableEntry
  LEA RaisedAtText(PC),A0
  JSR PrintText
  MOVE.L SaveOldPc,D0
  JSR PrintAddressHex
  BSR.W PrintReady
  RTS

ExceptionTypesTable:
  DC.B  "Addressing error",0
  DC.B  "Illegal instruction",0
  DC.B  "Division by zero",0
  DC.B  "Line-A exception",0
  DC.B  "Line-F exception",0
  DC.B  "Privilege violation",0

RaisedAtText:
  DC.B  " raised at address: ",0,0

  if arsoft=1
checkRamAlloc:
  TST.L AllocedMem
  BNE.S LAB_A1D1F4
  LEA RamAllocFailTable(PC),A0
  JSR PrintText
LAB_A1D1F4:
  RTS
RamAllocFailTable:
  DC.B  $D,"ProgramRam-Allocation Failure!!",$D,0
  even
  endc

calcArChecksum:
  BSR.W calcChecksum
  MOVE.L  D0,checksum
  RTS
checkARChecksum:
  BSR.W calcChecksum
  LEA checksum,A0
  CMP.L (A0),D0
  BEQ.S LAB_A1D280
  LEA CalcChkText(PC),A0
  JSR PrintText
  JSR Print8DigitHex
  LEA OriginalChkText(PC),A0
  JSR PrintText
  MOVEA.L checksum,A0
  MOVE.L  A0,D0
  JSR Print8DigitHex
  LEA ArCorruptedText(PC),A0
  JSR PrintText
LAB_A1D280:
  RTS
ArCorruptedText:
  DC.B  $D,"Looks like your AR-PRO ROM could be corrupt!!",$D,0,0

CalcChkText:
  DC.B  $D,"Calculated Chk:= ",0

OriginalChkText:
  DC.B  $D,"Original   Chk:= ",0,0

calcChecksum:
  MOVEM.L D1-D2/A0,-(A7)
  LEA STARTCRC,A0
  MOVEQ #0,D0
  MOVEQ #0,D2
LAB_A1D2EA:
  ADD.L (A0)+,D0
  CMP.L #ENDCRC,A0
  BNE.S LAB_A1D2EA
  MOVEM.L (A7)+,D1-D2/A0
  RTS
SUB_A1D2F6:
  MOVEM.L D0/A0-A1,-(A7)
  LEA LAB_A47FB6,A0
  LEA SaveColor,A1
  MOVEQ #$F,D0
LAB_A1D308:
  MOVE.L  (A1)+,(A0)+
  DBF D0,LAB_A1D308
  LEA CopyBpl1Pth,A0
  LEA stringWorkspace,A1
  MOVEQ #7,D0
LAB_A1D31C:
  MOVE.L  (A0)+,(A1)+
  DBF D0,LAB_A1D31C
  MOVEM.L (A7)+,D0/A0-A1
  RTS
SUB_A1D328:
  MOVEM.L D0/A0-A1,-(A7)
  LEA LAB_A47FB6,A0
  LEA color00+hardware,A1
  MOVEQ #$F,D0
LAB_A1D33A:
  MOVE.L  (A0)+,(A1)+
  DBF D0,LAB_A1D33A
  MOVEQ #5,D0
  LEA stringWorkspace,A0
  LEA bpl1pth+hardware,A1
LAB_A1D34E:
  MOVE.L  (A0)+,(A1)+
  DBF D0,LAB_A1D34E
  MOVEM.L (A7)+,D0/A0-A1
  RTS
CMD_SQR:
  ST  restartFlag
CMD_SQ:
  MOVEM.L D0-D7/A0-A6,-(A7)
  MOVEQ #0,D5
  MOVE.L  SlowMemEnd,D5
  BEQ.S LAB_A1D374
  SUBI.L  #$00c00000,D5
LAB_A1D374:
  ADD.L ChipMemEnd,D5
  ADD.L autoConfigMemEnd,D5
  SUB.L autoConfigMemStart,D5
  CMPI.L  #$00100000,D5
  BHI.W LAB_A1D51C
  TST.B LAB_A48397
  BEQ.S LAB_A1D3A0
  MOVEA.L LAB_A483B6,A1
  BRA.S LAB_A1D3E4
LAB_A1D3A0:
  MOVE.L  foundSlowMemEnd,D0
  BEQ.S LAB_A1D3D0
  SUB.L SlowMemEnd,D0
  TST.L SlowMemEnd
  BNE.S LAB_A1D3BC
  SUBI.L  #$00c00000,D0
LAB_A1D3BC:
  CMP.L D0,D5
  BHI.S LAB_A1D3D0
  MOVE.L  #$00c00000,D0
  OR.L  SlowMemEnd,D0
  MOVEA.L D0,A1
  BRA.S LAB_A1D3E4
LAB_A1D3D0:
  MOVE.L  foundChipMemEnd,D0
  SUB.L ChipMemEnd,D0
  CMP.L D0,D5
  BHI.W LAB_A1D516
  MOVEA.L D0,A1
LAB_A1D3E4:
  MOVE.L  A1,ramDiskMem
  MOVE.W  LAB_A4822E,LAB_A4823C
  MOVE.W  memoryControlPrefsValue,LAB_A4823E
  MOVE.L  LAB_A483B6,LAB_A48452
  MOVE.L  autoConfigMemStart,LAB_A4846A
  MOVE.L  autoConfigMemEnd,LAB_A4846E
  MOVE.L  #$00080000,ramDiskMem2
  CMPI.L  #$00100000,ChipMemEnd
  BGE.S LAB_A1D44E
  MOVE.L  #$00c00000,ramDiskMem2
  TST.L SlowMemEnd
  BNE.S LAB_A1D44E
  MOVE.L  autoConfigMemStart,ramDiskMem2
LAB_A1D44E:
  MOVEA.L ramDiskMem,A2
  LEA 0(A2,D5.L),A3
  CMPA.L  #ChipramSave1,A2
  BHI.S LAB_A1D46A
  CMPA.L  #SECSTRT_0,A3
  BHI.W LAB_A1D516
LAB_A1D46A:
  JSR InitialiseDisk
  LEA hardware,A5
  MOVE.W  #$0200,$96(A5)
  MOVE.W  #$4000,$9A(A5)
  BSR.W SwapChipRam1
  JSR SUB_A1F9A2
  MOVE.L  D0,LAB_A4835A
  MOVE.L  D1,LAB_A4835E
  MOVE.L  A0,LAB_A48362
  CMPI.L  #$00000400,D0
  BLS.S LAB_A1D522
  MOVE.L  A1,-(A7)
  MOVEA.L A0,A1
  JSR SUB_A22F5A
  MOVEA.L (A7)+,A1
  CMPI.W  #$0400,D0
  BHI.S LAB_A1D528
  SUBA.L  A0,A0
  MOVE.L  #$0001ffff,D0
LAB_A1D4C0:
  MOVE.L  (A0)+,(A1)+
  SUBQ.L  #1,D0
  BPL.S LAB_A1D4C0
  MOVE.L  ramDiskMem2,D0
  BEQ.S LAB_A1D4DC
  MOVEA.L D0,A0
  MOVE.L  #$0001ffff,D0
LAB_A1D4D6:
  MOVE.L  (A0)+,(A1)+
  SUBQ.L  #1,D0
  BPL.S LAB_A1D4D6
LAB_A1D4DC:
  MOVEA.L LAB_A48362,A0
  MOVE.L  LAB_A4835A,D0
  LSR.L #2,D0
  MOVE.L  LAB_A4835E,D1
LAB_A1D4F0:
  MOVE.L  D1,(A0)+
  SUBQ.L  #1,D0
  BNE.S LAB_A1D4F0
  BSR.W SwapChipRam1
  MOVE.W  #$c000,$9A(A5)
  MOVE.W  #$8200,$96(A5)
  ST  sqInRamdisk
  BSR.W PrintReady
LAB_A1D510:
  MOVEM.L (A7)+,D0-D7/A0-A6
  RTS
LAB_A1D516:
  LEA NotEnoughRamText(PC),A0
  BRA.S LAB_A1D52E
LAB_A1D51C:
  LEA Logical1024Text(PC),A0
  BRA.S LAB_A1D52E
LAB_A1D522:
  LEA NoDataSpaceText(PC),A0
  BRA.S LAB_A1D53A
LAB_A1D528:
  LEA SystemErrorText(PC),A0
  BRA.S LAB_A1D53A
LAB_A1D52E:
  JSR PrintText
  BSR.W PrintReady
  BRA.S LAB_A1D510
LAB_A1D53A:
  BSR.W SwapChipRam1
  MOVE.W  #$c000,$9A(A5)
  MOVE.W  #$8200,$96(A5)
  BRA.S LAB_A1D52E
NotEnoughRamText:
  DC.B  "Not enough extra ram available!",$D,0

Logical1024Text:
  DC.B  "Logical memory is more than 1024 Kb. Use preferences (F3) to "
  DC.B  "set!",$D,0

NoDataSpaceText:
  DC.B  "No saving possible - no data space!",$D,0

SystemErrorText:
  DC.B  "System error: regsave longer than memblock!!!!!!!!",$D,0,0

DriveCfgWarnText:
  DC.B  "Warning: drive configuration has changed!",$D,0,0

CMD_LQR:
  ST  restartFlag
CMD_LQ:
  TST.B sqInRamdisk
  BEQ.W LAB_A1D714
  SF  cursorEnabled
  SF  TBufferAllocated
  LEA hardware,A5
  MOVE.W  #$0200,$96(A5)
  MOVE.W  #$4000,$9A(A5)
  BSR.W SwapChipRam1
  SUBA.L  A0,A0
  MOVEA.L ramDiskMem,A1
  MOVE.L  #$0001ffff,D0
LAB_A1D676:
  MOVE.L  (A1)+,(A0)+
  SUBQ.L  #1,D0
  BPL.S LAB_A1D676
  TST.L ramDiskMem2
  BEQ.S LAB_A1D696
  MOVEA.L ramDiskMem2,A0
  MOVE.L  #$0001ffff,D0
LAB_A1D690:
  MOVE.L  (A1)+,(A0)+
  SUBQ.L  #1,D0
  BPL.S LAB_A1D690
LAB_A1D696:
  MOVEA.L LAB_A48362,A1
  JSR SUB_A22F96
  BMI.S LAB_A1D6E8
  TST.W D0
  BEQ.S LAB_A1D6B2
  LEA DriveCfgWarnText(PC),A0
  JSR PrintText
LAB_A1D6B2:
  MOVEA.L LAB_A48362,A0
  MOVE.L  LAB_A4835A,D0
  LSR.L #2,D0
  MOVE.L  LAB_A4835E,D1
LAB_A1D6C6:
  MOVE.L  D1,(A0)+
  SUBQ.L  #1,D0
  BNE.S LAB_A1D6C6
  BSR.W SwapChipRam1
  BSR.W PrintReady
  MOVE.W  #$c000,$9A(A5)
  MOVE.W  #$8200,$96(A5)
  ST  cursorEnabled
  RTS
LAB_A1D6E8:
  BSR.W SwapChipRam1
  MOVE.W  #$c000,$9A(A5)
  MOVE.W  #$8200,$96(A5)
  LEA BadLoadText(PC),A0
  JSR PrintText
  JSR SUB_A230EA
  BSR.W PrintReady
  ST  cursorEnabled
  RTS
LAB_A1D714:
  LEA NoSaveQuickText(PC),A0
  JSR PrintText
  BSR.W PrintReady
  ST  cursorEnabled
  RTS
NoSaveQuickText:
  DC.B  "No savequick-file in RAM-disk!",$D,0

BadLoadText:
  DC.B  "No load possible - required systemconfiguration:",$D,0

  dc.b 128,015,247,000,031,238,000,063,216,252,240,048,097,224,098,129
  dc.b 240,195,001,129,255,002,187,222,031,240,002,194,129,138,007,195
  dc.b 000,000,160,008,059,219,216,098,001,032,193,033,064,226,100,031
  dc.b 064,195,160,080,248,100,047,192,193,067,225,157,059,003,127,000
  dc.b 160,081,060,000,010,000,131,010,010,071,210,209,012,080,043,028
  dc.b 000,005,001,129,235,196,046,240,234,233,129,183,170,067,184,009
  dc.b 007,193,000,014,064,150,160,191,192,165,010,015,000,008,047,224
  dc.b 002,209,067,128,000,152,001,027,039,157,096,044,012,240,020,128
  dc.b 116,000,064,049,059,010,006,067,064,000,165,002,127,252,129,066
  dc.b 168,019,194,094,049,208,135,236,050,001,064,040,100,000,027,024
  dc.b 056,020,027,001,120,039,132,036,131,032,010,001,130,065,064,040
  dc.b 098,031,195,252,056,020,022,056,082,055,004,037,000,032,022,129
  dc.b 064,104,097,000,020,188,079,225,193,112,128,080,077,065,009,101
  dc.b 067,192,020,006,135,024,013,251,229,254,002,151,031,252,050,161
  dc.b 031,231,240,129,034,067,222,032,236,210,134,172,001,074,234,252
  dc.b 000,160,080,063,215,241,001,044,067,194,128,080,192,001,061,008
  dc.b 002,194,169,146,006,248,035,011,040,131,211,244,003,002,128,080
  dc.b 224,007,192,004,053,073,012,084,013,240,002,130,065,169,242,003
  dc.b 129,064,040,120,001,255,003,236,176,020,020,128,254,063,223,192
  dc.b 072,041,032,058,120,129,136,146,127,130,024,192,186,069,224,026
  dc.b 175,248,068,133,047,007,248,148,028,079,192,019,129,252,093,208
  dc.b 040,009,015,192,019,080,006,108,013,239,252,112,120,199,248,218
  dc.b 010,021,252,051,197,159,003,057,144,192,095,192,019,072,008,040
  dc.b 032,131,143,232,047,135,208,061,032,070,004,089,024,020,025,014
  dc.b 000,002,146,224,135,007,248,062,037,000,232,224,039,066,130,106
  dc.b 051,001,064,200,111,136,016,249,159,004,032,203,007,182,067,066
  dc.b 192,002,036,131,232,002,196,122,137,064,160,040,127,080,080,016
  dc.b 055,255,227,252,108,041,079,254,144,110,191,128,040,005,012,127
  dc.b 002,045,002,133,031,127,247,075,194,037,031,255,201,255,031,251
  dc.b 065,064,040,103,252,012,040,010,152,032,246,255,119,076,031,248
  dc.b 063,252,095,249,254,188,014,002,153,012,080,079,253,096,040,086
  dc.b 111,118,052,010,088,127,240,255,247,242,244,020,012,135,248,000
  dc.b 136,127,244,125,002,144,250,055,186,190,005,032,063,246,127,255
  dc.b 250,250,013,038,067,020,021,007,081,008,028,005,001,003,225,255
  dc.b 099,193,215,126,128,095,094,000,226,129,080,196,025,068,003,176
  dc.b 040,084,064,010,088,120,034,223,160,023,239,012,020,010,134,096
  dc.b 001,072,008,002,133,092,000,161,077,190,128,095,156,072,040,009
  dc.b 013,240,005,016,164,064,001,064,032,110,128,074,160,080,021,189
  dc.b 000,255,016,152,040,025,015,128,255,193,023,000,006,142,080,164
  dc.b 248,001,073,005,000,211,160,028,225,021,130,128,144,221,001,255
  dc.b 120,058,192,034,218,081,007,217,016,021,010,014,128,120,130,086
  dc.b 005,001,033,234,003,118,121,064,040,012,012,042,241,255,117,161
  dc.b 198,196,168,001,064,200,123,255,223,240,184,020,042,096,005,036
  dc.b 008,082,245,067,132,244,080,001,064,040,127,255,237,063,248,239
  dc.b 159,192,040,088,137,243,135,222,255,196,085,004,049,064,096,097
  dc.b 032,254,017,065,071,004,145,124,195,231,127,207,072,020,005,012
  dc.b 082,017,254,135,000,172,000,080,040,031,136,252,210,005,002,161
  dc.b 143,254,255,240,252,063,208,082,080,003,052,191,131,164,095,229
  dc.b 033,201,197,015,018,127,150,061,007,249,001,130,130,142,031,001
  dc.b 065,127,112,253,165,243,115,160,160,036,061,203,255,080,248,031
  dc.b 248,054,010,078,024,099,200,020,191,015,204,063,241,060,081,216
  dc.b 040,009,014,114,255,244,040,004,158,116,036,195,131,001,072,252
  dc.b 004,145,135,244,058,036,225,064,072,111,244,064,255,063,224,041
  dc.b 016,129,000,092,160,112,021,015,039,108,063,138,176,069,010,111
  dc.b 085,014,226,079,192,117,002,137,028,007,241,001,066,254,073,141
  dc.b 042,241,013,224,011,003,192,002,194,134,179,199,012,005,004,124
  dc.b 007,212,196,007,001,250,127,226,135,065,064,008,096,016,003,096
  dc.b 056,033,135,077,160,115,001,128,080,067,192,048,001,176,063,071
  dc.b 252,083,192,056,160,004,049,144,001,240,033,207,241,187,124,000
  dc.b 014,040,012,013,128,110,003,214,127,198,133,016,160,068,049,240
  dc.b 067,164,010,001,003,007,000,160,016,061,015,225,254,220,010,005
  dc.b 067,127,012,241,070,032,159,066,145,028,041,076,127,159,230,224
  dc.b 080,058,024,092,137,010,081,224,020,002,007,121,254,255,171,129
  dc.b 064,104,113,224,013,180,040,112,010,095,128,036,167,235,209,229
  dc.b 000,160,092,048,240,010,020,000,002,128,208,232,010,190,013,026
  dc.b 199,128,080,113,192,041,064,000,080,026,029,192,040,005,092,025
  dc.b 211,254,031,001,075,247,015,252,015,010,109,197,255,241,070,108
  dc.b 040,014,012,224,129,252,009,092,016,017,138,066,041,062,128,080
  dc.b 120,001,225,143,010,095,232,048,183,042,007,136,018,012,097,209
  dc.b 252,023,002,151,148,133,127,143,160,080,064,124,000,252,176,041
  dc.b 120,126,032,130,224,080,028,024,070,004,043,097,072,059,115,252
  dc.b 239,002,129,064,254,000,126,127,209,120,060,024,040,025,012,029
  dc.b 124,016,015,056,137,119,225,251,226,002,135,242,003,205,002,151
  dc.b 007,068,005,000,033,216,079,224,139,160,128,046,254,007,255,143
  dc.b 239,158,024,028,080,112,001,149,034,032,036,032,080,018,028,032
  dc.b 034,200,039,250,123,195,027,167,247,142,004,079,207,132,008,024
  dc.b 168,176,007,248,028,189,175,007,241,235,013,248,178,065,073,015
  dc.b 225,081,025,087,199,140,005,010,193,005,001,064,040,121,098,240
  dc.b 020,043,031,195,218,025,007,192,002,130,062,064,197,027,129,065
  dc.b 252,143,006,030,063,234,112,020,016,214,138,003,003,063,025,129
  dc.b 068,254,001,064,168,127,238,112,020,043,135,195,250,051,219,062
  dc.b 179,252,141,177,020,007,007,208,000,129,095,252,001,100,136,255
  dc.b 163,076,130,001,072,003,146,009,019,034,001,219,169,002,024,124
  dc.b 040,080,028,136,148,010,008,204,127,248,152,129,065,161,112,129
  dc.b 060,060,001,012,034,128,000,164,014,129,052,135,249,003,252,063
  dc.b 030,093,032,160,224,128,082,248,176,134,061,112,073,224,159,239
  dc.b 247,068,014,133,004,252,009,245,028,023,132,012,001,001,129,002
  dc.b 128,033,132,010,063,224,057,135,095,255,027,005,004,124,011,213
  dc.b 003,016,165,006,126,048,129,064,240,119,000,090,128,208,255,063
  dc.b 207,226,168,094,032,255,193,227,252,187,255,243,224,049,143,224
  dc.b 216,028,010,002,024,000,059,164,016,010,084,017,076,024,216,064
  dc.b 133,002,065,133,004,067,000,192,192,064,008,032,165,021,193,013
  dc.b 201,189,130,169,000,010,023,128,001,064,016,242,016,032,012,032
  dc.b 005,000,024,034,248,049,208,056,160,016,053,081,007,244,010,081
  dc.b 020,016,010,000,135,145,192,000,067,000,116,000,065,022,065,001
  dc.b 197,010,014,032,138,032,250,033,065,073,128,014,113,064,241,001
  dc.b 065,138,010,024,006,042,005,003,129,227,143,192,080,058,028,064
  dc.b 020,040,112,008,047,251,248,179,246,005,023,015,255,020,127,244
  dc.b 124,005,136,106,144,210,000,041,007,128,210,113,188,133,135,001
  dc.b 240,080,065,255,185,064,199,072,041,044,112,064,080,002,031,064
  dc.b 018,225,240,035,140,247,176,161,224,046,064,095,224,127,030,160
  dc.b 045,160,000,060,252,133,000,033,252,001,058,065,028,051,156,198
  dc.b 160,064,216,040,036,056,031,160,063,160,096,035,016,000,029,221
  dc.b 002,029,069,242,254,017,129,134,011,196,022,016,160,240,129,000
  dc.b 126,000,137,120,003,136,050,031,215,248,130,005,000,065,133,006
  dc.b 195,244,255,033,069,095,048,049,075,127,182,031,071,250,026,005
  dc.b 003,129,133,001,195,240,254,135,064,202,176,048,160,184,108,031
  dc.b 129,232,058,234,006,041,127,128,080,054,030,007,192,248,022,004
  dc.b 000,129,254,000,080,046,028,007,129,248,038,005,001,129,205,041
  dc.b 067,040,001,007,242,030,016,129,064,036,126,193,226,040,046,022
  dc.b 007,018,235,013,128,126,011,200,016,008,006,015,016,058,024,128
  dc.b 112,049,064,228,124,000,052,230,007,136,031,015,000,002,128,200
  dc.b 204,091,129,226,000,035,254,000,160,050,063,192,030,053,003,196
  dc.b 000,071,240,003,174,120,106,001,192,197,003,145,252,000,225,174
  dc.b 024,160,013,053,165,200,117,001,144,216,001,000,031,238,000,063
  dc.b 220,000,127,184,000,255,112,001,052,192,014,032,032,012,013,224
  dc.b 002,129,240,195,001,129,255,002,187,222,027,245,176,049,064,248
  dc.b 096,000,020,001,007,123,123,012,064,036,024,036,040,028,076,177
  dc.b 232,024,116,010,031,012,133,248,024,040,124,051,167,096,111,224
  dc.b 020,010,039,128,001,064,016,097,065,072,250,090,033,138,005,099
  dc.b 128,000,160,048,061,120,133,222,029,093,048,055,053,072,119,001
  dc.b 032,248,032,001,200,018,212,023,249,255,242,005,007,128,004,023
  dc.b 140,040,025,014,000,025,248,004,012,158,119,199,220,011,006,005
  dc.b 004,006,194,029,055,250,252,005,003,033,160,003,082,129,000,254
  dc.b 255,248,163,031,116,228,184,152,200,067,166,255,000,170,100,048
  dc.b 002,000,013,196,018,103,066,144,027,251,242,038,069,070,192,020
  dc.b 003,196,131,073,144,192,004,063,143,200,076,041,193,049,195,209
  dc.b 248,033,042,003,000,176,015,050,012,230,067,000,008,001,112,017
  dc.b 012,167,004,002,001,065,023,004,036,081,162,060,000,038,065,064
  dc.b 040,127,128,030,130,064,160,041,015,020,111,250,001,087,145,248
  dc.b 002,007,128,161,128,121,067,130,009,127,252,064,160,080,063,215
  dc.b 241,143,044,096,066,128,080,192,056,097,193,066,191,192,202,227
  dc.b 255,134,004,034,011,040,227,211,252,003,220,131,057,144,224,004
  dc.b 033,129,066,130,024,168,027,224,028,005,034,013,078,144,028,010
  dc.b 001,067,064,008,135,004,138,003,145,003,004,028,254,031,001,066
  dc.b 136,129,139,190,096,080,018,025,000,033,103,250,170,005,011,160
  dc.b 125,072,010,020,253,000,080,132,016,148,240,160,036,049,000,035
  dc.b 175,244,210,010,005,015,032,005,040,240,010,079,194,136,033,003
  dc.b 228,019,012,134,017,254,227,253,154,127,065,074,031,031,253,254
  dc.b 028,130,147,248,167,248,135,251,061,005,001,033,194,064,120,127
  dc.b 174,008,112,127,131,128,127,216,254,058,009,208,160,144,130,158
  dc.b 020,012,134,129,241,254,248,032,070,088,061,178,026,022,000,005
  dc.b 010,002,132,114,130,209,100,000,134,136,064,032,129,064,032,097
  dc.b 239,159,199,248,196,020,144,069,000,161,030,137,033,193,012,118
  dc.b 008,024,165,195,232,134,024,033,247,064,021,172,034,011,249,032
  dc.b 032,070,043,037,000,160,161,132,036,126,143,225,130,015,103,001
  dc.b 108,193,032,164,254,137,240,062,020,064,020,200,097,067,127,234
  dc.b 190,129,065,070,001,096,064,161,097,060,015,197,176,002,153,012
  dc.b 120,100,031,116,016,041,015,128,098,069,032,060,022,082,020,002
  dc.b 228,198,010,005,067,223,245,191,064,012,040,094,031,246,063,255
  dc.b 076,047,245,197,128,014,060,021,012,127,149,124,059,003,192,064
  dc.b 197,046,060,031,100,110,215,160,108,220,134,040,038,008,172,000
  dc.b 120,020,006,007,131,128,236,022,002,252,130,192,080,200,101,023
  dc.b 130,045,002,005,004,022,124,002,085,002,003,232,084,011,241,013
  dc.b 130,192,209,000,193,226,127,255,175,224,082,113,148,096,010,023
  dc.b 007,252,084,163,240,253,021,130,128,080,244,000,243,127,143,193
  dc.b 230,020,159,192,233,120,255,202,168,124,079,165,176,120,010,030
  dc.b 048,252,024,099,240,010,015,139,188,002,160,030,009,090,028,034
  dc.b 074,224,020,002,134,153,033,010,139,105,127,068,017,116,194,164
  dc.b 001,192,046,134,067,128,094,193,064,072,104,130,008,250,029,032
  dc.b 052,026,159,208,004,089,048,169,120,000,082,133,066,128,025,192
  dc.b 160,052,060,144,127,008,160,179,252,066,072,068,195,225,127,207
  dc.b 072,040,021,012,126,198,030,133,020,141,193,009,091,194,035,241
  dc.b 072,020,010,134,063,138,127,067,142,008,082,064,241,039,066,165
  dc.b 211,008,031,202,035,147,138,030,032,002,044,254,015,250,123,005
  dc.b 004,068,050,002,130,254,032,059,073,006,231,065,064,072,127,128
  dc.b 020,164,240,063,243,236,020,148,002,096,040,063,135,234,007,248
  dc.b 152,040,236,020,004,135,056,007,202,020,002,070,202,018,065,005
  dc.b 024,254,063,033,036,224,253,009,130,158,065,064,072,111,244,064
  dc.b 255,063,224,041,016,129,000,092,160,112,021,015,039,108,063,138
  dc.b 176,069,010,111,085,015,192,020,017,248,012,199,066,241,005,133
  dc.b 240,063,001,065,050,191,254,063,209,042,241,012,035,027,199,192
  dc.b 000,138,189,225,000,161,127,135,192,032,059,252,065,096,056,041
  dc.b 000,160,067,156,227,059,001,024,038,069,193,193,002,248,080,067
  dc.b 192,029,079,099,130,160,008,224,080,065,002,029,199,053,248,024
  dc.b 225,050,047,000,010,192,224,058,133,005,128,238,108,020,128,070
  dc.b 001,131,072,144,239,193,015,145,164,056,224,032,177,000,111,010
  dc.b 090,031,199,249,163,228,010,131,016,033,151,200,071,252,050,004
  dc.b 250,143,068,000,064,160,196,000,184,038,168,016,020,042,028,071
  dc.b 212,005,000,129,199,128,080,008,028,032,058,045,208,010,006,067
  dc.b 160,024,159,024,087,116,082,196,143,132,116,225,003,154,245,159
  dc.b 128,240,068,049,006,232,132,192,080,008,024,120,005,010,000,067
  dc.b 001,073,148,066,002,128,144,232,007,068,046,025,002,023,015,162
  dc.b 224,032,082,128,016,133,108,186,096,034,131,129,224,072,127,224
  dc.b 020,002,006,030,001,065,195,255,003,064,248,039,069,154,254,034
  dc.b 129,064,008,121,000,032,191,180,224,040,080,096,010,088,160,020
  dc.b 018,000,012,066,130,062,001,064,008,097,000,145,191,084,225,000
  dc.b 063,227,127,227,248,156,127,224,034,000,028,158,255,253,130,124
  dc.b 254,001,064,240,097,226,013,166,009,005,173,254,094,193,064,160
  dc.b 097,000,048,083,159,072,033,144,040,025,012,029,092,021,007,236
  dc.b 137,119,225,250,039,006,005,040,072,008,101,078,132,017,200,024
  dc.b 166,185,002,193,248,002,250,252,221,252,189,125,240,063,252,127
  dc.b 196,241,064,226,130,254,013,139,145,255,051,252,020,130,128,016
  dc.b 225,063,150,127,063,211,194,024,099,056,028,063,232,010,143,206
  dc.b 051,241,112,228,209,064,240,126,144,192,171,224,128,014,065,000
  dc.b 128,031,042,064,000,160,162,008,049,195,094,144,130,096,000,160
  dc.b 120,048,140,001,127,245,114,007,136,064,002,135,003,194,002,130
  dc.b 190,124,140,131,113,127,006,128,160,120,049,049,095,006,092,255
  dc.b 017,254,129,064,160,120,128,001,151,144,022,207,224,020,004,134
  dc.b 000,001,075,253,238,002,133,064,004,188,040,089,012,144,036,068
  dc.b 093,017,224,197,011,190,015,250,239,128,073,218,065,000,164,000
  dc.b 137,001,065,145,014,000,006,199,082,120,056,128,010,014,120,047
  dc.b 143,220,073,006,074,041,126,038,067,130,240,161,124,192,143,032
  dc.b 240,068,048,008,004,240,112,119,121,166,007,008,031,225,255,242
  dc.b 233,056,033,012,031,198,005,194,009,130,067,255,079,254,255,127
  dc.b 186,255,096,161,079,207,191,080,179,079,192,249,127,152,016,040
  dc.b 050,026,056,055,164,255,214,007,027,005,004,125,125,247,128,252
  dc.b 130,151,159,000,218,005,003,193,220,001,198,080,193,254,031,254
  dc.b 184,048,216,167,127,007,191,190,232,063,208,082,252,224,131,161
  dc.b 004,049,075,131,253,004,063,002,151,216,005,004,060,002,145,128
  dc.b 005,037,240,010,089,000,020,004,134,001,129,254,128,022,000,065
  dc.b 151,192,001,197,010,030,001,234,065,062,003,212,064,007,131,033
  dc.b 255,159,192,120,226,130,139,255,199,064,160,080,051,252,120,010
  dc.b 087,000,019,012,135,254,115,001,243,255,127,118,203,008,080,097
  dc.b 192,021,063,128,040,042,031,071,000,011,016,007,056,007,007,217
  dc.b 004,007,020,040,056,131,239,130,040,133,005,046,000,015,002,067
  dc.b 003,196,000,146,197,005,246,126,004,129,065,195,031,253,223,197
  dc.b 031,160,160,100,054,143,224,088,128,031,074,031,095,116,016,020
  dc.b 040,056,055,236,158,005,005,101,082,031,071,240,074,061,231,128
  dc.b 031,163,185,000,058,064,095,252,103,008,020,002,007,048,005,169
  dc.b 136,099,144,137,000,039,128,023,210,223,024,024,007,020,042,031
  dc.b 233,136,040,000,008,067,017,133,129,177,110,131,255,033,064,008
  dc.b 192,035,005,226,011,008,080,120,064,128,063,000,068,137,252,129
  dc.b 156,007,131,066,128,130,218,176,049,065,010,013,135,008,000,098
  dc.b 138,190,096,098,150,255,108,048,128,020,036,010,007,003,010,003
  dc.b 134,032,005,248,137,000,160,097,064,240,200,003,190,016,117,212
  dc.b 012,082,255,000,160,108,060,003,031,004,011,197,003,252,000,160
  dc.b 092,056,015,056,029,115,003,020,139,038,129,226,007,067,227,239
  dc.b 128,088,080,049,064,248,120,217,240,012,010,007,224,002,254,096
  dc.b 120,129,208,230,059,224,087,220,012,080,046,024,128,112,049,064
  dc.b 228,124,000,052,230,007,136,031,015,000,002,128,200,204,091,129
  dc.b 226,000,035,254,000,160,050,063,192,030,053,003,196,000,071,240
  dc.b 003,174,120,106,001,192,197,003,145,252,000,179,158,028,128,112
  dc.b 049,064,242,110,000,020,006,070,192,008,000,255,112,001,254,224
  dc.b 003,253,192,007,251,128,009,166,205,194,013,224,002,129,240,195
  dc.b 001,129,255,003,207,158,031,240,002,194,129,138,007,195,000,000
  dc.b 160,008,059,107,216,098,001,032,193,033,064,226,123,023,064,195
  dc.b 160,080,248,098,128,192,193,064,017,190,181,003,224,127,128,160
  dc.b 081,060,000,010,000,131,010,010,071,192,001,224,120,098,129,200
  dc.b 224,000,040,012,015,195,254,004,046,240,207,205,129,195,065,003
  dc.b 035,173,134,088,108,012,080,101,002,097,131,001,194,028,007,157
  dc.b 241,247,002,065,129,064,032,101,085,048,240,000,015,255,191,254
  dc.b 040,199,197,000,060,184,128,208,067,115,102,031,004,001,250,056
  dc.b 047,000,055,243,236,010,008,008,044,132,033,156,004,131,192,192
  dc.b 015,071,005,096,037,000,020,022,008,008,067,192,066,016,020,010
  dc.b 135,001,192,006,142,008,004,006,016,192,036,135,128,000,060,000
  dc.b 008,130,128,080,202,042,002,001,064,096,127,192,233,128,064,005
  dc.b 010,005,067,012,007,005,224,001,248,129,066,132,000,126,191,240
  dc.b 000,158,048,080,026,024,140,110,063,031,224,104,048,164,047,247
  dc.b 252,000,060,125,192,192,015,012,134,001,223,010,249,227,254,002
  dc.b 131,255,254,118,005,129,075,112,143,152,003,002,128,080,224,061
  dc.b 225,193,092,063,248,127,225,131,210,246,014,000,161,067,128,121
  dc.b 144,040,025,015,003,239,236,002,162,255,197,130,145,095,132,005
  dc.b 004,252,002,144,240,004,005,000,161,240,126,252,128,096,080,184
  dc.b 227,113,135,241,196,020,175,184,239,128,240,040,005,015,195,251
  dc.b 192,006,195,126,130,148,057,216,225,252,049,005,043,254,055,224
  dc.b 126,227,186,010,002,067,120,001,064,144,112,112,255,131,147,064
  dc.b 080,196,080,066,131,160,040,005,014,000,025,003,192,006,088,080
  dc.b 004,024,000,224,210,007,128,161,224,003,146,010,002,007,180,042
  dc.b 067,000,008,041,056,000,236,100,051,142,014,126,124,010,020,124
  dc.b 002,145,168,017,040,240,012,048,055,004,001,134,010,006,067,064
  dc.b 240,199,067,028,193,007,152,127,017,224,016,122,000,130,007,096
  dc.b 016,032,196,084,048,006,000,142,012,010,008,199,241,186,005,010
  dc.b 000,030,128,197,128,160,104,109,240,016,020,017,243,168,015,066
  dc.b 150,029,240,014,241,250,053,004,195,033,138,011,124,071,124,006
  dc.b 005,010,055,193,255,007,124,001,120,255,024,115,001,195,195,033
  dc.b 255,255,247,204,039,128,080,082,058,238,135,245,254,007,000,007
  dc.b 140,120,112,222,002,129,208,208,003,032,040,081,128,010,020,015
  dc.b 196,000,243,001,225,144,197,007,128,002,128,192,204,000,040,082
  dc.b 046,048,023,140,054,011,003,068,003,006,080,040,000,008,135,128
  dc.b 221,010,071,000,205,171,022,056,031,134,006,035,033,144,066,000
  dc.b 000,171,116,112,028,064,141,025,079,163,193,216,012,049,058,197
  dc.b 012,152,001,225,022,210,041,007,004,064,042,241,095,099,030,196
  dc.b 180,165,068,015,016,028,029,193,125,236,126,030,161,065,048,000
  dc.b 245,224,001,072,127,132,243,123,019,016,080,197,007,060,066,028
  dc.b 183,243,252,005,011,255,224,031,192,245,120,254,201,178,008,098
  dc.b 128,192,192,063,015,208,040,081,191,135,255,128,126,015,103,143
  dc.b 241,232,014,040,009,014,225,190,224,062,131,197,255,243,130,151
  dc.b 112,092,005,000,129,247,056,255,030,226,062,178,031,001,193,004
  dc.b 000,089,033,047,242,000,225,143,194,031,069,050,198,005,231,016
  dc.b 107,018,096,216,022,059,192,053,156,040,040,053,199,144,020,184
  dc.b 038,001,244,040,204,010,006,067,208,064,168,215,000,143,227,096
  dc.b 164,032,108,114,129,072,112,002,113,248,028,005,000,161,248,033
  dc.b 194,150,136,179,254,032,041,029,012,127,031,131,000,080,063,128
  dc.b 103,064,127,046,088,098,144,008,005,003,009,132,000,131,240,001
  dc.b 020,128,000,080,180,197,080,252,048,064,080,089,009,148,080,163
  dc.b 255,195,232,144,184,032,126,031,240,041,005,007,131,240,131,003
  dc.b 004,196,052,041,015,128,146,003,000,160,135,128,066,129,199,248
  dc.b 191,224,035,011,004,063,008,112,104,012,002,148,063,010,004,023
  dc.b 192,124,005,006,000,019,239,225,127,129,253,130,128,080,240,000
  dc.b 248,210,008,080,008,025,000,014,001,128,001,005,032,040,008,100
  dc.b 017,064,080,050,072,060,226,004,112,165,219,080,024,032,032,076
  dc.b 034,024,161,064,001,093,209,064,224,111,031,237,244,024,020,014
  dc.b 134,043,034,080,224,020,018,073,122,188,000,160,199,128,080,010
  dc.b 027,248,045,097,064,032,097,224,020,002,007,189,255,159,000,030
  dc.b 065,064,072,116,003,157,064,095,241,240,020,174,049,224,041,000
  dc.b 119,255,135,204,023,240,095,112,090,050,024,160,164,008,160,224
  dc.b 127,129,192,003,147,130,008,000,160,036,051,002,007,128,016,162
  dc.b 020,072,008,001,232,020,010,007,128,006,240,125,129,074,142,019
  dc.b 000,134,238,001,066,134,064,096,015,127,143,208,080,064,120,000
  dc.b 080,207,027,223,048,016,166,143,006,225,128,194,007,137,059,194
  dc.b 032,004,175,002,129,064,252,000,062,144,007,000,061,192,080,050
  dc.b 024,024,048,003,225,161,005,004,252,227,129,002,147,192,004,026
  dc.b 160,249,204,002,159,144,254,227,190,015,142,137,017,126,000,040
  dc.b 069,004,252,016,002,130,254,198,253,128,161,224,197,039,191,160
  dc.b 239,128,003,207,007,142,010,015,015,252,005,045,253,254,008,007
  dc.b 252,011,246,010,000,067,011,121,248,008,197,164,027,224,246,140
  dc.b 170,227,198,002,149,199,124,031,014,008,039,124,002,129,224,252
  dc.b 015,250,000,002,136,035,016,002,130,020,142,060,032,040,044,024
  dc.b 026,040,195,114,006,040,009,012,008,025,017,128,005,003,065,225
  dc.b 185,003,020,002,134,000,105,001,066,152,124,063,160,080,008,025
  dc.b 144,243,064,067,020,044,064,024,017,102,001,047,143,243,020,010
  dc.b 009,192,005,005,128,010,018,097,016,196,037,074,135,006,056,032
  dc.b 080,072,192,041,000,024,067,130,224,064,012,069,178,112,052,064
  dc.b 144,110,144,064,192,255,162,024,000,060,063,192,255,000,056,164
  dc.b 064,014,002,190,001,074,020,008,135,220,063,065,192,008,063,252
  dc.b 116,020,019,248,008,004,044,209,224,014,035,248,102,200,135,254
  dc.b 063,012,219,232,046,064,000,255,130,130,131,129,064,015,224,032
  dc.b 080,071,193,033,200,030,013,000,005,144,024,015,216,062,020,237
  dc.b 252,056,047,095,193,252,008,020,022,240,007,004,076,066,129,016
  dc.b 237,033,065,095,000,095,198,194,165,255,031,001,064,160,104,027
  dc.b 240,010,008,135,255,127,008,139,223,254,125,022,022,000,005,004
  dc.b 063,190,003,190,255,190,152,022,248,007,034,161,133,128,082,001
  dc.b 192,193,064,160,080,060,000,010,022,000,001,065,144,193,128,007
  dc.b 081,225,024,131,066,020,010,007,000,001,066,160,000,092,050,024
  dc.b 224,040,225,064,224,113,081,004,040,021,014,228,072,031,096,004
  dc.b 003,142,044,032,162,208,068,007,028,008,032,130,130,033,224,002
  dc.b 129,056,000,084,014,188,120,168,128,160,113,065,199,007,224,111
  dc.b 248,032,164,192,014,183,136,124,007,160,200,247,172,012,095,188
  dc.b 028,064,041,001,127,129,159,248,103,204,081,058,112,001,004,008
  dc.b 052,019,144,102,001,216,000,104,006,110,214,019,160,048,028,080
  dc.b 072,095,062,051,240,051,086,208,032,248,004,134,134,226,012,040
  dc.b 030,026,027,136,049,065,010,013,134,240,000,028,138,190,096,098
  dc.b 150,255,108,056,027,016,097,064,240,242,236,065,133,003,195,192
  dc.b 003,143,112,049,072,145,072,025,024,002,063,192,010,003,195,062
  dc.b 005,183,240,050,201,096,120,129,208,249,001,052,012,012,080,062
  dc.b 030,065,252,015,090,129,248,000,191,152,030,032,116,056,000,047
  dc.b 219,003,020,015,039,192,003,078,096,120,129,240,240,000,040,012
  dc.b 140,197,184,030,032,002,056,161,168,101,001,016,255,001,040,037
  dc.b 012,160,034,031,192,014,185,225,168,007,003,020,014,071,240,002
  dc.b 206,120,102,143,160,233,003,017,138,007,035,045,178,006,072,008
  dc.b 141,128,016,001,254,224,003,253,192,007,251,128,015,247,000,019
  dc.b 077,224,132,029,195,020,050,128,080,127,192,012,006,006,192,177
  dc.b 012,096,044,031,240,002,194,129,138,007,195,000,000,160,008,059
  dc.b 107,216,098,001,032,193,033,064,226,116,113,064,195,160,080,248
  dc.b 103,079,192,193,067,225,150,059,003,127,000,160,081,060,000,010
  dc.b 000,131,010,010,071,206,209,012,080,043,031,131,116,144,129,148
  dc.b 091,003,196,001,134,126,108,014,026,040,030,029,044,050,195,096
  dc.b 098,131,125,083,015,228,004,016,224,060,196,017,248,125,002,130
  dc.b 003,001,008,234,232,112,000,020,128,015,255,144,041,046,112,021
  dc.b 191,098,094,017,002,037,227,109,015,003,255,254,000,252,130,131
  dc.b 249,000,002,253,136,072,198,130,030,215,240,059,108,161,240,000
  dc.b 240,096,007,147,130,176,040,160,136,048,064,030,012,016,128,160
  dc.b 100,060,170,214,003,007,004,085,208,224,066,067,028,016,009,128
  dc.b 080,161,128,003,042,020,128,064,040,012,015,248,002,130,005,010
  dc.b 005,067,008,184,000,111,126,000,080,040,031,232,005,004,240,002
  dc.b 128,208,199,129,096,082,232,080,161,223,240,199,182,004,080,010
  dc.b 024,000,038,174,007,136,010,003,003,012,000,161,121,033,064,040
  dc.b 112,000,240,176,133,011,175,084,012,080,160,033,016,020,012,135
  dc.b 128,007,001,066,153,066,144,120,005,007,038,020,014,135,192,003
  dc.b 240,129,064,096,110,096,020,003,135,224,005,121,008,133,032,127
  dc.b 142,052,088,105,003,224,001,244,080,054,064,008,111,015,240,020
  dc.b 010,007,014,013,001,067,017,065,000,232,128,160,020,051,240,008
  dc.b 066,147,044,040,002,015,248,007,097,002,128,080,199,252,032,040
  dc.b 004,012,060,026,002,164,039,220,031,160,119,004,020,002,134,031
  dc.b 241,062,129,066,143,153,255,023,227,127,199,159,096,125,131,160
  dc.b 029,144,113,064,200,113,255,251,232,020,176,063,195,200,255,131
  dc.b 240,191,224,207,160,061,195,192,014,152,056,160,100,049,240,002
  dc.b 194,129,064,255,135,224,040,080,014,248,060,071,032,020,005,134
  dc.b 062,004,028,081,129,075,014,248,007,120,252,026,130,128,048,195
  dc.b 224,032,040,082,062,008,010,087,204,023,143,225,132,029,140,135
  dc.b 113,255,255,223,113,094,002,193,072,011,184,237,002,151,024,005
  dc.b 039,143,241,196,118,178,067,020,010,007,000,031,001,066,144,000
  dc.b 080,008,028,020,084,049,066,240,001,142,020,002,006,016,001,073
  dc.b 132,002,151,208,136,052,064,176,102,130,128,113,000,063,254,065
  dc.b 065,205,147,024,014,052,125,008,131,196,011,006,065,008,000,144
  dc.b 069,035,240,010,067,000,209,175,016,062,132,065,226,005,131,020
  dc.b 137,128,194,033,065,192,253,161,072,060,031,066,192,241,002,193
  dc.b 138,071,144,016,122,133,002,129,248,000,080,120,128,241,210,013
  dc.b 016,012,024,160,224,001,234,000,254,133,164,040,044,226,041,060
  dc.b 112,131,068,003,006,040,095,000,023,194,128,064,254,000,020,004
  dc.b 013,227,132,026,032,024,049,065,000,064,135,112,138,005,003,252
  dc.b 001,128,164,241,194,013,016,012,025,068,112,065,000,015,130,105
  dc.b 000,000,085,248,003,232,166,120,000,096,188,252,013,098,076,024
  dc.b 002,199,252,000,011,253,005,004,120,242,002,133,224,031,192,131
  dc.b 192,160,100,062,128,010,143,124,040,095,128,020,132,003,142,016
  dc.b 040,090,003,248,004,010,001,067,224,003,130,109,040,058,176,008
  dc.b 032,194,010,071,038,007,176,065,229,203,012,082,161,017,064,130
  dc.b 097,000,032,204,171,161,020,045,205,084,063,003,255,227,252,083
  dc.b 017,003,020,045,004,250,035,255,208,130,130,130,033,138,095,128
  dc.b 195,145,065,225,005,132,040,047,180,003,255,199,195,249,038,158
  dc.b 033,248,063,252,191,128,124,080,040,112,064,065,124,000,040,160
  dc.b 151,039,193,250,059,036,105,034,027,000,007,226,025,250,065,008
  dc.b 066,131,192,003,192,128,082,141,034,067,084,143,129,001,127,227
  dc.b 192,082,184,015,128,160,248,127,103,220,039,240,031,048,045,050
  dc.b 024,000,023,090,040,028,013,224,015,016,160,116,048,016,059,116
  dc.b 080,164,147,196,120,001,065,128,000,160,084,056,016,010,005,003
  dc.b 015,000,160,016,049,224,080,071,000,016,020,010,135,216,068,014
  dc.b 000,002,129,064,210,058,064,065,001,064,136,097,141,030,016,129
  dc.b 020,028,015,248,052,192,224,160,140,000,040,025,015,126,000,005
  dc.b 002,151,192,020,160,112,010,005,003,047,034,006,193,193,001,064
  dc.b 136,113,096,020,041,128,135,255,143,160,080,064,120,000,067,048
  dc.b 223,043,123,016,252,015,224,041,065,003,070,063,000,044,064,160
  dc.b 080,063,000,000,100,016,008,160,100,056,000,056,096,056,002,104
  dc.b 066,145,249,199,002,005,039,128,000,240,000,128,007,198,011,102
  dc.b 067,248,014,251,192,055,036,108,133,008,160,159,130,000,076,031
  dc.b 223,095,176,020,060,024,160,252,128,082,000,060,128,160,016,062
  dc.b 016,084,195,215,006,253,195,254,005,253,005,001,033,253,199,125
  dc.b 255,158,144,080,095,238,060,080,040,033,255,147,232,020,012,135
  dc.b 224,002,139,246,051,231,252,116,148,016,165,113,225,001,065,143
  dc.b 255,207,120,193,229,190,010,154,240,098,099,253,025,245,254,026
  dc.b 064,056,080,024,027,045,193,225,252,130,072,080,018,031,248,001
  dc.b 228,048,002,133,048,248,133,196,040,095,015,223,248,124,114,007
  dc.b 131,020,002,006,021,015,128,018,248,255,049,064,160,048,062,000
  dc.b 092,066,097,016,197,004,003,234,002,144,036,041,017,128,082,000
  dc.b 000,160,247,224,065,159,225,138,194,027,128,002,039,248,015,132
  dc.b 122,078,063,254,063,224,127,148,020,174,000,135,007,192,001,239
  dc.b 224,080,050,026,048,135,064,064,080,040,025,251,244,005,006,010
  dc.b 015,192,135,052,004,049,065,096,002,229,240,191,000,075,128,002
  dc.b 130,062,127,001,089,032,097,152,016,106,032,134,040,063,128,020
  dc.b 002,006,060,032,255,208,020,006,007,005,005,006,067,255,000,160
  dc.b 128,056,192,096,225,002,020,014,007,039,233,012,080,079,224,032
  dc.b 225,064,056,128,099,224,080,110,033,072,188,114,032,160,200,124
  dc.b 118,064,193,044,000,010,002,131,130,133,001,033,143,000,066,134
  dc.b 192,064,128,160,024,056,000,115,128,067,168,020,010,222,020,006
  dc.b 006,251,010,007,067,168,031,123,224,001,000,003,006,080,160,129
  dc.b 128,028,112,028,019,183,010,024,164,004,006,011,096,002,148,184
  dc.b 138,014,056,060,005,033,128,016,090,000,255,136,135,224,006,012
  dc.b 143,123,000,006,024,007,192,006,144,023,255,025,250,005,032,128
  dc.b 053,207,012,068,063,000,240,228,123,208,000,113,222,056,176,133
  dc.b 007,005,255,225,006,069,224,007,232,100,049,224,123,193,064,072
  dc.b 210,169,120,096,098,130,020,027,013,042,030,005,095,048,049,075
  dc.b 127,182,026,084,171,108,012,040,030,026,084,077,204,012,040,030
  dc.b 026,085,224,009,000,160,098,144,019,148,050,128,224,112,000,252
  dc.b 008,044,234,007,248,001,064,120,102,056,016,003,138,006,041,009
  dc.b 217,067,040,001,007,196,002,206,096,098,129,240,197,096,057,160
  dc.b 126,000,047,230,007,136,029,012,135,164,024,160,089,062,000,026
  dc.b 115,003,196,015,135,070,180,014,144,033,025,139,112,060,064,004
  dc.b 127,192,020,006,071,248,009,045,200,117,000,144,254,000,117,207
  dc.b 013,064,056,024,160,114,063,128,022,115,195,144,014,006,040,030
  dc.b 079,127,194,024,192,052,054,000,064,007,251,128,015,247,000,031
  dc.b 238,000,063,220,000,077,061,047,016,101,235,144,234,003,065,212
  dc.b 119,003,254,007,159,060,063,224,005,133,003,020,015,134,000,001
  dc.b 064,016,118,215,176,196,002,065,130,066,129,196,233,202,129,135
  dc.b 064,161,240,197,001,129,130,128,035,125,106,007,192,255,001,064
  dc.b 162,120,000,020,001,006,020,020,143,245,162,024,160,086,051,146
  dc.b 205,053,003,033,119,134,126,108,014,026,040,028,045,044,050,195
  dc.b 096,098,130,125,083,015,130,000,028,135,156,040,035,224,020,016
  dc.b 016,010,000,195,128,255,132,068,127,253,015,232,082,015,126,132
  dc.b 188,034,001,064,024,120,000,206,147,240,112,078,247,248,059,242
  dc.b 033,035,022,008,016,083,228,064,233,000,033,240,001,210,192,015
  dc.b 135,005,096,081,065,112,000,161,074,001,249,021,012,003,128,013
  dc.b 028,016,008,005,011,009,124,002,078,020,006,135,149,010,064,032
  dc.b 020,006,007,252,255,224,129,064,024,103,128,055,047,224,005,002
  dc.b 129,254,191,240,035,030,069,002,161,143,000,080,191,000,020,006
  dc.b 006,254,001,074,161,104,029,032,068,062,241,035,133,000,065,224
  dc.b 113,136,032,080,042,028,152,147,076,225,016,062,008,080,188,000
  dc.b 163,146,007,072,001,014,034,057,047,136,005,000,129,195,127,159
  dc.b 160,082,192,003,128,160,020,062,000,024,070,194,129,192,224,128
  dc.b 040,081,104,080,010,031,128,004,034,034,232,080,052,024,120,116
  dc.b 005,003,033,188,000,065,210,020,184,127,224,073,084,049,020,017
  dc.b 224,010,005,067,128,007,129,144,233,066,128,032,192,015,001,144
  dc.b 040,005,014,130,020,002,006,126,085,033,128,227,001,120,004,032
  dc.b 160,052,055,240,010,020,124,034,002,150,055,252,124,006,025,021
  dc.b 232,040,200,111,244,064,197,044,000,097,195,031,195,248,095,240
  dc.b 112,012,222,152,225,064,184,127,193,240,020,040,024,126,007,014
  dc.b 005,163,033,138,007,003,031,000,160,016,060,048,101,067,208,024
  dc.b 040,236,220,134,040,020,014,000,002,128,064,248,000,041,000,049
  dc.b 195,122,131,007,058,228,051,018,156,112,000,160,040,067,128,032
  dc.b 041,113,159,112,060,000,001,083,225,114,024,160,080,048,240,005
  dc.b 003,003,020,024,041,062,000,160,100,063,255,240,251,141,242,010
  dc.b 008,080,016,054,016,010,092,127,160,104,039,225,006,008,010,014
  dc.b 224,127,002,190,226,252,125,142,081,208,005,011,098,001,075,031
  dc.b 236,029,012,037,144,197,042,240,055,076,051,116,020,004,015,004
  dc.b 255,130,063,220,062,156,028,144,197,006,231,190,002,129,192,194
  dc.b 175,016,010,067,221,227,232,138,160,135,208,034,149,155,124,030
  dc.b 161,064,160,126,000,020,135,248,015,055,176,030,005,012,080,075
  dc.b 252,033,203,127,063,192,080,191,254,001,252,015,087,148,005,002
  dc.b 134,040,095,015,211,244,010,001,003,248,127,248,007,224,246,120
  dc.b 096,007,020,052,010,227,191,131,207,028,023,249,199,112,030,005
  dc.b 047,192,030,014,239,031,234,114,006,067,056,224,056,192,064,036
  dc.b 132,041,024,007,066,218,116,030,012,014,052,072,177,067,024,255
  dc.b 184,064,080,080,049,072,012,002,133,224,224,195,064,007,020,048
  dc.b 143,245,128,140,004,008,164,064,001,064,160,108,024,016,104,020
  dc.b 010,135,248,049,008,130,234,196,063,192,232,005,107,028,006,000
  dc.b 174,216,098,151,124,040,008,079,229,020,029,096,138,022,230,170
  dc.b 024,160,159,130,240,136,024,161,071,255,135,209,033,014,194,129
  dc.b 208,241,000,129,240,130,194,020,016,240,008,015,243,242,010,006
  dc.b 067,240,005,000,128,131,194,082,176,192,065,124,000,040,160,144
  dc.b 255,199,255,006,063,071,144,044,024,120,240,001,254,035,109,164
  dc.b 017,192,013,225,075,128,004,000,227,131,130,150,117,100,003,006
  dc.b 040,051,224,231,200,020,019,232,066,015,000,160,248,127,064,018
  dc.b 175,000,160,084,048,125,248,010,002,131,120,000,160,076,048,096
  dc.b 029,072,148,056,004,004,146,246,175,000,008,045,224,020,002,134
  dc.b 254,001,064,096,098,016,161,119,128,040,061,224,020,004,135,064
  dc.b 049,222,240,128,191,192,067,010,088,224,020,128,059,255,195,238
  dc.b 051,232,040,017,012,090,127,128,041,024,081,016,160,225,128,156
  dc.b 125,193,224,040,005,012,192,031,194,041,036,008,064,005,002,129
  dc.b 224,125,193,130,020,184,000,040,001,012,064,012,016,160,152,066
  dc.b 151,248,253,199,030,009,238,015,208,020,010,081,255,247,200,020
  dc.b 012,135,025,247,250,129,072,064,002,129,064,252,063,160,040,029
  dc.b 015,206,136,251,254,071,100,041,031,220,112,160,082,120,001,076
  dc.b 220,111,191,223,226,177,162,026,005,097,127,007,194,034,252,000
  dc.b 080,138,014,192,156,064,064,094,093,108,032,104,049,064,048,102
  dc.b 144,165,128,000,171,184,184,028,032,104,049,065,003,000,160,048
  dc.b 055,240,010,003,003,127,000,160,100,053,091,252,006,002,133,160
  dc.b 133,035,143,008,010,012,188,126,007,012,016,096,128,160,197,000
  dc.b 161,149,211,067,020,014,006,097,241,015,232,080,190,000,048,010
  dc.b 001,134,008,063,031,230,040,020,006,007,192,001,139,224,002,128
  dc.b 208,252,004,082,035,000,165,163,132,015,000,062,015,033,016,197
  dc.b 002,065,248,127,129,254,096,080,008,031,004,004,005,034,000,050
  dc.b 007,131,020,006,007,000,001,064,160,103,255,208,020,022,000,008
  dc.b 015,034,067,020,006,007,192,227,009,008,080,071,255,224,040,004
  dc.b 013,240,002,128,208,192,192,040,020,012,031,250,002,133,000,000
  dc.b 160,108,060,000,010,020,060,002,128,064,200,000,040,003,014,000
  dc.b 001,082,000,005,002,129,135,128,080,076,000,040,019,012,150,176
  dc.b 028,000,010,004,035,007,000,160,050,059,033,020,010,006,014,001
  dc.b 064,024,117,000,064,193,000,071,132,012,040,188,007,000,007,028
  dc.b 004,237,204,135,081,001,000,080,020,024,063,192,194,005,010,096
  dc.b 001,064,136,117,016,048,045,010,003,224,030,001,136,011,252,015
  dc.b 000,035,002,128,048,195,129,102,095,066,138,022,000,012,023,192
  dc.b 020,161,000,066,006,067,130,142,006,020,031,012,240,002,128,160
  dc.b 194,131,097,188,000,192,056,031,240,005,042,032,224,096,129,144
  dc.b 252,001,160,028,012,040,030,031,000,012,002,130,145,224,001,033
  dc.b 056,024,165,254,001,064,216,112,000,020,014,007,248,001,064,120
  dc.b 107,225,192,197,039,240,010,001,195,030,000,160,050,051,128,040
  dc.b 003,003,240,255,063,064,160,028,056,132,224,098,129,228,248,063
  dc.b 199,208,040,004,143,000,002,128,200,224,063,224,040,012,143,248
  dc.b 002,128,200,255,003,224,040,012,140,028,002,129,100,254,000,225
  dc.b 200,020,140,080,060,155,128,005,001,145,176,002,000,063,220,000
  dc.b 021,048,008,012,008,002,008,002,196,010,004,010,132,006,132,010
  dc.b 044,014,140,001,076,006,162,009,066,014,106,009,202,005,202,001
  dc.b 230,013,038,009,030,003,174,011,174,005,145,011,097,013,089,007
  dc.b 233,003,213,015,021,011,061,007,179,015,123,015,240,000,159,000
  dc.b 000,000,131,103,138,100,038,057,000,000,109,160
SUB_A1D77C:
  MOVE.L  #$ffffffff,LAB_A48438
  SF  LAB_A483D1
  SF  LAB_A483D3
  BTST  #6,ciaapra
  BEQ.S LAB_A1D7B8
  BTST  #2,TestPrefsFlag
  BEQ.S LAB_A1D7AC
  JSR SUB_A281CA
LAB_A1D7AC:
  BTST  #0,TestPrefsFlag
  BEQ.S LAB_A1D7B8
  BSR.S SUB_A1D7C4
LAB_A1D7B8:
  MOVE.L A0,-(A7)
  MOVE.L RegSnoopAddr,A0
  MOVE.L  cop2lch(A0),SaveCop2LcCopy
  MOVE.L (A7)+,A0
  RTS
SUB_A1D7C4:
  MOVE.W  #$0088,D0
  MOVE.W  #$0080,D1
  MOVE.L  LAB_A483A2,D7
  BSR.S SUB_A1D7FE
  MOVE.L A1,-(A7)
  MOVE.L RegSnoopAddr,A1
  MOVE.L  A0,cop1lch(A1)
  MOVE.L  A0,LAB_A483A2
  MOVE.W  #$008a,D0
  MOVE.W  #$0084,D1
  MOVE.L  LAB_A483A6,D7
  BSR.S SUB_A1D7FE
  MOVE.L RegSnoopAddr,A1
  MOVE.L  A0,cop2lch(A1)
  MOVE.L  A0,LAB_A483A6
  MOVE.L (A7)+,A1
  RTS
SUB_A1D7FE:
  LEA hardware,A5
  MOVE.W  #$4000,$9A(A5)
  MOVE.W  #$7fff,$96(A5)
  MOVE.W  #1,$9C(A5)
  MOVEA.L D7,A0
  BSR.S SUB_A1D850
  BNE.S LAB_A1D848
  MOVE.L RegSnoopAddr,A0
  MOVEA.L 0(A0,D1.W),A0
  EXG D0,A0
  BCLR  #0,D0
  EXG D0,A0
  BSR.S SUB_A1D850
  BNE.S LAB_A1D848
  SUBA.L  A0,A0
LAB_A1D834:
  BSR.S SUB_A1D850
  BNE.S LAB_A1D848
  ADDQ.W  #2,A0
  CMPA.L  ChipMemEnd,A0
  BNE.S LAB_A1D834
  LEA EXT_FFFFFFFF,A0
LAB_A1D848:
  MOVE.W  #$c000,$9A(A5)
  RTS
SUB_A1D850:
  MOVE.L  (A0),D2
  MOVE.L  #$009c8001,(A0)
  CLR.W 0(A5,D0.W)
  MOVE.W  #$8280,$96(A5)
  MOVE.W  #$0280,$96(A5)
  BTST  #0,$1F(A5)
  BNE.S LAB_A1D876
  MOVE.L  D2,(A0)
  MOVEQ #0,D2
  RTS
LAB_A1D876:
  MOVE.L  D2,(A0)
  MOVEQ #-1,D2
  RTS
SUB_A1D87C:
  MOVEM.L D0-D6/A0,-(A7)
  MOVE.W  #$0280,D4
  MULU  D1,D4
  MOVE.W  D0,D5
  EXT.L D5
  ADD.L D5,D4
  SUBI.L  #$000000f1,D4
  MOVE.W  D2,D5
  SUB.W D0,D5
  LEA EXT_1000,A0
  ADDA.L  D4,A0
  MOVE.W  D3,D6
  SUB.W D1,D6
  ADDQ.W  #1,D6
  MULU  #$0280,D6
  ADDI.L  #$00000140,D6
  ORI.B #$0f,0(A0,D6.L)
  ORI.B #$0f,(A0)+
LAB_A1D8B8:
  ORI.B #$ff,0(A0,D6.L)
  ORI.B #$ff,(A0)+
  DBF D5,LAB_A1D8B8
  ORI.B #$f0,0(A0,D6.L)
  ORI.B #$f0,(A0)
  LEA EXT_1000,A0
  ADDA.L  D4,A0
  MOVE.W  D2,D6
  SUB.W D0,D6
  ADDQ.W  #2,D6
  MOVE.W  D3,D5
  SUB.W D1,D5
  ADDQ.W  #1,D5
  LSL.W #3,D5
  ADDQ.W  #4,D5
LAB_A1D8E8:
  BSET  #4,0(A0,D6.W)
  BSET  #3,(A0)
  LEA $50(A0),A0
  DBF D5,LAB_A1D8E8
  MOVEM.L (A7)+,D0-D6/A0
  RTS
drawSelectedHighlight:
  MOVEM.L D0-D7/A0,-(A7)
  MOVE.W  #$0280,D4
  MULU  D1,D4
  MOVE.W  D0,D5
  EXT.L D5
  ADD.L D5,D4
  SUBI.L  #$000000a1,D4
  MOVE.W  D2,D5
  SUB.W D0,D5
  LEA EXT_1000,A0
  ADDA.L  D4,A0
  MOVE.W  D3,D6
  SUB.W D1,D6
  ADDQ.W  #1,D6
  MULU  #8,D6
  ADDI.L  #2,D6
LAB_A1D932:
  MOVE.W  D5,D7
  EORI.B  #7,(A0)+
LAB_A1D938:
  EORI.B  #$ff,(A0)+
  DBF D7,LAB_A1D938
  EORI.B  #$e0,(A0)
  SUBA.W  D5,A0
  SUBQ.W  #2,A0
  LEA $50(A0),A0
  DBF D6,LAB_A1D932
  MOVEM.L (A7)+,D0-D7/A0
  RTS
drawDisabledHighlight:
  MOVEM.L D0-D7/A0,-(A7)
  MOVE.W  #$0280,D4
  MULU  D1,D4
  MOVE.W  D0,D5
  EXT.L D5
  ADD.L D5,D4
  SUBI.L  #$000000a1,D4
  MOVE.W  D2,D5
  SUB.W D0,D5
  LEA EXT_1000,A0
  ADDA.L  D4,A0
  MOVE.W  D3,D6
  SUB.W D1,D6
  ADDQ.W  #1,D6
  MULU  #8,D6
  ADDI.L  #2,D6
  LSR.W #1,D6
LAB_A1D98A:
  MOVE.W  D5,D7
  ORI.B #1,$50(A0)
  ORI.B #4,(A0)+
LAB_A1D996:
  ORI.B #$11,$50(A0)
  ORI.B #$44,(A0)+
  DBF D7,LAB_A1D996
  ORI.B #$10,$50(A0)
  ORI.B #$40,(A0)
  SUBA.W  D5,A0
  SUBQ.W  #2,A0
  LEA $A0(A0),A0
  DBF D6,LAB_A1D98A
  MOVEM.L (A7)+,D0-D7/A0
  RTS
DrawPrefsPage:
  MOVEM.L D0-D2/A0-A1,-(A7)
LAB_A1D9C4:
  MOVE.L  A0,D0
  ADDQ.L  #1,D0
  ANDI.W  #$fffe,D0
  MOVEA.L D0,A0
  CMPI.W  #0,(A0)
  BEQ.S LAB_A1DA32
  TST.W (A0)
  BMI.S LAB_A1D9F2
  MOVEM.W D0-D3,-(A7)
  MOVE.W  (A0),D0
  MOVE.W  2(A0),D1
  MOVE.W  4(A0),D2
  MOVE.W  6(A0),D3
  BSR.W SUB_A1D87C
  MOVEM.W (A7)+,D0-D3
LAB_A1D9F2:
  MOVEA.L A0,A1
  ADDQ.W  #8,A0
  MOVE.W  4(A1),D1
  MOVE.W  (A1),D2
  BCLR  #$F,D2
  SUB.W D2,D1
  MOVE.W  2(A1),cursorY
LAB_A1DA0A:
  MOVE.W  D1,D2
  MOVE.W  (A1),cursorX
  BCLR  #7,cursorX
LAB_A1DA1A:
  MOVEQ #0,D0
  MOVE.B  (A0)+,D0
  BEQ.S LAB_A1D9C4
  JSR PrintChar
  DBF D2,LAB_A1DA1A
  JSR moveCursorDown
  BRA.S LAB_A1DA0A
LAB_A1DA32:
  MOVEM.L (A7)+,D0-D2/A0-A1
  RTS
setupPrefsViewer:
  MOVEM.L D0/A0-A1,-(A7)
  LEA EXT_1000,A0
  MOVE.W PageHeight,D0
  ADD.W #1,D0
  MULU #80*2,D0
  SUB.W #1,D0
LAB_A1DA46:
  CLR.L (A0)+
  DBF D0,LAB_A1DA46
  MOVE.W  #$ffff,potgo+hardware
  LEA CopyCop1lc,A0
  LEA EXT_200.W,A1
  MOVEQ #$12,D0
LAB_A1DA60:
  MOVE.L  (A1)+,(A0)+
  DBF D0,LAB_A1DA60
  MOVE.L RegSnoopAddr,A1
  MOVE.L  color17(A1),(A0)+
  MOVE.W  color19(A1),(A0)+
  MOVE.L  cursorX,(A0)+
  MOVE.L  #$07770000,color17+hardware
  MOVE.W  #$0fca,color19+hardware
  LEA EXT_200.W,A0
  CLR.L (A0)+
  CLR.L (A0)+
  MOVE.L  #$00001800,(A0)+
  MOVE.L  #$18003c00,(A0)+
  MOVE.L  #$18002400,(A0)+
  MOVE.L  #$18003c00,(A0)+
  MOVE.L  #$18003c00,(A0)+
  MOVE.L  #$18003c00,(A0)+
  MOVE.L  #$18003fe0,(A0)+
  MOVE.L  #$1fc03ff0,(A0)+
  MOVE.L  #$1fe0f570,(A0)+
  MOVE.L  #$5fe0f570,(A0)+
  MOVE.L  #$5fe0fff0,(A0)+
  MOVE.L  #$7fe0fff0,(A0)+
  MOVE.L  #$3fc0fff0,(A0)+
  MOVE.L  #$1f807fe0,(A0)+
  MOVE.L  #$18f03fc0,(A0)+
  MOVE.L  #$00003fc0,(A0)+
  CLR.L (A0)+
  MOVE.W  #$02a8,currMouseX
  MOVE.W  #$00ec,currMouseY
  ST  viewingPrefs
  SF  cursorEnabled
  MOVE.W  #$8020,dmacon+hardware
  MOVEM.L (A7)+,D0/A0-A1
  RTS
cleanupPrefsViewer:
  MOVEM.L D0/A0-A1,-(A7)
  MOVE.W  #$0020,dmacon+hardware
  SF  viewingPrefs
  LEA CopyCop1lc,A0
  LEA EXT_200.W,A1
  MOVEQ #$12,D0
LAB_A1DB3C:
  MOVE.L  (A0)+,(A1)+
  DBF D0,LAB_A1DB3C
  MOVE.L  (A0)+,color17+hardware
  MOVE.W  (A0)+,color19+hardware
  MOVE.L  (A0)+,cursorX
  JSR ClearSpriteData(PC)
  ST  cursorEnabled
  LEA EXT_1000,A0
  MOVE.W PageHeight,D0
  ADD.W #1,D0
  MULU #80*2,D0
  SUB.W #1,D0
LAB_A1DB68:
  CLR.L (A0)+
  DBF D0,LAB_A1DB68
  JSR redrawTextPage
  MOVEM.L (A7)+,D0/A0-A1
  RTS
TrackMouse:
  MOVEM.L D1-D3/A0,-(A7)
LAB_A1DB7E:
  BTST  #0,RawKeyCodeLo
  BNE.S LAB_A1DB7E
mouseLoop:
  MOVEQ #0,D0
  MOVE.W  RawKeyCode,D0
  BTST  #0,D0
  BEQ.S LAB_A1DBAE
  ANDI.W  #$00ff,D0
  NOT.B D0
  LSR.B #1,D0
  NEG.W D0
LAB_A1DBA0:
  BTST  #0,RawKeyCodeLo
  BNE.S LAB_A1DBA0
  BRA.W LAB_A1DCF8
LAB_A1DBAE:
  ADDQ.W  #1,SaveColor
  BTST  #6,LAB_A4806B
  BEQ.W LAB_A1DC4C
  CLR.W SaveColor
  JSR SUB_A2603E
  CMPI.W  #0,D0
  BNE.S LAB_A1DBDE
  SUBQ.W  #2,currMouseX
  SUBQ.W  #1,currMouseY
LAB_A1DBDE:
  CMPI.W  #1,D0
  BNE.S LAB_A1DBEA
  SUBQ.W  #1,currMouseY
LAB_A1DBEA:
  CMPI.W  #2,D0
  BNE.S LAB_A1DBFC
  ADDQ.W  #2,currMouseX
  SUBQ.W  #1,currMouseY
LAB_A1DBFC:
  CMPI.W  #3,D0
  BNE.S LAB_A1DC08
  SUBQ.W  #2,currMouseX
LAB_A1DC08:
  CMPI.W  #5,D0
  BNE.S LAB_A1DC14
  ADDQ.W  #2,currMouseX
LAB_A1DC14:
  CMPI.W  #6,D0
  BNE.S LAB_A1DC26
  SUBQ.W  #2,currMouseX
  ADDQ.W  #1,currMouseY
LAB_A1DC26:
  CMPI.W  #7,D0
  BNE.S LAB_A1DC32
  ADDQ.W  #1,currMouseY
LAB_A1DC32:
  CMPI.W  #8,D0
  BNE.S LAB_A1DC44
  ADDQ.W  #2,currMouseX
  ADDQ.W  #1,currMouseY
LAB_A1DC44:
  CMPI.W  #$000d,D0
  BEQ.W LAB_A1DD18
LAB_A1DC4C:
  JSR GetMouseDelta(PC)
  ADD.W D0,currMouseX
  CMPI.W  #$00fa,currMouseX
  BGT.S LAB_A1DC68
  MOVE.W  #$00fb,currMouseX
LAB_A1DC68:
  CMPI.W  #$037b,currMouseX
  BLE.S LAB_A1DC7A
  MOVE.W  #$037b,currMouseX
LAB_A1DC7A:
  ADD.W D1,currMouseY
  CMPI.W  #$003b,currMouseY
  BGT.S LAB_A1DC92
  MOVE.W  #$003c,currMouseY
LAB_A1DC92:
  CMPI.W  #$0104,currMouseY
  BLE.S LAB_A1DCA4
  MOVE.W  #$0104,currMouseY
LAB_A1DCA4:
  BTST  #6,ciaapra
  BNE.W mouseLoop
  MOVE.W  #$ffff,D0
LAB_A1DCB4:
  NOP
  DBF D0,LAB_A1DCB4
LAB_A1DCBA:
  BTST  #6,ciaapra
  BEQ.S LAB_A1DCBA
LAB_A1DCC4:
  MOVE.W  currMouseX,D0
  MOVE.W  currMouseY,D1
  SUBI.W  #$00fb,D0
  SUBI.W  #$003c,D1
  LSR.W #3,D1
  LSR.W #3,D0
  MOVEQ #0,D2
LAB_A1DCDE:
  CMP.B 1(A0),D0
  BCS.S LAB_A1DCFE
  CMP.B 5(A0),D0
  BHI.S LAB_A1DCFE
  CMP.B 3(A0),D1
  BCS.S LAB_A1DCFE
  CMP.B 7(A0),D1
  BHI.S LAB_A1DCFE
LAB_A1DCF6:
  MOVE.L  D2,D0
LAB_A1DCF8:
  MOVEM.L (A7)+,D1-D3/A0
  RTS
LAB_A1DCFE:
  ADDQ.W  #8,A0
LAB_A1DD00:
  TST.B (A0)+
  BNE.S LAB_A1DD00
  ADDQ.W  #1,A0
  MOVE.L  A0,D3
  ANDI.W  #$fffe,D3
  MOVEA.L D3,A0
  ADDQ.L  #1,D2
  TST.W (A0)
  BNE.S LAB_A1DCDE
  MOVEQ #-1,D2
  BRA.S LAB_A1DCF6
LAB_A1DD18:
  BTST  #7,ciaapra
  BEQ.S LAB_A1DD18
  BRA.S LAB_A1DCC4
highlightPrefsBox:
  MOVEM.L D0-D3/A0,-(A7)
LAB_A1DD28:
  TST.W D0
  BEQ.S LAB_A1DD40
  ADDQ.W  #8,A0
LAB_A1DD2E:
  TST.B (A0)+
  BNE.S LAB_A1DD2E
  MOVE.L  A0,D1
  ADDQ.L  #1,D1
  ANDI.W  #$fffe,D1
  MOVEA.L D1,A0
  SUBQ.W  #1,D0
  BRA.S LAB_A1DD28
LAB_A1DD40:
  MOVEM.W (A0),D0-D3
  BSR.W drawSelectedHighlight
  MOVEM.L (A7)+,D0-D3/A0
  RTS
disablePrefsBox:
  MOVEM.L D0-D3/A0,-(A7)
LAB_A1DD52:
  TST.W D0
  BEQ.S LAB_A1DD6A
  ADDQ.W  #8,A0
LAB_A1DD58:
  TST.B (A0)+
  BNE.S LAB_A1DD58
  MOVE.L  A0,D1
  ADDQ.L  #1,D1
  ANDI.W  #$fffe,D1
  MOVEA.L D1,A0
  SUBQ.W  #1,D0
  BRA.S LAB_A1DD52
LAB_A1DD6A:
  MOVEM.W (A0),D0-D3
  BSR.W drawDisabledHighlight
  MOVEM.L (A7)+,D0-D3/A0
  RTS
CMD_CODE:
  LEA DiskCoderFlags,A1
  LEA DiskCoderValues,A2
  JSR ReadParameter
  TST.B ParamFound
  BEQ.S LAB_A1DDD6
  CMPI.W  #3,D0
  BHI.S LAB_A1DDD6
  MOVE.W  D0,D1
  JSR ReadParameter
  TST.B ParamFound
  BEQ.S LAB_A1DDC4
  ST  0(A1,D1.W)
  ADD.W D1,D1
  ADD.W D1,D1
  MOVEQ #0,D2
  MOVEQ #$F,D3
LAB_A1DDB4:
  ROXR.W  #1,D0
  ROXR.L  #1,D2
  ROR.L #1,D2
  DBF D3,LAB_A1DDB4
  MOVE.L  D2,0(A2,D1.W)
  BRA.S LAB_A1DDD6
LAB_A1DDC4:
  SF  0(A1,D1.W)
  LEA DiskCoderValues,A1
  ADD.W D1,D1
  ADD.W D1,D1
  CLR.L 0(A1,D1.W)
LAB_A1DDD6:
  LEA ArDiskCoderText(PC),A0
  JSR PrintText
  MOVEQ #3,D2
  MOVEQ #0,D3
  LEA DiskCoderFlags,A1
  LEA DiskCoderValues,A2
LAB_A1DDF0:
  LEA DriveText(PC),A0
  JSR PrintText
  MOVEQ #1,D1
  MOVE.L  D3,D0
  JSR PrintValue
  JSR PrintSpace
  LEA CodeText(PC),A0
  JSR PrintText
  MOVE.L  (A2)+,D0
  JSR Print8DigitHex
  JSR PrintSpace
  LEA NormalText(PC),A0
  TST.B (A1)+
  BEQ.S LAB_A1DE2C
  LEA ProtectedText(PC),A0
LAB_A1DE2C:
  JSR PrintText
  JSR PrintCrIfNotBlankLine
  ADDQ.W  #1,D3
  DBF D2,LAB_A1DDF0
  JSR PrintReady
  RTS
PrefsSettingPage1:
  DC.L  $000b0003,$00110003
  DC.B  "No Fast",0
  even
  DC.L  $00150003,$001b0003
  DC.B  " 0.5MB",0
  even
  DC.L  $001f0003,$00250003
  DC.B  "Maximum",0
  even
  DC.L  $000b0005,$00110005
  DC.B  "0.5MB",0
  even
  DC.L  $00150005,$001b0005
  DC.B  "Maximum",0
  even
  DC.L  $00040009,$00070009
  DC.B  " On",0
  even
  DC.L  $00220009,$00250009
  DC.B  "Add",0
  even
  DC.L  $0004000e,$0008000e
  DC.B  "NoRes",0
  even
  DC.L  $000c000e,$0010000e
  DC.B  "Test1",0
  even
  DC.L  $0014000e,$0018000e
  DC.B  "Test2",0
  even
  DC.L  $001e000e,$0024000e
  DC.B  "Blanker",0
  even
  DC.L  $00130011,$001b0011
  DC.B  " BACKGND",0
  even
  DC.L  $001e0011,$00260011
  DC.B  " FOREGND",0
  even
  DC.L  $00070013,$00070013
  DC.B  "0",0
  even
  DC.L  $00090013,$00090013
  DC.B  "1",0
  even
  DC.L  $000b0013,$000b0013
  DC.B  "2",0
  even
  DC.L  $000d0013,$000d0013
  DC.B  "3",0
  even
  DC.L  $000f0013,$000f0013
  DC.B  "4",0
  even
  DC.L  $00110013,$00110013
  DC.B  "5",0
  even
  DC.L  $00130013,$00130013
  DC.B  "6",0
  even
  DC.L  $00150013,$00150013
  DC.B  "7",0
  even
  DC.L  $00170013,$00170013
  DC.B  "8",0
  even
  DC.L  $00190013,$00190013
  DC.B  "9",0
  even
  DC.L  $001b0013,$001b0013
  DC.B  "A",0
  even
  DC.L  $001d0013,$001d0013
  DC.B  "B",0
  even
  DC.L  $001f0013,$001f0013
  DC.B  "C",0
  even
  DC.L  $00210013,$00210013
  DC.B  "D",0
  even
  DC.L  $00230013,$00230013
  DC.B  "E",0
  even
  DC.L  $00250013,$00250013
  DC.B  "F",0
  even
  DC.L  $00070015,$00070015
  DC.B  "0",0
  even
  DC.L  $00090015,$00090015
  DC.B  "1",0
  even
  DC.L  $000b0015,$000b0015
  DC.B  "2",0
  even
  DC.L  $000d0015,$000d0015
  DC.B  "3",0
  even
  DC.L  $000f0015,$000f0015
  DC.B  "4",0
  even
  DC.L  $00110015,$00110015
  DC.B  "5",0
  even
  DC.L  $00130015,$00130015
  DC.B  "6",0
  even
  DC.L  $00150015,$00150015
  DC.B  "7",0
  even
  DC.L  $00170015,$00170015
  DC.B  "8",0
  even
  DC.L  $00190015,$00190015
  DC.B  "9",0
  even
  DC.L  $001b0015,$001b0015
  DC.B  "A",0
  even
  DC.L  $001d0015,$001d0015
  DC.B  "B",0
  even
  DC.L  $001f0015,$001f0015
  DC.B  "C",0
  even
  DC.L  $00210015,$00210015
  DC.B  "D",0
  even
  DC.L  $00230015,$00230015
  DC.B  "E",0
  even
  DC.L  $00250015,$00250015
  DC.B  "F",0
  even
  DC.L  $00070017,$00070017
  DC.B  "0",0
  even
  DC.L  $00090017,$00090017
  DC.B  "1",0
  even
  DC.L  $000b0017,$000b0017
  DC.B  "2",0
  even
  DC.L  $000d0017,$000d0017
  DC.B  "3",0
  even
  DC.L  $000f0017,$000f0017
  DC.B  "4",0
  even
  DC.L  $00110017,$00110017
  DC.B  "5",0
  even
  DC.L  $00130017,$00130017
  DC.B  "6",0
  even
  DC.L  $00150017,$00150017
  DC.B  "7",0
  even
  DC.L  $00170017,$00170017
  DC.B  "8",0
  even
  DC.L  $00190017,$00190017
  DC.B  "9",0
  even
  DC.L  $001b0017,$001b0017
  DC.B  "A",0
  even
  DC.L  $001d0017,$001d0017
  DC.B  "B",0
  even
  DC.L  $001f0017,$001f0017
  DC.B  "C",0
  even
  DC.L  $00210017,$00210017
  DC.B  "D",0
  even
  DC.L  $00230017,$00230017
  DC.B  "E",0
  even
  DC.L  $00250017,$00250017
  DC.B  "F",0
  even
  DC.L  $00300003,$00330003
  DC.B  " On",0
  even
  DC.L  $002e000f,$00350011
  DC.B  "  Next            Page",0
  even
  DC.L  $002e0014,$00350016
  DC.B  "           Ok",0
  even
  DC.L  $003e0002,$00410002
  DC.B  "100%",0
  even
  DC.L  $003e0004,$00410004
  DC.B  " 90%",0
  even
  DC.L  $003e0006,$00410006
  DC.B  " 80%",0
  even
  DC.L  $003e0008,$00410008
  DC.B  " 70%",0
  even
  DC.L  $003e000a,$0041000a
  DC.B  " 60%",0
  even
  DC.L  $003e000c,$0041000c
  DC.B  " 50%",0
  even
  DC.L  $003e000e,$0041000e
  DC.B  " 40%",0
  even
  DC.L  $003e0010,$00410010
  DC.B  " 30%",0
  even
  DC.L  $003e0012,$00410012
  DC.B  " 20%",0
  even
  DC.L  $003e0014,$00410014
  DC.B  " 10%",0
  even
  DC.L  $003e0016,$00410016
  DC.B  "  0%",0
  even
  DC.L  $00470002,$004a0002
  DC.B  "100%",0
  even
  DC.L  $00470004,$004a0004
  DC.B  " 90%",0
  even
  DC.L  $00470006,$004a0006
  DC.B  " 80%",0
  even
  DC.L  $00470008,$004a0008
  DC.B  " 70%",0
  even
  DC.L  $0047000a,$004a000a
  DC.B  " 60%",0
  even
  DC.L  $0047000c,$004a000c
  DC.B  " 50%",0
  even
  DC.L  $0047000e,$004a000e
  DC.B  " 40%",0
  even
  DC.L  $00470010,$004a0010
  DC.B  " 30%",0
  even
  DC.L  $00470012,$004a0012
  DC.B  " 20%",0
  even
  DC.L  $00470014,$004a0014
  DC.B  " 10%",0
  even
  DC.L  $00470016,$004a0016
  DC.B  "  0%",0
  even
  DC.L  $80100009,$00150009,$00008018,$0009001d,$00090000

  DC.L  $00300008,$00330008
  DC.B  " On",0
  even
  DC.L  $00010001,$0027000a
  DC.B  " Memory Control",0
  even
  DC.L  $80030003,$00070005
  DC.B  "Fast:     Chip:",0
  even
  DC.L  $80010007,$000a000b
  DC.B  " ClearMem",0
  even
  DC.L  $800c0007,$00270008
  DC.B  " External Memory",0
  even
  DC.L  $800e0009,$00180009
  DC.B  "$       -$",0
  even
  DC.L  $0001000c,$0027000f
  DC.B  " Module Interna",0
  even
  DC.L  $00010011,$00270017
  DC.B  " Color Control",0
  even
  DC.L  $80040013,$00040017
  DC.B  "R G B",0
  even
  DC.L  $002a0001,$00380004
  DC.B  "   Megastick",0
  even
  DC.L  $002a0006,$00380009
  DC.B  "   Autoconfig",0
  even
  DC.L  $003b0001,$004d0017,$0000803c
  DC.W  $0002

  DC.L  $003c0018
  DC.B  "Player 1",0
  even
  DC.L  $804c0002,$004c0018
  DC.B  "Player 2",0
  even
  DC.L  $80440005,$00440018
  DC.B  "A u t o f i r e",0
  even
  DS.W  1
PrefsSettingPage2:
  DC.L  $000f0005,$00110005
  DC.B  "Off",0
  even
  DC.L  $00030003,$00050003
  DC.B  "DF0",0
  even
  DC.L  $00090003,$000b0003
  DC.B  "DF1",0
  even
  DC.L  $000f0003,$00110003
  DC.B  "DF2",0
  even
  DC.L  $00150003,$00170003
  DC.B  "DF3",0
  even
  DC.L  $00030005,$000a0005
  DC.B  "Variable",0
  even
  DC.L  $0006000a,$0009000a
  DC.B  " On",0
  even
  DC.L  $0010000a,$0017000a
  DC.W  $0000
  DC.L  $0006000e,$0009000e
  DC.B  "DF0:",0
  even
  DC.L  $00060010,$00090010
  DC.B  "DF1:",0
  even
  DC.L  $00060012,$00090012
  DC.B  "DF2:",0
  even
  DC.L  $00060014,$00090014
  DC.B  "DF3:",0
  even
  DC.L  $0010000e,$0017000e,$00000010,$00100017
  DC.L  $00100000,$00100012,$00170012,$00000010
  DC.L  $00140017,$00140000

  DC.L  $00270003,$002a0003
  DC.B  "DF0:",0
  even
  DC.L  $002f0003,$00320003
  DC.B  "DF1:",0
  even
  DC.L  $00270005,$002a0005
  DC.B  "DF2:",0
  even
  DC.L  $002f0005,$00320005
  DC.B  "DF3:",0
  even
  DC.L  $001e000a,$0022000a
  DC.B  "Find",0
  even
  DC.L  $0026000a,$002a000a
  DC.B  "Kill",0
  even
  DC.L  $002e000a,$0032000a
  DC.B  "Boot",0
  even
  DC.L  $001e000f,$0025000f
  DC.B  "Resident",0
  even
  DC.L  $001e0013,$00250015
  DC.B  "          Load",0
  even
  DC.L  $002a0013,$00310015
  DC.B  "          Save",0
  even
  DC.L  $00360013,$003d0015
  DC.B  "  Next            Page",0
  even
  DC.L  $00420013,$00490015
  DC.B  "           Ok",0
  even
  DC.L  $002a000f,$0031000f
  DC.B  "No Click",0
  even
  DC.L  $003a0003,$00410003
  DC.B  "Resident",0
  even
  DC.L  $003a0008,$00420008
  DC.B  "Faststart",0
  even
  DC.L  $00010001,$00190006
  DC.B  " BootSelector",0
  even
  DC.L  $00010008,$00190015
  DC.B  " BootBlockCoder",0
  even
  DC.L  $8002000c,$000a000c
  DC.B  "DiskCoder",0
  even
  DC.L  $001c0001,$00340006
  DC.B  " DriveControl",0
  even
  DC.L  $801e0003,$00230003
  DC.B  "On/Off",0
  even
  DC.L  $001c0008,$0034000b
  DC.B  " VirusTest",0
  even
  DC.L  $001c000d,$00340010
  DC.B  " Safe Disk",0
  even
  DC.L  $00370001,$00440004
  DC.B  "   Setmap D",0
  even
  DC.L  $00370006,$00450009
  DC.B  " Burst Nibbler",0
  even
  DS.W  1

DoPrefs:
  MOVEM.L D0-D7/A0-A6,-(A7)
  JSR setupPrefsViewer(PC)
PrefsPage1:
  LEA PrefsSettingPage1(PC),A0
  JSR DrawPrefsPage(PC)
  SF  LAB_A480CA
LAB_A1E646:
  JSR drawPrefsHighlightsPage1
LAB_A1E64C:
  JSR TrackMouse(PC)
  TST.L D0
  BMI.S LAB_A1E64C
  TST.W D0
  BPL.S LAB_A1E66C
  NEG.W D0
  CMPI.W  #$0045,D0
  BEQ.W PrefsExit
  CMPI.W  #$0040,D0
  BEQ.W PrefsPage2
  BRA.S LAB_A1E64C
LAB_A1E66C:
  CMPI.W  #$0058,D0
  BHI.S LAB_A1E64C
  JSR drawPrefsHighlightsPage1
  CMPI.W  #$003f,D0
  BEQ.W PrefsExit
  CMPI.W  #$003d,D0
  BNE.S LAB_A1E68E
  NOT.B MegaStickPrefsFlag
  BRA.S LAB_A1E646
LAB_A1E68E:
  CMPI.W  #7,D0
  BNE.S LAB_A1E69C
  NOT.B NoresPrefsFlag
  BRA.S LAB_A1E646
LAB_A1E69C:
  CMPI.W  #8,D0
  BNE.S LAB_A1E6AC
  BCHG  #0,TestPrefsFlag
  BRA.S LAB_A1E646
LAB_A1E6AC:
  CMPI.W  #9,D0
  BNE.S LAB_A1E6BC
  BCHG  #2,TestPrefsFlag
  BRA.S LAB_A1E646
LAB_A1E6BC:
  CMPI.W  #$000a,D0
  BNE.S LAB_A1E6CC
  NOT.B BlankerPrefsFlag
  BRA.W LAB_A1E646
LAB_A1E6CC:
  CMPI.W  #6,D0
  BNE.S LAB_A1E6DC
  NOT.B ExtMemAddPrefsFlag
  BRA.W LAB_A1E646
LAB_A1E6DC:
  CMPI.W  #5,D0
  BNE.S LAB_A1E6EE
; clearmem flag
  BCHG  #4,memoryControlPrefsValueLo
  BRA.W LAB_A1E646
LAB_A1E6EE:
  CMPI.W  #$000b,D0
  BNE.S LAB_A1E6FE
; select backgnd
  SF  LAB_A480CA
  BRA.W LAB_A1E646
LAB_A1E6FE:
  CMPI.W  #$000c,D0
  BNE.S LAB_A1E70E
; select foregnd
  ST  LAB_A480CA
  BRA.W LAB_A1E646
LAB_A1E70E:
  CMPI.W  #$000c,D0
  BLS.S LAB_A1E770
  CMPI.W  #$003d,D0
  BHI.S LAB_A1E770
  LEA ArBgCol,A1
  TST.B LAB_A480CA
  BEQ.S LAB_A1E72E
  LEA ArFgCol,A1
LAB_A1E72E:
  MOVE.W  (A1),D1
  CMPI.W  #$001c,D0
  BHI.S LAB_A1E748
; R value
  SUBI.W  #$000d,D0
  LSL.W #8,D0
  ANDI.W  #$00ff,D1
  OR.W  D0,D1
  MOVE.W  D1,(A1)
  BRA.W LAB_A1E646
LAB_A1E748:
  CMPI.W  #$002c,D0
  BHI.S LAB_A1E760
; G value
  SUBI.W  #$001d,D0
  ANDI.W  #$0f0f,D1
  LSL.W #4,D0
  OR.W  D0,D1
  MOVE.W  D1,(A1)
  BRA.W LAB_A1E646
LAB_A1E760:
; B value
  SUBI.W  #$002d,D0
  ANDI.W  #$0ff0,D1
  OR.W  D0,D1
  MOVE.W  D1,(A1)
  BRA.W LAB_A1E646
LAB_A1E770:
  CMPI.W  #$003f,D0
  BLS.S LAB_A1E7B2
  CMPI.W  #$0055,D0
  BHI.S LAB_A1E7B2
  CMPI.W  #$004a,D0
  BHI.S LAB_A1E79A
; P1 Autofire
  SUBI.W  #$0040,D0
  MOVE.W  #$000a,D1
  SUB.W D0,D1
  MULU  #$000a,D1
  MOVE.W  D1,P1AutoFirePrefsSetting
  BRA.W LAB_A1E646
LAB_A1E79A:
; P2 Autofire
  SUBI.W  #$004b,D0
  MOVE.W  #$000a,D1
  SUB.W D0,D1
  MULU  #$000a,D1
  MOVE.W  D1,P2AutoFirePrefsSetting
  BRA.W LAB_A1E646
LAB_A1E7B2:
  CMPI.W  #2,D0
  BHI.S LAB_A1E7D4
; memory control settings
  BTST  D0,memConfigFlags
  BEQ.W LAB_A1E646
  ANDI.W  #$fff8,memoryControlPrefsValue
  BSET  D0,memoryControlPrefsValueLo
  BRA.W LAB_A1E646
LAB_A1E7D4:
  CMPI.W  #3,D0
  BNE.S LAB_A1E7E6
; chipram control settings
  BCLR  #3,memoryControlPrefsValueLo
  BRA.W LAB_A1E646
LAB_A1E7E6:
  CMPI.W  #4,D0
  BNE.S LAB_A1E804
  BTST  #3,memConfigFlags
  BEQ.W LAB_A1E646
  BSET  #3,memoryControlPrefsValueLo
  BRA.W LAB_A1E646
LAB_A1E804:
  CMPI.W  #$003e,D0
  BNE.S LAB_A1E810
  JMP PrefsPage2
LAB_A1E810:
  CMPI.W  #$0056,D0
  BNE.S LAB_A1E834
  JSR drawPrefsHighlightsPage1
  MOVE.L  LAB_A483AA,D0
  MOVEQ #6,D1
  MOVE.L  #$00100009,D7
  JSR SUB_A1EE00
  MOVE.L  D0,D2
  BRA.S LAB_A1E846
LAB_A1E834:
  CMPI.W  #$0057,D0
  BNE.S LAB_A1E88C
  JSR drawPrefsHighlightsPage1
  MOVE.L  LAB_A483AA,D2
LAB_A1E846:
  MOVE.L  LAB_A483AE,D0
  MOVEQ #6,D1
  MOVE.L  #$00180009,D7
  JSR SUB_A1EE00
  JSR drawPrefsHighlightsPage1
  MOVE.L  D0,D3
  CMP.L D2,D3
  BCS.W LAB_A1E646
  MOVEA.L D2,A1
  MOVEA.L D3,A1
  BCLR  #0,D2
  BCLR  #0,D3
  MOVE.L  D2,LAB_A483AA
  MOVE.L  D3,LAB_A483AE
  SUB.L D2,D3
  MOVE.L  D3,LAB_A483B2
  BRA.W LAB_A1E646
LAB_A1E88C:
  CMPI.W  #$0058,D0
  BNE.S LAB_A1E89C
  NOT.B AutoConfigPrefsFlag
  BRA.W LAB_A1E646
LAB_A1E89C:
  BRA.W LAB_A1E646
PrefsExit:
  JSR cleanupPrefsViewer(PC)
  MOVEM.L (A7)+,D0-D7/A0-A6
  RTS
PrefsPage2:
  MOVEQ #0,D0
  MOVE.W  #$00c7,D1
  JSR clearScreenArea
  LEA PrefsSettingPage2(PC),A0
  JSR DrawPrefsPage(PC)
LAB_A1E8B8:
  JSR drawPrefsHighlightsPage2
  LEA PrefsSettingPage2(PC),A0
LAB_A1E8C2:
  JSR TrackMouse(PC)
  TST.L D0
  BMI.S LAB_A1E8C2
  TST.W D0
  BPL.S LAB_A1E8DE
  NEG.W D0
  CMPI.W  #$0045,D0
  BEQ.S PrefsExit
  CMPI.W  #$0040,D0
  BEQ.S LAB_A1E8F6
  BRA.S LAB_A1E8C2
LAB_A1E8DE:
  CMPI.W  #$001e,D0
  BHI.S LAB_A1E8C2
  JSR drawPrefsHighlightsPage2
  CMPI.W  #$001b,D0
  BEQ.S PrefsExit
  CMPI.W  #$001a,D0
  BNE.S LAB_A1E8FA
LAB_A1E8F6:
  MOVE.W #0,D0
  MOVE.W #$00c7,D1
  JSR clearScreenArea
  JMP PrefsPage1(PC)
LAB_A1E8FA:
  CMPI.W  #5,D0
  BHI.S LAB_A1E91A
  SUBQ.W  #1,D0
  BMI.S LAB_A1E912
  CMPI.W  #3,D0
  BHI.S LAB_A1E912
; boot selector
  BTST  D0,DrivesConnectedLo
  BEQ.S LAB_A1E8B8
LAB_A1E912:
  MOVE.W  D0,BootSelectPrefs
  BRA.S LAB_A1E8B8
LAB_A1E91A:
  CMPI.W  #6,D0
  BNE.S LAB_A1E934
; bootblock coder setting
  NOT.B BootblockCoderPrefsFlag
  BEQ.S LAB_A1E8B8
  BSET  #2,VirusCheckerSettingsPrefs
  BRA.W LAB_A1E8B8
LAB_A1E934:
  CMPI.W  #7,D0
  BNE.S LAB_A1E972
; Bootblock coder value
  JSR drawPrefsHighlightsPage2
  MOVE.L  BootblockCoderValue,D0
  MOVEQ #8,D1
  MOVE.L  #$0010000a,D7
  JSR SUB_A1EE00
  MOVE.L  D0,BootblockCoderValue
  JSR drawPrefsHighlightsPage2
  ST  BootblockCoderPrefsFlag
  BSET  #2,VirusCheckerSettingsPrefs
  BRA.W LAB_A1E8B8
LAB_A1E972:
  CMPI.W  #7,D0
  BLS.S LAB_A1E98C
  CMPI.W  #$000b,D0
  BHI.S LAB_A1E98C
; Disk coder settings
  LEA DiskCoderFlags,A1
  NOT.B -8(A1,D0.W)
  BRA.W LAB_A1E8B8
LAB_A1E98C:
  CMPI.W  #$000b,D0
  BLS.S LAB_A1E9F0
  CMPI.W  #$000f,D0
  BHI.S LAB_A1E9F0
; Disk coder value
  SUBI.W  #$000c,D0
  LEA DiskCoderFlags,A1
  ST  0(A1,D0.W)
  MOVE.L  #$0010000e,D7
  LSL.W #1,D0
  ADD.W D0,D7
  LSL.W #1,D0
  LEA DiskCoderValues,A1
  MOVE.W  D0,D2
  MOVEQ #4,D1
  MOVE.L  D7,cursorX
  MOVEQ #8,D0
  JSR PrintSpaces
  MOVE.L  0(A1,D2.W),D0
  JSR SUB_A1EE00
  MOVE.L  D2,D7
  MOVEQ #0,D2
  MOVEQ #$F,D3
LAB_A1E9DA:
  ROXR.W  #1,D0
  ROXR.L  #1,D2
  ROR.L #1,D2
  DBF D3,LAB_A1E9DA
  MOVE.L  D2,D0
  MOVE.L  D7,D2
  MOVE.L  D0,0(A1,D2.W)
  BRA.W LAB_A1E8B8
LAB_A1E9F0:
  CMPI.W  #$000f,D0
  BLS.S LAB_A1EA14
  CMPI.W  #$0013,D0
  BHI.S LAB_A1EA14
; Drive control setting
  SUBI.W  #$0010,D0
  BTST  D0,DrivesConnectedLo
  BEQ.W LAB_A1E8B8
  BCHG  D0,DriveControlPrefsValueLo
  BRA.W LAB_A1E8B8
LAB_A1EA14:
  CMPI.W  #$0013,D0
  BLS.S LAB_A1EA72
  CMPI.W  #$0016,D0
  BHI.S LAB_A1EA72
; Virus checker settings
  SUBI.W  #$0014,D0
  BCHG  D0,VirusCheckerSettingsPrefs
  BTST  #1,VirusCheckerSettingsPrefs
  BEQ.S LAB_A1EA4A
  TST.W D0
  BNE.S LAB_A1EA42
  BCLR  #1,VirusCheckerSettingsPrefs
  BRA.S LAB_A1EA4A
LAB_A1EA42:
  BSET  #0,VirusCheckerSettingsPrefs
LAB_A1EA4A:
  BTST  #2,VirusCheckerSettingsPrefs
  BNE.W LAB_A1E8B8
  SF  BootblockCoderPrefsFlag
  SF  SaveDiskResidentPrefsFlag
  SF  LAB_A483D6
  SF  SetmapDPrefsFlag
  BRA.W LAB_A1E8B8
LAB_A1EA72:
  CMPI.W  #$0018,D0
  BNE.S LAB_A1EA84
; Load Prefs
  JSR LoadPrefs
  LEA PrefsSettingPage2(PC),A0
  JSR DrawPrefsPage(PC)
  BRA.W LAB_A1E8B8
LAB_A1EA84:
  CMPI.W  #$0019,D0
  BNE.S LAB_A1EA96
; Save Prefs
  JSR SavePrefs
  LEA PrefsSettingPage2(PC),A0
  JSR DrawPrefsPage(PC)
  BRA.W LAB_A1E8B8
LAB_A1EA96:
  CMPI.W  #$0017,D0
  BNE.S LAB_A1EACA
; Safe disk - resident
  CMPI.B  #$13,kickstartVersion
  BHI.S LAB_A1EACA
  SF  LAB_A483D6
  NOT.B SaveDiskResidentPrefsFlag
  BEQ.W LAB_A1E8B8
  BSET  #3,LAB_A483D6
  BSET  #2,VirusCheckerSettingsPrefs
  BRA.W LAB_A1E8B8
LAB_A1EACA:
  CMPI.W  #$001c,D0
  BNE.S LAB_A1EAF8
; safe disk - noclick
  CMPI.B  #$13,kickstartVersion
  BHI.S LAB_A1EAF8
  BCHG  #3,LAB_A483D6
  BNE.W LAB_A1E8B8
  ST  SaveDiskResidentPrefsFlag
  BSET  #2,VirusCheckerSettingsPrefs
  BRA.W LAB_A1E8B8
LAB_A1EAF8:
  CMPI.W  #$001d,D0
  BNE.S LAB_A1EB1E
; setmap d - resident
  CMPI.B  #$13,kickstartVersion
  BHI.S LAB_A1EB1E
  NOT.B SetmapDPrefsFlag
  BEQ.W LAB_A1E8B8
  BSET  #2,VirusCheckerSettingsPrefs
  BRA.W LAB_A1E8B8
LAB_A1EB1E:
  CMPI.W  #$001e,D0
  BNE.S LAB_A1EB2E
; burst nibbler fast start
  NOT.B BurstNibblerFastStartPrefsFlag
  BRA.W LAB_A1E8B8
LAB_A1EB2E:
  BRA.W LAB_A1E8B8
drawPrefsHighlightsPage2:
  MOVEM.L D0-D7/A0-A6,-(A7)
  LEA PrefsSettingPage2(PC),A0

  CMP.B #$13,kickstartVersion
  BEQ.S .is13

  MOVEQ #0,D0
.dis
  JSR disablePrefsBox(PC)   ;disable boot selector, drive control & coder
  ADDQ #1,D0
  CMP.L #20,D0
  BNE.S .dis

  MOVEQ #22,D0    ;disable virus boot
  JSR disablePrefsBox(PC)

  MOVEQ #23,D0    ;disable safedisk resident
  JSR disablePrefsBox(PC)

  MOVEQ #28,D0    ;disable safedisk noclick
  JSR disablePrefsBox(PC)

  MOVEQ #29,D0    ;disable setmap resident
  JSR disablePrefsBox(PC)

.is13:
  MOVE.W  DrivesConnected,D2
  MOVEQ #1,D0
  MOVEQ #$10,D1
LAB_A1EB44:
  LSR.W #1,D2
  BCS.S LAB_A1EB54
  JSR disablePrefsBox(PC)
  EXG D0,D1
  JSR disablePrefsBox(PC)
  EXG D0,D1
LAB_A1EB54:
  ADDQ.W  #1,D0
  ADDQ.W  #1,D1
  CMPI.W  #4,D0
  BLS.S LAB_A1EB44
  CMPI.B  #$13,kickstartVersion
  BLS.S LAB_A1EB78
  MOVEQ #0,D0
LAB_A1EB6A:
  JSR disablePrefsBox(PC)
  ADDQ.W  #1,D0
  CMPI.W  #5,D0
  BLS.S LAB_A1EB6A
  BRA.S LAB_A1EB84
LAB_A1EB78:
  MOVEQ #1,D0
  ADD.W BootSelectPrefs,D0
  JSR highlightPrefsBox(PC)
LAB_A1EB84:
  MOVEQ #$10,D0
  MOVE.W  DriveControlPrefsValue,D2
LAB_A1EB8C:
  LSR.W #1,D2
  BCC.S LAB_A1EB94
  JSR highlightPrefsBox(PC)
LAB_A1EB94:
  ADDQ.W  #1,D0
  CMPI.W  #$0013,D0
  BLS.S LAB_A1EB8C
  BTST  #0,VirusCheckerSettingsPrefs
  BEQ.S LAB_A1EBAC
  MOVEQ #$14,D0
  JSR highlightPrefsBox(PC)
LAB_A1EBAC:
  BTST  #1,VirusCheckerSettingsPrefs
  BEQ.S LAB_A1EBBC
  MOVEQ #$15,D0
  JSR highlightPrefsBox(PC)
LAB_A1EBBC:
  BTST  #2,VirusCheckerSettingsPrefs
  BEQ.S LAB_A1EBCC
  MOVEQ #$16,D0
  JSR highlightPrefsBox(PC)
LAB_A1EBCC:
  CMPI.B  #$13,kickstartVersion
  BLS.S LAB_A1EBDC
  MOVEQ #$17,D0
  JSR disablePrefsBox(PC)
LAB_A1EBDC:
  TST.B SaveDiskResidentPrefsFlag
  BEQ.S LAB_A1EBEA
  MOVEQ #$17,D0
  JSR highlightPrefsBox(PC)
LAB_A1EBEA:
  TST.B BootblockCoderPrefsFlag
  BEQ.S LAB_A1EBF8
  MOVEQ #6,D0
  JSR highlightPrefsBox(PC)
LAB_A1EBF8:
  MOVE.L  BootblockCoderValue,D0
  MOVE.L  #$0010000a,cursorX
  JSR Print8DigitHex
  MOVEQ #8,D1
  LEA DiskCoderFlags,A1
  LEA DiskCoderValues,A2
  MOVE.L  #$0010000e,D2
LAB_A1EC20:
  TST.B (A1)+
  BEQ.S LAB_A1EC2A
  MOVE.W  D1,D0
  JSR highlightPrefsBox(PC)
LAB_A1EC2A:
  MOVE.L  (A2)+,D0
  MOVE.L  D2,cursorX
  JSR Print8DigitHex
  ADDQ.W  #1,D1
  ADDQ.W  #2,D2
  CMPI.W  #$000b,D1
  BLS.S LAB_A1EC20
  MOVEQ #$1C,D0
  CMPI.B  #$13,kickstartVersion
  BLS.S LAB_A1EC50
  JSR disablePrefsBox(PC)
LAB_A1EC50:
  BTST  #3,LAB_A483D6
  BEQ.S LAB_A1EC5E
  JSR highlightPrefsBox(PC)
LAB_A1EC5E:
  MOVEQ #$1D,D0
  CMPI.B  #$13,kickstartVersion
  BLS.S LAB_A1EC6E
  JSR disablePrefsBox(PC)
LAB_A1EC6E:
  TST.B SetmapDPrefsFlag
  BEQ.S LAB_A1EC7A
  JSR highlightPrefsBox(PC)
LAB_A1EC7A:
  MOVEQ #$1E,D0
  TST.B BurstNibblerFastStartPrefsFlag
  BEQ.S LAB_A1EC88
  JSR highlightPrefsBox(PC)
LAB_A1EC88:
  MOVEM.L (A7)+,D0-D7/A0-A6
  RTS
drawPrefsHighlightsPage1:
  MOVEM.L D0-D7/A0-A6,-(A7)
  LEA PrefsSettingPage1(PC),A0

  CMP.B #$13,kickstartVersion
  BEQ.S .is13

  MOVEQ #0,D0
.dis
  JSR disablePrefsBox(PC)   ;disable memory controls
  ADDQ #1,D0
  CMP.L #5,D0
  BNE.S .dis

  MOVEQ #6,D0    ;disable memory add
  JSR disablePrefsBox(PC)

  MOVEQ #88,D0    ;disable autoconfig button
  JSR disablePrefsBox(PC)

.is13:
  MOVEQ #0,D0
  MOVE.W  LAB_A4822E,D1
  MOVEQ #2,D2
LAB_A1ECA0:
  LSR.W #1,D1
  BCS.S LAB_A1ECA8
  JSR disablePrefsBox(PC)
LAB_A1ECA8:
  ADDQ.W  #1,D0
  DBF D2,LAB_A1ECA0
  BTST  #0,D1
  BNE.S LAB_A1ECBA
  ADDQ.W  #1,D0
  JSR disablePrefsBox(PC)
LAB_A1ECBA:
  MOVEQ #2,D2
  MOVE.W  memoryControlPrefsValue,D1
  MOVEQ #0,D0
LAB_A1ECC4:
  LSR.W #1,D1
  BCC.S LAB_A1ECCC
  JSR highlightPrefsBox(PC)
LAB_A1ECCC:
  ADDQ.W  #1,D0
  DBF D2,LAB_A1ECC4
  BTST  #0,D1
  BNE.S LAB_A1ECDE
  JSR highlightPrefsBox(PC)
  BRA.S LAB_A1ECE4
LAB_A1ECDE:
  ADDQ.W  #1,D0
  JSR highlightPrefsBox(PC)
LAB_A1ECE4:
  BTST  #1,D1
  BEQ.S LAB_A1ECF0
  MOVEQ #5,D0
  JSR highlightPrefsBox(PC)
LAB_A1ECF0:
  MOVE.L  LAB_A483AA,D0
  MOVE.L  #$000f0009,cursorX
  JSR Print6DigitHex
  MOVE.L  LAB_A483AE,D0
  MOVE.L  #$00180009,cursorX
  JSR Print6DigitHex
  TST.B ExtMemAddPrefsFlag
  BEQ.S LAB_A1ED2A
  MOVEQ #6,D0
  JSR highlightPrefsBox(PC)
LAB_A1ED2A:
  TST.B NoresPrefsFlag
  BEQ.S LAB_A1ED38
  MOVEQ #7,D0
  JSR highlightPrefsBox(PC)
LAB_A1ED38:
  BTST  #0,TestPrefsFlag
  BEQ.S LAB_A1ED48
  MOVEQ #8,D0
  JSR highlightPrefsBox(PC)
LAB_A1ED48:
  BTST  #2,TestPrefsFlag
  BEQ.S LAB_A1ED58
  MOVEQ #9,D0
  JSR highlightPrefsBox(PC)
LAB_A1ED58:
  TST.B BlankerPrefsFlag
  BEQ.S LAB_A1ED66
  MOVEQ #$A,D0
  JSR highlightPrefsBox(PC)
LAB_A1ED66:
  TST.B LAB_A480CA
  BNE.S LAB_A1ED7C
  MOVEQ #$B,D0
  BSR.W highlightPrefsBox
  LEA ArBgCol,A1
  BRA.S LAB_A1ED88
LAB_A1ED7C:
  MOVEQ #$C,D0
  BSR.W highlightPrefsBox
  LEA ArFgCol,A1
LAB_A1ED88:
  MOVE.W  (A1),D1
  MOVEQ #$2D,D0
  ANDI.W  #$000f,D1
  ADD.W D1,D0
  BSR.W highlightPrefsBox
  MOVEQ #$1D,D0
  MOVE.W  (A1),D1
  LSR.W #4,D1
  ANDI.W  #$000f,D1
  ADD.W D1,D0
  BSR.W highlightPrefsBox
  MOVEQ #$D,D0
  MOVE.W  (A1),D1
  LSR.W #8,D1
  ANDI.W  #$000f,D1
  ADD.W D1,D0
  BSR.W highlightPrefsBox
  TST.B MegaStickPrefsFlag
  BEQ.S LAB_A1EDC4
  MOVEQ #$3D,D0
  JSR highlightPrefsBox(PC)
LAB_A1EDC4:
  MOVEQ #$40,D0
  MOVEQ #$64,D1
  SUB.W P1AutoFirePrefsSetting,D1
  DIVU  #$000a,D1
  ADD.W D1,D0
  BSR.W highlightPrefsBox
  MOVEQ #$4B,D0
  MOVEQ #$64,D1
  SUB.W P2AutoFirePrefsSetting,D1
  DIVU  #$000a,D1
  ADD.W D1,D0
  BSR.W highlightPrefsBox
  MOVEQ #$58,D0
  TST.B AutoConfigPrefsFlag
  BNE.S LAB_A1EDFA
  JSR highlightPrefsBox(PC)
LAB_A1EDFA:
  MOVEM.L (A7)+,D0-D7/A0-A6
  RTS
SUB_A1EE00:
  MOVEM.L D3/D6/A1,-(A7)
  LEA stringWorkspace,A1
  JSR SUB_A1EE6C
  MOVE.L  D1,D3
  MOVE.L  D1,D6
  JSR SUB_A26C64
  JSR SUB_A1EE26
  MOVEM.L (A7)+,D3/D6/A1
  RTS
SUB_A1EE26:
  MOVEM.L D1/D3/A1,-(A7)
  MOVEQ #0,D3
  SUBQ.W  #1,D1
LAB_A1EE2E:
  MOVE.B  (A1)+,D0
  BEQ.S LAB_A1EE64
  LSL.L #4,D3
  JSR UpperCaseChar
  CMPI.B  #$2f,D0
  BLS.S LAB_A1EE52
  CMPI.B  #$39,D0
  BLS.S LAB_A1EE54
  CMPI.B  #$40,D0
  BLS.S LAB_A1EE52
  CMPI.B  #$46,D0
  BLS.S LAB_A1EE54
LAB_A1EE52:
  MOVEQ #$30,D0
LAB_A1EE54:
  JSR AsciiCharToHexDigit
  ANDI.W  #$000f,D0
  OR.W  D0,D3
  DBF D1,LAB_A1EE2E
LAB_A1EE64:
  MOVE.L  D3,D0
  MOVEM.L (A7)+,D1/D3/A1
  RTS
SUB_A1EE6C:
  MOVEM.L D0-D2,-(A7)
  MOVE.L  D0,D2
  CLR.B 0(A1,D1.W)
LAB_A1EE76:
  JSR SUB_A1EE90
  MOVE.B  D0,-1(A1,D1.W)
  MOVE.L  D2,D0
  LSR.L #4,D0
  MOVE.L  D0,D2
  SUBQ.W  #1,D1
  BNE.S LAB_A1EE76
  MOVEM.L (A7)+,D0-D2
  RTS
SUB_A1EE90:
  ANDI.W  #$000f,D0
  CMPI.W  #9,D0
  BLS.S LAB_A1EEA0
  ADDI.W  #$0037,D0
  RTS
LAB_A1EEA0:
  ADDI.W  #$0030,D0
  RTS
ArDiskCoderText:
  DC.B  "Action Replay Disk coder v1.1",$D,"=============================",$D,0

DriveText:
  DC.B  "drive",0

CodeText:
  DC.B  "code:",0

NormalText:
  DC.B  "normal",0

ProtectedText:
  DC.B  "protected!",0,0

CMD_SCAN:
  JSR ScanStart
  RTS
CMD_TRACKER:
  JSR TrackerSearch
  RTS

CMD_UNPACK:
  JSR ReadParameter
  TST.B ParamFound
  BEQ.W LAB_A21070
  MOVE.L  D0,UnpackDest
  JSR ReadParameter
  TST.B ParamFound
  BEQ.W LAB_A21070
  MOVE.L  D0,UnpackSourceEnd
  CLR.W LAB_A483BA
  BSR.W UnpackFlash
  RTS
CMD_PACK:
  JSR ReadParameter
  TST.B ParamFound
  BEQ.W LAB_A21070
  MOVE.L  D0,PackStart
  JSR ReadParameter
  TST.B ParamFound
  BEQ.W LAB_A21070
  MOVE.L  D0,PackEnd
  JSR ReadParameter
  TST.B ParamFound
  BEQ.W LAB_A21070
  MOVE.L  D0,PackDest
  JSR ReadParameter
  TST.B ParamFound
  BEQ.W LAB_A21070
  MOVE.L  D0,PackRate
  BSR.S SUB_A1EFB0
  CLR.W LAB_A483BA
  BSR.S packMemory
  MOVE.L  A2,D0
  SUB.L PackDest,D0
  JSR Print8DigitHex
  JSR PrintReady
  RTS
SUB_A1EFB0:
  MOVE.L  A0,-(A7)
  CLR.L LAB_A4829A
  CLR.W LAB_A4829E
  LEA LAB_A482A0,A0
  MOVE.L  #$01000200,(A0)+
  MOVE.L  #$04001000,(A0)+
  MOVE.L  #$00080009,(A0)+
  MOVE.L  #$000a000c,(A0)+
  MOVE.L  #0,(A0)+
  MOVE.L  #8,(A0)+
  MOVE.L  #$00020003,(A0)+
  MOVE.L  #$00030003,(A0)+
  MOVE.L  #$00010004,(A0)+
  MOVE.L  #$00050006,(A0)+
  CLR.L (A0)+
  CLR.L (A0)+
  CLR.L (A0)+
  MOVEA.L (A7)+,A0
  RTS
packMemory:
  MOVEA.L PackStart,A0
  MOVEA.L PackEnd,A1
  MOVEA.L PackDest,A2
  MOVE.L  PackRate,D0
  MOVEQ #1,D2
  CLR.W D1
  CLR.L D7
  MOVE.L  A0,LAB_A483BC
LAB_A1F02E:
  BSR.W SUB_A1F0CE
  TST.B D0
  BEQ.S LAB_A1F042
  ADDQ.W  #1,D1
  CMPI.W  #$0108,D1
  BNE.S LAB_A1F042
  BSR.W SUB_A1F19A
LAB_A1F042:
  MOVEM.L D0/A0,-(A7)
  SUBA.L  LAB_A483BC,A0
  MOVE.L  A0,D0
  ADD.L D0,LAB_A483BC
  MULU  LAB_A483BA,D0
  BNE.S LAB_A1F068
  MOVE.W  vhposr+hardware,color00+hardware
  BRA.S LAB_A1F086
LAB_A1F068:
  ADD.L LAB_A483C0,D0
  MOVE.L  D0,LAB_A483C0
  CLR.W D0
  ROL.L #7,D0
  LSL.W #1,D0
  LEA LAB_A1F31A(PC),A0
  MOVE.W  0(A0,D0.W),color00+hardware
LAB_A1F086:
  MOVEM.L (A7)+,D0/A0
  CMPA.L  A0,A1
  BGT.S LAB_A1F02E
  BSR.W SUB_A1F19A
  BSR.W SUB_A1F1D8
  MOVE.L  D7,(A2)+
  MOVEA.L PackStart,A0
  MOVEA.L PackEnd,A1
  MOVE.L  A1,D2
  SUB.L A0,D2
  MOVE.L  D2,(A2)+
  CLR.L D0
  CLR.L D1
  CLR.L D2
  CLR.L D3
  CLR.L D4
  CLR.L D5
  LEA LAB_A482C8,A3
  MOVEM.W (A3)+,D0-D5
  MOVEA.L A2,A3
  SUBA.L  A0,A3
  LEA PackEnd,A4
  SUBA.L  A2,A4
  RTS
SUB_A1F0CE:
  MOVEA.L PackRate,A3
  ADDA.L  A0,A3
  CMPA.L  A1,A3
  BLE.S LAB_A1F0DC
  MOVEA.L A1,A3
LAB_A1F0DC:
  MOVEQ #1,D5
  MOVEA.L A0,A5
  ADDQ.W  #1,A5
LAB_A1F0E2:
  MOVE.B  (A0),D3
  MOVE.B  1(A0),D4
LAB_A1F0E8:
  CMP.B (A5)+,D3
  BNE.S LAB_A1F0F0
  CMP.B (A5),D4
  BEQ.S LAB_A1F0F6
LAB_A1F0F0:
  CMPA.L  A5,A3
  BGT.S LAB_A1F0E8
  BRA.S LAB_A1F152
LAB_A1F0F6:
  SUBQ.W  #1,A5
  MOVEA.L A0,A4
LAB_A1F0FA:
  MOVE.B  (A4)+,D3
  CMP.B (A5)+,D3
  BNE.S LAB_A1F104
  CMPA.L  A5,A3
  BGT.S LAB_A1F0FA
LAB_A1F104:
  MOVE.L  A4,D3
  SUB.L A0,D3
  SUBQ.L  #1,D3
  CMP.L D3,D5
  BGE.S LAB_A1F14E
  MOVE.L  A5,D4
  SUB.L A0,D4
  SUB.L D3,D4
  SUBQ.W  #1,D4
  CMPI.L  #4,D3
  BLE.S LAB_A1F12E
  MOVEQ #6,D6
  CMPI.L  #$00000101,D3
  BLT.S LAB_A1F12C
  MOVE.W  #$0100,D3
LAB_A1F12C:
  BRA.S LAB_A1F134
LAB_A1F12E:
  MOVE.W  D3,D6
  SUBQ.W  #2,D6
  LSL.W #1,D6
LAB_A1F134:
  LEA LAB_A482A0,A6
  CMP.W 0(A6,D6.W),D4
  BGE.S LAB_A1F14E
  MOVE.L  D3,D5
  MOVE.L  D4,LAB_A4829A
  MOVE.B  D6,LAB_A4829E
LAB_A1F14E:
  CMPA.L  A5,A3
  BGT.S LAB_A1F0E2
LAB_A1F152:
  CMPI.L  #1,D5
  BEQ.S LAB_A1F190
  BSR.S SUB_A1F19A
  MOVE.B  LAB_A4829E,D6
  MOVE.L  LAB_A4829A,D3
  MOVE.W  8(A6,D6.W),D0
  BSR.S LAB_A1F1CA
  MOVE.W  $10(A6,D6.W),D0
  BEQ.S LAB_A1F17A
  MOVE.L  D5,D3
  SUBQ.W  #1,D3
  BSR.S LAB_A1F1CA
LAB_A1F17A:
  MOVE.W  $18(A6,D6.W),D0
  MOVE.W  $20(A6,D6.W),D3
  BSR.S LAB_A1F1CA
  ADDI.W  #1,$28(A6,D6.W)
  ADDA.L  D5,A0
  CLR.B D0
  RTS
LAB_A1F190:
  MOVE.B  (A0)+,D3
  MOVEQ #8,D0
  BSR.S LAB_A1F1CA
  MOVEQ #1,D0
  RTS
SUB_A1F19A:
  TST.W D1
  BEQ.S LAB_A1F1B4
  MOVE.W  D1,D3
  CLR.W D1
  CMPI.W  #9,D3
  BGE.S LAB_A1F1B6
  ADDQ.W  #1,LAB_A482D0
  SUBQ.W  #1,D3
  MOVEQ #5,D0
  BRA.S LAB_A1F1CA
LAB_A1F1B4:
  RTS
LAB_A1F1B6:
  ADDQ.W  #1,LAB_A482D2
  SUBI.W  #9,D3
  ORI.W #$0700,D3
  MOVEQ #$B,D0
  BRA.W LAB_A1F1CA
LAB_A1F1CA:
  SUBQ.W  #1,D0
LAB_A1F1CC:
  LSR.L #1,D3
  ROXL.L  #1,D2
  BCS.S LAB_A1F1DA
  DBF D0,LAB_A1F1CC
  RTS
SUB_A1F1D8:
  CLR.W D0
LAB_A1F1DA:
  MOVE.L  D2,(A2)+
  EOR.L D2,D7
  MOVEQ #1,D2
  DBF D0,LAB_A1F1CC
  RTS
UnpackNoFlash:
  CLR.W LAB_A483BA
  ST  UnpackFlashy
  BRA.S Unpack
UnpackFlash:
  SF  UnpackFlashy
Unpack:
  MOVEA.L UnpackSourceEnd,A0
  MOVEA.L UnpackDest,A1
  MOVE.L  A1,LAB_A483BC
  MOVEA.L -(A0),A2
  ADDA.L  A1,A2
  MOVE.L  -(A0),D5
  MOVE.L  -(A0),D0
  EOR.L D0,D5
LAB_A1F216:
  MOVEM.L D0/A2,-(A7)
  SUBA.L  LAB_A483BC,A2
  MOVE.L  A2,D0
  NEG.L D0
  SUB.L D0,LAB_A483BC
  MULU  LAB_A483BA,D0
  BNE.S LAB_A1F246
  TST.B UnpackFlashy
  BNE.S LAB_A1F264
  MOVE.W  vhposr+hardware,color00+hardware
  BRA.S LAB_A1F264
LAB_A1F246:
  ADD.L LAB_A483C0,D0
  MOVE.L  D0,LAB_A483C0
  CLR.W D0
  ROL.L #7,D0
  LSL.W #1,D0
  LEA LAB_A1F31A(PC),A2
  MOVE.W  0(A2,D0.W),color00+hardware
LAB_A1F264:
  MOVEM.L (A7)+,D0/A2
  LSR.L #1,D0
  BNE.S LAB_A1F270
  BSR.W SUB_A1F2F4
LAB_A1F270:
  BCS.S LAB_A1F2A4
  MOVEQ #8,D1
  MOVEQ #1,D3
  LSR.L #1,D0
  BNE.S LAB_A1F27C
  BSR.S SUB_A1F2F4
LAB_A1F27C:
  BCS.S LAB_A1F2CA
  MOVEQ #3,D1
  CLR.W D4
LAB_A1F282:
  BSR.S SUB_A1F300
  MOVE.W  D2,D3
  ADD.W D4,D3
LAB_A1F288:
  MOVEQ #7,D1
LAB_A1F28A:
  LSR.L #1,D0
  BNE.S LAB_A1F290
  BSR.S SUB_A1F2F4
LAB_A1F290:
  ROXL.L  #1,D2
  DBF D1,LAB_A1F28A
  MOVE.B  D2,-(A2)
  DBF D3,LAB_A1F288
  BRA.S LAB_A1F2D6
LAB_A1F29E:
  MOVEQ #8,D1
  MOVEQ #8,D4
  BRA.S LAB_A1F282
LAB_A1F2A4:
  MOVEQ #2,D1
  BSR.S SUB_A1F300
  CMPI.B  #2,D2
  BLT.S LAB_A1F2C0
  CMPI.B  #3,D2
  BEQ.S LAB_A1F29E
  MOVEQ #8,D1
  BSR.S SUB_A1F300
  MOVE.W  D2,D3
  MOVE.W  #$000c,D1
  BRA.S LAB_A1F2CA
LAB_A1F2C0:
  MOVE.W  #9,D1
  ADD.W D2,D1
  ADDQ.W  #2,D2
  MOVE.W  D2,D3
LAB_A1F2CA:
  BSR.S SUB_A1F300
LAB_A1F2CC:
  SUBQ.W  #1,A2
  MOVE.B  0(A2,D2.W),(A2)
  DBF D3,LAB_A1F2CC
LAB_A1F2D6:
  CMPA.L  A2,A1
  BLT.W LAB_A1F216
  TST.L D5
  BNE.S LAB_A1F2E2
  RTS
LAB_A1F2E2:
  MOVE.L  #$0000ffff,D0
LAB_A1F2E8:
  MOVE.W  D0,color01+hardware
  SUBQ.L  #1,D0
  BNE.S LAB_A1F2E8
  RTS
SUB_A1F2F4:
  MOVE.L  -(A0),D0
  EOR.L D0,D5
  MOVE  #$0010,CCR
  ROXR.L  #1,D0
  RTS
SUB_A1F300:
  SUBQ.W  #1,D1
  CLR.W D2
LAB_A1F304:
  LSR.L #1,D0
  BNE.S LAB_A1F312
  MOVE.L  -(A0),D0
  EOR.L D0,D5
  MOVE  #$0010,CCR
  ROXR.L  #1,D0
LAB_A1F312:
  ROXL.L  #1,D2
  DBF D1,LAB_A1F304
  RTS
LAB_A1F31A:
  DC.L  $00000100,$02000300,$04000500,$06000700
  DC.L  $08000900,$0a000b00,$0c000d00,$0e000f00
  DC.L  $0f010f02,$0f030f04,$0f050f06,$0f070f08
  DC.L  $0f090f0a,$0f0b0f0c,$0f0d0f0e,$0f0f0e0f
  DC.L  $0d0f0c0f,$0b0f0a0f,$090f080f,$070f060f
  DC.L  $050f040f,$030f020f,$010f000f,$001f002f
  DC.L  $003f004f,$005f006f,$007f008f,$009f00af
  DC.L  $00bf00cf,$00df00ef,$00ff00fe,$00fd00fc
  DC.L  $00fb00fa,$00f900f8,$00f700f6,$00f500f4
  DC.L  $00f300f2,$00f100f0,$00e000d0,$00c000b0
  DC.L  $00a00090,$00800070,$00600050,$00400030
  DC.L  $00200010
  DS.W  1
SUB_A1F3D0:
  MOVE.L  A0,-(A7)
  LEA ciaapra,A0
  MOVE.B  #$ff,$300(A0)
  MOVE.B  #$10,$D00(A0)
  BCLR  #0,ciabddra
  MOVEA.L (A7)+,A0
  RTS
PrintCharToPrinter:
  MOVEM.L D0-D3/A0-A2,-(A7)
  LEA ciaapra,A0
  LEA ciabpra,A1
  LEA PrintMapDE(PC),A2
  MOVEQ #0,D1
  MOVEQ #2,D2
  TST.B keymap
  BEQ.S LAB_A1F418
  LEA PrintMapUS(PC),A2
  MOVEQ #2,D1
  MOVEQ #0,D2
LAB_A1F418:
  TST.B (A2)
  BEQ.S LAB_A1F470
  CMP.B (A2)+,D0
  LEA 1(A2),A2
  BNE.S LAB_A1F418
  MOVE.B  -1(A2),D0
  BPL.S LAB_A1F470
  NEG.B D0
  MOVE.B  D0,D3
  MOVE.W  #$001b,D0
  JSR PrintCharToPrinter2
  MOVE.W  #$0052,D0
  JSR PrintCharToPrinter2
  MOVE.W  D1,D0
  JSR PrintCharToPrinter2
  MOVE.W  D3,D0
  JSR PrintCharToPrinter2
  MOVE.W  #$001b,D0
  JSR PrintCharToPrinter2
  MOVE.W  #$0052,D0
  JSR PrintCharToPrinter2
  MOVE.W  D2,D0
  JSR PrintCharToPrinter2
  BRA.S LAB_A1F494
LAB_A1F470:
  CMPI.B  #$1b,D0
  BEQ.S LAB_A1F494
  CMPI.B  #$0d,D0
  BNE.S LAB_A1F480
  MOVE.B  #$0a,D0
LAB_A1F480:
  BTST  #6,(A0)
  BEQ.S LAB_A1F494
  BTST  #0,(A1)
  BNE.S LAB_A1F480
  NOP
  NOP
  MOVE.B  D0,$100(A0)
LAB_A1F494:
  MOVEM.L (A7)+,D0-D3/A0-A2
  RTS
PrintMapDE:
  DC.L  $c45bd65c,$dc5da740,$e47bf67c,$fc7ddf7e
  DC.L  $40c07b85,$7d837e82,$7c845ba5,$5ca45da3
  DS.B  1
PrintMapUS:
  DC.B  $c4
  DC.L  $a5d6a4dc,$a3a7c0e4,$85f684fc,$83df8200
PrintCharToPrinter2:
  MOVEM.L D0/A0-A1,-(A7)
  LEA ciaapra,A0
  LEA ciabpra,A1
LAB_A1F4DC:
  BTST  #6,(A0)
  BEQ.S LAB_A1F4F0
  BTST  #0,(A1)
  BNE.S LAB_A1F4DC
  NOP
  NOP
  MOVE.B  D0,$100(A0)
LAB_A1F4F0:
  MOVEM.L (A7)+,D0/A0-A1
  RTS
FindNull:
  TST.B (A0)+
  BNE.S FindNull
  RTS
PrintCRToPrinter:
  MOVE.L  D0,-(A7)
  CLR.W cursorX
  TST.B printerDumpToggle
  BEQ.S LAB_A1F510
  MOVEQ #$D,D0
  BSR.S PrintCharToPrinter2
LAB_A1F510:
  MOVE.L  (A7)+,D0
  RTS
PrintScreenToPrinter:
  TST.B PrinterFound
  BEQ.S NoPrinter
  BSR.W SUB_A1F3D0
  MOVEM.L D0-D3/A0,-(A7)
  MOVEA.L CurrentPage,A0
  MOVEQ #$18,D1
LAB_A1F52C:
  MOVEQ #$4F,D2
LAB_A1F52E:
  MOVEQ #0,D0
  MOVEQ #$1E,D3
  MOVE.B  (A0)+,D0
  JSR InvalidAsciiToSpace
LAB_A1F53A:
  DBF D3,LAB_A1F53A
  BSR.W PrintCharToPrinter
  DBF D2,LAB_A1F52E
  MOVEQ #$D,D0
  BSR.W PrintCharToPrinter
  DBF D1,LAB_A1F52C
  MOVEM.L (A7)+,D0-D3/A0
  RTS
NoPrinter:
  LEA NoPrinterText(PC),A0
  JSR PrintText
  JSR PrintReady
  RTS

NoPrinterText:
  DC.B  "Sorry no printer connected!",$D,0,0

  even
mt_init:
  MOVEA.L ModPointer,A6
  LEA $1D6(A6),A0
  LEA $258(A6),A5
  LEA $14(A6),A4
  MOVEQ #$E,D7
  CMPI.W  #1,ModType
  BEQ.W LAB_412832
  LEA $3B6(A6),A0
  LEA $43C(A6),A5
  MOVEQ #$1E,D7
LAB_412832:
  BSR.W SUB_413716
  TST.B D0
  BEQ.W mt_initexit
  LEA mt_samplestarts,A2
  MULU  #$0400,D1
LAB_412846:
  LEA 0(A5,D1.L),A0
  MOVE.L  A0,(A2)+
  LEA $16(A4),A0
  JSR memSafeReadWord
  ADD.W D0,D0
  ADD.L D0,D1
  LEA $1E(A4),A4
  DBF D7,LAB_412846
  ORI.B #2,ciaapra
  MOVE.B  #6,mt_speed
  CLR.W aud0vol+hardware
  CLR.W aud1vol+hardware
  CLR.W aud2vol+hardware
  CLR.W aud3vol+hardware
  CLR.B mt_songpos
  CLR.B mt_counter
  CLR.W mt_pattpos
  MOVEQ #1,D0
mt_initexit:
  RTS
mt_end:
  CLR.W aud0vol+hardware
  CLR.W aud1vol+hardware
  CLR.W aud2vol+hardware
  CLR.W aud3vol+hardware
  MOVE.W  #$000f,dmacon+hardware
  RTS
mt_music:
  MOVEM.L D0-D4/A0-A3/A5-A6,-(A7)
  MOVEA.L ModPointer,A0
  ADDQ.B  #1,mt_counter
  MOVE.B  mt_counter,D0
  CMP.B mt_speed,D0
  BLT.S LAB_4128EA
  CLR.B mt_counter
  BRA.W LAB_41298A
LAB_4128EA:
  LEA mt_chan1,A6
  LEA aud0lch+hardware,A5
  BSR.W SUB_412CAC
  LEA mt_chan2,A6
  LEA aud1lch+hardware,A5
  BSR.W SUB_412CAC
  LEA mt_chan3,A6
  LEA aud2lch+hardware,A5
  BSR.W SUB_412CAC
  LEA mt_chan4,A6
  LEA aud3lch+hardware,A5
  BSR.W SUB_412CAC
  BRA.W LAB_412BC0
LAB_41292E:
  MOVEQ #0,D0
  MOVE.B  mt_counter,D0
  DIVS  #3,D0
  SWAP  D0
  CMPI.W  #0,D0
  BEQ.S LAB_41295E
  CMPI.W  #2,D0
  BEQ.S LAB_412952
  MOVEQ #0,D0
  MOVE.B  3(A6),D0
  LSR.B #4,D0
  BRA.S LAB_412964
LAB_412952:
  MOVEQ #0,D0
  MOVE.B  3(A6),D0
  ANDI.B  #$0f,D0
  BRA.S LAB_412964
LAB_41295E:
  MOVE.W  $10(A6),D2
  BRA.S LAB_412984
LAB_412964:
  ASL.W #1,D0
  MOVEQ #0,D1
  MOVE.W  $10(A6),D1
  LEA mt_periods,A0
  MOVEQ #$24,D7
LAB_412974:
  MOVE.W  0(A0,D0.W),D2
  CMP.W (A0),D1
  BGE.S LAB_412984
  ADDQ.L  #2,A0
  DBF D7,LAB_412974
  RTS
LAB_412984:
  MOVE.W  D2,6(A5)
  RTS
LAB_41298A:
  MOVEA.L ModPointer,A0
  MOVEA.L A0,A3
  MOVEA.L A0,A2
  ADDA.L  #$0000000c,A3
  ADDA.L  #$000003b8,A2
  ADDA.L  #$0000043c,A0
  CMPI.W  #1,ModType
  BNE.W LAB_4129BA
  LEA -484(A0),A0
  LEA -480(A2),A2
LAB_4129BA:
  MOVEQ #0,D0
  MOVE.L  D0,D1
  MOVE.B  mt_songpos,D0
  MOVE.B  0(A2,D0.W),D1
  ASL.L #8,D1
  ASL.L #2,D1
  ADD.W mt_pattpos,D1
  CLR.W mt_dmacon
  LEA aud0lch+hardware,A5
  LEA mt_chan1,A6
  BSR.S SUB_412A14
  LEA aud1lch+hardware,A5
  LEA mt_chan2,A6
  BSR.S SUB_412A14
  LEA aud2lch+hardware,A5
  LEA mt_chan3,A6
  BSR.S SUB_412A14
  LEA aud3lch+hardware,A5
  LEA mt_chan4,A6
  BSR.S SUB_412A14
  BRA.W LAB_412AF6
SUB_412A14:
  MOVE.L  0(A0,D1.L),(A6)
  ADDQ.L  #4,D1
  MOVEQ #0,D2
  MOVE.B  2(A6),D2
  ANDI.B  #$f0,D2
  LSR.B #4,D2
  MOVE.B  (A6),D0
  ANDI.B  #$f0,D0
  OR.B  D0,D2
  TST.B D2
  BEQ.S LAB_412A9A
  MOVEQ #0,D3
  LEA mt_samplestarts,A1
  MOVE.L  D2,D4
  SUBQ.L  #1,D2
  ASL.L #2,D2
  MULU  #$001e,D4
  MOVE.L  0(A1,D2.L),4(A6)
  MOVE.W  0(A3,D4.L),8(A6)
  MOVE.W  2(A3,D4.L),$12(A6)
  MOVE.W  4(A3,D4.L),D3
  TST.W D3
  BEQ.S LAB_412A84
  MOVE.L  4(A6),D2
  ASL.W #1,D3
  ADD.L D3,D2
  MOVE.L  D2,$A(A6)
  MOVE.W  4(A3,D4.L),D0
  ADD.W 6(A3,D4.L),D0
  MOVE.W  D0,8(A6)
  MOVE.W  6(A3,D4.L),$E(A6)
  MOVE.W  $12(A6),8(A5)
  BRA.S LAB_412A9A
LAB_412A84:
  MOVE.L  4(A6),D2
  ADD.L D3,D2
  MOVE.L  D2,$A(A6)
  MOVE.W  6(A3,D4.L),$E(A6)
  MOVE.W  $12(A6),8(A5)
LAB_412A9A:
  MOVE.W  (A6),D0
  ANDI.W  #$0fff,D0
  BEQ.W LAB_412D96
  MOVE.B  2(A6),D0
  ANDI.B  #$0f,D0
  CMPI.B  #3,D0
  BNE.S LAB_412ABA
  BSR.W SUB_412BCE
  BRA.W LAB_412D96
LAB_412ABA:
  MOVE.W  (A6),$10(A6)
  ANDI.W  #$0fff,$10(A6)
  MOVE.W  $14(A6),D0
  MOVE.W  D0,dmacon+hardware
  CLR.B $1B(A6)
  MOVE.L  4(A6),(A5)
  MOVE.W  8(A6),4(A5)
  MOVE.W  $10(A6),D0
  ANDI.W  #$0fff,D0
  MOVE.W  D0,6(A5)
  MOVE.W  $14(A6),D0
  OR.W  D0,mt_dmacon
  BRA.W LAB_412D96
LAB_412AF6:
  MOVE.W  #$012c,D0
LAB_412AFA:
  DBF D0,LAB_412AFA
  MOVE.W  mt_dmacon,D0
  ORI.W #$8000,D0
  MOVE.W  D0,dmacon+hardware
  MOVE.W  #$012c,D0
LAB_412B12:
  DBF D0,LAB_412B12
  LEA hardware,A5
  LEA mt_chan4,A6
  MOVE.L  $A(A6),aud3lch(A5)
  MOVE.W  $E(A6),aud3len(A5)
  LEA mt_chan3,A6
  MOVE.L  $A(A6),aud2lch(A5)
  MOVE.W  $E(A6),aud2len(A5)
  LEA mt_chan2,A6
  MOVE.L  $A(A6),aud1lch(A5)
  MOVE.W  $E(A6),aud1len(A5)
  LEA mt_chan1,A6
  MOVE.L  $A(A6),aud0lch(A5)
  MOVE.W  $E(A6),aud0len(A5)
  ADDI.W  #$0010,mt_pattpos
  CMPI.W  #$0400,mt_pattpos
  BNE.S LAB_412BC0
LAB_412B76:
  CLR.W mt_pattpos
  CLR.B mt_break
  ADDQ.B  #1,mt_songpos
  ANDI.B  #$7f,mt_songpos
  MOVE.B  mt_songpos,D1
  MOVEA.L ModPointer,A0
  LEA $3B6(A0),A0
  CMPI.W  #1,ModType
  BNE.W LAB_412BB0
  LEA -480(A0),A0
LAB_412BB0:
  JSR memSafeReadByte
  CMP.B D0,D1
  BNE.S LAB_412BC0
  CLR.B mt_songpos
LAB_412BC0:
  TST.B mt_break
  BNE.S LAB_412B76
  MOVEM.L (A7)+,D0-D4/A0-A3/A5-A6
  RTS
SUB_412BCE:
  MOVE.W  (A6),D2
  ANDI.W  #$0fff,D2
  MOVE.W  D2,$18(A6)
  MOVE.W  $10(A6),D0
  CLR.B $16(A6)
  CMP.W D0,D2
  BEQ.S LAB_412BEE
  BGE.S LAB_412BF2
  MOVE.B  #1,$16(A6)
  RTS
LAB_412BEE:
  CLR.W $18(A6)
LAB_412BF2:
  RTS
LAB_412BF4:
  MOVE.B  3(A6),D0
  BEQ.S LAB_412C02
  MOVE.B  D0,$17(A6)
  CLR.B 3(A6)
LAB_412C02:
  TST.W $18(A6)
  BEQ.S LAB_412BF2
  MOVEQ #0,D0
  MOVE.B  $17(A6),D0
  TST.B $16(A6)
  BNE.S LAB_412C34
  ADD.W D0,$10(A6)
  MOVE.W  $18(A6),D0
  CMP.W $10(A6),D0
  BGT.S LAB_412C2C
  MOVE.W  $18(A6),$10(A6)
  CLR.W $18(A6)
LAB_412C2C:
  MOVE.W  $10(A6),6(A5)
  RTS
LAB_412C34:
  SUB.W D0,$10(A6)
  MOVE.W  $18(A6),D0
  CMP.W $10(A6),D0
  BLT.S LAB_412C2C
  MOVE.W  $18(A6),$10(A6)
  CLR.W $18(A6)
  MOVE.W  $10(A6),6(A5)
  RTS
LAB_412C54:
  MOVE.B  3(A6),D0
  BEQ.S LAB_412C5E
  MOVE.B  D0,$1A(A6)
LAB_412C5E:
  MOVE.B  $1B(A6),D0
  LEA mt_sin,A4
  LSR.W #2,D0
  ANDI.W  #$001f,D0
  MOVEQ #0,D2
  MOVE.B  0(A4,D0.W),D2
  MOVE.B  $1A(A6),D0
  ANDI.W  #$000f,D0
  MULU  D0,D2
  LSR.W #6,D2
  MOVE.W  $10(A6),D0
  TST.B $1B(A6)
  BMI.S LAB_412C8E
  ADD.W D2,D0
  BRA.S LAB_412C90
LAB_412C8E:
  SUB.W D2,D0
LAB_412C90:
  MOVE.W  D0,6(A5)
  MOVE.B  $1A(A6),D0
  LSR.W #2,D0
  ANDI.W  #$003c,D0
  ADD.B D0,$1B(A6)
  RTS
LAB_412CA4:
  MOVE.W  $10(A6),6(A5)
  RTS
SUB_412CAC:
  MOVE.W  2(A6),D0
  ANDI.W  #$0fff,D0
  BEQ.S LAB_412CA4
  MOVE.B  2(A6),D0
  ANDI.B  #$0f,D0
  TST.B D0
  BEQ.W LAB_41292E
  CMPI.B  #1,D0
  BEQ.S LAB_412D32
  CMPI.B  #2,D0
  BEQ.W LAB_412D64
  CMPI.B  #3,D0
  BEQ.W LAB_412BF4
  CMPI.B  #4,D0
  BEQ.W LAB_412C54
  MOVE.W  $10(A6),6(A5)
  CMPI.B  #$0a,D0
  BEQ.S LAB_412CF0
  RTS
LAB_412CF0:
  MOVEQ #0,D0
  MOVE.B  3(A6),D0
  LSR.B #4,D0
  TST.B D0
  BEQ.S LAB_412D16
  ADD.W D0,$12(A6)
  CMPI.W  #$0040,$12(A6)
  BMI.S LAB_412D0E
  MOVE.W  #$0040,$12(A6)
LAB_412D0E:
  MOVE.W  $12(A6),8(A5)
  RTS
LAB_412D16:
  MOVEQ #0,D0
  MOVE.B  3(A6),D0
  ANDI.B  #$0f,D0
  SUB.W D0,$12(A6)
  BPL.S LAB_412D2A
  CLR.W $12(A6)
LAB_412D2A:
  MOVE.W  $12(A6),8(A5)
  RTS
LAB_412D32:
  MOVEQ #0,D0
  MOVE.B  3(A6),D0
  SUB.W D0,$10(A6)
  MOVE.W  $10(A6),D0
  ANDI.W  #$0fff,D0
  CMPI.W  #$0071,D0
  BPL.S LAB_412D56
  ANDI.W  #$f000,$10(A6)
  ORI.W #$0071,$10(A6)
LAB_412D56:
  MOVE.W  $10(A6),D0
  ANDI.W  #$0fff,D0
  MOVE.W  D0,6(A5)
  RTS
LAB_412D64:
  CLR.W D0
  MOVE.B  3(A6),D0
  ADD.W D0,$10(A6)
  MOVE.W  $10(A6),D0
  ANDI.W  #$0fff,D0
  CMPI.W  #$0358,D0
  BMI.S LAB_412D88
  ANDI.W  #$f000,$10(A6)
  ORI.W #$0358,$10(A6)
LAB_412D88:
  MOVE.W  $10(A6),D0
  ANDI.W  #$0fff,D0
  MOVE.W  D0,6(A5)
  RTS
LAB_412D96:
  MOVE.B  2(A6),D0
  ANDI.B  #$0f,D0
  CMPI.B  #$0e,D0
  BEQ.S LAB_412DBE
  CMPI.B  #$0d,D0
  BEQ.S LAB_412DD8
  CMPI.B  #$0b,D0
  BEQ.S LAB_412DE0
  CMPI.B  #$0c,D0
  BEQ.S LAB_412DF4
  CMPI.B  #$0f,D0
  BEQ.S LAB_412E0A
  RTS
LAB_412DBE:
  MOVE.B  3(A6),D0
  ANDI.B  #1,D0
  ASL.B #1,D0
  ANDI.B  #$fd,ciaapra
  OR.B  D0,ciaapra
  RTS
LAB_412DD8:
  NOT.B mt_break
  RTS
LAB_412DE0:
  MOVE.B  3(A6),D0
  SUBQ.B  #1,D0
  MOVE.B  D0,mt_songpos
  NOT.B mt_break
  RTS
LAB_412DF4:
  CMPI.B  #$40,3(A6)
  BLE.S LAB_412E02
  MOVE.B  #$40,3(A6)
LAB_412E02:
  MOVE.B  3(A6),8(A5)
  RTS
LAB_412E0A:
  CMPI.B  #$1f,3(A6)
  BLE.S LAB_412E18
  MOVE.B  #$1f,3(A6)
LAB_412E18:
  MOVE.B  3(A6),D0
  BEQ.S LAB_412E2A
  MOVE.B  D0,mt_speed
  CLR.B mt_counter
LAB_412E2A:
  RTS
sindata:
  DC.L  $0018314a,$61788da1,$b4c5d4e0,$ebf4fafd
  DC.L  $fffdfaf4,$ebe0d4c5,$b4a18d78,$614a3118
  DC.L  $08390006,$00bfe001,$66f64e75
TrackerSearch:
  MOVEQ #0,D0
  JSR ReadParameter
  ANDI.L  #$000ffffe,D0
  MOVEA.L D0,A0
  LEA LAB_4137C2(PC),A0
  JSR PrintText
  MOVEA.L D0,A0
  MOVE.L  A0,LAB_A482F8
  CLR.B LAB_A482F0
LAB_412E80:
  BSR.W SUB_4133DA
  TST.W D0
  BNE.W LAB_412E98
  LEA LAB_413835(PC),A0
  JSR PrintText
  BRA.W TrackerExit
LAB_412E98:
  MOVE.W  D0,ModType
  MOVE.L  A0,ModPointer
LAB_412EA4:
  LEA LAB_41384F(PC),A0
  JSR PrintText
  MOVE.L  ModPointer,D0
  JSR Print6DigitHex
  LEA LAB_41386D(PC),A0
  JSR PrintText
  LEA LAB_41387C(PC),A0
  MOVE.W  ModType,D0
LAB_412ECE:
  SUBQ.W  #1,D0
  BEQ.W LAB_412EDA
  BSR.W FindNull
  BRA.S LAB_412ECE
LAB_412EDA:
  JSR PrintText
  LEA LAB_4138CD(PC),A0
  JSR PrintText
  MOVEA.L ModPointer,A0
  MOVEQ #$14,D0
  BSR.W SUB_413CFE
  LEA LAB_4138D7(PC),A0
  JSR PrintText
TrackerCheckKeys:
  JSR GetMappedKeyCode
  MOVE.W  KeyCode,D0
  CMPI.W  #F1Key,D0
  BEQ.W TrackerPlayMod
  CMPI.W  #F2Key,D0
  BEQ.W TrackerStopMod
  CMPI.W  #F3Key,D0
  BEQ.W TrackerSeeDetails
  CMPI.W  #F4Key,D0
  BEQ.W TrackerSaveMod
  CMPI.W  #F5Key,D0
  BEQ.W TrackerRenameMod
  CMPI.W  #F6Key,D0
  BEQ.W TrackerShowSongData
  CMPI.W  #F7Key,D0
  BEQ.W TrackerContinueSearch
  CMPI.W  #F8Key,D0
  BEQ.W TrackerChange16
  CMPI.W  #F9Key,D0
  BEQ.W TrackerCalcLength
  CMPI.W  #F10Key,D0
  BEQ.W TrackerExit
  BRA.S TrackerCheckKeys
TrackerExit:
  BSR.W SUB_4139C4
  JSR PrintReady
  RTS

TrackerSaveMod:
  BSR.W SUB_412F72
  BRA.W LAB_412EA4
SUB_412F72:
  BSR.W SUB_4139C4
  LEA LAB_41307D(PC),A0
  JSR PrintText
  JSR PrintInputChar
  SF  forceUpper
  BSR.W GetFilename
  ST  forceUpper
  MOVE.L  D0,D1
  MOVEQ #-14,D0
  TST.W D1
  BEQ.W LAB_412FFC
  LEA EXT_7000.W,A0
  CMPI.L  #$00010000,ModPointer
  BCC.W LAB_412FB8
  LEA EXT_7C000,A0
LAB_412FB8:
  JSR backupMfmBuffer
  LEA stringWorkspace,A1
  MOVE.B  currDriveNo,-(A7)
  MOVE.L  D1,D0
  BSR.W SaveFileInit
  BMI.W LAB_412FEE
  BSR.W SUB_4139CE
  MOVEA.L ModPointer,A2
  BSR.W SaveFileData
  JSR HandleDiskFull
  BMI.W LAB_412FEE
  BSR.W AddFileToDirBlock
  BMI.W LAB_412FEE
LAB_412FEE:
  MOVE.L  D0,D1
  BSR.W restoreMfmBuffer
  MOVE.L  D1,D0
  MOVE.B  (A7)+,currDriveNo
LAB_412FFC:
  BRA.W PrintDiskOpResult
TrackerRenameMod:
  BSR.W SUB_413018
  BRA.W LAB_412EA4
TrackerChange16:
  BSR.W SUB_413378
  BRA.W LAB_412EA4
TrackerCalcLength:
  BSR.W SUB_413332
  BRA.W LAB_412EA4
SUB_413018:
  LEA LAB_413058(PC),A0
  JSR PrintText
  JSR PrintInputChar
  MOVEA.L A0,A1
  MOVEA.L ModPointer,A0
  MOVEQ #$13,D1
LAB_413032:
  MOVE.B  (A1)+,D0
  CMPI.B  #$20,D0
  BCS.W LAB_413048
  CMPI.B  #$7e,D0
  BHI.W LAB_413048
  BRA.W LAB_41304A
LAB_413048:
  MOVEQ #0,D0
LAB_41304A:
  JSR memSafeUpdateByte
  ADDQ.L  #1,A0
  DBF D1,LAB_413032
  RTS
LAB_413058:
  DC.B  "Please enter now the new song name:",$D,0

LAB_41307D:
  DC.B  "Please enter now the save-filename:",$D,0

LAB_4130A2:
  DC.B  "Press space bar or left mouse button for exit",$D,$D,"songname:",$D,$D,"spe"
  DC.B  "ed:    songpos:    maxpos:   pattpos:      counter:    break:"
  DC.B  $D,$D,$D,$D,$D,$D,$D,"note        sampledata                          volume"
  DC.B  "data",$D,$D,$D,"voice1:",$D,$D,"voice2:",$D,$D,"voice3:",$D,$D,"voice4:",$D,$D,0,0

TrackerShowSongData:
  SF  cursorEnabled
  JSR Cls
  LEA LAB_4130A2(PC),A0
  JSR PrintText
  MOVEA.L ModPointer,A0
  MOVE.W  #9,cursorX
  MOVE.W  #2,cursorY
  MOVEQ #$14,D0
  BSR.W SUB_413CFE
  LEA $3B6(A0),A0
  CMPI.W  #1,ModType
  BNE.W LAB_4131E4
  LEA -480(A0),A0
LAB_4131E4:
  JSR memSafeReadByte
  MOVE.W  D0,D5
LAB_4131EC:
  JSR GetMappedKeyCode
  CMPI.W  #$0020,D0
  BEQ.W LAB_413322
  BTST  #6,ciaapra
  BEQ.W LAB_413322
  MOVE.W  #6,cursorX
  MOVE.W  #4,cursorY
  MOVE.B  mt_speed,D0
  JSR Print2DigitHex
  MOVE.W  #$0012,cursorX
  MOVE.B  mt_songpos,D0
  JSR Print2DigitHex
  MOVE.W  #$001d,cursorX
  MOVE.B  D5,D0
  JSR Print2DigitHex
  MOVE.W  #$0028,cursorX
  MOVE.W  mt_pattpos,D0
  JSR Print4DigitHex
  MOVE.W  #$0036,cursorX
  MOVE.B  mt_counter,D0
  JSR Print2DigitHex
  MOVE.W  #$0040,cursorX
  MOVE.B  mt_break,D0
  JSR Print2DigitHex
  CLR.W cursorX
  MOVE.W  #$000f,cursorY
  LEA mt_chan1,A0
  MOVEQ #3,D2
LAB_413298:
  MOVEQ #9,D1
LAB_41329A:
  MOVE.W  (A0)+,D0
  JSR Print4DigitHex
  MOVEQ #2,D0
  JSR PrintSpaces
  DBF D1,LAB_41329A
  JSR PrintCrIfNotBlankLine
  JSR PrintCR
  ADDQ.L  #8,A0
  DBF D2,LAB_413298
  BRA.W LAB_4131EC
  LEA LAB_A43E52,A0
  MOVEQ #0,D0
  MOVEQ #0,D1
  MOVEQ #0,D2
LAB_4132D0:
  MOVE.W  D2,cursorX
  MOVE.B  (A0)+,D0
  MOVE.B  (A0)+,D1
  CMP.B D0,D1
  BHI.W LAB_4132F6
  MOVEQ #$17,D1
  SUB.W D0,D1
  MOVE.W  D1,cursorY
  MOVEQ #$54,D0
  JSR PrintChar
  BRA.W LAB_413308
LAB_4132F6:
  MOVEQ #$16,D1
  SUB.W D0,D1
  MOVEQ #$20,D0
  MOVE.W  D1,cursorY
  JSR PrintChar
LAB_413308:
  ADDQ.W  #1,D2
  CMPI.W  #$004f,D2
  BNE.S LAB_4132D0
  MOVEQ #$4F,D0
  LEA LAB_A43E52,A0
LAB_413318:
  MOVE.B  (A0)+,(A0)+
  DBF D0,LAB_413318
  BRA.W LAB_4131EC
LAB_413322:
  ST  cursorEnabled
  JSR Cls
  BRA.W LAB_412EA4
SUB_413332:
  MOVEA.L ModPointer,A1
  LEA $1D6(A1),A1
  CMPI.W  #1,ModType
  BEQ.W LAB_41334C
  LEA $1E0(A1),A1
LAB_41334C:
  MOVEQ #0,D1
  MOVEQ #0,D2
LAB_413350:
  LEA 2(A1,D1.W),A0
  JSR memSafeReadByte
  TST.W D0
  BEQ.W LAB_413362
  MOVE.W  D1,D2
LAB_413362:
  ADDQ.W  #1,D1
  CMPI.W  #$007f,D1
  BNE.S LAB_413350
  ADDQ.W  #1,D2
  MOVE.W  D2,D0
  LEA (A1),A0
  JSR memSafeUpdateByte
  RTS
SUB_413378:
  CMPI.W  #2,ModType
  BCS.W LAB_4133A2
  CMPI.W  #3,ModType
  BHI.W LAB_4133A2
  ADDI.L  #$000001e0,ModPointer
  MOVE.W  #1,ModType
LAB_4133A2:
  RTS

TrackerPlayMod:
  BSR.W SUB_4139BA
  BRA.W TrackerCheckKeys

TrackerStopMod:
  BSR.W SUB_4139C4
  BRA.W TrackerCheckKeys

TrackerContinueSearch:
  MOVEA.L ModPointer,A0
  MOVE.L  ChipMemEnd,D0
  LEA $500(A0),A0
  CMP.L A0,D0
  BHI.W LAB_412E80
  ADDQ.B  #1,LAB_A482F0
  MOVEA.L LAB_A482F8,A0
  BRA.W LAB_412E80
SUB_4133DA:
  MOVEM.L D1-D3/A1-A6,-(A7)
  MOVEA.L A0,A6
  MOVE.L  ChipMemEnd,D1
  MOVE.B  LAB_A482F0,D0
  BEQ.W LAB_41340E
  CMPI.B  #1,D0
  BEQ.W LAB_41341E
  CMPI.B  #2,D0
  BEQ.W LAB_413480
  CMPI.B  #3,D0
  BEQ.W LAB_41353C
  MOVEQ #0,D0
  BRA.W LAB_413598
LAB_41340E:
  LEA LAB_41359E(PC),A0
  JSR PrintText
  MOVEA.L LAB_A482F8,A0
LAB_41341E:
  MOVE.B  #1,LAB_A482F0
  MOVE.L  #MOD_TAG,D3
LAB_41342C:
  JSR memSafeReadLong
  CMP.L D3,D0
  BEQ.S LAB_413450
  ADDQ.L  #2,A0
  JSR SUB_4135F8
  TST.B EscapePressed
  BNE.W LAB_413470
  CMP.L A0,D1
  BHI.S LAB_41342C
  BRA.W LAB_413470
LAB_413450:
  MOVEA.L A0,A1
  MOVEQ #2,D1
  LEA -129(A1),A0
  JSR memSafeReadByte
  TST.B D0
  BNE.W LAB_413466
  MOVEQ #3,D1
LAB_413466:
  LEA -1080(A1),A0
  MOVE.W  D1,D0
  BRA.W LAB_413598
LAB_413470:
  LEA LAB_4135BC(PC),A0
  JSR PrintText
  MOVEA.L LAB_A482F8,A0
LAB_413480:
  MOVE.L  ChipMemEnd,D1
  MOVE.B  #2,LAB_A482F0
LAB_41348E:
  JSR memSafeReadLong
  ANDI.L  #$dfdffff0,D0
  CMPI.L  #STZERO_TAG,D0
  BEQ.W LAB_4134BE
  ADDQ.L  #2,A0
  JSR SUB_4135F8
  TST.B EscapePressed
  BNE.W LAB_41352C
  CMP.L A0,D1
  BHI.S LAB_41348E
  BRA.W LAB_41352C
LAB_4134BE:
  MOVEA.L A0,A1
  MOVEQ #$1F,D2
LAB_4134C2:
  BSR.W SUB_413716
  TST.B D0
  BNE.W LAB_4134E0
  LEA $1E(A0),A0
  DBF D2,LAB_4134C2
LAB_4134D4:
  LEA 2(A1),A0
  MOVE.L  ChipMemEnd,D1
  BRA.S LAB_41348E
LAB_4134E0:
  MOVEQ #0,D1
  MOVEA.L A0,A3
  LEA -30(A0),A0
  BSR.W SUB_413674
  TST.W D0
  BEQ.S LAB_4134D4
  MOVE.W  D0,D2
  CMPI.W  #$000e,D2
  BLS.S LAB_4134D4
LAB_4134F8:
  MOVEQ #1,D0
  LEA -470(A3),A0
  CMPI.W  #$001e,D2
  BLS.W LAB_413598
  CMPI.W  #$000f,D1
  BLS.W LAB_413598
  MOVEA.L A3,A0
  JSR memSafeReadWord
  TST.B D0
  BNE.W LAB_413522
  MOVEQ #3,D0
  BRA.W LAB_413524
LAB_413522:
  MOVEQ #2,D0
LAB_413524:
  LEA -950(A3),A0
  BRA.W LAB_413598
LAB_41352C:
  LEA LAB_4135DA(PC),A0
  JSR PrintText
  MOVEA.L LAB_A482F8,A0
LAB_41353C:
  MOVE.L  ChipMemEnd,D2
  MOVE.B  #3,LAB_A482F0
LAB_41354A:
  BSR.W SUB_413716
  TST.W D0
  BNE.W LAB_41356E
  ADDQ.L  #2,A0
  JSR SUB_4135F8
  TST.B EscapePressed
  BNE.W LAB_413596
  CMP.L A0,D2
  BLS.W LAB_413596
  BRA.S LAB_41354A
LAB_41356E:
  MOVEA.L A0,A1
  BSR.W SUB_413626
  TST.W D0
  BNE.W LAB_413580
LAB_41357A:
  LEA 2(A1),A0
  BRA.S LAB_41354A
LAB_413580:
  MOVEA.L A0,A3
  LEA -30(A0),A0
  BSR.W SUB_413674
  CMPI.W  #$000e,D0
  BLS.S LAB_41357A
  MOVE.W  D0,D2
  BRA.W LAB_4134F8
LAB_413596:
  MOVEQ #0,D0
LAB_413598:
  MOVEM.L (A7)+,D1-D3/A1-A6
  RTS

LAB_41359E:
  DC.B  $D,"Pass 1 please wait",$D,"Address: ",0

LAB_4135BC:
  DC.B  $D,"Pass 2 please wait",$D,"Address: ",0

LAB_4135DA:
  DC.B  $D,"Pass 3 please wait",$D,"Address: ",0

SUB_4135F8:
  MOVE.L  D0,-(A7)
  MOVE.B  cursorEnabled,-(A7)
  SF  cursorEnabled
  MOVE.L  A0,D0
  TST.B D0
  BNE.W LAB_41361C
  MOVE.W  #9,cursorX
  JSR Print6DigitHex
LAB_41361C:
  MOVE.B  (A7)+,cursorEnabled
  MOVE.L  (A7)+,D0
  RTS

SUB_413626:
  MOVEM.L D1-D2/A0-A2,-(A7)
  LEA $86(A0),A1
  LEA LAB_A43E52,A2
  MOVEQ #$7F,D0
LAB_413636:
  CLR.L (A2)+
  DBF D0,LAB_413636
  MOVE.W  #$07ff,D1
  LEA LAB_A43E52,A2
LAB_413646:
  LEA 0(A1,D1.W),A0
  JSR memSafeReadByte
  ADD.W D0,D0
  ADDQ.W  #1,0(A2,D0.W)
  DBF D1,LAB_413646
  CMPI.W  #$0320,(A2)
  BLS.W LAB_413668
  MOVEQ #1,D0
  BRA.W LAB_41366E
LAB_413668:
  MOVEQ #0,D0
  BRA.W LAB_41366E
LAB_41366E:
  MOVEM.L (A7)+,D1-D2/A0-A2
  RTS
SUB_413674:
  MOVEM.L D2/A0,-(A7)
  MOVEQ #0,D1
  MOVEQ #0,D2
LAB_41367C:
  BSR.W SUB_4136A6
  TST.W D0
  BEQ.W LAB_41369C
  ADDQ.W  #1,D1
  CMPI.W  #2,D0
  BNE.W LAB_413692
  MOVE.W  D1,D2
LAB_413692:
  LEA -30(A0),A0
  CMPI.W  #$001f,D1
  BLS.S LAB_41367C
LAB_41369C:
  MOVE.L  D1,D0
  MOVE.L  D2,D1
  MOVEM.L (A7)+,D2/A0
  RTS
SUB_4136A6:
  MOVEM.L D1-D2/A0-A1,-(A7)
  MOVEA.L A0,A1
  LEA $16(A1),A0
  JSR memSafeReadWord
  CMPI.W  #$7fff,D0
  BHI.W LAB_413702
  TST.W D0
  BEQ.W LAB_413708
  MOVE.W  D0,D1
  LEA $18(A1),A0
  JSR memSafeReadWord
  CMPI.W  #$0040,D0
  BHI.W LAB_413702
  LEA $1C(A1),A0
  JSR memSafeReadWord
  ANDI.W  #$fffe,D0
  CMP.W D0,D1
  BCS.W LAB_413702
  MOVE.W  D0,D2
  LEA $1A(A1),A0
  JSR memSafeReadWord
  CMP.W D0,D1
  BCS.W LAB_413702
  BRA.W LAB_41370E
LAB_413702:
  MOVEQ #0,D0
  BRA.W LAB_413710
LAB_413708:
  MOVEQ #1,D0
  BRA.W LAB_413710
LAB_41370E:
  MOVEQ #2,D0
LAB_413710:
  MOVEM.L (A7)+,D1-D2/A0-A1
  RTS
SUB_413716:
  MOVEM.L D2-D4/A0-A1,-(A7)
  MOVEQ #0,D0
  JSR memSafeReadByte
  TST.W D0
  BEQ.W LAB_4137BC
  MOVEA.L A0,A1
  MOVE.W  D0,D3
  MOVE.W  D0,D2
  LEA 1(A1),A0
  JSR memSafeReadByte
  TST.W D0
  BEQ.W LAB_41374A
  CMPI.W  #$0070,D0
  BCC.W LAB_41374A
  BRA.W LAB_4137B8
LAB_41374A:
  SUBQ.W  #1,D2
  MOVEQ #0,D1
  MOVEQ #0,D4
LAB_413750:
  LEA 2(A1,D2.W),A0
  MOVEQ #0,D0
  JSR memSafeReadByte
  TST.W D0
  BNE.W LAB_413764
  ADDQ.W  #1,D4
LAB_413764:
  CMP.W D0,D1
  BCC.W LAB_41376C
  MOVE.W  D0,D1
LAB_41376C:
  DBF D2,LAB_413750
  ADDQ.W  #1,D1
  CMP.W D1,D3
  BCS.W LAB_4137B8
  CMPI.W  #1,D1
  BEQ.W LAB_4137B8
  ADD.W D4,D4
  CMP.W D4,D3
  BLS.W LAB_4137B8
  MOVEQ #0,D0
  LEA $C(A1,D3.W),A0
  MOVEQ #$7F,D2
  SUB.W D3,D2
  SUBI.W  #$000a,D2
  BEQ.W LAB_4137BA
  BPL.W LAB_4137A2
  BRA.W LAB_4137BA
LAB_4137A2:
  JSR memSafeReadByte
  TST.B D0
  BNE.W LAB_4137B8
  ADDQ.L  #1,A0
  DBF D2,LAB_4137A2
  BRA.W LAB_4137BA
LAB_4137B8:
  MOVEQ #0,D3
LAB_4137BA:
  MOVE.W  D3,D0
LAB_4137BC:
  MOVEM.L (A7)+,D2-D4/A0-A1
  RTS

LAB_4137C2:
  DC.B  "Action Replay sound-tool v1.1 ",$D,"------------------------------"
  DC.B  $D,"Now analysing (selected) Chip-memory for any sounds",$D,0

LAB_413835:
  DC.B  $D,"No song in memory found",$D,0

LAB_41384F:
  DC.B  $D,"Song located in memory at: $",0

LAB_41386D:
  DC.B  " , songtype = ",0

LAB_41387C:
  DC.B  "Soundtracker (16 samples)",$D,0
  DC.B  "Soundtracker (32 samples)",$D,0
  DC.B  "Noisetracker (32 samples)",$D,0

LAB_4138CD:
  DC.B  "songname:",0

LAB_4138D7:
  DC.B  "You can now:",$D,"F1 = play module , F2 = stop module , F3 = see m"
  DC.B  "ore details , F4 = save module",$D,"F5 = rename song , F6 = show s"
  DC.B  "ongdata , F7 = continue searching",$D,"F8 = change to st-16s , F9 "
  DC.B  "= calculate new patternlength , F10 = exit",$D,0

SUB_4139BA:
  BSR.W SUB_413A62
  BSR.W SUB_413B16
  RTS

SUB_4139C4:
  BSR.W SUB_413B1E
  BSR.W SUB_413B26
  RTS

SUB_4139CE:
  MOVEM.L D1-D2/A0-A1,-(A7)
  MOVEA.L ModPointer,A1
  MOVEQ #$E,D2
  MOVEQ #0,D1
  MOVE.W  #$0258,D1
  CMPI.W  #1,ModType
  BEQ.W LAB_4139F2
  MOVEQ #$1E,D2
  MOVE.W  #$043c,D1
LAB_4139F2:
  LEA $14(A1),A1
LAB_4139F6:
  LEA $16(A1),A0
  JSR memSafeReadWord
  ADD.L D0,D0
  ADD.L D0,D1
  LEA $1E(A1),A1
  DBF D2,LAB_4139F6
  LEA (A1),A0
  BSR.W SUB_413A1E
  MULU  #$0400,D0
  ADD.L D1,D0
  MOVEM.L (A7)+,D1-D2/A0-A1
  RTS

SUB_413A1E:
  MOVEM.L D1-D3/A0-A1,-(A7)
  MOVEA.L A0,A1
  JSR memSafeReadByte
  MOVEQ #0,D3
  MOVE.W  D0,D1
  BEQ.W LAB_413A4A
  SUBQ.W  #1,D1
LAB_413A34:
  LEA 2(A1,D1.W),A0
  JSR memSafeReadByte
  CMP.B D0,D3
  BHI.W LAB_413A46
  MOVE.B  D0,D3
LAB_413A46:
  DBF D1,LAB_413A34
LAB_413A4A:
  MOVE.W  D3,D0
  ADDQ.W  #1,D0
  MOVEM.L (A7)+,D1-D3/A0-A1
  RTS

SUB_413A54:
  MOVEM.L D0-D7/A0-A6,-(A7)
  BSR.W mt_music
  MOVEM.L (A7)+,D0-D7/A0-A6
  RTS
SUB_413A62:
  MOVEM.L D0/A0-A1,-(A7)
  SF  trainerModeActive
  LEA mt_chan1,A0
  MOVE.W  #$0190,D0
LAB_413A76:
  CLR.L (A0)+
  DBF D0,LAB_413A76
  LEA mt_chan1,A0
  MOVE.W  #1,$14(A0)
  MOVE.W  #2,$30(A0)
  MOVE.W  #4,$4C(A0)
  MOVE.W  #8,$68(A0)
  LEA mt_periods,A1
  LEA periodsdata(PC),A0
  MOVEQ #$25,D0
LAB_413AA6:
  MOVE.W  (A0)+,(A1)+
  DBF D0,LAB_413AA6
  LEA sindata(PC),A0
  LEA mt_sin,A1
  MOVEQ #$1F,D0
LAB_413AB8:
  MOVE.B  (A0)+,(A1)+
  DBF D0,LAB_413AB8
  BSR.W mt_init
  MOVEM.L (A7)+,D0/A0-A1
  RTS
periodsdata:
  DC.L  $03580328,$02fa02d0,$02a60280,$025c023a
  DC.L  $021a01fc,$01e001c5,$01ac0194,$017d0168
  DC.L  $01530140,$012e011d,$010d00fe,$00f000e2
  DC.L  $00d600ca,$00be00b4,$00aa00a0,$0097008f
  DC.L  $0087007f,$00780071
  DS.L  1
  DS.W  1
SUB_413B16:
  ST  trackerPlaying
  RTS


SUB_413B1E:
  SF  trackerPlaying
  RTS

SUB_413B26:
  BSR.W mt_end
  RTS

TrackerSeeDetails:
  LEA LAB_413C68(PC),A0
  JSR PrintText
  MOVE.L  ModPointer,D0
  JSR Print6DigitHex
  JSR PrintCrIfNotBlankLine
  MOVEA.L D0,A1
  LEA LAB_413C83(PC),A0
  JSR PrintText
  MOVEA.L A1,A0
  MOVEQ #$14,D0
  JSR SUB_413CFE
  JSR PrintCrIfNotBlankLine
  MOVEQ #$E,D1
  MOVE.W  ModType,D2
  CMPI.W  #1,D2
  BEQ.W LAB_413B76
  MOVEQ #$1E,D1
LAB_413B76:
  MOVEQ #0,D2
  LEA $14(A1),A1
LAB_413B7C:
  LEA LAB_413C8F(PC),A0
  JSR PrintText
  MOVEA.L A1,A0
  MOVEQ #$16,D0
  BSR.W SUB_413CFE
  LEA LAB_413C9B(PC),A0
  JSR PrintText
  LEA $16(A1),A0
  JSR memSafeReadWord
  ADD.W D0,D0
  JSR Print4DigitHex
  LEA LAB_413CA4(PC),A0
  JSR PrintText
  LEA $18(A1),A0
  JSR memSafeReadWord
  JSR Print4DigitHex
  LEA LAB_413CAA(PC),A0
  JSR PrintText
  LEA $1A(A1),A0
  JSR memSafeReadWord
  JSR Print4DigitHex
  LEA LAB_413CB3(PC),A0
  JSR PrintText
  LEA $1C(A1),A0
  JSR memSafeReadWord
  ADD.W D0,D0
  JSR Print4DigitHex
  JSR PrintCrIfNotBlankLine
  LEA $1E(A1),A1
  DBF D1,LAB_413B7C
  LEA LAB_413CBC(PC),A0
  JSR PrintText
  LEA (A1),A0
  JSR memSafeReadByte
  JSR Print2DigitHex
  JSR PrintCrIfNotBlankLine
  LEA LAB_413CD2(PC),A0
  JSR PrintText
  LEA (A1),A0
  BSR.W SUB_413A1E
  JSR Print2DigitHex
  JSR PrintCrIfNotBlankLine
  LEA LAB_413CE8(PC),A0
  JSR PrintText
  BSR.W SUB_4139CE
  JSR Print8DigitHex
  JSR PrintCrIfNotBlankLine
  BRA.W LAB_412EA4
  JSR PrintWTF
  RTS
LAB_413C68:
  DC.B  $D,"Scanning sound-module at:",0

LAB_413C83:
  DC.B  "songname  :",0

LAB_413C8F:
  DC.B  "samplename:",0

LAB_413C9B:
  DC.B  " length:",0

LAB_413CA4:
  DC.B  " vol:",0

LAB_413CAA:
  DC.B  " repeat:",0

LAB_413CB3:
  DC.B  " replen:",0

LAB_413CBC:
  DC.B  "length of sound    : ",0

LAB_413CD2:
  DC.B  "number of patterns : ",0

LAB_413CE8:
  DC.B  "module total length: ",0

SUB_413CFE:
  MOVEM.L D0-D1/A0,-(A7)
  TST.W D0
  BEQ.W LAB_413D24
  SUBQ.W  #1,D0
  MOVE.W  D0,D1
LAB_413D0C:
  JSR memSafeReadByte
  JSR InvalidAsciiToDot
  JSR PrintChar
  ADDQ.L  #1,A0
  DBF D1,LAB_413D0C
LAB_413D24:
  MOVEM.L (A7)+,D0-D1/A0
  RTS
ScanStart:
  LEA hardware,A5
  MOVE.W  #$ff00,$34(A5)
  SF  cursorEnabled
  ST  LAB_A480D6
  JSR Cls
  JSR SUB_414176
  MOVE.W  #$012c,LAB_A480D2
  BSR.W SUB_413E2E
ScanRestart:
  SF  cursorEnabled
  JSR Cls
  LEA txtScanInfo(PC),A0
  JSR PrintText
  BSR.W SUB_414096
  BSR.W SUB_4141B6
  BSR.W SUB_413FC2
  NOT.B LAB_A480D6
  BSR.W SUB_413FC2
  MOVEQ #0,D2
  MOVEQ #2,D3
LAB_413D8A:
  JSR GetMappedKeyCode
  BTST  #6,ciaapra
  BEQ.W ScaneMoveLeft
  BTST  #2,$16(A5)
  BEQ.W ScanMoveRight
  MOVE.W  KeyCode,D0
  CMPI.W  #F1Key,D0
  BEQ.W ScanPlaySample
  CMPI.W  #F2Key,D0
  BEQ.W ScanCalcRange
  CMPI.W  #F10Key,D0
  BEQ.W ScanExit
  CMPI.W  #CursorLeft,D0
  BEQ.W scanKeyLeft
  CMPI.W  #CursorRight,D0
  BEQ.W scanKeyRight
  CMPI.W  #$0080,D0
  BEQ.W LAB_413F1E
  CMPI.W  #$0081,D0
  BEQ.W LAB_413F32
  CMPI.W  #F3Key,D0
  BEQ.W LAB_413EB8
  CMPI.W  #F4Key,D0
  BEQ.W LAB_413E5E
  CMPI.W  #F5Key,D0
  BEQ.W ScanSaveSample
  MOVEQ #0,D2
  MOVEQ #2,D3
  SUBI.W  #$0030,D0
  CMPI.W  #4,D0
  BHI.S LAB_413D8A
  TST.W D0
  BNE.W LAB_413ED0
  BRA.W LAB_413D8A
ScanExit:
  JSR SUB_4141A6
  JSR Cls
  ST  cursorEnabled
  JSR PrintReady
  RTS
SUB_413E2E:
  CLR.L LAB_A480CA
  MOVE.L  ChipMemEnd,LAB_A480CE
  BSR.W CalcScanIncrement
  BSR.W SUB_413E48
  RTS
SUB_413E48:
  BSR.W SUB_413FC2
  NOT.B LAB_A480D6
  BSR.W SUB_413FC2
  NOT.B LAB_A480D6
  RTS
LAB_413E5E:
  MOVE.L  LAB_44F694,LAB_A480CA
  MOVE.L  LAB_44F698,LAB_A480CE
  SUBI.L  #EXT_7000,LAB_A480CA
  BPL.W LAB_413E86
  CLR.L LAB_A480CA
LAB_413E86:
  ADDI.L  #EXT_7000,LAB_A480CE
  MOVE.L  LAB_A480CE,D0
  CMP.L ChipMemEnd,D0
  BLS.W LAB_413EAA
  MOVE.L  ChipMemEnd,LAB_A480CE
LAB_413EAA:
  BSR.W SUB_4141B6
  BSR.S SUB_413E48
  BSR.W CalcScanIncrement
  BRA.W LAB_413D8A
LAB_413EB8:
  BSR.W SUB_413E2E
  BSR.W SUB_4141B6
  MOVE.W  #$012c,LAB_A480D2
  BSR.W SUB_414096
  BRA.W LAB_413D8A
LAB_413ED0:
  SUBQ.W  #1,D0
  MOVE.W  D0,D1
  LSL.W #4,D1
  MOVE.L RegSnoopAddr,A0
  LEA aud0lch(A0),A0
  LEA 0(A0,D1.W),A0
  MOVE.L  (A0),D0
  MOVE.L  D0,LAB_A480CA
  MOVEQ #0,D1
  MOVE.W  4(A0),D1
  ADD.L D1,D0
  ADD.L D1,D0
  MOVE.L  D0,LAB_A480CE
  BSR.W CalcScanIncrement
  BSR.W SUB_413E48
  BSR.W SUB_4141B6
  MOVE.W  6(A0),LAB_A480D2
  BSR.W SUB_414096
  BRA.W LAB_413D8A
ScanSaveSample:
  JSR SUB_41A28A
  BRA.W ScanRestart
LAB_413F1E:
  ADDQ.W  #2,LAB_A480D2
  BSR.W SUB_414096
  JSR Delay
  BRA.W LAB_413D8A
LAB_413F32:
  SUBQ.W  #2,LAB_A480D2
  BSR.W SUB_414096
  JSR Delay
  BRA.W LAB_413D8A
scanKeyLeft:
  MOVE.B  ShiftKey,LAB_A480D6
  MOVE.W  scanIncrement,D0
  BSR.W LAB_414104
  BSR.W SUB_413FC2
  BRA.W LAB_413D8A
scanKeyRight:
  MOVE.B  ShiftKey,LAB_A480D6
  MOVE.W  scanIncrement,D0
  BSR.W LAB_4140BC
  BSR.W SUB_413FC2
  BRA.W LAB_413D8A
ScanMoveRight:
  ST  LAB_A480D6
  BRA.W ScanMove
ScaneMoveLeft:
  SF  LAB_A480D6
ScanMove:
  JSR GetMouseDelta
  TST.W D0
  BEQ.W LAB_413FBE
  LEA LAB_4140BC,A2
  BPL.W LAB_413FAC
  LEA LAB_414104,A2
  NEG.W D0
LAB_413FAC:
  MOVE.W  D0,D1
  MOVE.W  scanIncrement,D0
LAB_413FB4:
  JSR (A2)
  SUBQ.W  #1,D1
  BPL.S LAB_413FB4
  BSR.W SUB_413FC2
LAB_413FBE:
  BRA.W LAB_413D8A
SUB_413FC2:
  MOVEM.L D0-D3/A0,-(A7)
  MOVE.W  #5,cursorY
  TST.B LAB_A480D6
  BNE.W LAB_413FEE
  MOVE.W  #$001e,cursorX
  LEA txtSampleStart(PC),A0
  MOVE.L  LAB_A480CA,D0
  BRA.W LAB_414000
LAB_413FEE:
  MOVE.W  #$0032,cursorX
  LEA txtSampleEnd(PC),A0
  MOVE.L  LAB_A480CE,D0
LAB_414000:
  JSR PrintText
  JSR Print6DigitHex
  MOVEQ #$3C,D0
  MOVEQ #$41,D1
  BSR.W clearScreenArea
  MOVE.L  LAB_A480CA,D0
  SUB.L LAB_44F694,D0
  MOVE.W  scanIncrement,D1
  DIVU  D1,D0
  CMPI.W  #$027f,D0
  BLS.W LAB_414034
  MOVE.W  #$027f,D0
LAB_414034:
  MOVEM.L D0-D3/A2,-(A7)
  LEA EXT_FFFFFFFF.W,A2
  MOVE.W  D0,D0
  MOVE.W  #$003c,D1
  MOVE.W  D0,D2
  MOVE.W  #$0041,D3
  JSR SUB_414498
  MOVEM.L (A7)+,D0-D3/A2
  MOVE.L  LAB_A480CE,D0
  SUB.L LAB_44F694,D0
  DIVU  D1,D0
  CMPI.W  #$027f,D0
  BLS.W LAB_41406C
  MOVE.W  #$027f,D0
LAB_41406C:
  MOVEM.L D0-D3/A2,-(A7)
  LEA EXT_FFFFFFFF.W,A2
  MOVE.W  D0,D0
  MOVE.W  #$003c,D1
  MOVE.W  D0,D2
  MOVE.W  #$0041,D3
  JSR SUB_414498
  MOVEM.L (A7)+,D0-D3/A2
  JSR Delay
  MOVEM.L (A7)+,D0-D3/A0
  RTS
SUB_414096:
  CLR.W cursorX
  MOVE.W  #5,cursorY
  LEA txtSamplePeriod(PC),A0
  JSR PrintText
  MOVE.W  LAB_A480D2,D0
  JSR Print4DigitHex
  RTS
LAB_4140BC:
  MOVEM.L D0-D1/A0,-(A7)
  EXT.L D0
  LEA LAB_A480CA,A0
  TST.B LAB_A480D6
  BEQ.W LAB_4140D8
  LEA LAB_A480CE,A0
LAB_4140D8:
  ADD.L D0,(A0)
  MOVE.L  LAB_A480CA,D1
  CMP.L LAB_A480CE,D1
  BCS.W LAB_4140EC
  SUB.L D0,(A0)
LAB_4140EC:
  MOVE.L  LAB_A480CE,D1
  CMP.L LAB_44F698,D1
  BLS.W LAB_4140FE
  SUB.L D0,(A0)
LAB_4140FE:
  MOVEM.L (A7)+,D0-D1/A0
  RTS
LAB_414104:
  MOVEM.L D0-D1/A0,-(A7)
  EXT.L D0
  LEA LAB_A480CA,A0
  TST.B LAB_A480D6
  BEQ.W LAB_414120
  LEA LAB_A480CE,A0
LAB_414120:
  SUB.L D0,(A0)
  MOVE.L  LAB_A480CE,D1
  CMP.L LAB_A480CA,D1
  BHI.W LAB_414134
  ADD.L D0,(A0)
LAB_414134:
  MOVE.L  LAB_A480CA,D1
  CMP.L LAB_44F694,D1
  BCC.W LAB_414146
  ADD.L D0,(A0)
LAB_414146:
  MOVEM.L (A7)+,D0-D1/A0
  RTS

txtSamplePeriod:
  DC.B  "sampleperiod: ",0

txtSampleStart:
  DC.B  "startsample: ",0

txtSampleEnd:
  DC.B  "endsample: ",0,0

SUB_414176:
  LEA hardware,A5
  CLR.W aud0vol(A5)
  CLR.W aud1vol(A5)
  CLR.W aud2vol(A5)
  CLR.W aud3vol(A5)
  MOVE.W  #$00ff,adkcon(A5)
  MOVE.W  #$0080,intena(A5)
  MOVE.W  #$000f,dmacon(A5)
  MOVE.W  #$0080,intreq(A5)
  RTS
SUB_4141A6:
  BSR.S SUB_414176
  RTS
ScanCalcRange:
  BSR.W SUB_4141B6
  BSR.W SUB_413E48
  BRA.W LAB_413D8A
SUB_4141B6:
  MOVEM.L D0-D7/A0-A6,-(A7)
  MOVE.W  #$003c,D0
  MOVE.W  #$00c7,D1
  BSR.W clearScreenArea
  BSR.W CalcScanIncrement
  MOVE.L  LAB_A480CA,LAB_44F694
  MOVE.L  LAB_A480CE,LAB_44F698
  MOVEM.L D0-D3/A2,-(A7)
  LEA EXT_FFFFFFFF.W,A2
  MOVE.W  #0,D0
  MOVE.W  #$0087,D1
  MOVE.W  #$027f,D2
  MOVE.W  #$0087,D3
  JSR SUB_414498
  MOVEM.L (A7)+,D0-D3/A2
  MOVE.L  LAB_A480CE,D2
  SUB.L LAB_A480CA,D2
  LSL.L #5,D2
  DIVU  #$0280,D2
  ANDI.L  #$0000ffff,D2
  MOVEQ #0,D5
  MOVEQ #0,D4
  MOVE.L  LAB_A480CA,D0
  MOVE.L  LAB_A480CE,D1
  LSL.L #5,D0
  LSL.L #5,D1
LAB_41422C:
  MOVE.L  D0,D6
  LSR.L #5,D6
  MOVEA.L D6,A2
  MOVE.L  D0,D6
  ADD.L D2,D6
  LSR.L #5,D6
  MOVEA.L D6,A3
  MOVE.L  A3,D7
  SUB.L A2,D7
  BNE.W LAB_414244
  MOVEQ #1,D7
LAB_414244:
  MOVE.B  (A2)+,D6
  EXT.W D6
  EXT.L D6
  ADD.L D6,D5
  CMPA.L  A2,A3
  BHI.S LAB_414244
  NEG.L D5
  DIVS  D7,D5
  ADDI.W  #$010e,D5
  LSR.W #1,D5
  TST.W D4
  BNE.W LAB_414270
  MOVE.W  D4,LAB_44F68E
  MOVE.W  D5,LAB_44F690
  BRA.W LAB_41429E
LAB_414270:
  MOVEM.L D0-D3/A2,-(A7)
  LEA EXT_FFFFFFFF.W,A2
  MOVE.W  LAB_44F68E,D0
  MOVE.W  LAB_44F690,D1
  MOVE.W  D4,D2
  MOVE.W  D5,D3
  JSR SUB_414498
  MOVEM.L (A7)+,D0-D3/A2
  MOVE.W  D4,LAB_44F68E
  MOVE.W  D5,LAB_44F690
LAB_41429E:
  MOVEQ #0,D5
  ADDQ.W  #1,D4
  ADD.L D2,D0
  CMPI.W  #$0280,D4
  BCS.S LAB_41422C
  MOVEM.L (A7)+,D0-D7/A0-A6
  RTS
ScanPlaySample:
  MOVEM.L D0-D7/A0-A6,-(A7)
  LEA hardware,A5
  MOVEQ #$30,D0
  MOVEQ #$37,D1
  BSR.W clearScreenArea
  MOVEQ #0,D5
  MOVE.L  LAB_A480CE,D0
  SUB.L LAB_A480CA,D0
  DIVU  #$0020,D0
  MOVE.W  D0,D5
  SWAP  D0
  MOVE.W  D0,D6
  MOVEQ #$F,D0
  MOVEQ #0,D7
  MOVE.L  LAB_A480CA,D1
LAB_4142E4:
  MOVE.L  D1,aud0lch(A5)
  MOVE.W  D5,aud0len(A5)
  MOVE.W  #$0040,aud0vol(A5)
  MOVE.W  LAB_A480D2,aud0per(A5)
  MOVE.W  #$8201,dmacon(A5)
LAB_414300:
  BTST  #6,ciaapra
  BEQ.W LAB_41438A
  TST.B EscapePressed
  BNE.W LAB_41438A
  BTST  #7,$1F(A5)
  BEQ.S LAB_414300
  MOVE.W  #$0080,intreq(A5)
  ADD.L D5,D1
  ADD.L D5,D1
  EXG D0,D7
  MOVE.W  #6,cursorY
  MOVEQ #$F,D0
  SUB.W D7,D0
  MULU  #5,D0
  MOVE.W  D0,cursorX
  MOVEQ #$2B,D0
  JSR PrintChar
  SUBQ.W  #6,cursorX
  BMI.W LAB_414358
  JSR PrintSpace
LAB_414358:
  EXG D0,D7
  DBF D0,LAB_4142E4
  MOVE.W  D6,aud0len(A5)
  BEQ.W LAB_41438A
LAB_414366:
  BTST  #6,ciaapra
  BEQ.W LAB_41438A
  TST.B EscapePressed
  BNE.W LAB_41438A
  BTST  #7,$1F(A5)
  BEQ.S LAB_414366
  MOVE.W  #$0080,intreq(A5)
LAB_41438A:
  CLR.W aud0vol(A5)
  ADDQ.W  #4,cursorX
  JSR PrintSpace
  MOVEM.L (A7)+,D0-D7/A0-A6
  BRA.W LAB_413D8A

txtScanInfo:
  DC.B  "Press:",$D,"F1 = hear sound    F2 = calculate new graphics  F3 = r"
  DC.B  "eset start/end/freq",$D,"F4 = expand range  F5 = save sample      "
  DC.B  "       F10 = exit",$D,"Left & Right or Mouse + left/right button t"
  DC.B  "o change start/end of sample",$D,0
  DC.B  "1,2,3,4 = actually used samples",0,0

SUB_414498:
  MOVEM.L D0-D6/A0-A3/A5,-(A7)
  LEA hardware,A5
  LEA EXT_1000,A0
  LEA 80.W,A1
  MOVE.L  A1,D4
  MULU  D1,D4
  MOVEQ #-16,D5
  AND.W D0,D5
  LSR.W #3,D5
  ADD.W D5,D4
  ADD.L A0,D4
  MOVEQ #0,D5
  SUB.W D1,D3
  ROXL.B  #1,D5
  TST.W D3
  BGE.W LAB_4144C6
  NEG.W D3
LAB_4144C6:
  SUB.W D0,D2
  ROXL.B  #1,D5
  TST.W D2
  BGE.W LAB_4144D2
  NEG.W D2
LAB_4144D2:
  MOVE.W  D3,D1
  SUB.W D2,D1
  BGE.W LAB_4144DC
  EXG D2,D3
LAB_4144DC:
  ROXL.B  #1,D5
  LEA LAB_4145A0(PC),A3
  MOVE.B  0(A3,D5.W),D5
  ADD.W D2,D2
LAB_4144E8:
  BTST  #6,dmaconr(A5)
  BNE.S LAB_4144E8
  MOVE.W  D2,bltbmod(A5)
  SUB.W D3,D2
  BGE.W LAB_4144FE
  ORI.B #$40,D5
LAB_4144FE:
  MOVE.W  D2,bltaptl(A5)
  SUB.W D3,D2
  MOVE.W  D2,bltamod(A5)
  MOVE.W  #$8000,bltadat(A5)
  MOVE.W  A2,bltbdat(A5)
  MOVE.W  #$ffff,bltafwm(A5)
  ANDI.W  #$000f,D0
  ROR.W #4,D0
  ORI.W #$0bca,D0
  MOVE.W  #$8240,dmacon(A5)
  MOVE.W  D0,bltcon0(A5)
  MOVE.W  D5,bltcon1(A5)
  MOVE.L  D4,bltcpth(A5)
  MOVE.L  D4,bltdpth(A5)
  MOVE.W  A1,bltcmod(A5)
  MOVE.W  A1,bltdmod(A5)
  LSL.W #6,D3
  ADDQ.W  #2,D3
  MOVE.W  D3,bltsize(A5)
  MOVEM.L (A7)+,D0-D6/A0-A3/A5
  RTS
clearScreenArea:
  MOVEM.L D0-D1,-(A7)
  EXG D0,D1
LAB_414554:
  MOVEM.L D0-D3/A2,-(A7)
  SUBA.L  A2,A2
  MOVE.W  #0,D0
  MOVE.W  D1,D1
  MOVE.W  #$0280,D2
  MOVE.W  D1,D3
  JSR SUB_414498(PC)
  MOVEM.L (A7)+,D0-D3/A2
  ADDQ.W  #1,D1
  CMP.W D1,D0
  BCC.S LAB_414554
  MOVEM.L (A7)+,D0-D1
  RTS

CalcScanIncrement:
  MOVE.L  D0,-(A7)
  MOVE.L  LAB_A480CE,D0
  SUB.L LAB_A480CA,D0
  DIVU  #$0280,D0
  ANDI.W  #$fffe,D0
  BNE.W LAB_414596
  MOVEQ #2,D0
LAB_414596:
  MOVE.W  D0,scanIncrement
  MOVE.L  (A7)+,D0
  RTS

LAB_4145A0:
  DC.L  $01110915,$05190d1d

SaveCIA:
  MOVEM.L D0-D1,-(A7)
  MOVE.B  $200(A0),2(A1)
  MOVE.B  $300(A0),3(A1)
  MOVE.B  #$ff,$200(A0)
  MOVE.B  #$ff,$300(A0)
  MOVE.B  (A0),(A1)
  MOVE.B  $100(A0),1(A1)
  BCLR  #0,$E00(A0)
  BCLR  #0,$F00(A0)
  MOVE.B  $400(A0),4(A1)
  MOVE.B  $500(A0),5(A1)
  MOVE.B  $600(A0),6(A1)
  MOVE.B  $700(A0),7(A1)
  BSET  #4,$E00(A0)
  BSET  #4,$F00(A0)
  MOVE.B  $400(A0),$10(A1)
  MOVE.B  $500(A0),$11(A1)
  MOVE.B  $600(A0),$12(A1)
  MOVE.B  $700(A0),$13(A1)
  SF  $14(A1)
  MOVE.L  #$00001f40,D0
LAB_A1F5FC:
  MOVE.W  #0,vhposw+hardware
  SUBQ.L  #1,D0
  BNE.S LAB_A1F5FC
  MOVEQ #0,D0
  MOVEQ #0,D1
  MOVE.B  $A00(A0),$17(A1)
  MOVE.B  $900(A0),$16(A1)
  MOVE.B  $800(A0),$15(A1)
  MOVE.B  $800(A0),D0
  MOVE.B  $A00(A0),$A(A1)
  MOVE.B  $900(A0),9(A1)
  MOVE.B  $800(A0),8(A1)
  CMP.B $15(A1),D0
  BEQ.S LAB_A1F648
  SUBQ.B  #1,D0
  CMP.B $15(A1),D0
  BEQ.S LAB_A1F648
  BSET  #0,$14(A1)
LAB_A1F648:
  MOVE.B  $800(A0),D1
  MOVE.L  #$00000fa0,D0
LAB_A1F652:
  MOVE.W  #0,vhposw+hardware
  SUBQ.L  #1,D0
  BNE.S LAB_A1F652
  CMP.B $800(A0),D1
  BNE.S LAB_A1F66A
  BSET  #1,$14(A1)
LAB_A1F66A:
  MOVEQ #2,D0
  CMPA.L  #$00bfe001,A0
  BEQ.S LAB_A1F678
  MOVE.W  #$0271,D0
LAB_A1F678:
  BTST  #1,$14(A1)
  BNE.S LAB_A1F6BC
  CLR.L LAB_A480CA
  MOVE.B  $A(A1),LAB_A480CB
  MOVE.B  9(A1),LAB_A480CC
  MOVE.B  8(A1),LAB_A480CD
  SUB.L D0,LAB_A480CA
  MOVE.B  LAB_A480CB,$A(A1)
  MOVE.B  LAB_A480CC,9(A1)
  MOVE.B  LAB_A480CD,8(A1)
LAB_A1F6BC:
  MOVE.B  $C00(A0),$C(A1)
  MOVE.B  #$80,$D(A1)
  MOVE.B  #0,$E00(A0)
  MOVE.B  #0,$F00(A0)
  CMPA.L  #$00bfe001,A0
  BNE.S LAB_A1F720
  TST.B $D00(A0)
  MOVE.B  #$ff,$300(A0)
  MOVE.B  #$20,$100(A0)
  MOVE.L  #$00000800,D1
LAB_A1F6F2:
  MOVE.W  #0,vhposw+hardware
  MOVE.B  $D00(A0),D0
  BTST  #4,D0
  BNE.S LAB_A1F70C
  SUBQ.L  #1,D1
  BNE.S LAB_A1F6F2
  MOVE.B  $D00(A0),D0
LAB_A1F70C:
  BTST  #7,D0
  BEQ.S LAB_A1F770
  BTST  #4,D0
  BEQ.S LAB_A1F770
  BSET  #4,$D(A1)
  BRA.S LAB_A1F770
LAB_A1F720:
  BCLR  #7,$100(A0)
  BSET  #3,$100(A0)
  NOP
  NOP
  BCLR  #3,$100(A0)
  MOVE.B  $D00(A0),D0
  MOVE.L  #$0000ffff,D1
LAB_A1F740:
  MOVE.W  #0,vhposw+hardware
  MOVE.B  $D00(A0),D0
  BTST  #4,D0
  BNE.S LAB_A1F75A
  SUBQ.L  #1,D1
  BNE.S LAB_A1F740
  MOVE.B  $D00(A0),D0
LAB_A1F75A:
  BTST  #7,D0
  BEQ.S LAB_A1F770
  BTST  #4,D0
  BEQ.S LAB_A1F770
  BSET  #4,$D(A1)
  BRA.W LAB_A1F770
LAB_A1F770:
  BSET  #6,$E00(A0)
  MOVE.B  #0,$500(A0)
  MOVE.B  #1,$400(A0)
  BSET  #0,$E00(A0)
  MOVE.B  #0,$C00(A0)
  MOVE.W  #$1000,D0
LAB_A1F792:
  MOVE.W  #0,vhposw+hardware
  DBF D0,LAB_A1F792
  MOVE.B  $D00(A0),D0
  BTST  #7,D0
  BEQ.S LAB_A1F7B4
  BTST  #3,D0
  BEQ.S LAB_A1F7B4
  BSET  #3,$D(A1)
LAB_A1F7B4:
  MOVE.B  #$18,$D00(A0)
  MOVE.B  #0,$E00(A0)
  MOVE.B  #5,$400(A0)
  MOVE.B  #0,$500(A0)
  MOVE.B  $D00(A0),D0
  BSET  #0,$E00(A0)
  MOVE.W  #$0800,D0
LAB_A1F7DA:
  MOVE.W  #0,vhposw+hardware
  DBF D0,LAB_A1F7DA
  MOVE.B  $D00(A0),D0
  BTST  #7,D0
  BEQ.S LAB_A1F7FC
  BTST  #0,D0
  BEQ.S LAB_A1F7FC
  BSET  #0,$D(A1)
LAB_A1F7FC:
  MOVE.B  #0,$E00(A0)
  MOVE.B  #0,$F00(A0)
  MOVE.B  #5,$600(A0)
  MOVE.B  #0,$700(A0)
  MOVE.B  $D00(A0),D0
  BSET  #0,$F00(A0)
  MOVE.W  #$0800,D0
LAB_A1F822:
  MOVE.W  #0,vhposw+hardware
  DBF D0,LAB_A1F822
  MOVE.B  $D00(A0),D0
  BTST  #7,D0
  BEQ.S LAB_A1F844
  BTST  #1,D0
  BEQ.S LAB_A1F844
  BSET  #1,$D(A1)
LAB_A1F844:
  BTST  #7,$F(A1)
  BEQ.S LAB_A1F852
  BSET  #2,$D(A1)
LAB_A1F852:
  MOVEM.L (A7)+,D0-D1
  RTS
RestoreCIA:
  MOVE.B  (A1),(A0)
  MOVE.B  1(A1),$100(A0)
  MOVE.B  2(A1),$200(A0)
  MOVE.B  3(A1),$300(A0)
  MOVE.B  #$20,$E00(A0)
  MOVE.B  #$60,$F00(A0)
  MOVE.B  4(A1),$400(A0)
  MOVE.B  5(A1),$500(A0)
  MOVE.B  6(A1),$600(A0)
  MOVE.B  7(A1),$700(A0)
  BSET  #0,$E00(A0)
  BSET  #0,$F00(A0)
  MOVE.B  $10(A1),$400(A0)
  MOVE.B  $11(A1),$500(A0)
  MOVE.B  $12(A1),$600(A0)
  MOVE.B  $13(A1),$700(A0)
  CLR.B $E00(A0)
  CLR.B $F00(A0)
  MOVE.B  $A(A1),$A00(A0)
  MOVE.B  9(A1),$900(A0)
  MOVE.B  8(A1),$800(A0)
  BTST  #0,$14(A1)
  BEQ.S LAB_A1F8FE
  MOVE.B  $17(A1),$A00(A0)
  MOVE.B  $16(A1),$900(A0)
  MOVE.B  $15(A1),$800(A0)
  TST.B $A00(A0)
  MOVE.B  $A(A1),$A00(A0)
  MOVE.B  9(A1),$900(A0)
  MOVE.B  8(A1),$800(A0)
LAB_A1F8FE:
  BTST  #1,$14(A1)
  BEQ.S LAB_A1F90C
  MOVE.B  $A00(A0),$A00(A0)
LAB_A1F90C:
  MOVE.B  $C(A1),$C00(A0)
  MOVE.B  #$7b,$D00(A0)
  MOVE.B  $D(A1),$D00(A0)
  MOVE.B  #0,$E00(A0)
  MOVE.B  #0,$F00(A0)
  MOVE.B  #$90,ciaaicr
  TST.B ciaaicr
  TST.B ciabicr
  RTS
PrepCIA:
  MOVE.B  #3,ciaaddra
  MOVE.B  #0,ciaacra
  MOVE.B  #8,ciaacrb
  MOVE.B  #$7f,ciaaicr
  MOVE.B  #$88,ciaaicr
  MOVE.B  #$c0,ciabddra
  MOVE.B  #$ff,ciabddrb
  MOVE.B  #$7f,ciabicr
  MOVE.B  #$ff,ciabprb
  MOVE.B  #$87,ciabprb
  MOVE.B  #$ff,ciabprb
  RTS
SUB_A1F99A:
  MOVEM.L D2-D4/A1-A2,-(A7)
  MOVEQ #0,D0
  BRA.S LAB_A1F9B0
SUB_A1F9A2:
  MOVEM.L D2-D4/A1-A2,-(A7)
  MOVEQ #0,D0
  SUBA.L  A0,A0
  MOVE.L  ChipMemEnd,D2
LAB_A1F9B0:
  LSR.L #2,D2
LAB_A1F9B2:
  MOVEA.L A0,A1
  MOVE.L  (A0)+,D3
  MOVEQ #4,D4
LAB_A1F9B8:
  SUBQ.L  #1,D2
  BEQ.S LAB_A1F9C6
  CMP.L (A0),D3
  BNE.S LAB_A1F9C6
  ADDQ.L  #4,A0
  ADDQ.L  #4,D4
  BRA.S LAB_A1F9B8
LAB_A1F9C6:
  CMP.L D4,D0
  BLS.S LAB_A1F9D6
LAB_A1F9CA:
  TST.L D2
  BNE.S LAB_A1F9B2
  MOVEA.L A2,A0
  MOVEM.L (A7)+,D2-D4/A1-A2
  RTS
LAB_A1F9D6:
  MOVE.L  D3,D1
  MOVE.L  D4,D0
  MOVEA.L A1,A2
  BRA.S LAB_A1F9CA
backupMfmBuffer:
  MOVEM.L D0-D1/A0-A1,-(A7)
  SF  trainerModeActive
  MOVE.W  #$085f,D0
  LEA ChipRamSave2,A1
LAB_A1F9F2:
  MOVE.L  (A0)+,D1
  if arhardware=1
  MOVEP.L D1,(A1)
  ADDQ.W  #8,A1
  else
  MOVE.L  D1,(A1)+
  endc
  DBF D0,LAB_A1F9F2
  MOVE.W  #(DiskBitmap-mt_sin+3)/4-1,D0
LAB_A1FA00:
  MOVE.L  (A0)+,(A1)+
  DBF D0,LAB_A1FA00
  MOVEM.L (A7)+,D0-D1/A0-A1
  ST  currTrackNo
  ST  LAB_A4824A
  SF  TrackBufferModified
  SF  LAB_A4824C
  ST  LAB_A4824D
  SF  LAB_A48333
  SF  LAB_A48335
  MOVE.W  #$8002,intreq+hardware
  RTS
restoreMfmBuffer:
  MOVEM.L D1-D2/A0-A1,-(A7)
  TST.B LAB_A48333
  BEQ.S LAB_A1FA52
  JSR SUB_A21AE4
  BMI.S LAB_A1FA58
LAB_A1FA52:
  JSR SUB_A2084E
LAB_A1FA58:
  MOVE.W  #$085f,D2
  LEA ChipRamSave2,A1
LAB_A1FA62:
  if arhardware=1
  MOVEP.L 0(A1),D1
  ADDQ.L  #8,A1
  else
  MOVE.L  (A1)+,D1
  endc
  MOVE.L  D1,(A0)+
  DBF D2,LAB_A1FA62
  MOVE.W  #(DiskBitmap-mt_sin+3)/4-1,D2
LAB_A1FA72:
  MOVE.L  (A1)+,(A0)+
  DBF D2,LAB_A1FA72
  JSR SUB_A1FB1A
  MOVEM.L (A7)+,D1-D2/A0-A1
  TST.W D0
  RTS
selectDrive:
  SF  LAB_A48334
  MOVE.W  D0,-(A7)
  CLR.W D0
  MOVE.B  currDriveNo,D0
  ADDQ.B  #3,D0
  ORI.B #$78,ciabprb
  BCLR  D0,ciabprb
  MOVE.W  (A7)+,D0
  RTS
deselectAllDrives:
  ORI.B #$78,ciabprb
  RTS
SUB_A1FAB4:
  MOVE.B  currDriveNo,D0
  BSET  D0,LAB_A4824C
  BCLR  #7,ciabprb
  BSR.S deselectAllDrives
  BSR.S selectDrive
  NOP
  NOP
  BSR.W SUB_A1FB6C
  MOVEQ #$10,D0
LAB_A1FADA:
  JSR Delay
  BTST  #5,ciaapra
  BEQ.S LAB_A1FAF0
  SUBQ.L  #1,D0
  BPL.S LAB_A1FADA
  BSR.S deselectAllDrives
  MOVEQ #-1,D0
  TST.W D0
  RTS
LAB_A1FAF0:
  MOVEQ #0,D0
  BSR.S deselectAllDrives
  TST.W D0
  RTS
SUB_A1FAF8:
  MOVE.W  D0,-(A7)
  MOVE.B  currDriveNo,D0
  BCLR  D0,LAB_A4824C
  MOVE.W  (A7)+,D0
  BSET  #7,ciabprb
  BSR.S deselectAllDrives
  BSR.W selectDrive
  BSR.S deselectAllDrives
  RTS
SUB_A1FB1A:
  MOVE.L  D0,-(A7)
  MOVE.B  currDriveNo,-(A7)
  MOVEQ #3,D0
LAB_A1FB24:
  MOVE.B  D0,currDriveNo
  BSR.S SUB_A1FAF8
  SUBQ.W  #1,D0
  BPL.S LAB_A1FB24
  MOVE.B  (A7)+,currDriveNo
  MOVE.L  (A7)+,D0
  ST  LAB_A48334
  RTS
SUB_A1FB40:
  MOVE.B  #$18,ciabtbhi
  MOVE.B  #$20,ciabtblo
  MOVE.B  #$99,ciabcrb
LAB_A1FB58:
  BTST  #0,ciabcrb
  BNE.S LAB_A1FB58
  MOVE.B  #$80,ciabcrb
  RTS
SUB_A1FB6C:
  MOVE.B  #$50,ciabtbhi
  MOVE.B  #0,ciabtblo
  MOVE.B  #$99,ciabcrb
LAB_A1FB84:
  BTST  #0,ciabcrb
  BNE.S LAB_A1FB84
  MOVE.B  #$80,ciabcrb
  RTS

StepHeadsOut:
  BSR.W selectDrive
  BCLR  #1,ciabprb
  BCLR  #0,ciabprb
  NOP
  NOP
  BSET  #0,ciabprb
  BSR.W deselectAllDrives
  BSR.S SUB_A1FB40
  BSR.S SUB_A1FBEE
  RTS
stepHeadsIn:
  BSR.W selectDrive
  BSET  #1,ciabprb
  BCLR  #0,ciabprb
  NOP
  NOP
  BSET  #0,ciabprb
  BSR.W deselectAllDrives
  BSR.W SUB_A1FB40
  BSR.S SUB_A1FBFA
  RTS
SUB_A1FBEE:
  MOVE.W  D0,-(A7)
  MOVE.B  #2,D0
  BSR.S SUB_A1FC06
  MOVE.W  (A7)+,D0
  RTS
SUB_A1FBFA:
  MOVE.W  D0,-(A7)
  MOVE.B  #$fe,D0
  BSR.S SUB_A1FC06
  MOVE.W  (A7)+,D0
  RTS
SUB_A1FC06:
  MOVEM.L D1/A0,-(A7)
  LEA LAB_A48250,A0
  MOVEQ #0,D1
  MOVE.B  currDriveNo,D1
  ADD.B D0,0(A0,D1.W)
  MOVEM.L (A7)+,D1/A0
  RTS
SUB_A1FC22:
  MOVEM.L D0-D1/A0-A1,-(A7)
  LEA LAB_A48250,A0
  LEA oldTrackPositions,A1
  MOVEQ #0,D0
  MOVEQ #0,D1
  MOVE.B  currDriveNo,D0
  MOVE.W  D0,D1
  ADDQ.W  #3,D1
  CLR.B 0(A0,D0.W)
LAB_A1FC44:
  BSR.W selectDrive
  BTST  #4,ciaapra
  BEQ.S LAB_A1FC58
  BSR.W stepHeadsIn
  BRA.S LAB_A1FC44
LAB_A1FC58:
  BSR.W deselectAllDrives
  MOVE.B  0(A0,D0.W),0(A1,D0.W)
  NEG.B 0(A1,D0.W)
  CLR.B 0(A0,D0.W)
  MOVEM.L (A7)+,D0-D1/A0-A1
  RTS
StepToTrack:
  MOVEM.L D0-D4/A0-A1,-(A7)
  LEA LAB_A48250,A0
  LEA oldTrackPositions,A1
  MOVEQ #0,D1
  MOVEQ #0,D2
  MOVE.B  currDriveNo,D1
  MOVE.W  D1,D2
  ADDQ.W  #3,D2
  CMPI.B  #$ff,0(A1,D1.W)
  BNE.S LAB_A1FC98
  BSR.S SUB_A1FC22
LAB_A1FC98:
  TST.W D0
  BEQ.S FindTrack0_2
  MOVEQ #0,D3
  MOVEQ #0,D4
  MOVE.B  0(A0,D1.W),D3
  MOVE.B  D0,D4
  LSR.W #1,D3
  LSR.W #1,D4
  SUB.W D3,D4
  BEQ.S LAB_A1FCC8
  SUBQ.W  #1,D4
  BPL.S LAB_A1FCC0
  ADDQ.W  #2,D4
  NEG.W D4
LAB_A1FCB6:
  BSR.W stepHeadsIn
  DBF D4,LAB_A1FCB6
  BRA.S LAB_A1FCC8
LAB_A1FCC0:
  BSR.W StepHeadsOut
  DBF D4,LAB_A1FCC0
LAB_A1FCC8:
  ANDI.B  #$fb,ciabprb
  ANDI.B  #1,D0
  BEQ.S LAB_A1FCDA
  BSR.S SUB_A1FD04
  BRA.S LAB_A1FCDC
LAB_A1FCDA:
  BSR.S SUB_A1FD00
LAB_A1FCDC:
  MOVEM.L (A7)+,D0-D4/A0-A1
  RTS
FindTrack0_2:
  BSR.W selectDrive
  BTST  #4,ciaapra
  BEQ.S LAB_A1FCFA
  BSR.W deselectAllDrives
  BSR.W stepHeadsIn
  BRA.S FindTrack0_2
LAB_A1FCFA:
  CLR.B 0(A0,D1.W)
  BRA.S LAB_A1FCC8
SUB_A1FD00:
  MOVEQ #4,D0
  BRA.S LAB_A1FD0A
SUB_A1FD04:
  MOVEQ #0,D0
  BRA.W LAB_A1FD0A
LAB_A1FD0A:
  MOVEQ #0,D1
  MOVE.B  currDriveNo,D1
  LEA DiskCoderFlags,A1
  TST.B 0(A1,D1.W)
  BEQ.S LAB_A1FD46
  LEA LAB_A48250,A1
  MOVE.B  0(A1,D1.W),D2
  LSL.W #2,D1
  LEA DiskCoderValues,A1
  LSR.B #1,D2
  BNE.S LAB_A1FD3A
  EORI.B  #4,D0
  BRA.S LAB_A1FD46
LAB_A1FD3A:
  MOVE.L  0(A1,D1.W),D3
  BTST  D2,D3
  BEQ.S LAB_A1FD46
  EORI.B  #4,D0
LAB_A1FD46:
  ANDI.B  #$fb,ciabprb
  BSR.W SUB_A1FB40
  OR.B  D0,ciabprb
  BSR.W SUB_A1FB40
  RTS
readRawMfmTrack:
  MOVEM.L D1-D2/A0-A3/A5,-(A7)
  MOVE.L  D0,D1
  BSR.W checkDiskBlockDone
  BMI.W RawMfmReadDone
  MOVEQ #-8,D0
  TST.B EscapePressed
  BNE.W RawMfmReadDone
  LEA hardware,A5
  BSR.W SUB_A2084E
  BMI.W RawMfmReadDone
  MOVE.B  currDriveNo,D0
  BTST  D0,LAB_A4824C
  BNE.S .3
  BSR.W SUB_A1FAB4
  BMI.W RawMfmReadDone
.3:
  MOVE.L  D1,D0
  BSR.W StepToTrack
  BSR.W selectDrive
  MOVE.W  #$8210,$96(A5)
  MOVE.W  mfmSync,$7E(A5)
  MOVE.W  #$77f0,$9E(A5)
  MOVE.W  #$9500,$9E(A5)
  MOVE.W  #$4000,$24(A5)

  MOVE.L  #EXT_7000,$20(A5)
  MOVE.W  #2,$9C(A5)
  MOVE.W  mfmLength,D2
  SUB.W #1,D2
  OR.W    #$8000,D2
  MOVE.W  D2,$24(A5)
  MOVE.W  D2,$24(A5)
  MOVE.L  #$40,D2
  MOVE.B  #0,ciaatodlo

.2
  TST.B EscapePressed
  BNE.W RawMfmAbort

  CMP.B #2,ciaatodlo
  BNE.S .2

  MOVE.B  #0,ciaatodlo
  SUBQ.L  #1,D2
  BEQ RawMfmReadErr

  MOVE.W $1E(A5),D0
  BTST  #1,D0
  BEQ.S .2

  MOVE.W  #$4000,$24(A5)
  MOVE.W  mfmSync,(A2)+
  LEA EXT_7000,A0
  MOVE.W mfmLength,D1
  SUBQ.W #2,D1
.copy
  MOVE.W (A0)+,(A2)+
  DBF D1,.copy
  BRA.S RawMfmReadOk
RawMfmReadErr:
  MOVEQ #-2,D0    ;read error
  BRA.S RawMfmReadDone
RawMfmAbort:
  MOVEQ #-8,D0
  BRA.S RawMfmReadDone
RawMfmReadOk:
  MOVEQ #0,D0
RawMfmReadDone:
  TST.W D0
  MOVEM.L (A7)+,D1-D2/A0-A3/A5
  RTS

readPdosTrack:
  MOVEM.L D1-D2/A0-A3/A5,-(A7)
  MOVE.L  D0,D1
  BSR.W checkDiskBlockDone
  BMI.W PdosReadDone
  MOVEQ #-8,D0
  TST.B EscapePressed
  BNE.W PdosReadDone
  LEA hardware,A5
  BSR.W SUB_A2084E
  BMI.W PdosReadDone
  MOVE.B  currDriveNo,D0
  BTST  D0,LAB_A4824C
  BNE.S .3
  BSR.W SUB_A1FAB4
  BMI.W PdosReadDone
.3:
  MOVE.L  D1,D0
  BSR.W StepToTrack
  BSR.W selectDrive
  MOVE.W  #$8210,$96(A5)
  MOVE.W  #$1448,$7E(A5)
  MOVE.W  #$77f0,$9E(A5)
  MOVE.W  #$9500,$9E(A5)
  MOVE.W  #$4000,$24(A5)

  MOVE.L  A0,$20(A5)
  MOVE.W  #2,$9C(A5)
  MOVE.W  #$998b,$24(A5)
  MOVE.W  #$998b,$24(A5)
  MOVE.L  #$40,D2
  MOVE.B  #0,ciaatodlo
.2
  TST.B EscapePressed
  BNE.W PdosAbort

  CMP.B #2,ciaatodlo
  BNE.S .2

  MOVE.B  #0,ciaatodlo
  SUBQ.L  #1,D2
  BEQ PdosReadErr

  MOVE.W $1E(A5),D0
  BTST  #1,D0
  BEQ.S .2

  MOVE.W  #$4000,$24(A5)
  BRA.S PdosReadOk
PdosReadErr:
  MOVEQ #-2,D0    ;read error
  BRA.S PdosReadDone
PdosAbort:
  MOVEQ #-8,D0
  BRA.S PdosReadDone
PdosReadOk:
  MOVEQ #0,D0
PdosReadDone:
  TST.W D0
  MOVEM.L (A7)+,D1-D2/A0-A3/A5
  RTS

readTrack:
  MOVEM.L D1-D2/A0-A3/A5,-(A7)
  MOVE.L  D0,D1
  BSR.W checkDiskBlockDone
  BMI.W LAB_A1FE96
  MOVEQ #-8,D0
  TST.B EscapePressed
  BNE.W LAB_A1FE96
  LEA hardware,A5
  BSR.W SUB_A2084E
  BMI.W LAB_A1FE96
  MOVE.B  currDriveNo,D0
  BTST  D0,LAB_A4824C
  BNE.S LAB_A1FD9C
  BSR.W SUB_A1FAB4
  BMI.W LAB_A1FE96
LAB_A1FD9C:
  MOVE.L  D1,D0
  BSR.W StepToTrack
  BSR.W selectDrive
  MOVE.W  #$8210,$96(A5)
  MOVE.W  #$4489,$7E(A5)
  MOVE.W  #$77f0,$9E(A5)
  MOVE.W  #$9500,$9E(A5)
  MOVE.W  #$4000,$24(A5)
  LEA $400(A0),A1
  MOVE.L  #$aaaaaaaa,(A1)+
  MOVE.W  #$4489,(A1)+
  MOVEA.L A1,A2
  MOVEQ #$A,D0
LAB_A1FDD6:
  CLR.L (A2)
  LEA $440(A2),A2
  DBF D0,LAB_A1FDD6
  CLR.W $3200-2(a1)

  MOVE.L  A1,$20(A5)
  MOVE.W  #2,$9C(A5)
  MOVE.W  #$9900,$24(A5)
  MOVE.W  #$9900,$24(A5)
  MOVEQ #$7F,D2
  MOVE.B  #0,ciaatodlo
LAB_A1FDFC:
  TST.B EscapePressed
  BNE.W LAB_A1FE90
  BTST  #1,$1F(A5)
  BNE LAB_A1FE8C

  CMP.B #2,ciaatodlo
  BNE.S .1

  MOVE.B  #0,ciaatodlo
  SUBQ.L  #1,D2
  BEQ LAB_A1FE8C

.1
  LEA $2EC0(A1),A2  ;end of track
  MOVEQ #$A,D0
LAB_A1FE18:
  LEA -1088(A2),A2  ;1 sector back
  TST.W 2(A2)
  BNE.S LAB_A1FE28  ;some data here
  DBF D0,LAB_A1FE18
  BRA.S LAB_A1FDFC  ;no data
LAB_A1FE28:
  CMPI.W  #$4489,(A2)
  BNE.S LAB_A1FE38  ;not found a sync

  LEA $2A80(A1),A3  ;last sector
  CMPA.L  A2,A3
  BEQ.S LAB_A1FE72
  BRA.S LAB_A1FDFC
LAB_A1FE38:

  TST.W $3200-2(a1)   ;whole track already read (winuae turbo mode)
  BEQ.S .1
.2
  BTST  #1,$1F(A5)
  BEQ.S .2

  BRA.S LAB_A1FE94
.1
  MOVE.W  #$4000,$24(A5)
  MOVE.L  #$aaaaaaaa,-6(A2)
  MOVE.W  #$4489,-2(A2)
  MOVE.L  A2,D0
  SUB.L A1,D0
  MOVE.L  #$00002ec2,D1
  SUB.L D0,D1
  LSR.W #1,D1
  BSET  #$F,D1
  MOVE.L  D1,D0
  MOVE.L  A2,$20(A5)
  MOVE.W  #2,$9C(A5)
  MOVE.W  D1,$24(A5)
  MOVE.W  D1,$24(A5)
LAB_A1FE72:
  MOVE.L  #$00014000,D0
  MOVE.B  #0,ciaatodlo
LAB_A1FE78:
  TST.B EscapePressed
  BNE.S LAB_A1FE90
  BTST  #1,$1F(A5)
  BNE.S LAB_A1FE94

  CMP.B #2,ciaatodlo
  BNE.S LAB_A1FE78

  MOVE.B  #0,ciaatodlo

  SUBQ.L  #1,D0
  BNE.S LAB_A1FE78
LAB_A1FE8C:
  MOVEQ #-2,D0    ;read error
  BRA.S LAB_A1FE96
LAB_A1FE90:
  MOVEQ #-8,D0
  BRA.S LAB_A1FE96
LAB_A1FE94:
  MOVEQ #0,D0
LAB_A1FE96:
  TST.W D0
  MOVEM.L (A7)+,D1-D2/A0-A3/A5
  RTS
decodeAdosSectorMfm:
  MOVEM.L D1-D7/A0-A3,-(A7)
  MOVE.L  #$55555555,D6
  MOVEM.L A0-A1,-(A7)
  TST.B LAB_A4824D
  BEQ.S LAB_A1FECC
;calculate data checksum
  LEA $40(A0),A0
  MOVE.W  #$00ff,D0
  MOVEQ #0,D5
LAB_A1FEBE:
  MOVE.L  (A0)+,D1
  EOR.L D1,D5
  DBF D0,LAB_A1FEBE
  AND.L D6,D5
  MOVEM.L (A7),A0-A1
LAB_A1FECC:
  LEA $21E(A1),A2
  LEA $43E(A0),A1
  LEA $23E(A0),A0
  MOVE.W  #$1dd8,D0
  MOVE.W  #2,D1
  MOVE.L  #$ffffffff,D2
  MOVE.W  #$4001,D3
  BSR.W SUB_A20290
  MOVEM.L (A7)+,A0-A1
  MOVEA.L A1,A3
  TST.B LAB_A4824D
  BEQ.S LAB_A1FF0E
  MOVEQ #0,D7
  LEA 8(A0),A2

;calculate sector header checksum
  MOVEQ #9,D0
LAB_A1FF04:
  MOVE.L  (A2)+,D1
  EOR.L D1,D7
  DBF D0,LAB_A1FF04
  AND.L D6,D7
LAB_A1FF0E:
  MOVEQ #7,D0
LAB_A1FF10:
  MOVE.L  (A0)+,D1
  MOVE.L  (A0)+,D2
  CMPI.W  #1,D0
  BLS.W LAB_A1FF1C
LAB_A1FF1C:
  AND.L D6,D1
  AND.L D6,D2
  LSL.L #1,D1
  OR.L  D2,D1
  MOVE.L  D1,(A1)+
  DBF D0,LAB_A1FF10
  TST.B LAB_A4824D
  BEQ.S LAB_A1FF4C
  MOVEQ #-9,D0        ;not a dos track error
  CMPI.B  #$ff,4(A3)
  BNE.S LAB_A1FF56
  MOVEQ #-3,D0        ;header checksum error
  CMP.L $18(A3),D7
  BNE.S LAB_A1FF66
  MOVEQ #-4,D0        ;data checksum error
  CMP.L $1C(A3),D5
  BNE.S LAB_A1FF74
LAB_A1FF4C:
  MOVEQ #0,D0
LAB_A1FF4E:
  TST.W D0
  MOVEM.L (A7)+,D1-D7/A0-A3
  RTS
LAB_A1FF56:
  TST.B LAB_A48335
  BEQ.S LAB_A1FF4E
  MOVE.B  #$ff,4(A3)
  BRA.S LAB_A1FF4C
LAB_A1FF66:
  TST.B LAB_A48335
  BEQ.S LAB_A1FF4E
  MOVE.L  D7,$18(A3)
  BRA.S LAB_A1FF4C
LAB_A1FF74:
  TST.B LAB_A48335
  BEQ.S LAB_A1FF4E
  MOVE.L  D5,$1C(A3)
  BRA.S LAB_A1FF4C

findRamdiskSectors
  MOVEM.L D1-D3/A2,-(A7)
  LEA mfmSectorAddresses,A2
  MOVE.L D0,D1
  MULU #$1600,D1
  ADD.L newRamdiskAddr,D1

  MOVE.L RegSnoopAddr,D3
  CMP.L newRamdiskAddr,D3
  BLT.S .0

  CMP.L D3,D1
  BLE.S .0
  ADD.L #$200,D1
.0

  MOVEQ #11-1,D2
.1
  CMP.L D3,D1
  BNE.S .2
  ADD.L #$200,D1
.2
  MOVE.L D1,(A2)+
  ADD.L #512,D1
  DBF D2,.1
  MOVEM.L (A7)+,D1-D3/A2
  RTS


findPdosMfmSectors:
  MOVEM.L D1-D3/A1-A3,-(A7)
  MOVE.L  A0,-(A7)
  LEA mfmSectorAddresses,A2
  MOVEQ #$B,D1
.1
  CLR.L (A2)+
  DBF D1,.1

  LEA mfmSectorAddresses,A2
  MOVEQ #$B,D1
.2
  MOVE.W #$200,D0
.4
  CMP.W #$4891,(a0)+
  BEQ.S .3
  DBF D0,.4
  MOVEQ #-2,D0
  BRA .err
.3
  MOVE.L (A0)+,D0
  ANDI.L  #$55555555,D0
  LSL.L #1,D0
  MOVE.L (A0)+,D2
  ANDI.L  #$55555555,D2
  OR.L D2,D0
  MOVE.L D1,-(A7)
  MOVE.L pdosKey,D1
  BSET #31,D1
  EOR.L D1,D0

  MOVEA.L A0,A1
  MOVE.W  #$00ff,D2
  MOVEQ #0,D4
.crc:
  MOVE.L  (A1)+,D1
  EOR.L D1,D4
  DBF D2,.crc
  AND.L #$55555555,D4
  MOVE.L D4,D1
  SWAP D1
  ADD.W D1,D1
  OR.W D1,D4
  MOVE.L (A7)+,D1

  TST.L pdosKey
  BNE.S .haskey

  ;brute force the disk key
  MOVEQ #0,D2
  MOVE.B pdosTrack,D2
  SWAP D2
  MOVE.W D4,D2
  EOR.L D0,D2
  BCLR #31,D2
  MOVE.L D2,pdosKey
  MOVEM.L D0/A0,-(A7)
  MOVE.W #29,cursorX
  LEA .pdosKeyText(PC),A0
  JSR PrintText
  MOVE.L D2,D0
  JSR Print8DigitHex
  CLR.W cursorX
  MOVEM.L (A7)+,D0/A0
.haskey

  MOVE.L D0,D2
  MOVEQ #-4,D0        ;data checksum error
  CMP.W D2,D4
  BNE.S .err

  SWAP D2
  MOVEQ #-5,D0
  CMP.B pdosTrack,D2  ;track number is not right
  BNE.S .err

  ROR.W #8,D2
  AND.W #$FF,D2
  MOVEQ #-5,D0
  CMPI.W  #11,D2      ;sector number is invalid
  BHI.S .err

  ADD.W D2,D2
  ADD.W D2,D2

  MOVEQ #-5,D0
  TST.L 0(A2,D2.W)    ;sector duplicated
  BNE.S .err

  MOVE.L  A0,0(A2,D2.W)

  MOVE.W #$7F,D0
  MOVE.L pdosKey,D4

.5
  MOVE.L (A0),D2
  ANDI.L  #$55555555,D2
  LSL.L #1,D2
  MOVE.L $200(A0),D3
  ANDI.L  #$55555555,D3
  OR.L D3,D2
  EOR.L D2,D4
  MOVE.L D4,(A0)+
  MOVE.L D2,D4
  DBF D0,.5

  DBF D1,.2

  MOVEQ #0,D0
.err
  TST.W D0
  MOVEA.L (A7)+,A0
  MOVEM.L (A7)+,D1-D3/A1-A3
  RTS

.pdosKeyText:
  DC.B "Disk key: ",0
  even

findMfmSectors:
  MOVEM.L D1-D2/A1-A3,-(A7)
  MOVE.L  A0,-(A7)
  LEA mfmSectorAddresses,A2
  MOVEQ #$A,D1
LAB_A1FF90:
  CLR.L (A2)+
  DBF D1,LAB_A1FF90
  MOVEA.L A0,A1
  LEA $400(A0),A0
  LEA mfmSectorAddresses,A2
  MOVEQ #$A,D1
LAB_A1FFA4:
  MOVEA.L A1,A3
  MOVEQ #0,D2
.3:
  CMP.W #$4489,4(a0)
  BNE.S .1
  CMP.W #$4489,6(a0)
  BNE.S .1
  BRA.S .2
.1:
  LEA 2(A0),a0
  ADDQ.L #2,D2
  CMP.W #$340,D2
  BNE.S .3
  MOVEQ #-2,D0
  BRA.S LAB_A1FFDA
.2
  BSR.W decodeAdosSectorMfm
  BMI.S LAB_A1FFDA
  LEA $440(A0),A0
  LEA $220(A1),A1
  MOVEQ #0,D2
  MOVE.B  6(A3),D2
  MOVEQ #-5,D0
  CMPI.W  #$000a,D2
  BHI.S LAB_A1FFDA
  LSL.W #2,D2
  MOVEQ #-5,D0
  TST.L 0(A2,D2.W)
  BNE.S LAB_A1FFDA
  LEA $20(A3),A3
  MOVE.L  A3,0(A2,D2.W)
  DBF D1,LAB_A1FFA4
  MOVEQ #0,D0
LAB_A1FFDA:
  TST.W D0
  MOVEA.L (A7)+,A0
  MOVEM.L (A7)+,D1-D2/A1-A3
  RTS
SUB_A1FFE4:
  MOVEM.L D0-D5/A0-A3,-(A7)
  MOVEM.L A0-A1,-(A7)
  LEA $20(A0),A0
  LEA $40(A1),A1
  MOVE.W  #$0200,D0
  BSR.W SUB_A200A6
  MOVEM.L (A7),A2-A3
  MOVEM.L (A7),A0-A1
  MOVE.L  #$aaaaaaaa,(A1)+
  MOVE.L  #$44894489,(A1)+
  LEA 4(A0),A0
  MOVEQ #4,D5
LAB_A20016:
  BSR.S SUB_A2006C
  DBF D5,LAB_A20016
  LEA 8(A3),A3
  MOVEQ #0,D1
  MOVEQ #9,D0
LAB_A20024:
  MOVE.L  (A3)+,D2
  EOR.L D2,D1
  DBF D0,LAB_A20024
  ANDI.L  #$55555555,D1
  MOVE.L  D1,$18(A2)
  LEA $10(A3),A3
  MOVEQ #0,D1
  MOVE.W  #$00ff,D0
LAB_A20040:
  MOVE.L  (A3)+,D2
  EOR.L D2,D1
  DBF D0,LAB_A20040
  ANDI.L  #$55555555,D1
  MOVE.L  D1,$1C(A2)
  BSR.S SUB_A2006C
  BSR.S SUB_A2006C
  BSR.W SUB_A20118
  MOVEM.L (A7)+,A0-A1
  LEA $240(A1),A1
  BSR.W SUB_A20118
  MOVEM.L (A7)+,D0-D5/A0-A3
  RTS
SUB_A2006C:
  MOVE.L  (A0)+,D0
SUB_A2006E:
  MOVE.L  D0,D3
  LSR.L #1,D0
  BSR.S SUB_A2007A
  MOVE.L  D3,D0
  BSR.S SUB_A2007A
  RTS

SUB_A2006C_2:
  MOVE.L (A0)+,D0
  EOR.L D3,D0
  MOVE.L  D0,D3
  LSR.L #1,D0
  BSR.S SUB_A2007A
  LEA $200-4(A1),A1
  MOVE.L  D3,D0
  BSR.S SUB_A2007A
  LEA -$200(A1),A1
  RTS
SUB_A2007A:
  ANDI.L  #$55555555,D0
  MOVE.L  D0,D2
  EORI.L  #$55555555,D2
  MOVE.L  D2,D1
  LSL.L #1,D2
  LSR.L #1,D1
  BSET  #$1F,D1
  AND.L D2,D1
  OR.L  D1,D0
  BTST  #0,-1(A1)
  BEQ.S LAB_A200A2
  BCLR  #$1F,D0
LAB_A200A2:
  MOVE.L  D0,(A1)+
  RTS
SUB_A200A6:
  MOVEM.L D0-D4/A2-A4,-(A7)
  MOVE.W  D0,D4
  LSL.W #2,D0
  ORI.W #8,D0
  MOVEM.L A0-A1,-(A7)
  MOVE.W  D0,D3
  MOVEA.L A1,A2
  MOVEA.L A0,A1
  MOVE.W  #$1db1,D0
  MOVE.W  #0,D1
  MOVE.L  #$ffffffff,D2
  BSR.W SUB_A20290
  MOVEM.L (A7),A0-A1
  MOVEA.L A1,A2
  MOVE.W  #$2d8c,D0
  BSR.W SUB_A20290
  MOVEM.L (A7),A0-A1
  ADDA.W  D4,A0
  ADDA.W  D4,A1
  ADDA.W  D4,A1
  SUBQ.W  #2,A0
  SUBQ.W  #2,A1
  MOVEA.L A1,A2
  MOVEA.L A0,A1
  MOVE.W  #$0db1,D0
  MOVE.W  #$1002,D1
  BSR.W SUB_A20290
  MOVEM.L (A7),A0-A1
  ADDA.W  D4,A1
  MOVEA.L A1,A2
  MOVE.W  #$1d8c,D0
  MOVE.W  #0,D1
  BSR.W SUB_A20290
  MOVEM.L (A7)+,A0-A1
  MOVEM.L (A7)+,D0-D4/A2-A4
  RTS
SUB_A20118:
  BTST  #0,-1(A1)
  BNE.S LAB_A2012C
  BTST  #6,(A1)
  BNE.S LAB_A2012C
  BSET  #7,(A1)
  RTS
LAB_A2012C:
  BCLR  #7,(A1)
  RTS
SUB_A20132:
  CMP.B #4,currDriveNo
  BEQ mfm1
  TST.B mfmRead
  BNE mfm1

  TST.B pdosRead
  BNE makePdosTrack

  MOVEM.L D0-D1/A0-A2,-(A7)
  ;a0=7000
  ;track data 7000-8760 (11*544 bytes)
  ;
  LEA $2E80(A0),A1
  LEA $1540(A0),A0  ;last sector track data
  MOVE.L  #$aaaaaaaa,$440(A1)
  MOVEQ #$A,D0
  MOVEQ #1,D1
LAB_A2014A:
  MOVE.B  D1,7(A0)
  BSR.W SUB_A1FFE4  ;make sector
  LEA -544(A0),A0 ;previous sector (source)
  LEA -1088(A1),A2  ;previous sector (destination)
  LEA $440(A1),A1
  BSR.S SUB_A20118
  MOVEA.L A2,A1
  ADDQ.W  #1,D1
  DBF D0,LAB_A2014A

  MOVEM.L (A7)+,D0-D1/A0-A2
  BSR.W SUB_A20170
mfm1:
  RTS

makePdosTrack
  MOVEM.L D0-D7/A0-A3,-(A7)
  ;1448

  ;4891
  ;8 bytes track id
  ;1024 bytes data
  ;2 bytes gap size
  ;a0=862c

  LEA 1036*12+2+$400(A0),A1

  LEA 514*12(A0),A0 ;last sector
  MOVEQ #12-1,D3
.encodesector

  ;encode sector
  LEA -1036(A1),A1
  LEA -514(A0),A0

  MOVE.W #$4891,(A1)+

  MOVE.L A0,A2
  MOVE.L A1,A3
  MOVE.W (A0)+,D0
  CLR.L (A1)+
  CLR.L (A1)+

  MOVE.L D3,-(SP)
  MOVE.W #512/4-1,D2

  MOVE.L pdosKey,D3
.sectorenc
  MOVEM.L D2/D4,-(SP)
  ;encode to mfm
  BSR SUB_A2006C_2
  MOVEM.L (SP)+,D2/D4
  DBF D2,.sectorenc
  BSR SUB_A20118
  LEA $200(A1),A1
  BSR SUB_A20118
  LEA -$200(A1),A1

  MOVE.L A2,A0
  MOVEQ #0,D2
  MOVE.W (A0),D2

  ;calc crc in low d0
  LEA 8(A3),A0
  BSR CalcPdosCrc
  SWAP D0
  MOVE.W D2,D0
  SWAP D0
  MOVE.L pdosKey,D2
  BSET  #$1F,D2

  EOR.L D2,D0

  MOVE.L A3,A1
  ;encode to mfm
  BSR SUB_A2006E
  BSR SUB_A20118
  MOVE.L (SP)+,D3

  LEA 1032(A3),A1
  ;encode track gap byte to mfm
  MOVE.W #$aaaa,(A1)
  BSR SUB_A20118
  LEA 2-1036(A1),A1
  MOVE.L A2,A0

  DBF D3,.encodesector

  LEA 1036*12(A1),A1
  MOVE.L #$aaaaaaaa,(A1)
  BSR SUB_A20118

  MOVEM.L (A7)+,D0-D7/A0-A3
  MOVE.W #$1448,$400(A0)
  BSR.S SUB_A20170
  RTS

CalcPdosCrc
  MOVEM.L D1/D2/A2,-(SP)
  MOVEQ #0,D0
  MOVE.W  #$FF,D1
chkloop MOVE.L  (A0)+,D2
  EOR.L D2,D0
  DBRA  D1,chkloop
  AND.L #$55555555,D0
  MOVE.L  D0,D1
  SWAP  D1
  ADD.W D1,D1
  OR.W  D1,D0
  MOVEM.L (SP)+,D1/D2/A2
  RTS

SUB_A20170:
  MOVEM.L D0/A0,-(A7)
  MOVE.W  #$00ff,D0
LAB_A20178:
  MOVE.L  #$aaaaaaaa,(A0)+
  DBF D0,LAB_A20178
  MOVEM.L (A7)+,D0/A0
  RTS
checkDiskBlockDone:
  MOVE.L  A5,-(A7)
  LEA ciaabase,A5
  BCLR  #7,$F01(A5)
  MOVE.B  #0,$A01(A5)
  MOVE.B  #0,$901(A5)
  MOVE.B  #0,$801(A5)
  MOVEQ #0,D0
LAB_A201AA:
  TST.B EscapePressed
  BEQ.S LAB_A201B6
  MOVEQ #-8,D0
  BRA.S LAB_A201D2
LAB_A201B6:
  BTST  #1,intreqr+1+hardware
  BNE.S LAB_A201D2
  CMPI.B  #$80,$801(A5)
  BLS.S LAB_A201AA
  MOVEQ #-12,D0
  MOVE.W  #$8002,intreq+hardware
LAB_A201D2:
  MOVEA.L (A7)+,A5
  RTS
writeTrack:
  MOVEM.L D1/A1/A5,-(A7)
  CLR.L D0
  CMP.B #4,currDriveNo
  BEQ LAB_A20288

  BSR.S checkDiskBlockDone
  BSR.W stepToTrack2
  BMI.W LAB_A20288
  MOVEQ #-8,D0
  TST.B EscapePressed
  BNE.W LAB_A20288
  LEA hardware,A5
  BSR.W selectDrive
  MOVEQ #-10,D0
  BTST  #3,ciaapra
  BEQ.W LAB_A20288
  MOVE.B  currDriveNo,D0
  BTST  D0,LAB_A4824C
  BNE.S LAB_A2021E
  MOVEQ #-11,D0
  BSR.W SUB_A1FAB4
  BMI.W LAB_A20288
LAB_A2021E:
  BSR.W selectDrive
  MOVEQ #0,D0
  MOVE.B  currTrackNo,D0
  BSR.W StepToTrack
  BSR.W selectDrive
  MOVE.B  ciabprb,D0
  MOVE.W  #$8010,$96(A5)
  MOVE.W  #$4000,$24(A5)
  MOVE.W  #$7f00,$9E(A5)
  MOVE.W  #$8100,$9E(A5)
  CMPI.B  #$50,currTrackNo
  BCS.S LAB_A20260
  MOVE.W  #$a100,$9E(A5)
LAB_A20260:
  MOVE.W  #$1002,$9C(A5)

  TST.B pdosRead
  BEQ.S .0

  LEA $96(A0),A1
  MOVE.L  A1,$20(A5)
  MOVE.W  #$da00,$24(A5)
  MOVE.W  #$da00,$24(A5)
  BRA.S .2

.0
  TST.B mfmRead
  BEQ.S .1

  MOVE.L  A0,$20(A5)
  MOVE.W  #$da00,$24(A5)
  MOVE.W  #$da00,$24(A5)
  BRA.S .2

.1
  ;a0=7000
  LEA $1A(A0),A1
  MOVE.L  A1,$20(A5)
  MOVE.W  #$d955,$24(A5)
  MOVE.W  #$d955,$24(A5)
.2
  BSR.W checkDiskBlockDone
  MOVE.W  #$4000,$24(A5)
  BSR.W deselectAllDrives
LAB_A20288:
  TST.W D0
  MOVEM.L (A7)+,D1/A1/A5
  RTS
SUB_A20290:
  BSR.S SUB_A202C2
  LEA hardware,A5
  MOVEM.W D0-D1,$40(A5)
  MOVE.L  D2,$44(A5)
  MOVE.L  A0,$50(A5)
  MOVE.L  A1,$4C(A5)
  MOVE.L  A2,$54(A5)
  CLR.L $60(A5)
  CLR.L $64(A5)
  MOVE.W  #$5555,$70(A5)
  MOVE.W  D3,$58(A5)
  RTS
SUB_A202C2:
  MOVE.W  #$8640,dmacon+hardware
LAB_A202CA:
  BTST  #6,dmaconr+hardware
  BNE.S LAB_A202CA
  RTS

HandleDiskFull:
  CMP.W #-19,D0   ;disk full
  BEQ.S .1
  TST.W D0
  RTS
.1:
  MOVE.W D0,diskOpResult2
  MOVEQ #0,D0
  RTS

PrintDiskOpResult:
  JSR PrintCrIfNotBlankLine

PrintDiskOpResult2:
  TST.W diskOpResult2
  BEQ.S .1
  CMP.W diskOpResult2,D0
  BEQ.S .1
  MOVE.W D0,-(A7)
  MOVE.W diskOpResult2,D0
  BSR .1
  MOVE.W (A7)+,D0
  BNE.S .1
  RTS
.1:
  MOVEM.L D0/A0,-(A7)
  LEA DiskOpResultTable(PC),A0
  NEG.W D0
  MULU  #$001e,D0
  LEA 0(A0,D0.L),A0
  JSR PrintText
  JSR PrintCrIfNotBlankLine
  MOVEM.L (A7)+,D0/A0
  CLR.W diskOpResult2
  RTS

DiskOpResultTable:
  DC.B  "Disk ok                      ",0     ;0
  DC.B  "No disk in drive             ",0     ;-1
  DC.B  "Read error                   ",0     ;-2
  DC.B  "Headerchecksum error         ",0     ;-3
  DC.B  "Datachecksum error           ",0     ;-4
  DC.B  "Track malformed              ",0     ;-5
  DC.B  "Wrong blocktype              ",0     ;-6
  DC.B  "Not a bootblock              ",0     ;-7
  DC.B  "User break                   ",0     ;-8
  DC.B  "Not a dos-track              ",0     ;-9
  DC.B  "Disk is write-protected      ",0     ;-10
  DC.B  "Write error                  ",0     ;-11
  DC.B  "DMA not ready (sync ?)       ",0     ;-12
  DC.B  "Drive not available          ",0     ;-13
  DC.B  "Filename expected            ",0     ;-14
  DC.B  "Bam corrupt                  ",0     ;-15
  DC.B  "Bam not valid                ",0     ;-16
  DC.B  "Invalid sectornr             ",0     ;-17
  DC.B  "File not found               ",0     ;-18
  DC.B  "Disk full                    ",0     ;-19
  DC.B  "Sector not free              ",0     ;-20
  DC.B  "Dos structure corrupt        ",0     ;-21
  DC.B  "End of file                  ",0     ;-22
  DC.B  "Sector freed twice           ",0     ;-23
  DC.B  "Invalid pathname             ",0     ;-24
  DC.B  "Directory not found          ",0     ;-25
  DC.B  "File exists                  ",0     ;-26
  DC.B  "Directory not empty          ",0     ;-27
  DC.B  "No valid freeze-file         ",0     ;-28
  DC.B  "Verify error                 ",0     ;-29
  DC.B  "AR MK II file: use old aload ",0     ;-30
  DC.B  "Not enough ChipMem available ",0     ;-31
  DC.B  "Not enough FastMem available ",0     ;-32
  DC.B  "Not enough Exp.Mem available ",0     ;-33
  DC.B  "Not a DOS-disk               ",0     ;-34
  DC.B  "Ramdisk not active           ",0     ;-35

  even

stepToTrack2:
  BSR.W selectDrive
  BTST  #2,ciaapra
  BNE.S LAB_A20748
  BSR.W deselectAllDrives
  MOVEQ #0,D0
  BSR.W StepToTrack
  MOVEQ #2,D0
  BSR.W StepToTrack
  BSR.W selectDrive
  MOVEQ #-1,D0
  BTST  #2,ciaapra
  BEQ.S LAB_A2074A
LAB_A20748:
  MOVEQ #0,D0
LAB_A2074A:
  BSR.W deselectAllDrives
  TST.W D0
  RTS
loadSector:
  MOVEM.L D1,-(A7)
  MOVEQ #0,D1
  MOVE.W  D0,D1
  MOVEQ #-17,D0
  CMPI.L  #$000006df,D1
  BHI.S LAB_A207A2
  DIVU  #$000b,D1
  MOVEQ #-8,D0
  TST.B EscapePressed
  BNE.S LAB_A207A2
  BSR.S stepToTrack2
  BMI.S LAB_A207A2
  MOVE.B  currDriveNo,D0
  CMP.B LAB_A4824A,D0
  BNE.S LAB_A2078C
  CMP.B currTrackNo,D1
  BEQ.S LAB_A20792
LAB_A2078C:
  MOVE.L  D1,D0
  BSR.S SUB_A207AA
  BMI.S LAB_A207A2
LAB_A20792:
  SWAP  D1
  LEA mfmSectorAddresses,A1
  LSL.W #2,D1
  MOVEA.L 0(A1,D1.W),A1
  MOVEQ #0,D0
LAB_A207A2:
  MOVEM.L (A7)+,D1
  TST.W D0
  RTS
SUB_A207AA:
  MOVEM.L D1-D2,-(A7)
  MOVE.W  D0,D2
  MOVEQ #5,D1
LAB_A207B2:
  MOVE.W  D2,D0
  CMP.B #4,currDriveNo
  BNE.S .notramdisk
  JSR findRamdiskSectors
  BRA.W .1
.notramdisk
  TST.B pdosRead
  BNE.S .pdos
  TST.B mfmRead
  BNE.S .rawmfm
  BSR.W readTrack
  BMI.S LAB_A207DE
  BSR.W findMfmSectors
  BMI.S LAB_A207DE
  BRA.S .1
.rawmfm
  BSR.W readRawMfmTrack
  BMI.S LAB_A207DE
  BRA.S .1
.pdos
  MOVE.B D0,pdosTrack
  BSR.W readPdosTrack
  BMI.S LAB_A207DE
  BSR.W findPdosMfmSectors
  BMI.S LAB_A207DE
.1
  MOVE.B  D2,currTrackNo
  MOVE.B  currDriveNo,LAB_A4824A
  SF  TrackBufferModified
  MOVEM.L (A7)+,D1-D2
  MOVEQ #0,D0
  RTS
LAB_A207DE:
  CMPI.W  #$fff4,D0
  BEQ.S LAB_A207E8
  DBF D1,LAB_A207B2
LAB_A207E8:
  ST  currTrackNo
  ST  LAB_A4824A
  MOVEM.L (A7)+,D1-D2
  TST.W D0
  RTS
SUB_A207FC:
  BSR.W stepToTrack2
  BMI.S LAB_A2084A
  MOVE.B  currDriveNo,-(A7)
  MOVE.B  LAB_A4824A,currDriveNo
  MOVE.L  D1,-(A7)
  MOVEQ #5,D1

  BSR.W SUB_A20132    ;build mfm track data
LAB_A2081A:
  BSR.W writeTrack
  BMI.S LAB_A2083E
  MOVE.L  (A7)+,D1
  MOVE.B  (A7)+,currDriveNo
  ST  currTrackNo
  ST  LAB_A4824A
  SF  TrackBufferModified
  MOVEQ #0,D0
  RTS
LAB_A2083E:
  DBF D1,LAB_A2081A
  MOVE.L  (A7)+,D1
  MOVE.B  (A7)+,currDriveNo
LAB_A2084A:
  TST.W D0
  RTS
SUB_A2084E:
  CMPI.B  #$ff,currTrackNo
  BEQ.S LAB_A2086C
  CMPI.B  #$ff,LAB_A4824A
  BEQ.S LAB_A2086C
  TST.B TrackBufferModified
  BEQ.S LAB_A2086C
  BRA.S SUB_A207FC
LAB_A2086C:
  MOVEQ #0,D0
  RTS
  MOVE.W  D0,-(A7)
  MOVEQ #-1,D0
LAB_A20874:
  MOVE.W  D0,color00+hardware
  DBF D0,LAB_A20874
  MOVE.W  (A7)+,D0
  RTS
GetRootBlockNum:
  MOVEQ #0,D0
  MOVE.L  #$00000370,D1
  TST.W D0
  RTS
loadRootBlock:
  MOVEM.L D2/A1-A3,-(A7)
  MOVEQ #0,D1
  MOVE.B  currDriveNo,D1
  MOVE.L  D1,D2
  LSL.L #2,D2
  LEA rootBlockLoadedFlags,A3
  TST.B 0(A3,D1.W)
  BNE.S LAB_A208D8
  MOVE.L  #$00000370,D0
  BSR.W loadSector    ;load root block
  BMI.S LAB_A208E0
  MOVE.L  $14(A1),D0  ;root block checksum
  ST  0(A3,D1.W)
  LEA rootBlockLoadedCrc,A3   ;saved checksums
  CMP.L 0(A3,D2.W),D0
  BEQ.S LAB_A208D8
  MOVE.L  D0,0(A3,D2.W)
  MOVE.L  #$00000370,currentDirBlock
LAB_A208D8:
  MOVE.L  currentDirBlock,D1
  MOVEQ #0,D0
LAB_A208E0:
  MOVEM.L (A7)+,D2/A1-A3
  TST.W D0
  RTS
CMD_DIR:
  ST  scrollLock
  MOVEQ #2,D6
  MOVE.B  (A0),D0
  JSR UpperCaseChar
  CMPI.B  #$41,D0
  BNE.S LAB_A20906
  JSR readCmdChar
  MOVEQ #-1,D6
LAB_A20906:
  BSR.W SUB_A2231A
  LEA stringWorkspace,A2
  MOVE.B  currDriveNo,-(A7)
  LEA EXT_7000.W,A0
  BSR.W backupMfmBuffer
  BSR.W getDirBlock
  BMI.W LAB_A209C4
  MOVE.L  D1,D0
  BSR.W loadSector
  BMI.W LAB_A209C4
  MOVE.L  A0,-(A7)
  LEA DirOfText(PC),A0
  JSR PrintText
  MOVEA.L (A7)+,A0
  LEA hashTable,A2
  MOVEQ #0,D2
  BSR.W SUB_A209DA
  BMI.S LAB_A209C4
  SF  LAB_A48332
  BSR.W SUB_A21A66
  BMI.S LAB_A209C4
  BSR.W SUB_A2202C
  MOVE.L  D0,D2
  JSR ConvertToBCD
  MOVEQ #4,D1
  JSR PrintValue
  MOVE.L  A0,-(A7)
  LEA BlocksFreeText(PC),A0
  JSR PrintText
  MOVE.L  #$000006e0,D0
  SUB.L D2,D0
  MULU  #$03e8,D0
  DIVU  #$06e0,D0
  EXT.L D0
  JSR ConvertToBCD
  ROXR.L  #4,D0
  MOVEQ #2,D1
  CMPI.W  #$0100,D0
  BNE.S LAB_A2099C
  MOVEQ #3,D1
LAB_A2099C:
  JSR PrintValue
  MOVE.W  #$002e,D0
  JSR PrintChar
  ROXL.L  #4,D0
  MOVEQ #1,D1
  JSR PrintValue
  LEA DiskUsedText(PC),A0
  JSR PrintText
  MOVEA.L (A7)+,A0
  MOVEQ #0,D0
LAB_A209C4:
  BSR.W PrintDiskOpResult
  BSR.W restoreMfmBuffer
  SF  scrollLock
  MOVE.B  (A7)+,currDriveNo
  RTS
SUB_A209DA:
  MOVEM.L D1-D6/A0-A4,-(A7)
  TST.W D6
  BEQ.W LAB_A20A72
  MOVEQ #-6,D0
  CMPI.L  #2,(A1)
  BNE.W LAB_A20A74
  CMPI.L  #2,$1FC(A1)
  BHI.W LAB_A20A7C
  TST.L $1FC(A1)
  BEQ.S LAB_A20A74
  MOVEQ #$47,D3
  MOVEA.L A2,A3
  LEA $18(A1),A4
  MOVEQ #0,D5
LAB_A20A0C:
  MOVE.L  (A4)+,(A2)+
  BNE.S LAB_A20A14
  SUBQ.L  #4,A2
  SUBQ.W  #1,D5
LAB_A20A14:
  ADDQ.W  #1,D5
  DBF D3,LAB_A20A0C
  MOVE.W  D2,D0
  JSR PrintSpaces
  MOVEA.L A0,A4
  MOVEQ #$28,D0
  JSR PrintChar
  BSR.W SUB_A221D6
  MOVEQ #$29,D0
  JSR PrintChar
  JSR PrintCrIfNotBlankLine
  MOVEA.L A4,A0
  ADDQ.W  #4,D2
  MOVE.L  $1F0(A1),D4
  SUBQ.W  #1,D6
  BEQ.S LAB_A20A5E
  SUBQ.W  #1,D5
  BMI.S LAB_A20A5E
LAB_A20A4E:
  MOVE.L  (A3)+,D0
  BSR.W loadSector
  BMI.S LAB_A20A74
  BSR.S SUB_A209DA
  BMI.S LAB_A20A74
  DBF D5,LAB_A20A4E
LAB_A20A5E:
  SUBQ.W  #4,D2
  ADDQ.W  #1,D6
  MOVE.L  D4,D0
  BEQ.S LAB_A20A72
  BSR.W loadSector
  BMI.S LAB_A20A74
  BSR.W SUB_A209DA
  BMI.S LAB_A20A74
LAB_A20A72:
  MOVEQ #0,D0
LAB_A20A74:
  TST.W D0
  MOVEM.L (A7)+,D1-D6/A0-A4
  RTS
LAB_A20A7C:
  CMPI.L  #$fffffffd,$1FC(A1)
  BNE.S LAB_A20A74
  MOVE.W  D2,D0
  ADDQ.W  #2,D0
  JSR PrintSpaces
  MOVE.L  $144(A1),D0
  JSR ConvertToBCD
  MOVEQ #6,D1
  JSR PrintValue
  MOVEQ #2,D0
  JSR PrintSpaces
  BSR.W SUB_A221D6
  JSR PrintCrIfNotBlankLine
  MOVE.L  $1F0(A1),D0
  BEQ.S LAB_A20AC6
  BSR.W loadSector
  BMI.S LAB_A20A74
  BSR.W SUB_A209DA
  BMI.S LAB_A20A74
LAB_A20AC6:
  MOVEQ #0,D0
  BRA.S LAB_A20A74

DirOfText:
  DC.B  "Directory of ",0

BlocksFreeText:
  DC.B  " blocks free, ",0

DiskUsedText:
  DC.B  " % of disk used",$D,0

SUB_A20AF8:
  MOVEM.L D0-D3/A0,-(A7)
  MOVEQ #$A,D0
LAB_A20AFE:
  MOVEQ #7,D1
LAB_A20B00:
  CLR.L (A0)+
  DBF D1,LAB_A20B00
  MOVE.L  #DOSZERO_TAG,D1
  MOVE.W  #$007f,D2
  MOVEQ #0,D3
  TST.B FastFileSystemFlag2
  BEQ.S LAB_A20B1C
  MOVEQ #1,D3
LAB_A20B1C:
  MOVE.L  D3,-(A7)
  OR.L  D1,D3
  MOVE.L  D3,(A0)+
  MOVE.L  (A7)+,D3
  ADDQ.B  #1,D1
  DBF D2,LAB_A20B1C
  DBF D0,LAB_A20AFE
  MOVEM.L (A7)+,D0-D3/A0
  RTS
CMD_FORMAT:
  JSR readCmdChar
  CMPI.B  #$51,D0
  SEQ QuickFormat
  CMPI.B  #$56,D0
  SEQ VerifyFormat
  SF  forceUpper
  BSR.W SUB_A2231A
  ST  forceUpper
  MOVE.W  D0,FilenameLen
  JSR readCmdChar
  SF  FastFileSystemFlag2
  TST.B endOfCmdString
  BNE.S LAB_A20B88
  JSR UpperCaseChar
  CMPI.B  #$46,D0
  SEQ FastFileSystemFlag2
LAB_A20B88:
  LEA ReadyToFormatRamdisk(PC),A0
  CMP.B #4,currDriveNo
  BEQ.S .1

  LEA ReadyToFormatText(PC),A0
.1
  JSR PrintText
  MOVE.B  currDriveNo,D0
  CMP.B #4,D0
  BEQ.S .2
  MOVEQ #1,D1
  JSR PrintValue
.2
  LEA AskYNText(PC),A0
  JSR AskYN
  TST.W D0
  BNE.S LAB_A20BB4
  MOVEQ #-8,D0
  BRA.W PrintDiskOpResult
LAB_A20BB4:
  MOVE.L  #$00000370,currentDirBlock
  SF  cursorEnabled
  LEA EXT_7000.W,A0
  BSR.W backupMfmBuffer
  MOVEA.L A0,A1
  TST.B QuickFormat
  BNE.W LAB_A20CD8
  MOVEA.L A1,A0
  BSR.W SUB_A20AF8
  BSR.W SUB_A20132
  MOVE.B  currDriveNo,LAB_A4824A
  SF  TrackBufferModified
  MOVE.W  #$009f,D1
LAB_A20BF6:
  MOVEQ #0,D2
  MOVEQ #$B,D5
  LEA $408(A0),A1
LAB_A20BFE:
  MOVE.W  D1,D0
  ORI.W #$ff00,D0
  SWAP  D0
  MOVE.W  D2,D0
  LSL.W #8,D0
  MOVE.B  D5,D0
  MOVEM.L D0-D3,-(A7)
  BSR.W SUB_A2006E
  MOVEM.L (A7)+,D0-D3
  BSR.W SUB_A20118
  MOVEQ #9,D0
  MOVEQ #0,D3
  LEA -8(A1),A1
LAB_A20C24:
  MOVE.L  (A1)+,D4
  EOR.L D4,D3
  DBF D0,LAB_A20C24
  ANDI.L  #$55555555,D3
  MOVE.L  D3,D0
  MOVEM.L D0-D3,-(A7)
  BSR.W SUB_A2006E
  MOVEM.L (A7)+,D0-D3
  BSR.W SUB_A20118
  LEA $410(A1),A1
  ADDQ.W  #1,D2
  SUBQ.W  #1,D5
  BNE.S LAB_A20BFE
  MOVEM.L D1/A0,-(A7)
  LEA FormattingText(PC),A0
  JSR PrintText
  MOVE.L  D1,D0
  LSR.L #1,D0
  JSR ConvertToBCD
  MOVEQ #2,D1
  JSR PrintValue
  LEA HeadText(PC),A0
  JSR PrintText
  MOVEM.L (A7),D1/A0
  MOVE.L  D1,D0
  ANDI.W  #1,D0
  EORI.W  #1,D0
  MOVEQ #1,D1
  JSR PrintValue
  JSR PrintCrIfNotBlankLine
  JSR moveCursorUp
  MOVEM.L (A7)+,D1/A0
  MOVE.B  D1,currTrackNo
  BSR.W writeTrack
  BMI.S LAB_A20CDE
  DBF D1,LAB_A20BF6
  ST currTrackNo
  JSR PrintCrIfNotBlankLine
  MOVEA.L A0,A1
  TST.B VerifyFormat
  BEQ.S LAB_A20CD8
  MOVEA.L A1,A0
  MOVEQ #$23,D0
  JSR PrintSpaces
  CLR.W cursorX
  BSR.W doVerify
  MOVEA.L A0,A1
  TST.W D0
  BMI.S LAB_A20CDC
LAB_A20CD8:
  BSR.W formatInitialise
LAB_A20CDC:
  MOVEA.L A1,A0
LAB_A20CDE:
  MOVE.L  D0,D1
  MOVEQ #$23,D0
  JSR PrintSpaces
  CLR.W cursorX
  BSR.W restoreMfmBuffer
  BMI.S LAB_A20CF6
  MOVE.W  D1,D0
LAB_A20CF6:
  BSR.W PrintDiskOpResult
  ST  cursorEnabled
  TST.W D0
  RTS

ReadyToFormatText:
  DC.B  "Ready to format disk in drive DF",0

ReadyToFormatRamdisk:
  DC.B  "Ready to format Ramdisk?",0

AskYNText:
  DC.B  ": (y/n)?",$D,0

FormattingText:
  DC.B  "Formatting track !",0

HeadText:
  DC.B  ", head ",0

VerifyingText:
  DC.B  "Verifying track !",0
  even

doVerify:
  MOVEM.L D1-D2/A1,-(A7)
  ST  LAB_A4824D
  MOVE.W  #0,D2
LAB_A20D6A:
  MOVEA.L A0,A1
  LEA VerifyingText(PC),A0
  JSR PrintText
  MOVE.W  D2,D0
  LSR.W #1,D0
  JSR ConvertToBCD
  MOVEQ #2,D1
  JSR PrintValue
  LEA HeadText(PC),A0
  JSR PrintText
  MOVE.W  D2,D0
  ANDI.W  #1,D0
  EORI.W  #1,D0
  MOVEQ #1,D1
  JSR PrintValue
  CLR.W cursorX
  MOVEA.L A1,A0
  MOVE.W  D2,D0
  BSR.W SUB_A207AA
  BMI.S LAB_A20DBE
  ADDQ.W  #1,D2
  CMPI.W  #$009f,D2
  BLS.S LAB_A20D6A
  MOVEQ #0,D0
LAB_A20DBE:
  ST  LAB_A4824D
  MOVEM.L (A7)+,D1-D2/A1
  TST.W D0
  RTS
InitialiseDisk:
  MOVEM.L D0-D1/A0,-(A7)
  MOVE.B  currDriveNo,-(A7)
  MOVEQ #0,D0
  MOVEQ #3,D1
  LEA oldTrackPositions,A0
LAB_A20DE0:
  BTST  D1,DriveControlPrefsValueLo
  BEQ.S LAB_A20E02
  MOVE.B  D1,currDriveNo
  CMPI.B  #$ff,0(A0,D1.W)
  BNE.S LAB_A20E02
  BSR.W SUB_A1FAB4
  BSR.W StepToTrack
  BSR.W SUB_A1FAF8
LAB_A20E02:
  DBF D1,LAB_A20DE0
  MOVE.B  (A7)+,currDriveNo
  MOVEM.L (A7)+,D0-D1/A0
  RTS
formatInitialise:
  MOVEM.L D1-D4/A0-A2,-(A7)
  MOVEA.L A1,A0
  MOVEQ #0,D0
  JSR loadSector(PC)
  BMI.W LAB_A20F16
  MOVE.L  #DOSZERO_TAG,D0
  TST.B FastFileSystemFlag2
  BEQ.S LAB_A20E36
  MOVE.L  #DOSONE_TAG,D0
LAB_A20E36:
  MOVE.L  D0,(A1)+
  CLR.L (A1)+
  ST  TrackBufferModified
  LEA stringWorkspace,A2
  MOVE.W  FilenameLen,D0
  MOVE.W  D0,D1
  TST.W D0
  BNE.S LAB_A20E58
  MOVEQ #15,D1    ;disk name length
  LEA Ar5Text(PC),A2
  CMP.B #4,currDriveNo
  BNE.S LAB_A20E58
  LEA ArRamDiskText(PC),A2
  MOVEQ #11,D1 ;disk name length

LAB_A20E58:
  MOVE.W  #$0370,D0
  BSR.W loadSector
  BMI.W LAB_A20F16
  ST  TrackBufferModified
  MOVE.L  #2,(A1)+
  CLR.L (A1)+
  CLR.L (A1)+
  MOVE.L  #$00000048,(A1)+
  CLR.L (A1)+
  CLR.L (A1)+
  MOVEQ #$47,D0
LAB_A20E80:
  CLR.L (A1)+
  DBF D0,LAB_A20E80
  MOVE.L  #$ffffffff,(A1)+
  MOVE.L  #$00000371,(A1)+
  MOVEQ #$18,D0
LAB_A20E94:
  CLR.L (A1)+
  DBF D0,LAB_A20E94
  CLR.L (A1)+
  CLR.L (A1)+
  CLR.L (A1)+
  ANDI.W  #$001f,D1
  MOVE.B  D1,(A1)
  MOVEQ #1,D0
  SUBQ.W  #1,D1
LAB_A20EAA:
  MOVE.B  -1(A2,D0.W),0(A1,D0.W)
  ADDQ.W  #1,D0
  DBF D1,LAB_A20EAA
  LEA $34(A1),A1
  CLR.L (A1)+
  CLR.L (A1)+
  CLR.L (A1)+
  CLR.L (A1)+
  CLR.L (A1)+
  CLR.L (A1)+
  MOVE.L  #1,(A1)+
  LEA -512(A1),A1
  BSR calcDataSectorChecksum
  MOVE.W  #$0371,D0
  BSR.W loadSector
  BMI.S LAB_A20F16
  ST  TrackBufferModified
  CLR.L (A1)+
  MOVEQ #$35,D0
LAB_A20EE6:
  MOVE.L  #$ffffffff,(A1)+
  DBF D0,LAB_A20EE6
  MOVE.L  #$3fffffff,(A1)+
  MOVEQ #$47,D0
LAB_A20EF8:
  CLR.L (A1)+
  DBF D0,LAB_A20EF8
  LEA -512(A1),A1
  MOVE.L  $70(A1),D0
  BCLR  #$E,D0
  BCLR  #$F,D0
  MOVE.L  D0,$70(A1)
  BSR.S calcBitmapChecksum
  MOVEQ #0,D0
LAB_A20F16:
  TST.W D0
  MOVEM.L (A7)+,D1-D4/A0-A2
  RTS

ArRamDiskText
  DC.B  "AR5 Ramdisk",0
Ar5Text:
  DC.B  "Action Replay 5",0

calcBitmapChecksum:
  MOVEM.L D0-D1/A0-A1,-(A7)
  MOVEQ #0,D0
  MOVEQ #$7F,D1
  CLR.L (A1)
  MOVEA.L A1,A0
LAB_A20F3C:
  SUB.L (A1)+,D0
  DBF D1,LAB_A20F3C
  MOVE.L  D0,(A0)
  MOVEM.L (A7)+,D0-D1/A0-A1
  RTS
calcDataSectorChecksum:
  MOVEM.L D0-D1/A0-A1,-(A7)
  MOVEQ #0,D0
  MOVEQ #$7F,D1
  CLR.L $14(A1)
  MOVEA.L A1,A0
LAB_A20F58:
  SUB.L (A1)+,D0
  DBF D1,LAB_A20F58
  MOVE.L  D0,$14(A0)
  MOVEM.L (A7)+,D0-D1/A0-A1
  RTS
calcBootblockChecksum:
  MOVEM.L D0-D1/A0-A1,-(A7)
  LEA 4(A1),A0
  CLR.L (A0)
  MOVE.W  #$00ff,D1
  MOVEQ #0,D0
LAB_A20F78:
  ADD.L (A1)+,D0
  BCC.S LAB_A20F7E
  ADDQ.L  #1,D0
LAB_A20F7E:
  DBF D1,LAB_A20F78
  NOT.L D0
  MOVE.L  D0,(A0)
  MOVEM.L (A7)+,D0-D1/A0-A1
  RTS
ChecksumIncorrectText:
  DC.B  "Checksum was correct",$D,0

OldCrcText:
  DC.B  "Old checksum was ",0

NewCrcText:
  DC.B  ", now is set to ",0,0

LAB_A20FC6:
  MOVEM.L D0/A0,-(A7)
  CMP.L D6,D7
  BNE.S LAB_A20FDA
  LEA ChecksumIncorrectText(PC),A0
  JSR PrintText
  BRA.S LAB_A21004
LAB_A20FDA:
  LEA OldCrcText(PC),A0
  JSR PrintText
  MOVE.L  D6,D0
  JSR Print8DigitHex
  LEA NewCrcText(PC),A0
  JSR PrintText
  MOVE.L  D7,D0
  JSR Print8DigitHex
  JSR PrintCrIfNotBlankLine
LAB_A21004:
  MOVEM.L (A7)+,D0/A0
  RTS
CMD_DATACHK:
  JSR ReadParameter
  TST.B ParamFound
  BEQ.S LAB_A21070
  BCLR  #0,D0
  MOVEA.L D0,A1
  MOVE.L  $14(A1),D6
  BSR.W calcDataSectorChecksum
  MOVE.L  $14(A1),D7
  BRA.S LAB_A20FC6
CMD_BAMCHK:
  JSR ReadParameter
  TST.B ParamFound
  BEQ.S LAB_A21070
  BCLR  #0,D0
  MOVEA.L D0,A1
  MOVE.L  (A1),D6
  BSR.W calcBitmapChecksum
  MOVE.L  (A1),D7
  BRA.W LAB_A20FC6
CMD_BOOTCHK:
  JSR ReadParameter
  TST.B ParamFound
  BEQ.S LAB_A21070
  BCLR  #0,D0
  MOVEA.L D0,A1
  MOVE.L  4(A1),D6
  BSR.W calcBootblockChecksum
  MOVE.L  4(A1),D7
  BRA.W LAB_A20FC6
LAB_A21070:
  JMP PrintWTF

CMD_SM:
  SF  forceUpper
  BSR.W GetFilename
  ST  forceUpper
  TST.W D0
  BNE.S LAB_A21090
  MOVEQ #-14,D0
  BRA.W PrintDiskOpResult
LAB_A21090:
  MOVE.L  D0,D2
  JSR ReadParameter
  TST.B ParamFound
  BEQ.S LAB_A21070
  MOVEA.L D0,A1
  JSR ReadParameter
  TST.B ParamFound
  BEQ.S LAB_A21070
apiSaveFile2:
  EXG D0,A1
  EXG D0,A1
  MOVE.L  D0,D1
  SUB.L A1,D1
  BCS.S LAB_A21070
  BEQ.S LAB_A21070
  MOVEA.L A1,A2
  LEA EXT_7000.W,A0
  BSR.W backupMfmBuffer
  LEA stringWorkspace,A1
  MOVE.L  D2,D0
  MOVE.B  currDriveNo,-(A7)
  BSR.S SaveFileInit
  BMI.S LAB_A210E4
  MOVE.L  D1,D0        ;length
  BSR.W SaveFileData
  JSR HandleDiskFull
  BMI.S LAB_A210E4
  BSR.W AddFileToDirBlock
LAB_A210E4:
  MOVE.B  (A7)+,currDriveNo
  BSR.W PrintDiskOpResult
  BSR.W restoreMfmBuffer
  RTS
SaveFileInit:
;filename in A1
;start address A2
;length in D1
  MOVEM.L D1-D2/A1-A2,-(A7)
  ST.B EscapeDisabled
  MOVE.L  D0,D1
  MOVE.W  D1,FilenameLen
  MOVE.L  A1,SaveFilename
  MOVEA.L A1,A2
  BSR.W SUB_A236E2    ;check filename + get dir block
  BMI.S LAB_A2116A
  JSR checkFileSystem
  BMI.S LAB_A2116A
  MOVE.W  D2,D0
  BSR.W SUB_A2197A
  CMPI.W  #$ffee,D0
  BEQ.S LAB_A21130
  TST.W D0
  BMI.S LAB_A2116A
  MOVE.L  D1,D0
  MOVE.L  D2,D1
  BSR.W SUB_A2179E
  BMI.S LAB_A2116A
LAB_A21130:
  MOVEQ #$6D,D0
  LEA hashTable,A1
LAB_A21138:
  CLR.L (A1)+
  DBF D0,LAB_A21138
  MOVE.W  #$01e8,DataBlockSize
  TST.B FastFileSystemFlag1
  BEQ.S LAB_A21156
  MOVE.W  #$0200,DataBlockSize
LAB_A21156:
  CLR.W dataBLockSequenceNum
  CLR.L LAB_A48314
  CLR.L currentHeaderBlock
  CLR.W diskOpResult2
  MOVEQ #0,D0
LAB_A2116A:
  MOVEM.L (A7)+,D1-D2/A1-A2
  TST.W D0
  RTS
AddFileToDirBlock:
  MOVEM.L D1-D5/A1-A4,-(A7)
  TST.B LAB_A48333
  BNE.S LAB_A2118C
  ST  LAB_A48332
  BSR.W SUB_A21A66
  BMI.W LAB_A21292
LAB_A2118C:
  MOVEA.L SaveFilename,A2
  MOVE.W  FilenameLen,D0
  BSR.W SUB_A236E2
  BMI.W LAB_A21292
  MOVE.L  D1,D5
  MOVE.L  A1,SaveFilename
  MOVE.W  D2,FilenameLen
  MOVE.L  D1,D0
  BSR.W loadSector
  BMI.W LAB_A21292
  MOVEA.L A1,A2
  MOVEA.L SaveFilename,A1
  MOVE.W  FilenameLen,D0
  BSR.W calcFilenameHash
  MOVEA.L A2,A1
  LSL.L #2,D0
  MOVE.L  $18(A1,D0.W),D1
  EXG D1,D3
  BSR.W SUB_A21918
  EXG D1,D3
  MOVE.L  D3,$18(A1,D0.W)
  BSR.W calcDataSectorChecksum
  ST  TrackBufferModified
  EXG D1,D2
  BSR.W SUB_A2194E
  EXG D1,D2
  MOVE.L  D2,D0
  MOVE.L  D1,-(A7)
  BSR.W SUB_A2129A
  MOVE.L  D1,D4
  MOVE.L  (A7)+,D1
  TST.W D0
  BMI.W LAB_A21292
  MOVE.L  #2,(A1)
  MOVE.L  LAB_A48314,$144(A1)
  MOVE.B  FilenameLenLo,$1B0(A1)
  MOVEQ #0,D0
  LEA $1B1(A1),A4
  MOVEA.L SaveFilename,A2
LAB_A21224:
  MOVE.B  (A2)+,0(A4,D0.W)
  ADDQ.W  #1,D0
  CMP.W FilenameLen,D0
  BNE.S LAB_A21224
  MOVE.L  D1,$1F0(A1)
  MOVEA.L SaveFilename,A2
  MOVE.W  FilenameLen,D0
  MOVE.L  D5,D1
  MOVE.L  D1,$1F4(A1)
  BSR.W calcDataSectorChecksum
  ST  TrackBufferModified
LAB_A21252:
  BSR.W SUB_A21918
  TST.W D1
  BEQ.S LAB_A21272
  BSR.W SUB_A2194E
  MOVE.L  D1,D0
  BSR.S SUB_A2129A
  BMI.S LAB_A21292
  MOVE.L  D1,D4
  BSR.W calcDataSectorChecksum
  ST  TrackBufferModified
  BRA.S LAB_A21252
LAB_A21272:
  TST.W FastFileSystemFlag1
  BNE.S LAB_A21290
  MOVE.L  D4,D0
  BSR.W loadSector
  BMI.S LAB_A21292
  CLR.L $10(A1)
  BSR.W calcDataSectorChecksum
  ST  TrackBufferModified
LAB_A21290:
  MOVEQ #0,D0
LAB_A21292:
  MOVEM.L (A7)+,D1-D5/A1-A4
  TST.W diskOpResult2
  BEQ.S .1
  MOVE.W diskOpResult2,D0
  CLR.W diskOpResult2
.1
  TST.W D0
  RTS
SUB_A2129A:
  MOVEM.L D2/A2,-(A7)
  MOVE.L  D0,D1
  BSR.W loadSector
  BMI.S LAB_A21314
  MOVE.L  #$00000010,(A1)
  MOVE.L  D1,4(A1)
  CLR.L $C(A1)
  MOVEQ #0,D0
  BSR.W SUB_A218B6
  MOVE.L  D1,$10(A1)
  LEA $138(A1),A2
  MOVEQ #0,D0
  MOVE.L  D2,-(A7)
  MOVE.L  D1,D2
LAB_A212C8:
  ADDQ.W  #1,D0
  BSR.W SUB_A218EC
  MOVE.L  D1,-(A2)
  BEQ.S LAB_A212DC
  MOVE.L  D1,D2
  CMPI.W  #$0048,D0
  BNE.S LAB_A212C8
  ADDQ.W  #1,D0
LAB_A212DC:
  MOVE.L  D2,D1
  MOVE.L  (A7)+,D2
  SUBQ.W  #1,D0
  MOVE.L  D0,8(A1)
  MOVEQ #$2E,D0
  LEA $138(A1),A2
LAB_A212EC:
  CLR.L (A2)+
  DBF D0,LAB_A212EC
  MOVE.L  D2,$1F4(A1)
  CLR.L $1F8(A1)
  MOVE.L  D1,D2
  BSR.W SUB_A21918
  TST.L D1
  BEQ.S LAB_A21308
  MOVE.L  D1,$1F8(A1)
LAB_A21308:
  MOVE.L  #$fffffffd,$1FC(A1)
  MOVE.L  D2,D1
  MOVEQ #0,D0
LAB_A21314:
  MOVEM.L (A7)+,D2/A2
  TST.W D0
  RTS
AddDataChunk:
  TST.B FastFileSystemFlag1
  BNE.W LAB_A214D8
  MOVEM.L D1-D3/A1,-(A7)
  MOVE.L  D0,D1
  TST.B LAB_A48333
  BNE.S LAB_A21342
  ST  LAB_A48332
  BSR.W SUB_A21A66
  BMI.W LAB_A213F6
LAB_A21342:
  MOVE.L  D1,D0
  MOVE.L  D0,D3
  ADD.L D0,LAB_A48314
  BSR.W SUB_A215DC
  BMI.W LAB_A213F6
LAB_A21354:
  MOVEQ #0,D2
  MOVE.W  DataBlockSize,D2
  MOVE.L  D1,D0
  BSR.W loadSector
  BMI.W LAB_A213F6
  MOVE.L  #8,(A1)
  MOVE.L  currentHeaderBlock,4(A1)
  MOVE.W  dataBLockSequenceNum,D0
  EXT.L D0
  MOVE.L  D0,8(A1)
  CLR.L $C(A1)
  CLR.L $10(A1)
  CLR.L $14(A1)
  MOVE.L  A0,-(A7)
  MOVEA.L A2,A0
LAB_A21390:
  JSR memSafeReadByte
  ADDQ.L  #1,A0
  MOVE.B  D0,$18(A1,D2.W)
  ADDQ.W  #1,D2
  SUBQ.L  #1,D3
  BEQ.S LAB_A213CC
  CMPI.W  #$01e8,D2
  BNE.S LAB_A21390
  MOVEA.L A0,A2
  MOVEA.L (A7)+,A0
  MOVE.L  D2,$C(A1)
  MOVE.W  D2,DataBlockSize
  BSR.W SUB_A215DC
  BMI.S LAB_A213F6
  MOVE.L  D1,$10(A1)
  ST  TrackBufferModified
  BSR.W calcDataSectorChecksum
  BRA.S LAB_A21354
LAB_A213CC:
  MOVEA.L A0,A2
  MOVEA.L (A7)+,A0
  MOVE.W  D2,DataBlockSize
  MOVE.L  D2,$C(A1)
  CMPI.W  #$01e8,D2
  BNE.S LAB_A213EA
  BSR.W SUB_A215DC
  BMI.S LAB_A213F6
  MOVE.L  D1,$10(A1)
LAB_A213EA:
  ST  TrackBufferModified
  BSR.W calcDataSectorChecksum
  MOVEQ #0,D0
LAB_A213F6:
  MOVEM.L (A7)+,D1-D3/A1
  TST.W D0
  RTS
writeFileBytes:
  TST.B FastFileSystemFlag1
  BNE.W LAB_A21560
  MOVEM.L D1-D3/A1,-(A7)
  MOVE.L  D0,D1
  TST.B LAB_A48333
  BNE.S LAB_A21424
  ST  LAB_A48332
  BSR.W SUB_A21A66
  BMI.W LAB_A214D0
LAB_A21424:
  MOVE.L  D1,D0
  MOVE.L  D0,D3
  ADD.L D0,LAB_A48314
  BSR.W SUB_A215DC
  BMI.W LAB_A214D0
LAB_A21436:
  MOVEQ #0,D2
  MOVE.W  DataBlockSize,D2
  MOVE.L  D1,D0
  BSR.W loadSector
  BMI.W LAB_A214D0
  MOVE.L  #8,(A1)
  MOVE.L  currentHeaderBlock,4(A1)
  MOVE.W  dataBLockSequenceNum,D0
  EXT.L D0
  MOVE.L  D0,8(A1)
  CLR.L $C(A1)
  CLR.L $10(A1)
  CLR.L $14(A1)
  MOVE.L  A0,-(A7)
  MOVEA.L A2,A0
LAB_A21472:
  MOVE.B  (A0)+,$18(A1,D2.W)
  ADDQ.W  #1,D2
  SUBQ.L  #1,D3
  BEQ.S LAB_A214A6
  CMPI.W  #$01e8,D2
  BNE.S LAB_A21472
  MOVEA.L A0,A2
  MOVEA.L (A7)+,A0
  MOVE.L  D2,$C(A1)
  MOVE.W  D2,DataBlockSize
  BSR.W SUB_A215DC
  BMI.S LAB_A214D0
  MOVE.L  D1,$10(A1)
  ST  TrackBufferModified
  BSR.W calcDataSectorChecksum
  BRA.S LAB_A21436
LAB_A214A6:
  MOVEA.L A0,A2
  MOVEA.L (A7)+,A0
  MOVE.W  D2,DataBlockSize
  MOVE.L  D2,$C(A1)
  CMPI.W  #$01e8,D2
  BNE.S LAB_A214C4
  BSR.W SUB_A215DC
  BMI.S LAB_A214D0
  MOVE.L  D1,$10(A1)
LAB_A214C4:
  ST  TrackBufferModified
  BSR.W calcDataSectorChecksum
  MOVEQ #0,D0
LAB_A214D0:
  MOVEM.L (A7)+,D1-D3/A1
  TST.W D0
  RTS
LAB_A214D8:
  MOVEM.L D1-D3/A1,-(A7)
  MOVE.L  D0,D1
  TST.B LAB_A48333
  BNE.S LAB_A214F2
  ST  LAB_A48332
  BSR.W SUB_A21A66
  BMI.S LAB_A21558
LAB_A214F2:
  MOVE.L  D1,D0
  MOVE.L  D0,D3
  ADD.L D0,LAB_A48314
  BSR.W SUB_A215DC
  BMI.S LAB_A21558
LAB_A21502:
  MOVEQ #0,D2
  MOVE.W  DataBlockSize,D2
  MOVE.L  D1,D0
  BSR.W loadSector
  BMI.S LAB_A21558
  MOVE.L  A0,-(A7)
  MOVEA.L A2,A0
LAB_A21516:
  JSR memSafeReadByte
  ADDQ.L  #1,A0
  MOVE.B  D0,0(A1,D2.W)
  ADDQ.W  #1,D2
  SUBQ.L  #1,D3
  BEQ.S LAB_A21546
  CMPI.W  #$0200,D2
  BNE.S LAB_A21516
  MOVEA.L A0,A2
  MOVEA.L (A7)+,A0
  MOVE.W  D2,DataBlockSize
  BSR.W SUB_A215DC
  BMI.S LAB_A21558
  ST  TrackBufferModified
  BRA.S LAB_A21502
LAB_A21546:
  MOVEA.L A0,A2
  MOVEA.L (A7)+,A0
  MOVE.W  D2,DataBlockSize
  ST  TrackBufferModified
  MOVEQ #0,D0
LAB_A21558:
  MOVEM.L (A7)+,D1-D3/A1
  TST.W D0
  RTS
LAB_A21560:
  MOVEM.L D1-D3/A1,-(A7)
  MOVE.L  D0,D1
  TST.B LAB_A48333
  BNE.S LAB_A2157A
  ST  LAB_A48332
  BSR.W SUB_A21A66
  BMI.S LAB_A215D4
LAB_A2157A:
  MOVE.L  D1,D0
  MOVE.L  D0,D3
  ADD.L D0,LAB_A48314
  BSR.S SUB_A215DC
  BMI.S LAB_A215D4
LAB_A21588:
  MOVEQ #0,D2
  MOVE.W  DataBlockSize,D2
  MOVE.L  D1,D0
  BSR.W loadSector
  BMI.S LAB_A215D4
  MOVE.L  A0,-(A7)
  MOVEA.L A2,A0
LAB_A2159C:
  MOVE.B  (A0)+,0(A1,D2.W)
  ADDQ.W  #1,D2
  SUBQ.L  #1,D3
  BEQ.S LAB_A215C2
  CMPI.W  #$0200,D2
  BNE.S LAB_A2159C
  MOVEA.L A0,A2
  MOVEA.L (A7)+,A0
  MOVE.W  D2,DataBlockSize
  BSR.S SUB_A215DC
  BMI.S LAB_A215D4
  ST  TrackBufferModified
  BRA.S LAB_A21588
LAB_A215C2:
  MOVEA.L A0,A2
  MOVEA.L (A7)+,A0
  MOVE.W  D2,DataBlockSize
  ST  TrackBufferModified
  MOVEQ #0,D0
LAB_A215D4:
  MOVEM.L (A7)+,D1-D3/A1
  TST.W D0
  RTS
SUB_A215DC:
  TST.B FastFileSystemFlag1
  BEQ.S LAB_A215F0
  CMPI.W  #$0200,DataBlockSize
  BEQ.S LAB_A21602
  BRA.S LAB_A215FA
LAB_A215F0:
  CMPI.W  #$01e8,DataBlockSize
  BEQ.S LAB_A21602
LAB_A215FA:
  MOVE.L  LAB_A4830C,D1
  BRA.S LAB_A21648
LAB_A21602:
  CLR.W DataBlockSize
  MOVEQ #0,D0
  MOVE.W  dataBLockSequenceNum,D0
  DIVU  #$0048,D0
  SWAP  D0
  TST.W D0
  BNE.S LAB_A21632
  BSR.S SUB_A21674
  BMI.S LAB_A2164A
  MOVE.L  D1,D0
  TST.L currentHeaderBlock
  BNE.S LAB_A2162E
  MOVE.L  D0,currentHeaderBlock
LAB_A2162E:
  BSR.W SUB_A21890
LAB_A21632:
  BSR.S findAndAllocateBitmapEntry
  BMI.S LAB_A2164A
  MOVE.L  D1,D0
  BSR.W SUB_A2186A
  MOVE.L  D1,LAB_A4830C
  ADDQ.W  #1,dataBLockSequenceNum
LAB_A21648:
  MOVEQ #0,D0
LAB_A2164A:
  TST.W D0
  RTS
findAndAllocateBitmapEntry:
  MOVEM.L A0,-(A7)
  LEA DiskBitmap,A0
  MOVEQ #$1A,D0
LAB_A2165A:
  TST.L (A0)+
  BNE.S LAB_A216A8
  DBF D0,LAB_A2165A
  ADDQ.L  #4,A0
  MOVEQ #$1A,D0
LAB_A21666:
  TST.L (A0)+
  BNE.S LAB_A216A8
  DBF D0,LAB_A21666
  MOVEM.L (A7)+,A0
  BRA.S LAB_A21690
SUB_A21674:
  MOVEM.L A0,-(A7)
  LEA LAB_A44FE2,A0
  MOVEQ #$1B,D0
LAB_A21680:
  TST.L (A0)+
  BNE.S LAB_A216A8
  DBF D0,LAB_A21680
  MOVEM.L (A7)+,A0
  BRA.W LAB_A21690
LAB_A21690:
  MOVEM.L A0,-(A7)
  LEA DiskBitmap,A0
  MOVEQ #$36,D0
LAB_A2169C:
  TST.L (A0)+
  BNE.S LAB_A216A8
  DBF D0,LAB_A2169C
  ;disk full
full:
  MOVEQ #-19,D0
  BRA.S LAB_A216C4
LAB_A216A8:
  MOVE.L  -(A0),D0
  MOVE.L  #DiskBitmap,D1
  SUBA.L  D1,A0
  MOVE.L  A0,D1
  LSL.L #3,D1
LAB_A216B6:
  LSR.L #1,D0
  BCS.S LAB_A216BE
  ADDQ.L  #1,D1
  BRA.S LAB_A216B6
LAB_A216BE:
  ADDQ.L  #2,D1
  CMP.W #1759,D1
  BHI.S full
  MOVE.L  D1,D0
  BSR.S allocDiskBitmapEntry
LAB_A216C4:
  MOVEM.L (A7)+,A0
  TST.W D0
  RTS
allocDiskBitmapEntry:
  MOVEM.L D1/A0,-(A7)
  MOVE.L  D1,D0
  LEA DiskBitmap,A0
  MOVEQ #-17,D0
  CMPI.L  #$000006df,D1
  BHI.S LAB_A21700
  SUBQ.L  #2,D1
  MOVE.L  D1,D0
  LSR.L #5,D0
  LSL.L #2,D0
  ADDA.L  D0,A0
  MOVE.L  D1,D0
  ANDI.W  #$001f,D0
  MOVE.L  (A0),D1
  BCLR  D0,D1
  BNE.S LAB_A216FC
  MOVEQ #-20,D0
  BRA.S LAB_A21700
LAB_A216FC:
  MOVE.L  D1,(A0)
  MOVEQ #0,D0
LAB_A21700:
  MOVEM.L (A7)+,D1/A0
  TST.W D0
  RTS
SUB_A21708:
  MOVEM.L D1/A0,-(A7)
  MOVE.L  D1,D0
  LEA DiskBitmap,A0
  MOVEQ #-17,D0
  CMPI.L  #$000006df,D1
  BHI.S LAB_A2173C
  SUBQ.L  #2,D1
  MOVE.L  D1,D0
  LSR.L #5,D0
  LSL.L #2,D0
  ADDA.L  D0,A0
  MOVE.L  D1,D0
  ANDI.W  #$001f,D0
  MOVE.L  (A0),D1
  BSET  D0,D1
  BEQ.S LAB_A21738
  MOVEQ #-23,D0
  BRA.S LAB_A2173C
LAB_A21738:
  MOVE.L  D1,(A0)
  MOVEQ #0,D0
LAB_A2173C:
  MOVEM.L (A7)+,D1/A0
  TST.W D0
  RTS
CMD_DELETE:
  BSR.W GetFilename
  MOVE.L  D0,D1
  MOVEQ #-14,D0
  TST.W D1
  BEQ.W PrintDiskOpResult
  LEA EXT_7000.W,A0
  BSR.W backupMfmBuffer
  MOVE.B  currDriveNo,-(A7)
  LEA stringWorkspace,A1
  MOVE.L  D1,D0
  MOVEA.L A1,A2
  BSR.W SUB_A236E2
  BMI.S LAB_A21794
  MOVE.W  D2,D0
  BSR.W SUB_A2197A
  BMI.S LAB_A21794
  MOVE.L  D1,D0
  MOVE.L  D2,D1
  BSR.S SUB_A2179E
  MOVE.W  D0,D1
LAB_A21780:
  BSR.W restoreMfmBuffer
  BMI.S LAB_A21788
  MOVE.W  D1,D0
LAB_A21788:
  BSR.W PrintDiskOpResult
  MOVE.B  (A7)+,currDriveNo
  RTS
LAB_A21794:
  SF  TrackBufferModified
  MOVE.W  D0,D1
  BRA.S LAB_A21780
SUB_A2179E:
  MOVEM.L D1-D5/A1-A2,-(A7)
  MOVE.L  D1,D2
  MOVE.L  D0,D5
  TST.B LAB_A48333
  BNE.S LAB_A217BC
  ST  LAB_A48332
  BSR.W SUB_A21A66
  BMI.W LAB_A21862
LAB_A217BC:
  MOVE.L  D5,D0
  BSR.W loadSector
  BMI.W LAB_A21862
  CMPI.L  #2,$1FC(A1)
  BNE.S LAB_A217E2
  LEA $138(A1),A2
  MOVEQ #$47,D1
  MOVEQ #-27,D0
LAB_A217D8:
  TST.L -(A2)
  BNE.W LAB_A21862
  DBF D1,LAB_A217D8
LAB_A217E2:
  MOVE.L  $1F0(A1),D3
  MOVE.L  D5,D1
LAB_A217E8:
  BSR.W SUB_A21708
  BMI.S LAB_A21862
  MOVE.L  D1,D0
  BSR.W loadSector
  BMI.S LAB_A21862
  MOVE.L  8(A1),D4
  SUBQ.W  #1,D4
  BMI.S LAB_A21820
  LEA $138(A1),A2
LAB_A21802:
  MOVE.L  -(A2),D1
  BEQ.S LAB_A21820
  BSR.W SUB_A21708
  BMI.S LAB_A21862
  DBF D4,LAB_A21802
  MOVE.L  $1F8(A1),D0
  BEQ.S LAB_A21820
  MOVE.L  D0,D1
  BSR.W loadSector
  BMI.S LAB_A21862
  BRA.S LAB_A217E8
LAB_A21820:
  MOVE.L  D2,D0
  BSR.W loadSector
  BMI.S LAB_A21862
  CMPI.L  #$fffffffd,$1FC(A1)
  BEQ.S LAB_A21844
  MOVEQ #$47,D4
  LEA $138(A1),A2
LAB_A21838:
  CMP.L -(A2),D5
  BEQ.S LAB_A21854
  DBF D4,LAB_A21838
  MOVEQ #-21,D0
  BRA.S LAB_A21862
LAB_A21844:
  MOVE.L  D3,$1F0(A1)
  ST  TrackBufferModified
  BSR.W calcDataSectorChecksum
  BRA.S LAB_A21860
LAB_A21854:
  MOVE.L  D3,(A2)
  ST  TrackBufferModified
  BSR.W calcDataSectorChecksum
LAB_A21860:
  MOVEQ #0,D0
LAB_A21862:
  MOVEM.L (A7)+,D1-D5/A1-A2
  TST.W D0
  RTS
SUB_A2186A:
  MOVEM.L D0-D1/A0,-(A7)
  MOVE.L  D0,D1
  MOVE.L  D1,D0
  LEA hashTable,A0
  LSR.L #5,D0
  LSL.L #2,D0
  ADDA.L  D0,A0
  MOVE.L  D1,D0
  ANDI.W  #$001f,D0
  MOVE.L  (A0),D1
  BSET  D0,D1
  MOVE.L  D1,(A0)
  MOVEM.L (A7)+,D0-D1/A0
  RTS
SUB_A21890:
  MOVEM.L D0-D1/A0,-(A7)
  MOVE.L  D0,D1
  MOVE.L  D1,D0
  LEA hashTable2,A0
  LSR.L #5,D0
  LSL.L #2,D0
  ADDA.L  D0,A0
  MOVE.L  D1,D0
  ANDI.W  #$001f,D0
  MOVE.L  (A0),D1
  BSET  D0,D1
  MOVE.L  D1,(A0)
  MOVEM.L (A7)+,D0-D1/A0
  RTS
SUB_A218B6:
  MOVEM.L D0/A0,-(A7)
  LEA hashTable,A0
  MOVEQ #$36,D0
LAB_A218C2:
  TST.L (A0)+
  BNE.S LAB_A218CE
  DBF D0,LAB_A218C2
  MOVEQ #0,D1
  BRA.S LAB_A218E4
LAB_A218CE:
  MOVE.L  -(A0),D0
  MOVE.L  #hashTable,D1
  SUBA.L  D1,A0
  MOVE.L  A0,D1
  LSL.L #3,D1
LAB_A218DC:
  LSR.L #1,D0
  BCS.S LAB_A218E4
  ADDQ.L  #1,D1
  BRA.S LAB_A218DC
LAB_A218E4:
  CMP.W #1759,D1
  BLE.S .notfull
  MOVEQ #0,D1
.notfull
  MOVEM.L (A7)+,D0/A0
  TST.W D0
  RTS
SUB_A218EC:
  BSR.S SUB_A218B6
  TST.L D1
  BNE.S LAB_A218F4
  RTS
LAB_A218F4:
  MOVEM.L D0-D1/A0,-(A7)
  MOVE.L  D1,D0
  LEA hashTable,A0
  LSR.L #5,D0
  LSL.L #2,D0
  ADDA.L  D0,A0
  MOVE.L  D1,D0
  ANDI.W  #$001f,D0
  MOVE.L  (A0),D1
  BCLR  D0,D1
  MOVE.L  D1,(A0)
  MOVEM.L (A7)+,D0-D1/A0
  RTS
SUB_A21918:
  MOVEM.L D0/A0,-(A7)
  LEA hashTable2,A0
  MOVEQ #$36,D0
LAB_A21924:
  TST.L (A0)+
  BNE.S LAB_A21930
  DBF D0,LAB_A21924
  MOVEQ #0,D1
  BRA.S LAB_A21946
LAB_A21930:
  MOVE.L  -(A0),D0
  MOVE.L  #hashTable2,D1
  SUBA.L  D1,A0
  MOVE.L  A0,D1
  LSL.L #3,D1
LAB_A2193E:
  LSR.L #1,D0
  BCS.S LAB_A21946
  ADDQ.L  #1,D1
  BRA.S LAB_A2193E
LAB_A21946:
  CMP.W #1759,D1
  BLE.S .notfull
  MOVEQ #0,D1
.notfull
  MOVEM.L (A7)+,D0/A0
  TST.W D0
  RTS
SUB_A2194E:
  BSR.S SUB_A21918
  TST.L D1
  BNE.S LAB_A21956
  RTS
LAB_A21956:
  MOVEM.L D0-D1/A0,-(A7)
  MOVE.L  D1,D0
  LEA hashTable2,A0
  LSR.L #5,D0
  LSL.L #2,D0
  ADDA.L  D0,A0
  MOVE.L  D1,D0
  ANDI.W  #$001f,D0
  MOVE.L  (A0),D1
  BCLR  D0,D1
  MOVE.L  D1,(A0)
  MOVEM.L (A7)+,D0-D1/A0
  RTS
SUB_A2197A:
  MOVE.L  D3,-(A7)
  MOVE.L  D0,D3
  BSR.S SUB_A219A0
  CMPI.W  #$ffe7,D0
  BEQ.S LAB_A2198C
  MOVE.L  (A7)+,D3
  TST.W D0
  RTS
LAB_A2198C:
  MOVE.L  D3,D0
  MOVE.L  (A7)+,D3
  BRA.W SUB_A21994
SUB_A21994:
  MOVE.L  D6,-(A7)
  MOVEQ #-3,D6
  BSR.S SUB_A219B4
  MOVE.L  (A7)+,D6
  TST.W D0
  RTS
SUB_A219A0:
  MOVE.L  D6,-(A7)
  MOVEQ #2,D6
  BSR.S SUB_A219B4
  CMPI.W  #$ffee,D0
  BNE.S LAB_A219AE
  MOVEQ #-25,D0
LAB_A219AE:
  MOVE.L  (A7)+,D6
  TST.W D0
  RTS
SUB_A219B4:
  MOVEM.L D3-D5/A1-A3,-(A7)
  MOVE.W  D0,D5
  MOVEA.L A1,A2
  BSR.S calcFilenameHash
  LSL.L #2,D0
  MOVE.L  D0,D2
  MOVE.L  D1,D4
  MOVE.L  D1,D0
  BSR.W loadSector
  BMI.S LAB_A21A22
  MOVE.L  $18(A1,D2.W),D0
  BEQ.S LAB_A21A2A
  MOVE.L  D4,D2
LAB_A219D4:
  MOVE.L  D2,D3
  MOVE.L  D0,D2
  BSR.W loadSector
  BMI.S LAB_A21A22
  LEA $1B0(A1),A3
  MOVEM.L D5/A2-A3,-(A7)
  CMP.L $1FC(A1),D6
  BNE.S LAB_A21A16
  CMP.B (A3)+,D5
  BNE.S LAB_A21A16
  SUBQ.W  #1,D5
  MOVEQ #0,D0
LAB_A219F4:
  MOVE.B  (A3)+,D0
  JSR UpperCaseChar
  SUB.B (A2)+,D0
  BEQ.S LAB_A21A06
  CMPI.B  #$e0,D0
  BNE.S LAB_A21A16
LAB_A21A06:
  DBF D5,LAB_A219F4
  MOVEM.L (A7)+,D5/A2-A3
  MOVE.L  D2,D1
  MOVE.L  D3,D2
  MOVEQ #0,D0
  BRA.S LAB_A21A22
LAB_A21A16:
  MOVEM.L (A7)+,D5/A2-A3
  MOVE.L  $1F0(A1),D0
  BEQ.S LAB_A21A2A
  BRA.S LAB_A219D4
LAB_A21A22:
  MOVEM.L (A7)+,D3-D5/A1-A3
  TST.W D0
  RTS
LAB_A21A2A:
  MOVEQ #-18,D0
  BRA.S LAB_A21A22
calcFilenameHash:
  MOVEM.L D1-D2/A1,-(A7)
  MOVEQ #0,D1
  MOVE.W  D0,D1
  SUBQ.W  #1,D0
LAB_A21A38:
  MULU  #$000d,D1
  MOVEQ #0,D2
  MOVE.B  (A1)+,D2
  EXG D2,D0
  JSR UpperCaseChar
  EXG D2,D0
  ADD.W D2,D1
  ANDI.W  #$07ff,D1
  DBF D0,LAB_A21A38
  EXT.L D1
  DIVU  #$0048,D1
  MOVEQ #0,D0
  SWAP  D1
  MOVE.W  D1,D0
  MOVEM.L (A7)+,D1-D2/A1
  RTS
SUB_A21A66:
  MOVEM.L D1/A1-A2,-(A7)
  BSR.W GetRootBlockNum
  BMI.S LAB_A21ADC
  MOVE.L  D1,D0
  BSR.W loadSector      ;load root block
  BMI.S LAB_A21ADC
  MOVEQ #-16,D0
  TST.L $138(A1)
  BEQ.S LAB_A21ADC      ;bitmap not valid
  MOVE.L  $13C(A1),D0
  MOVE.L  D0,bitmapBlock
  MOVE.B  currDriveNo,saveCurrDriveNo
  TST.B LAB_A48332
  BEQ.S LAB_A21AAA
  CLR.L $138(A1)      ;bitmap invalid
  BSR.W calcDataSectorChecksum
  ST  TrackBufferModified
LAB_A21AAA:
  BSR.W loadSector    ;load bitmap
  BMI.S LAB_A21ADC
  MOVE.L  (A1)+,D1
  LEA DiskBitmap,A2
  MOVEQ #$36,D0
LAB_A21ABA:
  ADD.L (A1),D1
  MOVE.L  (A1)+,(A2)+
  DBF D0,LAB_A21ABA
  MOVEQ #$47,D0
LAB_A21AC4:
  ADD.L (A1)+,D1
  DBF D0,LAB_A21AC4
  MOVEQ #-15,D0
  TST.L D1
  BNE.S LAB_A21ADC    ;bitmap checksum error
  MOVEQ #0,D0
  MOVE.B  LAB_A48332,LAB_A48333
LAB_A21ADC:
  MOVEM.L (A7)+,D1/A1-A2
  TST.W D0
  RTS
SUB_A21AE4:
  MOVEM.L A1-A3,-(A7)
  MOVE.B  currDriveNo,-(A7)
  MOVE.B  saveCurrDriveNo,currDriveNo
  MOVE.L  bitmapBlock,D0
  BSR.W loadSector
  BMI.S LAB_A21B40
  LEA 4(A1),A3
  LEA DiskBitmap,A2
  MOVEQ #$36,D0
LAB_A21B10:
  MOVE.L  (A2)+,(A3)+
  DBF D0,LAB_A21B10
  BSR.W calcBitmapChecksum
  ST  TrackBufferModified
  BSR.W GetRootBlockNum
  MOVE.L  D1,D0
  BSR.W loadSector            ;load root block
  BMI.S LAB_A21B40
  MOVE.L  #$ffffffff,$138(A1) ;set bitmap as valid
  ST  TrackBufferModified
  BSR.W calcDataSectorChecksum
  MOVEQ #0,D0
LAB_A21B40:
  MOVE.B  (A7)+,currDriveNo
  MOVEM.L (A7)+,A1-A3
  TST.W D0
  RTS
CMD_LM:
  BSR.W GetFilename
  MOVE.W  D0,D1
  MOVEQ #-14,D0
  TST.W D1
  BEQ.W PrintDiskOpResult
  JSR ReadParameter
  TST.B ParamFound
  BEQ.W LAB_A21070
apiLoadFile2:
  MOVEA.L D0,A1
  MOVEA.L D0,A2
  LEA EXT_7000.W,A0
  BSR.W backupMfmBuffer
  LEA stringWorkspace,A1
  MOVE.W  D1,D0
  MOVE.B  currDriveNo,-(A7)
  BSR.W OpenFile
  BMI.S LAB_A21BC6
  MOVE.L  A0,-(A7)
  LEA LoadingFromText(PC),A0
  JSR PrintText
  MOVE.L  A2,D0
  JSR PrintAddressHex
  ADD.L fileSize,D0
  LEA LoadingToText(PC),A0
  JSR PrintText
  JSR PrintAddressHex
  JSR PrintCrIfNotBlankLine
  MOVEA.L (A7)+,A0
  MOVE.L  fileSize,D0
  BSR.S readFileData
LAB_A21BC6:
  MOVE.B  (A7)+,currDriveNo
  BSR.W PrintDiskOpResult
  BSR.W restoreMfmBuffer
  RTS

LoadingFromText:
  DC.B  "Loading from ",0

LoadingToText:
  DC.B  " to ",0,0

readFileData:
  MOVEM.L D1-D2/A1,-(A7)
  MOVE.L  D0,D1
  CMPA.L  #EXT_A400,A2
  BHI.S LAB_A21C48
  MOVEA.L A2,A1
  ADDA.L  D0,A1
  CMPA.L  #EXT_A500,A1
  BHI.S LAB_A21C20
  MOVE.L  D0,D1
  MOVEA.L ChipMemEnd,A1
  SUBA.L  #$00003400,A1
  BSR.W SUB_A22006
  BMI.S LAB_A21C58
  MOVE.L  D1,D0
  BSR.W SUB_A21D10
  BRA.S LAB_A21C58
LAB_A21C20:
  MOVE.L  D0,D1
  MOVE.L  #EXT_A500,D0
  SUB.L A2,D0
  SUB.L D0,D1
  MOVE.L  D0,D2
  MOVEA.L ChipMemEnd,A1
  SUBA.L  #$00003400,A1
  BSR.W SUB_A22006
  BMI.S LAB_A21C58
  MOVE.L  D2,D0
  BSR.W SUB_A21D10
  BMI.S LAB_A21C58
LAB_A21C48:
  LEA EXT_7000.W,A1
  BSR.W SUB_A22006
  BMI.S LAB_A21C58
  MOVE.L  D1,D0
  BSR.W readFileBytes
LAB_A21C58:
  MOVEM.L (A7)+,D1-D2/A1
  TST.W D0
  RTS
SaveFileData:
  MOVEM.L D1-D2/A1,-(A7)
  MOVE.L  D0,D1
  TST.B LAB_A48333
  BNE.S LAB_A21C7C
  ST  LAB_A48332
  BSR.W SUB_A21A66
  BMI.W LAB_A21D08
LAB_A21C7C:
  MOVE.L  D1,D0
  CMPA.L  #EXT_A400,A2
  BHI.S LAB_A21CD6
  MOVEA.L A2,A1
  ADDA.L  D0,A1
  CMPA.L  #EXT_A500,A1
  BHI.S LAB_A21CAE
  MOVE.L  D0,D1
  MOVEA.L ChipMemEnd,A1
  SUBA.L  #$00003400,A1
  BSR.W SUB_A22006
  BMI.S LAB_A21D08
  MOVE.L  D1,D0
  BSR.W AddDataChunk
  BRA.S LAB_A21D08
LAB_A21CAE:
  MOVE.L  D0,D1
  MOVE.L  #EXT_A500,D0
  SUB.L A2,D0
  SUB.L D0,D1
  MOVE.L  D0,D2
  MOVEA.L ChipMemEnd,A1
  SUBA.L  #$00003400,A1
  BSR.W SUB_A22006
  BMI.S LAB_A21D08
  MOVE.L  D2,D0
  BSR.W AddDataChunk
  BMI.S LAB_A21D08
LAB_A21CD6:
  MOVE.L  ChipMemEnd,D0
  SUBI.L  #$00003800,D0
  CMPA.L  D0,A2
  BLS.S LAB_A21CF0
  LEA EXT_7000.W,A1
  BSR.W SUB_A22006
  BMI.S LAB_A21D08
LAB_A21CF0:
  MOVE.L  A2,D2
  ADD.L D1,D2
  CMP.L D0,D2
  BLS.S LAB_A21D02
  LEA EXT_7000.W,A1
  BSR.W SUB_A22006
  BMI.S LAB_A21D08
LAB_A21D02:
  MOVE.L  D1,D0
  BSR.W writeFileBytes
LAB_A21D08:
  MOVEM.L (A7)+,D1-D2/A1
  TST.W D0
  RTS
SUB_A21D10:
  TST.B FastFileSystemFlag1
  BNE.W LAB_A21DF4
  MOVEM.L D1-D3/A1,-(A7)
  MOVE.L  D0,D3
  MOVE.W  LAB_A48322,D2
  MOVE.L  LAB_A4831A,D0
  BSR.W loadSector
  BMI.S LAB_A21D7A
  EXG A0,A2
  CMPI.W  #$01e8,D2
  BEQ.S LAB_A21D52
LAB_A21D3A:
  MOVE.B  $18(A1,D2.W),D0
  JSR memSafeUpdateByte
  ADDQ.L  #1,A0
  ADDQ.W  #1,D2
  SUBQ.L  #1,D3
  BEQ.S LAB_A21D70
  CMPI.W  #$01e8,D2
  BNE.S LAB_A21D3A
LAB_A21D52:
  MOVEQ #0,D2
  MOVE.L  $10(A1),D0
  BNE.S LAB_A21D5E
  MOVEQ #-22,D0
  BRA.S LAB_A21D82
LAB_A21D5E:
  MOVE.L  D0,LAB_A4831A
  EXG A0,A2
  BSR.W loadSector
  BMI.S LAB_A21D7A
  EXG A0,A2
  BRA.S LAB_A21D3A
LAB_A21D70:
  EXG A0,A2
  MOVE.W  D2,LAB_A48322
  MOVEQ #0,D0
LAB_A21D7A:
  MOVEM.L (A7)+,D1-D3/A1
  TST.W D0
  RTS
LAB_A21D82:
  EXG A0,A2
  BRA.S LAB_A21D7A
readFileBytes:
  TST.B FastFileSystemFlag1
  BNE.W LAB_A21EC4
  MOVEM.L D1-D3/A1,-(A7)
  MOVE.L  D0,D3
  MOVE.W  LAB_A48322,D2
  MOVE.L  LAB_A4831A,D0
  BSR.W loadSector
  BMI.S LAB_A21DE8
  EXG A0,A2
  CMPI.W  #$01e8,D2
  BEQ.S LAB_A21DC0
LAB_A21DB0:
  MOVE.B  $18(A1,D2.W),(A0)+
  ADDQ.W  #1,D2
  SUBQ.L  #1,D3
  BEQ.S LAB_A21DDE
  CMPI.W  #$01e8,D2
  BNE.S LAB_A21DB0
LAB_A21DC0:
  MOVEQ #0,D2
  MOVE.L  $10(A1),D0
  BNE.S LAB_A21DCC
  MOVEQ #-22,D0
  BRA.S LAB_A21DF0
LAB_A21DCC:
  MOVE.L  D0,LAB_A4831A
  EXG A0,A2
  BSR.W loadSector
  BMI.S LAB_A21DE8
  EXG A0,A2
  BRA.S LAB_A21DB0
LAB_A21DDE:
  EXG A0,A2
  MOVE.W  D2,LAB_A48322
  MOVEQ #0,D0
LAB_A21DE8:
  MOVEM.L (A7)+,D1-D3/A1
  TST.W D0
  RTS
LAB_A21DF0:
  EXG A0,A2
  BRA.S LAB_A21DE8
LAB_A21DF4:
  MOVEM.L D1-D3/A1/A3-A4,-(A7)
  MOVE.L  D0,D3
  MOVE.W  LAB_A48322,D2
  MOVEA.L LAB_A4831A,A3
  MOVEQ #0,D0
  MOVE.W  (A3),D0
  BSR.W loadSector
  BMI.W LAB_A21EB8
  EXG A0,A2
  CMPI.W  #$0200,D2
  BEQ.S LAB_A21E38
LAB_A21E1A:
  MOVE.B  0(A1,D2.W),D0
  JSR memSafeUpdateByte
  ADDQ.L  #1,A0
  ADDQ.W  #1,D2
  ADDQ.L  #1,LAB_A484D6
  SUBQ.L  #1,D3
  BEQ.S LAB_A21EAE
  CMPI.W  #$0200,D2
  BNE.S LAB_A21E1A
LAB_A21E38:
  MOVEQ #0,D2
  MOVEQ #-22,D0
  MOVE.L  LAB_A484D6,D1
  CMP.L fileSize,D1
  BCC.S LAB_A21EC0
  CMPI.L  #hashTable,LAB_A4831A
  BNE.S LAB_A21E90
  MOVE.L  fileExtensionBlock,D0
  BNE.S LAB_A21E62
  MOVEQ #-22,D0
  BRA.S LAB_A21EC0
LAB_A21E62:
  EXG A0,A2
  JSR loadSector(PC)
  BMI.S LAB_A21EB8
  EXG A0,A2
  MOVE.L  $1F8(A1),fileExtensionBlock
  LEA hashTable,A3
  LEA $18(A1),A4
  MOVEQ #$47,D0
LAB_A21E80:
  MOVE.W  2(A4),(A3)+
  ADDQ.L  #4,A4
  DBF D0,LAB_A21E80
  MOVE.L  A3,LAB_A4831A
LAB_A21E90:
  MOVEA.L LAB_A4831A,A3
  MOVEQ #0,D0
  MOVE.W  -(A3),D0
  MOVE.L  A3,LAB_A4831A
  EXG A0,A2
  BSR.W loadSector
  BMI.S LAB_A21EB8
  EXG A0,A2
  BRA.W LAB_A21E1A
LAB_A21EAE:
  EXG A0,A2
  MOVE.W  D2,LAB_A48322
  MOVEQ #0,D0
LAB_A21EB8:
  MOVEM.L (A7)+,D1-D3/A1/A3-A4
  TST.W D0
  RTS
LAB_A21EC0:
  EXG A0,A2
  BRA.S LAB_A21EB8
LAB_A21EC4:
  MOVEM.L D1-D3/A1/A3-A4,-(A7)
  MOVE.L  D0,D3
  MOVE.W  LAB_A48322,D2
  MOVEA.L LAB_A4831A,A3
  MOVEQ #0,D0
  MOVE.W  (A3),D0
  BSR.W loadSector
  BMI.W LAB_A21F80
  EXG A0,A2
  CMPI.W  #$0200,D2
  BEQ.S LAB_A21F00
LAB_A21EEA:
  MOVE.B  0(A1,D2.W),(A0)+
  ADDQ.W  #1,D2
  ADDQ.L  #1,LAB_A484D6
  SUBQ.L  #1,D3
  BEQ.S LAB_A21F76
  CMPI.W  #$0200,D2
  BNE.S LAB_A21EEA
LAB_A21F00:
  MOVEQ #0,D2
  MOVEQ #-22,D0
  MOVE.L  LAB_A484D6,D1
  CMP.L fileSize,D1
  BCC.S LAB_A21F88
  CMPI.L  #hashTable,LAB_A4831A
  BNE.S LAB_A21F58
  MOVE.L  fileExtensionBlock,D0
  BNE.S LAB_A21F2A
  MOVEQ #-22,D0
  BRA.S LAB_A21F88
LAB_A21F2A:
  EXG A0,A2
  JSR loadSector(PC)
  BMI.S LAB_A21F80
  EXG A0,A2
  MOVE.L  $1F8(A1),fileExtensionBlock
  LEA hashTable,A3
  LEA $18(A1),A4
  MOVEQ #$47,D0
LAB_A21F48:
  MOVE.W  2(A4),(A3)+
  ADDQ.L  #4,A4
  DBF D0,LAB_A21F48
  MOVE.L  A3,LAB_A4831A
LAB_A21F58:
  MOVEA.L LAB_A4831A,A3
  MOVEQ #0,D0
  MOVE.W  -(A3),D0
  MOVE.L  A3,LAB_A4831A
  EXG A0,A2
  BSR.W loadSector
  BMI.S LAB_A21F80
  EXG A0,A2
  BRA.W LAB_A21EEA
LAB_A21F76:
  EXG A0,A2
  MOVE.W  D2,LAB_A48322
  MOVEQ #0,D0
LAB_A21F80:
  MOVEM.L (A7)+,D1-D3/A1/A3-A4
  TST.W D0
  RTS
LAB_A21F88:
  EXG A0,A2
  BRA.S LAB_A21F80
OpenFile:
  MOVEM.L D1-D2/A1-A2,-(A7)
  MOVE.W  D0,D1
  MOVEA.L A1,A2
  BSR.W SUB_A236E2
  BMI.S LAB_A21FFE
  JSR checkFileSystem
  BMI.S LAB_A21FFE
  MOVE.W  D2,D0
  BSR.W SUB_A21994
  BMI.S LAB_A21FFE
  MOVE.L  D1,D0
  BSR.W loadSector
  BMI.S LAB_A21FFE
  MOVE.L  $10(A1),LAB_A4831A
  MOVE.L  $144(A1),fileSize
  MOVE.L  $1F8(A1),fileExtensionBlock
  CLR.W LAB_A48322
  CLR.L LAB_A484D6
  TST.B FastFileSystemFlag1
  BEQ.S LAB_A21FFC
  LEA hashTable,A2
  LEA $18(A1),A1
  MOVEQ #$47,D0
LAB_A21FEA:
  MOVE.W  2(A1),(A2)+
  ADDQ.L  #4,A1
  DBF D0,LAB_A21FEA
  SUBQ.L  #2,A2
  MOVE.L  A2,LAB_A4831A
LAB_A21FFC:
  MOVEQ #0,D0
LAB_A21FFE:
  MOVEM.L (A7)+,D1-D2/A1-A2
  TST.W D0
  RTS
SUB_A22006:
  MOVEQ #0,D0
  MOVE.B  LAB_A48333,-(A7)
  SF  LAB_A48333
  CMPA.L  A0,A1
  BEQ.S LAB_A22022
  BSR.W restoreMfmBuffer
  EXG A1,A0
  BSR.W backupMfmBuffer
LAB_A22022:
  MOVE.B  (A7)+,LAB_A48333
  TST.W D0
  RTS
SUB_A2202C:
  MOVEM.L D1-D3/A0,-(A7)
  LEA DiskBitmap,A0
  MOVEQ #$36,D1
  MOVEQ #0,D0
LAB_A2203A:
  MOVE.L  (A0)+,D2
  MOVEQ #$1F,D3
LAB_A2203E:
  LSR.L #1,D2
  BCC.S LAB_A22044
  TST.W D1
  BNE.S .notlast
  CMP.W #1,D3
  BGT.S .notlast
  SUBQ.L  #1,D0
.notlast
  ADDQ.L  #1,D0
LAB_A22044:
  DBF D3,LAB_A2203E
  DBF D1,LAB_A2203A
  MOVEM.L (A7)+,D1-D3/A0
  RTS
CMD_CD:
  BSR.W SUB_A2231A
  LEA EXT_70000,A0
  BSR.W backupMfmBuffer
  TST.W D0
  BEQ.S LAB_A2206E
  LEA stringWorkspace,A2
  BSR.S SUB_A22080
  BMI.S LAB_A22072
LAB_A2206E:
  BSR.W SUB_A22160
LAB_A22072:
  BSR.W PrintDiskOpResult
  BSR.W restoreMfmBuffer
  BMI.W PrintDiskOpResult
  RTS
SUB_A22080:
  MOVEM.L D1-D5/A1-A3,-(A7)
  CMPI.W  #1,D0
  BLS.S LAB_A220CA
  CMPI.B  #$3a,1(A2)      ;colon
  BNE.S LAB_A220CA
  CMPI.B  #$2f,(A2)       ;slash
  BLS.S LAB_A220AE

  ;ramdisk (r:)
  MOVEQ #4,D1
  CMP.B #"R",(A2)
  BEQ.S .1
  CMP.B #"r",(A2)
  BEQ.S .1

  MOVEQ #0,D1
  CMPI.B  #$33,(A2)       ;3
  BHI.S LAB_A220AE
  MOVE.B  (A2),D1
  SUBI.B  #$30,D1
.1
  BTST  D1,DrivesConnectedLo
  BNE.S LAB_A220B4
LAB_A220AE:
  CMP.B #4,D1
  BEQ.S .noramdisk
  MOVEQ #-13,D0
  BRA.W LAB_A22158
.noramdisk
  MOVEQ #-35,D0     ;ramdisk not active
  BRA.W LAB_A22158

LAB_A220B4:
  MOVE.B  D1,currDriveNo
  MOVE.L  #$00000370,currentDirBlock
  ADDQ.L  #2,A2
  SUBQ.W  #2,D0
  BEQ.S LAB_A22148
LAB_A220CA:
  MOVE.W  D0,D3
  MOVE.L  currentDirBlock,-(A7)
  SUBQ.W  #1,D3
LAB_A220D4:
  MOVEA.L A2,A1
  MOVEQ #0,D0
LAB_A220D8:
  CMPI.B  #$2f,(A2)+
  BEQ.S LAB_A22100
  ADDQ.L  #1,D0
  DBF D3,LAB_A220D8
  TST.W D0
  BEQ.S LAB_A22146
  MOVE.W  D0,D4
  BSR.W loadRootBlock
  BMI.S LAB_A22152
  MOVE.W  D4,D0
  BSR.W SUB_A219A0
  BMI.S LAB_A22152
  MOVE.L  D1,currentDirBlock
  BRA.S LAB_A22146
LAB_A22100:
  TST.W D0
  BEQ.S LAB_A22122
  MOVE.W  D0,D4
  BSR.W loadRootBlock
  BMI.S LAB_A22152
  MOVE.W  D4,D0
  BSR.W SUB_A219A0
  BMI.S LAB_A22152
  MOVE.L  D1,currentDirBlock
  MOVEQ #-24,D0
  SUBQ.W  #1,D3
  BMI.S LAB_A22152
  BRA.S LAB_A220D4
LAB_A22122:
  MOVE.L  currentDirBlock,D0
  BSR.W loadSector
  BMI.S LAB_A22152
  MOVEQ #-24,D0
  TST.L $1F4(A1)
  BEQ.S LAB_A22152
  MOVE.L  $1F4(A1),currentDirBlock
  MOVEQ #-24,D0
  SUBQ.W  #1,D3
  BMI.S LAB_A22146
  BRA.S LAB_A220D4
LAB_A22146:
  TST.L (A7)+
LAB_A22148:
  MOVEQ #0,D0
  MOVEM.L (A7)+,D1-D5/A1-A3
  TST.W D0
  RTS
LAB_A22152:
  MOVE.L  (A7)+,currentDirBlock
LAB_A22158:
  MOVEM.L (A7)+,D1-D5/A1-A3
  TST.W D0
  RTS
SUB_A22160:
  MOVEM.L D1-D3/A1-A3,-(A7)
  LEA LAB_A4520A,A3
  MOVEQ #0,D3
  BSR.W loadRootBlock
  BMI.S LAB_A221CE
LAB_A22172:
  MOVE.L  D1,(A3)+
  ADDQ.W  #1,D3
  MOVE.L  D1,D0
  BSR.W loadSector
  BMI.S LAB_A221CE
  MOVE.L  $1F4(A1),D1
  BNE.S LAB_A22172
  SUBQ.W  #1,D3
  MOVE.L  -(A3),D0
  BSR.W loadSector
  BMI.S LAB_A221CE
  BSR.S SUB_A221D6
  MOVE.W  #$003a,D0
  CMPI.W  #$004e,cursorX
  BHI.S LAB_A221A4
  JSR PrintChar
LAB_A221A4:
  SUBQ.W  #1,D3
  BMI.S LAB_A221CC
  BRA.S LAB_A221BE
LAB_A221AA:
  MOVE.W  #$002f,D0
  CMPI.W  #$004e,cursorX
  BHI.S LAB_A221BE
  JSR PrintChar
LAB_A221BE:
  MOVE.L  -(A3),D0
  BSR.W loadSector
  BMI.S LAB_A221CE
  BSR.S SUB_A221D6
  DBF D3,LAB_A221AA
LAB_A221CC:
  MOVEQ #0,D0
LAB_A221CE:
  MOVEM.L (A7)+,D1-D3/A1-A3
  TST.W D0
  RTS
SUB_A221D6:
  MOVEM.L D0-D1/A0,-(A7)
  LEA $1B0(A1),A0
  MOVEQ #0,D0
  MOVE.B  (A0)+,D0
  MOVE.B  0(A0,D0.W),-(A7)
  CLR.B 0(A0,D0.W)
  MOVE.W  cursorX,D1
  ADD.W D0,D1
  CMPI.W  #$004e,D1
  BHI.S LAB_A221FE
  JSR PrintText
LAB_A221FE:
  MOVE.B  (A7)+,0(A0,D0.W)
  MOVEM.L (A7)+,D0-D1/A0
  RTS
CMD_MAKEDIR:
  SF  forceUpper
  BSR.W SUB_A2231A
  ST  forceUpper
  TST.W D0
  BEQ.W LAB_A21070
  LEA EXT_70000,A0
  BSR.W backupMfmBuffer
  LEA stringWorkspace,A1
  BSR.S SUB_A22240
  MOVE.W  D0,D1
  BSR.W restoreMfmBuffer
  BMI.S LAB_A2223A
  MOVE.W  D1,D0
LAB_A2223A:
  BSR.W PrintDiskOpResult
  RTS
SUB_A22240:
  MOVEM.L D1-D7/A1-A4,-(A7)
  MOVE.B  currDriveNo,-(A7)
  MOVE.W  D0,D3
  MOVEA.L A1,A2
  BSR.W SUB_A236E2
  BMI.W LAB_A22304
  MOVE.L  D1,D6
  MOVEA.L A1,A4
  MOVE.W  D2,D3
  MOVE.W  D3,D0
  BSR.W SUB_A2197A
  CMPI.W  #$ffee,D0
  BEQ.S LAB_A22274
  TST.W D0
  BMI.W LAB_A22304
  MOVEQ #-26,D0
  BRA.W LAB_A22304
LAB_A22274:
  TST.B LAB_A48333
  BNE.S LAB_A22288
  ST  LAB_A48332
  BSR.W SUB_A21A66
  BMI.S LAB_A22304
LAB_A22288:
  BSR.W SUB_A21674
  BMI.S LAB_A22304
  MOVE.L  D1,D4
  MOVE.L  D3,D0
  MOVEA.L A4,A1
  BSR.W calcFilenameHash
  MOVE.L  D0,D5
  MOVE.L  D6,D0
  BSR.W loadSector
  BMI.S LAB_A22304
  LSL.L #2,D5
  MOVE.L  $18(A1,D5.W),D7
  MOVE.L  D4,$18(A1,D5.W)
  ST  TrackBufferModified
  BSR.W calcDataSectorChecksum
  MOVE.L  D4,D0
  BSR.W loadSector
  BMI.S LAB_A22304
  MOVE.L  #2,(A1)
  MOVE.L  D4,4(A1)
  LEA 8(A1),A2
  MOVEQ #$69,D0
LAB_A222CE:
  CLR.L (A2)+
  DBF D0,LAB_A222CE
  LEA $1B0(A1),A2
  MOVE.B  D3,(A2)+
  SUBQ.W  #1,D3
  MOVEA.L A4,A3
LAB_A222DE:
  MOVE.B  (A3)+,(A2)+
  DBF D3,LAB_A222DE
  MOVE.L  D7,$1F0(A1)
  MOVE.L  D6,$1F4(A1)
  CLR.L $1F8(A1)
  MOVE.L  #2,$1FC(A1)
  ST  TrackBufferModified
  BSR.W calcDataSectorChecksum
  MOVEQ #0,D0
LAB_A22304:
  MOVE.B  (A7)+,currDriveNo
  MOVEM.L (A7)+,D1-D7/A1-A4
  TST.W D0
  RTS
GetFilename:
  ST  LAB_A4839A
  BRA.S LAB_A22320
SUB_A2231A:
  SF  LAB_A4839A
LAB_A22320:
  JSR readCmdCharSkipSpaces
  JSR SUB_A1827E
  TST.B endOfCmdString
  BNE.S LAB_A2237E
  CMPI.W  #$0022,D0
  BNE.S LAB_A22340
  JMP SUB_A1375E
LAB_A22340:
  MOVEM.L D1-D2/A1,-(A7)
  MOVEQ #0,D1
  MOVEQ #0,D2
  LEA stringWorkspace,A1
LAB_A2234E:
  JSR readCmdChar
  TST.B endOfCmdString
  BNE.S LAB_A22376
  CMPI.B  #$2c,D0
  BEQ.S LAB_A22376
  ADDQ.L  #1,D1
  CMPI.B  #$20,D0
  BEQ.S LAB_A2236C
  MOVE.L  D1,D2
LAB_A2236C:
  JSR InvalidAsciiToDot
  MOVE.B  D0,(A1)+
  BRA.S LAB_A2234E
LAB_A22376:
  MOVE.L  D2,D0
  MOVEM.L (A7)+,D1-D2/A1
  BRA.S LAB_A22380
LAB_A2237E:
  MOVEQ #0,D0
LAB_A22380:
  TST.B LAB_A4839A
  BEQ.S LAB_A22394
  SF  LAB_A4839A
  TST.W D0
  BEQ.W displayFileSelector
LAB_A22394:
  RTS
SUB_A22396:
  MOVEM.L D0-D1/A0,-(A7)
  TST.B LAB_A48334
  BEQ.S LAB_A223D6
  MOVEQ #3,D0
  MOVEQ #6,D1
  LEA rootBlockLoadedFlags,A0
LAB_A223AC:
  ORI.B #$78,ciabprb
  BCLR  D1,ciabprb
  BTST  #2,ciaapra
  BNE.S LAB_A223C8
  SF  0(A0,D0.W)
LAB_A223C8:
  SUBQ.W  #1,D1
  DBF D0,LAB_A223AC
  ORI.B #$78,ciabprb
LAB_A223D6:
  MOVEM.L (A7)+,D0-D1/A0
  RTS
SUB_A223DC:
  MOVEM.L D1-D7/A0-A6,-(A7)
  MOVEQ #0,D0
  ADD.L ChipMemEnd,D0
  TST.L SlowMemEnd
  BEQ.S LAB_A223FC
  ADD.L SlowMemEnd,D0
  SUBI.L  #$00c00000,D0
LAB_A223FC:
  ADD.L autoConfigMemEnd,D0
  SUB.L autoConfigMemStart,D0
  SWAP  D0
  MOVE.L  #$0005b000,D1
  DIVU  D0,D1
  ANDI.L  #$0000ffff,D1
  LSR.L #3,D1
  MOVE.W  D1,LAB_A483BA
  CLR.L LAB_A483C0
  MOVE.W  #$0100,dmacon+hardware
  MOVE.W  #$4000,intena+hardware
  JSR SwapChipRam1
  MOVE.L  Int2Save,AUTO_INT2.W
  MOVE.L  Int3Save,AUTO_INT3.W
  SUBI.L  #$00000a00,ChipMemEnd
  BSR.W SUB_A1F9A2
  ADDI.L  #$00000a00,ChipMemEnd
  MOVE.L  D0,LAB_A4836A
  MOVE.L  D1,LAB_A4836E
  MOVE.L  A0,LAB_A48372
  CMPI.L  #$00000a00,D0
  BCS.S LAB_A2249E
  MOVE.W  #$027f,D0
  SUBI.L  #$00000a00,ChipMemEnd
  MOVEA.L ChipMemEnd,A0
  MOVEA.L LAB_A48372,A1
LAB_A22498:
  MOVE.L  (A0)+,(A1)+
  DBF D0,LAB_A22498
LAB_A2249E:
  MOVEQ #0,D0
  CLR.L LAB_A484CA
  TST.L autoConfigMemEnd
  BEQ.S LAB_A224DA
  MOVE.L  autoConfigMemStart,PackStart
  MOVE.L  autoConfigMemEnd,PackEnd
  MOVE.L  autoConfigMemStart,PackDest
  BSR.W SUB_A1EFB0
  BSR.W packMemory
  MOVE.L  A2,LAB_A484CA
LAB_A224DA:
  CLR.L PackStart
  MOVE.L  ChipMemEnd,PackEnd
  MOVE.L  PackStart,PackDest
  BSR.W SUB_A1EFB0
  BSR.W packMemory
  MOVE.L  A2,LAB_A48354
  CLR.L LAB_A48350
  TST.L SlowMemEnd
  BEQ.S LAB_A2253C
  MOVE.L  #$00c00000,PackStart
  MOVE.L  SlowMemEnd,PackEnd
  MOVE.L  PackStart,PackDest
  BSR.W SUB_A1EFB0
  BSR.W packMemory
  MOVE.L  A2,LAB_A48350
LAB_A2253C:
  ADDI.L  #$00000a00,ChipMemEnd
  MOVEM.L (A7)+,D1-D7/A0-A6
  MOVEQ #0,D0
  CMPI.L  #$00000a00,LAB_A4836A
  BGE.S LAB_A2256A
  SUBI.L  #$00000a00,ChipMemEnd
  CLR.L LAB_A4836A
  MOVEQ #-1,D0
LAB_A2256A:
  TST.W D0
  RTS
SUB_A2256E:
  MOVEM.L D0-D7/A0-A6,-(A7)
  MOVEQ #0,D0
  ADD.L ChipMemEnd,D0
  TST.L SlowMemEnd
  BEQ.S LAB_A2258E
  ADD.L SlowMemEnd,D0
  SUBI.L  #$00c00000,D0
LAB_A2258E:
  ADD.L autoConfigMemEnd,D0
  SUB.L autoConfigMemStart,D0
  SWAP  D0
  MOVE.L  #$0005b000,D1
  DIVU  D0,D1
  LSR.L #3,D1
  MOVE.W  D1,LAB_A483BA
  CLR.L LAB_A483C0
  TST.L LAB_A484CA
  BEQ.S LAB_A225D2
  MOVE.L  autoConfigMemStart,UnpackDest
  MOVE.L  LAB_A484CA,UnpackSourceEnd
  BSR.W UnpackFlash
LAB_A225D2:
  CLR.L UnpackDest
  MOVE.L  LAB_A48354,UnpackSourceEnd
  BSR.W UnpackFlash
  TST.L LAB_A48350
  BEQ.S LAB_A22606
  MOVE.L  #$00c00000,UnpackDest
  MOVE.L  LAB_A48350,UnpackSourceEnd
  BSR.W UnpackFlash
LAB_A22606:
  TST.L LAB_A4836A
  BEQ.S LAB_A22634
  MOVE.L  #$0000027f,D0
  MOVEA.L LAB_A48372,A0
  MOVEA.L ChipMemEnd,A1
  SUBA.L  #$00000a00,A1
  MOVE.L  LAB_A4836E,D1
LAB_A2262C:
  MOVE.L  (A0),(A1)+
  MOVE.L  D1,(A0)+
  DBF D0,LAB_A2262C
LAB_A22634:
  JSR SwapChipRam1
  MOVE.L  #KeyboardIntHandler,AUTO_INT2.W
  MOVE.L  #VBlankIntHandler,AUTO_INT3.W
  MOVE.W  #$c000,intena+hardware
  MOVE.W  #$8100,dmacon+hardware
  MOVEM.L (A7)+,D0-D7/A0-A6
  RTS
CMD_SR:
  ST  LAB_A480DE
  BRA.S LAB_A2266E
CMD_SA:
  SF  LAB_A480DE
LAB_A2266E:
  SF  forceUpper
  BSR.W GetFilename
  ST  forceUpper
  TST.W D0
  BEQ.W LAB_A21070
  MOVE.L  D0,D1
  JSR stepToTrack2(PC)
  BPL.S LAB_A2269A
LAB_A2268C:
  JSR deselectAllDrives(PC)
  JSR PrintDiskOpResult(PC)
  JMP PrintReady
LAB_A2269A:
  JSR selectDrive(PC)
  MOVEQ #-10,D0
  BTST  #3,ciaapra
  BEQ.S LAB_A2268C
  JSR deselectAllDrives(PC)
  MOVE.L  #$00000020,PackRate
  JSR ReadParameter
  TST.B ParamFound
  BEQ.S LAB_A226CC
  MOVE.L  D0,PackRate
LAB_A226CC:
  MOVE.L  autoConfigMemEnd,D0
  SUB.L autoConfigMemStart,D0
  ADD.L ChipMemEnd,D0
  TST.L SlowMemEnd
  BEQ.S LAB_A226F2
  ADD.L SlowMemEnd,D0
  SUBI.L  #$00c00000,D0
LAB_A226F2:
  CMPI.L  #$00100000,D0
  BLS.S LAB_A2270E
  LEA SureToFreezeText(PC),A0
  JSR AskYN
  TST.W D0
  BNE.S LAB_A2270E
  MOVEQ #-8,D0
  BRA.W PrintDiskOpResult
LAB_A2270E:
  BSR.W InitialiseDisk
  JSR TBuffRestoreQuiet
  BSR.W SUB_A223DC
  SMI LAB_A480CE
  MOVE.L  ChipMemEnd,D0
  SUBI.L  #$00003608,D0
  CMP.L LAB_A48354,D0
  BHI.S LAB_A22746
  BSR.W SUB_A2256E
  LEA NoSaveText(PC),A0
  JSR PrintText
  RTS
LAB_A22746:
  MOVEA.L D0,A0
  BSR.W backupMfmBuffer
  MOVE.L  D1,D0
  MOVE.L  D1,D4
  LEA stringWorkspace,A1
  BSR.W SaveFileInit
  BMI.W LAB_A227F0
  LEA LAB_A480CA,A2
  MOVE.L  #$41525033,(A2) ;ARP3
  MOVEQ #4,D0
  BSR.W writeFileBytes
  BMI.S .fullcheck
  LEA LAB_A48354,A2
  MOVEQ #4,D0
  BSR.W writeFileBytes
  BMI.S .fullcheck
  LEA LAB_A48350,A2
  MOVEQ #4,D0
  BSR.W writeFileBytes
  BMI.S .fullcheck
  LEA LAB_A484CA,A2
  MOVEQ #4,D0
  BSR.W writeFileBytes
  BMI.S .fullcheck
  LEA ChipMemEnd,A2
  MOVEQ #4,D0
  BSR.W writeFileBytes
  BMI.S .fullcheck
  LEA SlowMemEnd,A2
  MOVEQ #4,D0
  BSR.W writeFileBytes
  BMI.S .fullcheck
  LEA autoConfigMemStart,A2
  MOVEQ #8,D0
  BSR.W writeFileBytes
  BMI.S .fullcheck
  BSR.W SUB_A22952
  BMI.S .fullcheck
  LEA LAB_A4520A,A1
  BSR.W SUB_A22F5A
  MOVEA.L A1,A2
  BSR.W writeFileBytes
.fullcheck
  JSR HandleDiskFull
  BMI.S LAB_A227F0

  BSR.W AddFileToDirBlock
  BMI.S LAB_A227F0
  MOVEQ #0,D0
  MOVE.B  LAB_A480DE,restartFlag
LAB_A227F0:
  MOVE.L  D0,-(A7)
  BSR.W restoreMfmBuffer
  MOVE.L  (A7)+,D0
  BSR.W SUB_A2256E
  TST.W D0
  BPL.S LAB_A22804
  BRA.W PrintDiskOpResult
LAB_A22804:
  TST.B LAB_A480CE
  BEQ.W PrintDiskOpResult
  LEA NoLoadText(PC),A0
  JSR PrintText
  MOVEQ #0,D0
  BRA.W PrintDiskOpResult
NoSaveText:
  DC.B  "No saving possible: Try higher crunchrate",$D,0

NoLoadText:
  DC.B  "WARNING: No load without cartridge possible",$D,"Try to fill $900 "
  DC.B  "bytes in chipmem with zero (be careful)",$D,0

SureToFreezeText:
  DC.B  "Sure to freeze more than 1024 Kb (Y/N)?",$D,0

InsertDiskText:
  DC.B  "Please insert an empty formatted disk and press SPACE or ESC "
  DC.B  "for exit!",$D,0

NoSpaceText:
  DC.B  "Not enough space on inserted disk! Use another!",$D,0,0

SUB_A22952:
  MOVEM.L D6-D7/A0-A2,-(A7)
  MOVE.L  #$000c8000,D7
  MOVEQ #0,D6
  SUBA.L  A1,A1
  MOVEA.L LAB_A48354,A2
  JSR SUB_A229AA
  BMI.S LAB_A229A4
  TST.L LAB_A48350
  BEQ.S LAB_A2298A
  LEA EXT_C00000,A1
  MOVEA.L LAB_A48350,A2
  JSR SUB_A229AA
  BMI.S LAB_A229A4
LAB_A2298A:
  TST.L LAB_A484CA
  BEQ.S LAB_A229A4
  MOVEA.L autoConfigMemStart,A1
  MOVEA.L LAB_A484CA,A2
  JSR SUB_A229AA
LAB_A229A4:
  MOVEM.L (A7)+,D6-D7/A0-A2
  RTS
SUB_A229AA:
  MOVEM.L D5/A1-A2,-(A7)
  MOVE.L  A2,D5
  SUB.L A1,D5
  MOVEA.L A1,A2
LAB_A229B4:
  CMP.L D7,D5
  BLS.S LAB_A229D2
  MOVE.L  D7,D0
  SUB.L D0,D5
  JSR writeFileBytes(PC)
  JSR HandleDiskFull
  BMI.S LAB_A229DA
  JSR SUB_A229E0
  BMI.S LAB_A229DA
  MOVE.L  #$000c8000,D7
  BRA.S LAB_A229B4
LAB_A229D2:
  MOVE.L  D5,D0
  SUB.L D0,D7
  JSR writeFileBytes(PC)
LAB_A229DA:
  MOVEM.L (A7)+,D5/A1-A2
  RTS
SUB_A229E0:
  MOVE.L  A1,-(A7)
  JSR AddFileToDirBlock(PC)
  BMI.W LAB_A22AF0
  JSR restoreMfmBuffer(PC)
  BPL.S LAB_A229F8
  JSR backupMfmBuffer(PC)
  BRA.W LAB_A22AF0
LAB_A229F8:
  MOVE.L  AUTO_INT2,-(A7)
  MOVE.L  AUTO_INT3,-(A7)
  JSR SwapChipRam1
  MOVE.L  #KeyboardIntHandler,AUTO_INT2
  MOVE.L  #VBlankIntHandler,AUTO_INT3
  MOVE.W  #$c000,intena+hardware
  MOVE.W  #$8100,dmacon+hardware
LAB_A22A2E:
  EXG A0,A6
  LEA InsertDiskText(PC),A0
  JSR PrintText
  EXG A0,A6
LAB_A22A3C:
  JSR GetMappedKeyCode
  CMPI.B  #$20,D0
  BEQ.S LAB_A22A54
  TST.B EscapePressed
  BEQ.S LAB_A22A3C
  MOVEQ #-8,D0
  BRA.S LAB_A22AA6
LAB_A22A54:
  JSR backupMfmBuffer(PC)
  SF  LAB_A48332
  JSR SUB_A21A66(PC)
  TST.W D0
  BPL.S LAB_A22A7A
  MOVE.L  D0,-(A7)
  JSR restoreMfmBuffer(PC)
  MOVE.L  (A7)+,D0
LAB_A22A6E:
  JSR PrintDiskOpResult(PC)
LAB_A22A72:
  JSR PrintCR
  BRA.S LAB_A22A2E
LAB_A22A7A:
  JSR SUB_A2202C(PC)
  MOVE.L  D0,-(A7)
  JSR restoreMfmBuffer(PC)
  BPL.S LAB_A22A8C
  LEA 4(A7),A7
  BRA.S LAB_A22A6E
LAB_A22A8C:
  MOVE.L  (A7)+,D0
  CMPI.W  #$06a4,D0
  BCC.S LAB_A22AA4
  EXG A0,A6
  LEA NoSpaceText(PC),A0
  JSR PrintText
  EXG A0,A6
  BRA.S LAB_A22A72
LAB_A22AA4:
  MOVEQ #0,D0
LAB_A22AA6:
  MOVE.W  #$0100,dmacon+hardware
  MOVE.W  #$4000,intena+hardware
  JSR SwapChipRam1
  MOVE.L  (A7)+,AUTO_INT3
  MOVE.L  (A7)+,AUTO_INT2
  TST.L D0
  BMI.S LAB_A22AF0
  LEA stringWorkspace,A1
  MOVE.B  #$2e,0(A1,D4.W)
  ADDQ.W  #1,D6
  MOVE.W  D6,D0
  ADDI.B  #$30,D0
  MOVE.B  D0,1(A1,D4.W)
  MOVE.W  D4,D0
  ADDQ.W  #2,D0
  JSR backupMfmBuffer(PC)
  JSR SaveFileInit(PC)
LAB_A22AF0:
  MOVEA.L (A7)+,A1
  TST.L D0
  RTS
CMD_LR:
  ST  LAB_A480DE
  BRA.S LAB_A22B04
CMD_LA:
  SF  LAB_A480DE
LAB_A22B04:
  SF  TBufferAllocated
  BSR.W GetFilename
  TST.W D0
  BEQ.W LAB_A21070
  MOVE.L  D0,D1
  MOVEA.L ChipMemEnd,A0
  SUBA.L  #$00003608,A0
  BSR.W backupMfmBuffer
  MOVE.L  D1,D0
  MOVE.W  D0,D4
  LEA stringWorkspace,A1
  BSR.W OpenFile
  BMI.W LAB_A22CDC
  MOVE.W  #$0100,dmacon+hardware
  MOVE.W  #$4000,intena+hardware
  JSR SwapChipRam1
  LEA LAB_A480CA,A2
  MOVEQ #4,D0
  BSR.W readFileBytes
  BMI.W LAB_A22CD6
  MOVEQ #-28,D0
  CMPI.L  #$41525033,LAB_A480CA   ;ARP3
  BEQ.S LAB_A22B80
  CMPI.L  #$41525046,LAB_A480CA   ;ARPF
  BNE.W LAB_A22CD6
  MOVEQ #-30,D0
  BRA.W LAB_A22CD6
LAB_A22B80:
  LEA LAB_A48354,A2
  MOVEQ #4,D0
  BSR.W readFileBytes
  BMI.W LAB_A22CD6
  LEA LAB_A48350,A2
  MOVEQ #4,D0
  BSR.W readFileBytes
  BMI.W LAB_A22CD6
  LEA LAB_A484CA,A2
  MOVEQ #4,D0
  BSR.W readFileBytes
  BMI.W LAB_A22CD6
  LEA ChipMemEnd,A2
  MOVEQ #4,D0
  BSR.W readFileBytes
  BMI.W LAB_A22CD6
  LEA SlowMemEnd,A2
  MOVEQ #4,D0
  BSR.W readFileBytes
  BMI.W LAB_A22CD6
  LEA autoConfigMemStart,A2
  MOVEQ #8,D0
  BSR.W readFileBytes
  BMI.W LAB_A22CD6
  MOVEQ #-31,D0
  MOVE.L  ChipMemEnd,D1
  CMP.L foundChipMemEnd,D1
  BHI.W LAB_A22CD6
  MOVEQ #-32,D0
  MOVE.L  SlowMemEnd,D1
  BEQ.S LAB_A22C06
  CMP.L foundSlowMemEnd,D1
  BHI.W LAB_A22CD6
LAB_A22C06:
  MOVEQ #-33,D0
  MOVE.L  autoConfigMemEnd,D1
  BEQ.S LAB_A22C36
  ST  ExtMemAddPrefsFlag
  ST  AutoConfigPrefsFlag
  CMP.L foundAutoConfigMemEnd,D1
  BHI.W LAB_A22CD6
  MOVE.L  autoConfigMemStart,D1
  CMP.L foundAutoConfigMemStart,D1
  BCS.W LAB_A22CD6
LAB_A22C36:
  BSR.W SUB_A22DF0
  BMI.W LAB_A22CD6
  LEA LAB_A4520A,A2
  MOVE.L  fileSize,D0
  SUBI.L  #$00000020,D0
  SUB.L LAB_A48354,D0
  TST.L LAB_A48350
  BEQ.S LAB_A22C6A
  SUB.L LAB_A48350,D0
  ADDI.L  #$00c00000,D0
LAB_A22C6A:
  TST.L LAB_A484CA
  BEQ.S LAB_A22C7E
  SUB.L LAB_A484CA,D0
  ADD.L autoConfigMemStart,D0
LAB_A22C7E:
  TST.L D0
  BPL.S LAB_A22C90
  ADDI.L  #$00000020,D0
LAB_A22C88:
  ADDI.L  #$000c8000,D0
  BMI.S LAB_A22C88
LAB_A22C90:
  BSR.W readFileBytes
  BMI.S LAB_A22CD6
  LEA LAB_A4520A,A1
  BSR.W SUB_A22F96
  MOVEM.L D0-D3,-(A7)
  BSR.W SUB_A2256E
  MOVEM.L (A7)+,D0-D3
  TST.W D0
  BMI.S LAB_A22D06
  TST.W D0
  BEQ.S LAB_A22CBE
  LEA DriveConfigWarnText(PC),A0
  JSR PrintText
LAB_A22CBE:
  JSR SUB_A1FB1A(PC)
  BSR.W SUB_A230EA
  BSR.W PrintDiskOpResult
  MOVE.B  LAB_A480DE,restartFlag
  RTS
LAB_A22CD6:
  JSR SwapChipRam1
LAB_A22CDC:
  MOVE.L  #KeyboardIntHandler,AUTO_INT2.W
  MOVE.L  #VBlankIntHandler,AUTO_INT3.W
  MOVE.W  #$c000,intena+hardware
  MOVE.W  #$8100,dmacon+hardware
  BSR.W PrintDiskOpResult
  BSR.W restoreMfmBuffer
  RTS
LAB_A22D06:
  LEA NoLoad2Text(PC),A0
  JSR PrintText
  MOVE.L  ChipMemEnd,-(A7)
  MOVE.L  SlowMemEnd,-(A7)
  MOVE.W  DriveControlPrefsValue,-(A7)
  MOVE.L  D1,ChipMemEnd
  MOVE.L  D2,SlowMemEnd
  MOVE.W  D3,DriveControlPrefsValue
  BSR.W SUB_A230EA
  MOVE.W  (A7)+,DriveControlPrefsValue
  MOVE.L  (A7)+,SlowMemEnd
  MOVE.L  (A7)+,ChipMemEnd
  MOVEQ #0,D0
  BRA.S LAB_A22CDC
InsertdiskNrText:
  DC.B  "Insert disk with save-file nr ",0

PressSpaceText:
  DC.B  " and press SPACE or ESC to abort.",$D,0

NoLoad2Text:
  DC.B  "No load possible - required system configuration:",$D,0,0

DriveConfigWarnText:
  DC.B  "Warning: drive configuration has changed!",$D,0,0

SUB_A22DF0:
  MOVEM.L D6-D7/A0-A2,-(A7)
  MOVE.L  #$000c8000,D7
  MOVEQ #0,D6
  SUBA.L  A1,A1
  MOVEA.L LAB_A48354,A2
  JSR SUB_A22E48
  BMI.S LAB_A22E42
  TST.L LAB_A48350
  BEQ.S LAB_A22E28
  LEA EXT_C00000,A1
  MOVEA.L LAB_A48350,A2
  JSR SUB_A22E48
  BMI.S LAB_A22E42
LAB_A22E28:
  TST.L LAB_A484CA
  BEQ.S LAB_A22E42
  MOVEA.L autoConfigMemStart,A1
  MOVEA.L LAB_A484CA,A2
  JSR SUB_A22E48
LAB_A22E42:
  MOVEM.L (A7)+,D6-D7/A0-A2
  RTS
SUB_A22E48:
  MOVEM.L D5/A1-A2,-(A7)
  MOVE.L  A2,D5
  SUB.L A1,D5
  MOVEA.L A1,A2
LAB_A22E52:
  CMP.L D7,D5
  BLS.S LAB_A22E70
  MOVE.L  D7,D0
  SUB.L D0,D5
  JSR readFileBytes(PC)
  BMI.S LAB_A22E78
  JSR SUB_A22E7E
  BMI.S LAB_A22E78
  MOVE.L  #$000c8000,D7
  BRA.S LAB_A22E52
LAB_A22E70:
  MOVE.L  D5,D0
  SUB.L D0,D7
  JSR readFileBytes(PC)
LAB_A22E78:
  MOVEM.L (A7)+,D5/A1-A2
  RTS
SUB_A22E7E:
  MOVEM.L D1/A1,-(A7)
  JSR restoreMfmBuffer(PC)
  BPL.S LAB_A22E90
  JSR backupMfmBuffer(PC)
  BRA.W LAB_A22F34
LAB_A22E90:
  MOVE.L  AUTO_INT2.W,-(A7)
  MOVE.L  AUTO_INT3.W,-(A7)
  JSR SwapChipRam1
  MOVE.L  #KeyboardIntHandler,AUTO_INT2.W
  MOVE.L  #VBlankIntHandler,AUTO_INT3.W
  MOVE.W  #$c000,intena+hardware
  MOVE.W  #$8100,dmacon+hardware
  ADDQ.W  #1,D6
LAB_A22EC0:
  EXG A6,A0
  LEA InsertdiskNrText(PC),A0
  JSR PrintText
  MOVE.W  D6,D0
  MOVEQ #1,D1
  JSR PrintValue
  LEA PressSpaceText(PC),A0
  JSR PrintText
  EXG A6,A0
LAB_A22EE2:
  JSR GetMappedKeyCode
  CMPI.B  #$20,D0
  BEQ.S LAB_A22EFA
  TST.B EscapePressed
  BEQ.S LAB_A22EE2
  MOVEQ #-8,D0
  BRA.S LAB_A22F34
LAB_A22EFA:
  LEA stringWorkspace,A1
  MOVE.B  #$2e,0(A1,D4.W)
  MOVE.W  D6,D0
  ADDI.B  #$30,D0
  MOVE.B  D0,1(A1,D4.W)
  MOVE.W  D4,D0
  ADDQ.W  #2,D0
  JSR backupMfmBuffer(PC)
  JSR OpenFile(PC)
  BPL.S LAB_A22F32
  EXG D0,D1
  JSR restoreMfmBuffer(PC)
  EXG D0,D1
  JSR PrintDiskOpResult(PC)
  JSR PrintCR
  BRA.S LAB_A22EC0
LAB_A22F32:
  MOVEQ #0,D0
LAB_A22F34:
  MOVE.W  #$0100,dmacon+hardware
  MOVE.W  #$4000,intena+hardware
  JSR SwapChipRam1
  MOVE.L  (A7)+,AUTO_INT3.W
  MOVE.L  (A7)+,AUTO_INT2.W
  TST.L D0
  MOVEM.L (A7)+,D1/A1
  RTS
SUB_A22F5A:
  MOVEM.L A0-A3,-(A7)
  MOVE.L  A1,-(A7)
  LEA SavedRegsTable(PC),A2
LAB_A22F64:
  MOVEA.L (A2)+,A3
  MOVE.L  (A2)+,D0
  SUBQ.W  #1,D0
LAB_A22F6A:
  MOVE.B  (A3)+,(A1)+
  DBF D0,LAB_A22F6A
  TST.W (A2)
  BPL.S LAB_A22F64
  MOVE.L  A1,D0
  ADDQ.L  #1,D0
  ANDI.W  #$fffe,D0
  MOVEA.L D0,A1
  MOVE.L  USP,A0
  MOVE.L  A0,(A1)+
  MOVEA.L A1,A0
  JSR SUB_A1894C
  MOVEA.L A0,A1
  MOVE.L  A1,D0
  SUB.L (A7)+,D0
  MOVEM.L (A7)+,A0-A3
  RTS
SUB_A22F96:
  MOVEM.L D4/A0-A4,-(A7)
  MOVE.L  LAB_A48250,-(A7)
  MOVE.W  LAB_A4822E,D0
  MOVE.W  (A1),D1
  ANDI.W  #$ffee,D0
  ANDI.W  #$ffee,D1
  AND.W D1,D0
  SUB.W D1,D0
  MOVE.L  $124(A1),D1
  MOVE.L  $128(A1),D2
  MOVEQ #0,D3
  MOVE.W  2(A1),D3
  TST.W D0
  BNE.S LAB_A23022
  MOVEA.L A1,A4
  LEA SavedRegsTable(PC),A2
LAB_A22FCC:
  MOVEA.L (A2)+,A3
  MOVE.L  (A2)+,D0
  SUBQ.W  #1,D0
LAB_A22FD2:
  MOVE.B  (A1)+,(A3)+
  DBF D0,LAB_A22FD2
  TST.W (A2)
  BPL.S LAB_A22FCC
  MOVE.L  A1,D0
  ADDQ.L  #1,D0
  ANDI.W  #$fffe,D0
  MOVEA.L D0,A1
  MOVEA.L (A1)+,A0
  MOVE.L  A0,USP
  MOVEA.L A1,A0
  JSR PrintWtf
  MOVEA.L A0,A1
  MOVEQ #0,D0
  MOVE.W  DrivesConnected,D1
  AND.W 2(A4),D1
  CMP.W 2(A4),D1
  BEQ.S LAB_A23008
  MOVEQ #1,D0
LAB_A23008:
  MOVE.W  DrivesConnected,D4
  AND.W D4,DriveControlPrefsValue
  MOVE.L  (A7)+,LAB_A48250
  MOVEM.L (A7)+,D4/A0-A4
  TST.W D0
  RTS
LAB_A23022:
  MOVEQ #-1,D0
  BRA.S LAB_A23008
SavedRegsTable:
  DC.L  memoryControlPrefsValue
  DC.L  $00000002
  DC.L  DriveControlPrefsValue
  DC.L  $00000002
  DC.L  LAB_A48250
  DC.L  $00000004
  DC.L  SAVE_VPOS
  DC.L  $00000004
  DC.L  SaveCpuRegs
  DC.L  $00000040
  DC.L  SaveOldSr
  DC.L  $00000002
  DC.L  SaveOldPc
  DC.L  $00000004
  DC.L  Int2Save
  DC.L  $00000004
  DC.L  Int3Save
  DC.L  $00000004
  DC.L  BreakpointTrapNo
  DC.L  $00000002
  DC.L  SaveTrap
  DC.L  $00000004
  DC.L  saveCIAA
  DC.L  $00000030
  DC.L  LAB_A48372
  DC.L  $00000004
  DC.L  LAB_A4836E
  DC.L  $00000004
  DC.L  LAB_A4836A
  DC.L  $00000004
  DC.L  RemarksData
  DC.L  $00000078
  DC.L  oldTrackPositions
  DC.L  $00000004
  DC.L  P1AutoFirePrefsSetting
  DC.L  $00000002
  DC.L  P2AutoFirePrefsSetting
  DC.L  $00000002
  DC.L  exceptionsActive
  DC.L  $00000001
  DC.L  SaveCop1Lch
  DC.L  $00000004
  DC.L  SaveCop2LcCopy
  DC.L  $00000004
  DC.L  LAB_A48438
  DC.L  $00000004
  DC.L  LAB_A483D1
  DC.L  $00000001,$ffffffff
SUB_A230EA:
  MOVEM.L D0-D2/A0,-(A7)
  JSR PrintCrIfNotBlankLine
  LEA MemConfigsText(PC),A0
  JSR PrintText
  MOVE.L  ChipMemEnd,D0
  BSR.W SUB_A23212
  LEA ChipmemText(PC),A0
  JSR PrintText
  MOVE.L  SlowMemEnd,D0
  BEQ.S LAB_A23130
  SUBI.L  #$00c00000,D0
  BSR.W SUB_A23212
  LEA FastMemText(PC),A0
  JSR PrintText
  BRA.S LAB_A2313A
LAB_A23130:
  LEA NoFastmemText(PC),A0
  JSR PrintText
LAB_A2313A:
  LEA NoExtMemText(PC),A0
  MOVE.L  autoConfigMemEnd,D0
  BEQ.S LAB_A23154
  SUB.L autoConfigMemStart,D0
  BSR.W SUB_A23212
  LEA ExternMemText(PC),A0
LAB_A23154:
  JSR PrintText
  LEA ActiveDrivesText(PC),A0
  JSR PrintText
  MOVEQ #0,D2
LAB_A23166:
  BTST  D2,DriveControlPrefsValueLo
  BEQ.S LAB_A23196
  MOVEQ #$44,D0
  JSR PrintChar
  MOVEQ #$46,D0
  JSR PrintChar
  MOVEQ #1,D1
  MOVE.W  D2,D0
  JSR PrintValue
  MOVEQ #$3A,D0
  JSR PrintChar
  JSR PrintSpace
LAB_A23196:
  ADDQ.W  #1,D2
  CMPI.W  #3,D2
  BLS.S LAB_A23166
  JSR PrintCrIfNotBlankLine
  MOVEM.L (A7)+,D0-D2/A0
  RTS
MemConfigsText:
  DC.B  "Memoryconfiguration: ",0

ChipmemText:
  DC.B  " ChipMem, ",0

FastMemText:
  DC.B  " FastMem, ",0

NoFastmemText:
  DC.B  " no FastMem, ",0

ActiveDrivesText:
  DC.B  "Active drives: ",0

ExternMemText:
  DC.B  " Extern Mem",$D,0

NoExtMemText:
  DC.B  " no ExternalMem",$D,0

SUB_A23212:
  MOVEM.L D0-D1/A0,-(A7)
  LSR.L #8,D0
  LSR.L #2,D0
  MULU  #$000a,D0
  LSR.L #8,D0
  LSR.L #2,D0
  JSR ConvertToBCD
  ROXR.L  #4,D0
  MOVEQ #1,D1
  JSR PrintValue
  MOVE.W  #$002e,D0
  JSR PrintChar
  ROXL.L  #4,D0
  MOVEQ #1,D1
  JSR PrintValue
  LEA LAB_A23256(PC),A0
  JSR PrintText
  MOVEM.L (A7)+,D0-D1/A0
  RTS
LAB_A23256:
  MOVEA.L A5,A0
  CLR.W EXT_74650000
CMD_SPM:
  ST  LAB_A480CA
  BRA.S LAB_A2326C
CMD_SP:
  SF  LAB_A480CA
LAB_A2326C:
  TST.B LAB_A480CA
  BEQ.S LAB_A23286
  SF  forceUpper
  BSR.W SUB_A2231A
  ST  forceUpper
  BRA.S LAB_A23296
LAB_A23286:
  SF  forceUpper
  BSR.W GetFilename
  ST  forceUpper
LAB_A23296:
  TST.W D0
  BEQ.W LAB_A21070
  LEA stringWorkspace,A1
  MOVE.L  A1,SaveFilename
  MOVE.W  D0,FilenameLen
  MOVE.W  #1,LAB_A480AC
  MOVEQ #0,D6
  JSR ReadParameter
  TST.B ParamFound
  BEQ.S LAB_A232E4
  MOVE.W  D0,LAB_A480AC
  JSR ReadParameter
  TST.B ParamFound
  BEQ.S LAB_A232E4
  CMPI.W  #$0320,D0
  BHI.W LAB_A21070
  MOVE.W  D0,D6
LAB_A232E4:
  MOVE.W  D6,D7
  TST.B LAB_A480CA
  BNE.S LAB_A232F4
  JSR SUB_A166C8
LAB_A232F4:
  MOVE.W  CopyBplCon0,D0
  ANDI.W  #$7010,D0
  BNE.S LAB_A23312
  LEA NoBitplanesText(PC),A0
  JSR PrintText
  JSR PrintReady
  RTS
LAB_A23312:
  MOVEA.L ChipMemEnd,A0
  SUBA.L  #$00003400,A0
  BSR.W backupMfmBuffer
  BSR.S SUB_A23348
  BSR.W PrintDiskOpResult
  BSR.W restoreMfmBuffer
  BMI.W PrintDiskOpResult
  RTS

NoBitplanesText:
  DC.B  "Sorry no Bitplanes!",$D,0,0

SUB_A23348:
  MOVEM.L D6/A1,-(A7)
  MOVE.W  CopyBplCon0,D0
  MOVEQ #0,D6
  BTST  #$A,D0
  BEQ.S LAB_A2335C
  MOVEQ #$32,D6
LAB_A2335C:
  TST.W D6
  BEQ.S LAB_A23390
  MOVEA.L SaveFilename,A1
  MOVE.W  FilenameLen,D0
  CMPI.W  #$0032,D6
  BEQ.S LAB_A23378
  MOVE.B  D6,-1(A1,D0.W)
  BRA.S LAB_A23390
LAB_A23378:
  MOVE.B  #$2e,0(A1,D0.W)
  MOVE.B  #$50,1(A1,D0.W)
  MOVE.B  D6,2(A1,D0.W)
  ADDQ.W  #3,D0
  MOVE.W  D0,FilenameLen
LAB_A23390:
  MOVE.W  FilenameLen,D0
  MOVEA.L SaveFilename,A1
  BSR.W SaveFileInit
  BMI.S LAB_A233C6
  BSR.W SUB_A2357C
  BMI.S .fullcheck
  BSR.W SUB_A2352A
  BMI.S .fullcheck
  BSR.W SUB_A234AC
  BMI.S .fullcheck
  BSR.S SUB_A233CE
.fullcheck
  JSR HandleDiskFull
  BMI.S LAB_A233C6
  BSR.W AddFileToDirBlock
  BMI.S LAB_A233C6
  SUBQ.W  #1,D6
  CMPI.W  #$0031,D6
  BEQ.S LAB_A2335C
LAB_A233C6:
  TST.W D0
  MOVEM.L (A7)+,D6/A1
  RTS
SUB_A233CE:
  MOVEM.L D1-D7/A1-A2,-(A7)
  LEA LAB_A4520A,A2
  MOVE.L  #$424f4459,(A2)
  MOVEQ #0,D0
  MOVE.W  D4,D0
  MULU  D5,D0
  MULU  D7,D0
  LSL.L #1,D0
  MOVE.L  D0,4(A2)
  MOVEQ #8,D0
  BSR.W SaveFileData
  BMI.W LAB_A234A4
  LEA LAB_A480CA,A1
  LEA CopyBpl1Pth,A2
  MOVE.W  D4,D0
  SUBQ.W  #1,D0
LAB_A23406:
  CMPI.W  #$0032,D6
  BNE.S LAB_A23412
  ADDQ.L  #4,A2
  MOVE.L  (A2)+,(A1)+
  BRA.S LAB_A23420
LAB_A23412:
  CMPI.W  #$0031,D6
  BNE.S LAB_A2341E
  MOVE.L  (A2)+,(A1)+
  ADDQ.L  #4,A2
  BRA.S LAB_A23420
LAB_A2341E:
  MOVE.L  (A2)+,(A1)+
LAB_A23420:
  DBF D0,LAB_A23406
LAB_A23424:
  LEA LAB_A480CA,A1
  MOVEQ #1,D1
LAB_A2342C:
  MOVEA.L (A1),A2
  MOVEQ #0,D0
  MOVE.W  D5,D0
  LSL.L #1,D0
  BSR.W SaveFileData
  BMI.S LAB_A234A4
  MOVE.W  CopyBplMod1,D0
  BTST  #0,D1
  BNE.S LAB_A2344C
  MOVE.W  CopyBplMod2,D0
LAB_A2344C:
  CMPI.W  #$0032,D6
  BNE.S LAB_A2345A
  MOVE.W  CopyBplMod2,D0
  BRA.S LAB_A23466
LAB_A2345A:
  CMPI.W  #$0031,D6
  BNE.S LAB_A23466
  MOVE.W  CopyBplMod1,D0
LAB_A23466:
  TST.W CopyFmode
  BEQ.S LAB_A23486
  MOVE.W  CopyFmode,D3
  ADDQ.W  #1,D3
  LSR.W #1,D3
  BTST  #7,CopyBplCon0
  BNE.S LAB_A23484
  ADDQ.W  #2,D3
LAB_A23484:
  ADD.W D3,D0
LAB_A23486:
  BTST  #2,CopyBplCon0Lo
  BEQ.S LAB_A23494
  SUB.W D5,D0
  SUB.W D5,D0
LAB_A23494:
  ADDA.W  D0,A2
  MOVE.L  A2,(A1)+
  ADDQ.W  #1,D1
  CMP.W D4,D1
  BLS.S LAB_A2342C
  SUBQ.W  #1,D7
  BNE.S LAB_A23424
  MOVEQ #0,D0
LAB_A234A4:
  MOVEM.L (A7)+,D1-D7/A1-A2
  TST.W D0
  RTS
SUB_A234AC:
  MOVEM.L D1/A1-A2,-(A7)
  LEA LAB_A4520A,A1
  MOVE.L  #$434d4150,(A1)+
  MOVE.W  D4,D0
  LEA SaveColor,A2
  CMPI.W  #$0032,D6
  BNE.S LAB_A234CE
  LEA $10(A2),A2
LAB_A234CE:
  CMPI.W  #6,D0
  BEQ.S LAB_A234DA
  MOVEQ #0,D1
  BSET  D0,D1
  BRA.S LAB_A234EA
LAB_A234DA:
  MOVEQ #$20,D1
  MOVE.W  CopyBplCon0,D0
  BTST  #$B,D0
  BEQ.S LAB_A234EA
  MOVEQ #$10,D1
LAB_A234EA:
  MOVE.W  D1,D0
  MULU  #3,D0
  MOVE.L  D0,(A1)+
  SUBQ.W  #1,D1
LAB_A234F4:
  MOVE.W  (A2),D0
  LSR.W #4,D0
  ANDI.W  #$00f0,D0
  MOVE.B  D0,(A1)+
  MOVE.W  (A2),D0
  ANDI.W  #$00f0,D0
  MOVE.B  D0,(A1)+
  MOVE.W  (A2)+,D0
  LSL.W #4,D0
  ANDI.W  #$00f0,D0
  MOVE.B  D0,(A1)+
  DBF D1,LAB_A234F4
  LEA LAB_A4520A,A2
  MOVE.L  4(A2),D0
  ADDQ.L  #8,D0
  BSR.W SaveFileData
  MOVEM.L (A7)+,D1/A1-A2
  RTS
SUB_A2352A:
  MOVEM.L D1/A1-A2,-(A7)
  LEA LAB_A4520A,A1
  MOVE.L  #$43414d47,(A1)+
  MOVE.L  #4,(A1)+
  MOVEQ #0,D0
  MOVE.W  CopyBplCon0,D0
  ANDI.W  #$8804,D0
  MOVE.W  D4,D1
  TST.W D6
  BNE.S LAB_A23568
  CMPI.W  #6,D1
  BNE.S LAB_A23568
  MOVE.W  CopyBplCon0,D1
  BTST  #$B,D1
  BNE.S LAB_A23568
  BSET  #7,D0
LAB_A23568:
  MOVE.L  D0,(A1)+
  LEA LAB_A4520A,A2
  MOVEQ #$C,D0
  BSR.W SaveFileData
  MOVEM.L (A7)+,D1/A1-A2
  RTS
SUB_A2357C:
  MOVEM.L D1-D3/A1-A2,-(A7)
  LEA LAB_A4520A,A1
  MOVE.L  #$464f524d,(A1)+
  CLR.L (A1)+
  MOVE.L  #$494c424d,(A1)+
  MOVE.L  #$424d4844,(A1)+
  MOVE.L  #$00000014,(A1)+
  MOVE.W  CopyDdfStrt,D0
  MOVE.W  CopyDdfStop,D1
  ANDI.W  #$00fc,D0
  ANDI.W  #$00fc,D1
  SUB.W D0,D1
  ADDQ.W  #8,D1
  ADDQ.W  #7,D1
  LSR.W #3,D1
  MOVE.W  CopyBplCon0,D0
  BTST  #$F,D0
  BEQ.S LAB_A235CA
  LSL.W #1,D1
LAB_A235CA:
  MOVE.W  D1,D5
  LSL.W #4,D1
  MOVE.W  D1,(A1)+
  TST.W D7
  BNE.S LAB_A23600
  MOVE.W  CopyDiwStart,D0
  LSR.W #8,D0
  MOVE.W  CopyDiwStop,D1
  LSR.W #8,D1
  BTST  #7,D1
  BNE.S LAB_A235EE
  BSET  #8,D1
LAB_A235EE:
  SUB.W D0,D1
  MOVE.W  CopyBplCon0,D0
  BTST  #2,D0
  BEQ.S LAB_A235FE
  LSL.W #1,D1
LAB_A235FE:
  MOVE.W  D1,D7
LAB_A23600:
  MOVE.W  D7,(A1)+
  CLR.L (A1)+
  MOVE.W bitplaneCount,D0
  ANDI.W  #7,D0
  CMPI.W  #$0032,D6
  BNE.S LAB_A2361A
  LSR.W #1,D0
LAB_A2361A:
  CMPI.W  #$0031,D6
  BNE.S LAB_A23624
  ADDQ.W  #1,D0
  LSR.W #1,D0
LAB_A23624:
  MOVE.W  D0,D4
  MOVE.B  D0,(A1)+
  MOVE.W  D5,D3
  LSL.W #1,D3
  MULU  D7,D3
  MULU  D0,D3
  ADDQ.L  #8,D3
  ADDI.L  #$00000020,D3
  ADDI.L  #$0000000c,D3
  CMPI.W  #6,D0
  BEQ.S LAB_A23656
  MOVEQ #0,D1
  BSET  D0,D1
  MULU  #3,D1
  ADD.L D1,D3
  ADDI.L  #8,D3
  BRA.S LAB_A2366E
LAB_A23656:
  ADDI.L  #$00000038,D3
  MOVE.W  CopyBplCon0,D1
  BTST  #$B,D1
  BNE.S LAB_A2366E
  ADDI.L  #$00000030,D3
LAB_A2366E:
  CLR.B (A1)+
  CLR.W (A1)+
  CLR.W (A1)+
  MOVE.W  CopyBplCon0,D1
  MOVE.W  #5,D0
  BTST  #$F,D1
  BNE.S LAB_A23686
  LSL.W #1,D0
LAB_A23686:
  BTST  #2,D1
  BEQ.S LAB_A2368E
  LSL.W #1,D0
LAB_A2368E:
  MOVE.B  D0,(A1)+
  MOVE.B  #$0b,(A1)+
  MOVE.W  #$0140,D0
  MOVE.W  CopyBplCon0,D1
  BTST  #$F,D1
  BEQ.S LAB_A236A8
  MOVE.W  #$0280,D0
LAB_A236A8:
  MOVE.W  D0,(A1)+
  MOVE.W  D7,(A1)+
  LEA LAB_A4520A,A2
  MOVE.L  D3,4(A2)
  MOVEQ #$28,D0
  BSR.W SaveFileData
  MOVEM.L (A7)+,D1-D3/A1-A2
  RTS
getDirBlock:
  TST.W D0
  BEQ.W loadRootBlock
  MOVE.L  currentDirBlock,-(A7)
  BSR.W SUB_A22080
  MOVE.L  currentDirBlock,D1
  MOVE.L  (A7)+,currentDirBlock
  TST.W D0
  RTS
SUB_A236E2:
  MOVE.W  D0,D1
  MOVEQ #-14,D0
  TST.W D1
  BEQ.S LAB_A2372E
  CMPI.B  #$2f,-1(A2,D1.W)
  BEQ.S LAB_A2372E
  CMPI.B  #$3a,-1(A2,D1.W)
  BEQ.S LAB_A2372E
  MOVEQ #0,D2
LAB_A236FC:
  CMPI.B  #$3a,-1(A2,D1.W)
  BEQ.S LAB_A23716
  CMPI.B  #$2f,-1(A2,D1.W)
  BEQ.S LAB_A2371C
  ADDQ.W  #1,D2
  SUBQ.W  #1,D1
  BNE.S LAB_A236FC
  MOVEA.L A2,A1
  BRA.S LAB_A23722
LAB_A23716:
  LEA 0(A2,D1.W),A1
  BRA.S LAB_A23722
LAB_A2371C:
  LEA 0(A2,D1.W),A1
  SUBQ.W  #1,D1
LAB_A23722:
  MOVE.W  D1,D0
  TST.W D2
  BNE.S LAB_A2372C
  MOVEQ #-14,D0
  BRA.S LAB_A2372E
LAB_A2372C:
  BRA.S getDirBlock
LAB_A2372E:
  TST.W D0
  RTS
CMD_INSTALL:
  CMP.B  #4,currDriveNo
  BEQ installWTF
  MOVEQ #0,D1     ;default install type
  JSR ReadParameter
  TST.B ParamFound
  BEQ.S LAB_A23744
  MOVE.W  D0,D1
LAB_A23744:
  LEA LAB_A23868(PC),A0
  MOVE.W  (A0)+,D0
  CMP.W D0,D1
  BHI.W LAB_A21070
  LSL.W #3,D1
  MOVEA.L 0(A0,D1.W),A1
  MOVE.L  4(A0,D1.W),D1
  SUB.L A1,D1
  LEA InstallYNText(PC),A0
  JSR PrintText
  MOVE.B  currDriveNo,D0
  MOVE.L  D1,D2
  MOVEQ #1,D1
  JSR PrintValue
  MOVE.L  D2,D1
  LEA YNText(PC),A0
  JSR AskYN
  TST.W D0
  BNE.S LAB_A2378C
  MOVEQ #-8,D0
  BRA.W PrintDiskOpResult
LAB_A2378C:
  LEA EXT_7000.W,A0
  JSR backupMfmBuffer(PC)
  BSR.S SUB_A237D2
  MOVE.W  D0,D1
  JSR restoreMfmBuffer(PC)
  BMI.S LAB_A237A0
  MOVE.W  D1,D0
LAB_A237A0:
  BSR.W PrintDiskOpResult
  RTS

installWTF:
  JMP PrintWTF

InstallYNText:
  DC.B  "Ready to install disk in drive df",0

YNText:
  DC.B  ":? (y/n)",$D,0

SUB_A237D2:
  MOVEM.L D1-D3/A1-A2,-(A7)
  MOVEA.L A1,A2
  MOVEQ #0,D3
  MOVEQ #0,D0
  BSR.W loadSector
  BMI.S LAB_A23860
  MOVEQ #-34,D0
  CMPI.L  #DOSZERO_TAG,(A1)
  BEQ.S LAB_A237F4
  CMPI.L  #DOSONE_TAG,(A1)
  BNE.S LAB_A23860
LAB_A237F4:
  ADD.L (A1)+,D3
  CLR.L (A1)+
  MOVE.L  #$00000370,(A1)
  ADD.L (A1)+,D3
  MOVE.W  #$007c,D2
  LSR.W #2,D1
LAB_A23806:
  TST.W D1
  BEQ.S LAB_A23810
  MOVE.L  (A2)+,(A1)
  SUBQ.W  #1,D1
  BRA.S LAB_A23812
LAB_A23810:
  CLR.L (A1)
LAB_A23812:
  ADD.L (A1)+,D3
  BCC.S LAB_A23818
  ADDQ.L  #1,D3
LAB_A23818:
  DBF D2,LAB_A23806
  ST  TrackBufferModified
  MOVEQ #1,D0
  BSR.W loadSector
  BMI.S LAB_A23860
  MOVE.W  #$007f,D2
LAB_A2382E:
  TST.W D1
  BEQ.S LAB_A23838
  MOVE.L  (A2)+,(A1)
  SUBQ.W  #1,D1
  BRA.S LAB_A2383A
LAB_A23838:
  CLR.L (A1)
LAB_A2383A:
  ADD.L (A1)+,D3
  BCC.S LAB_A23840
  ADDQ.L  #1,D3
LAB_A23840:
  DBF D2,LAB_A2382E
  ST  TrackBufferModified
  MOVEQ #0,D0
  BSR.W loadSector
  BMI.S LAB_A23860
  NOT.L D3
  MOVE.L  D3,4(A1)
  ST  TrackBufferModified
  MOVEQ #0,D0
LAB_A23860:
  MOVEM.L (A7)+,D1-D3/A1-A2
  TST.W D0
  RTS
LAB_A23868:
  DC.W  1 ;max install type
  DC.L  stdboot
  DC.L  stdbootend
  DC.L  arboot
  DC.L  arbootend
stdboot:
  LEA DosLibName(PC),A1
  JSR -96(A6)
  TST.L D0
  BEQ.S LAB_A23890
  MOVEA.L D0,A0
  MOVEA.L $16(A0),A0
  MOVEQ #0,D0
LAB_A2388E:
  RTS
LAB_A23890:
  MOVEQ #-1,D0
  BRA.S LAB_A2388E
DosLibName:
  DC.B  "dos.library",0
  DS.W  1
stdbootend:
arboot:
  MOVEM.L A0-A6,-(A7)
  MOVEA.L EXT_4,A6
  BSR.S SUB_A238CA
  MOVEM.L (A7)+,A0-A6
  MOVEA.L EXT_4,A6
  LEA DosLibName2(PC),A1
  JSR -96(A6)
  MOVEA.L D0,A0
  MOVEA.L $16(A0),A0
  MOVEQ #0,D0
  RTS
SUB_A238CA:
  BTST  #2,potgor+hardware
  BEQ.W LAB_A23A06
  CMPI.W  #$4880,EXT_FC06DC
  BNE.S LAB_A238EE
  LEA LAB_A23B72(PC),A0
  MOVE.L  #$46433037,(A0)+
  MOVE.W  #$3138,(A0)
LAB_A238EE:
  LEA LAB_A23C4A(PC),A0
  CMPI.L  #$0007f94c,$226(A6)
  BEQ.W LAB_A23980
  LEA LAB_A23C3A(PC),A0
  CMPI.L  #$0007ebe2,$226(A6)
  BEQ.S LAB_A23980
  LEA LAB_A23C2A(PC),A0
  CMPI.L  #$0007ec3e,$2E(A6)
  BEQ.S LAB_A23980
  LEA LAB_A23C1A(PC),A0
  CMPI.L  #$0007ec0e,$2E(A6)
  BEQ.S LAB_A23980
  LEA LAB_A23C5A(PC),A0
  MOVE.L  $2A(A6),D0
  OR.L  $2E(A6),D0
  OR.L  $22A(A6),D0
  BNE.S LAB_A2399A
  CMPI.W  #$4880,EXT_FC06DC
  BEQ.S LAB_A23974
  CMPI.L  #$00fc06dc,-454(A6)
  BNE.S LAB_A23980
LAB_A2394E:
  BTST  #6,ciaapra
  BNE.S LAB_A2396A
  BSET  #1,ciaapra
  MOVE.W  #$044f,color00+hardware
  RTS
LAB_A2396A:
  MOVE.W  #$04f4,color00+hardware
  RTS
LAB_A23974:
  CMPI.L  #$00fc0718,-454(A6)
  BNE.S LAB_A23980
  BRA.S LAB_A2394E
LAB_A23980:
  LEA LAB_A23ADC(PC),A1
  MOVEQ #$30,D0
LAB_A23986:
  MOVE.B  #$20,(A1)+
  DBF D0,LAB_A23986
  MOVEQ #$F,D0
  LEA LAB_A23AC6(PC),A1
LAB_A23994:
  MOVE.B  (A0)+,(A1)+
  DBF D0,LAB_A23994
LAB_A2399A:
  LEA LAB_A23BA2(PC),A1
  MOVE.L  $2E(A6),D2
  BSR.S SUB_A239C4
  MOVE.L  $2A(A6),D2
  BSR.S SUB_A239C4
  MOVE.L  -454(A6),D2
  BSR.S SUB_A239C4
  MOVE.L  $222(A6),D2
  BSR.S SUB_A239C4
  MOVE.L  $226(A6),D2
  BSR.S SUB_A239C4
  MOVE.L  $22A(A6),D2
  BSR.S SUB_A239C4
  BRA.S LAB_A239E6
SUB_A239C4:
  MOVEQ #7,D1
LAB_A239C6:
  ROL.L #4,D2
  MOVE.L  D2,D3
  ANDI.B  #$0f,D3
  ADDI.B  #$30,D3
  CMPI.B  #$3a,D3
  BCS.S LAB_A239DA
  ADDQ.B  #7,D3
LAB_A239DA:
  MOVE.B  D3,(A1)+
  DBF D1,LAB_A239C6
  MOVE.B  #$20,(A1)+
  RTS
LAB_A239E6:
  LEA IntuitionLibName(PC),A1
  JSR -408(A6)
  MOVE.L  D0,-(A7)
  MOVEA.L (A7),A6
  LEA VirusDefsTable(PC),A0
  MOVEQ #0,D0
  MOVE.L  #$000000b4,D1
  JSR -90(A6)
  TST.L D0
  BEQ.S LAB_A23A1E
LAB_A23A06:
  MOVEA.L EXT_4,A6
  JSR -150(A6)
  BSET  #0,EXT_7
  JMP EXT_F800D0
LAB_A23A1E:
  MOVEA.L EXT_4,A6
  MOVEA.L (A7)+,A1
  JSR -414(A6)
  MOVE.W  #$0f44,color00+hardware
  RTS

VirusDefsTable:
  DC.W  $0060
  DC.B  $14

  DC.B  "   Action Replay 5 AntiVirus-Boot",0
  DC.B  $01
  DC.W  $0050
  DC.B  $23

  DC.B  "For SCA,BANDIT,NORTH-STAR,BYTE WARRIOR (DASA), VIRUS",0
  DC.L  $0100c832

  DC.B  "And most FUTURE-VIRUS !!!!!!! ",0
  DC.B  $01
  DC.W  $0122
  DC.B  $46

  DC.B  "Found",0
  DC.B  $01
  DC.L  $00f05a20

LAB_A23AC6:
  DC.L  $20202020,$20202020,$20202020,$20202020
  DC.L  $00010064
  DC.B  $6e
  DC.B  " "

LAB_A23ADC:
  DC.L  $49542044,$4f53454e,$27542048,$41564520
  DC.L  $544f2042,$45204120,$56495255,$5320494e
  DC.L  $20544845,$204d454d,$4f525920,$213f2100
  DC.L  $0100058c

  DC.B  "VEKTOR  : CoolCap. ColdCap. DOIO     Kickmem  KickTag  KickSu"
  DC.B  "m ",0
  DC.L  $0100059b

  DC.B  "STANDART: 00000000 00000000 00"

LAB_A23B72:
  DC.L  $30303030,$30302030,$30303030,$30303020
  DC.L  $30303030,$30303030,$20303030,$30303030
  DC.L  $30000100
  DC.W  $05aa

  DC.B  "FOUND   : "

LAB_A23BA2:
  DC.L  $20202020,$20202020,$20202020,$20202020
  DC.L  $20202020,$20202020,$20202020,$20202020
  DC.L  $20202020,$20202020,$20202020,$20202020
  DC.L  $20202020,$20202000,$01003246

  DC.B  "LEFT MOUSE",0
  DC.B  $01
  DC.W  $0032
  DC.B  $5a

  DC.B  "Clear System ",0
  DC.B  $01
  DC.W  $01f4
  DC.B  $46

  DC.B  "RIGHT MOUSE",0
  DC.B  $01
  DC.W  $01f4
  DC.B  $5a

  DC.B  "Continue",0
  DS.W  1

LAB_A23C1A:
  DC.B  "NORTH-STAR VIRUS"

LAB_A23C2A:
  DC.B  "  SCA-VIRUS     "

LAB_A23C3A:
  DC.B  "  BANDIT-VIRUS  "

LAB_A23C4A:
  DC.B  "   DASA-VIRUS   "

LAB_A23C5A:
  DC.B  "SYSTEM NOT OK. !"

IntuitionLibName:
  DC.B  "intuition.library",0

DosLibName2:
  DC.B  "dos.library",0,0,0
arbootend:

clearPagePointers:
  MOVEM.L A0/D0,-(A7)
  LEA stringWorkspace,A0
  MOVE.W #$14-1,D0
.1
  CLR.L (A0)+
  DBF d0,.1
  MOVEM.L (A7)+,A0/D0
  RTS

addPagePointer:
  MOVEM.L A1/D0,-(A7)
  LEA stringWorkspace,A1
  MOVE.W #$14-1,D0
.1
  TST.L (a1)+
  BNE.S .2
  MOVE.L A0,-4(A1)
  BRA.S .3
.2
  DBF d0,.1
  LEA stringWorkspace,A1
  MOVE.W #$14-2,D0
.4
  MOVE.L 4(A1),(A1)+
  DBF D0,.4
  MOVE.L A0,(A1)
.3
  MOVEM.L (A7)+,A1/D0
  RTS

gotoPrevPagePointer
  MOVEM.L A1/D0,-(A7)
  LEA stringWorkspace,A1
  MOVE.W #$14-1,D0
.1
  TST.L (A1)+
  BEQ.S .2
  DBF d0,.1
.2

  MOVE.L -8(A1),A0
  CMP.L #stringWorkspace+8,A1
  BEQ.S .3

  MOVE.L -12(A1),A0
  CLR.L -8(A1)
.3
  MOVEM.L (A7)+,A1/D0
  RTS

PrintPagedText:
  MOVEM.L D0-D1/A0-A1,-(A7)
  MOVEQ #0,D1
  BSR clearPagePointers
  BSR addPagePointer
LAB_A23C90:
  MOVE.B  (A0)+,D0
  BEQ.S LAB_A23CD0
  CMPI.W  #$000a,D0
  BEQ.S LAB_A23CB0
  CMPI.W  #$000d,D0
  BEQ.S LAB_A23CA8
LAB_A23CA0:
  JSR PrintChar
  BRA.S LAB_A23C90
LAB_A23CA8:
  ADDQ.W  #1,D1
  CMP.W  PageHeight,D1
  BNE.S LAB_A23CA0
LAB_A23CB0:
  MOVEQ #0,D1
  JSR PrintCR
LAB_A23CB8:
  JSR GetMappedKeyCode
  MOVE.W  KeyCode,D0
  BEQ.S LAB_A23CB8
  TST.B EscapePressed
  BNE.S LAB_A23CD0
  JSR WaitNoKeypress

  CMP.W #CursorUp,KeyCode
  BNE.S .1
  BSR gotoPrevPagePointer
  BRA.S LAB_A23C90
.1
  BSR addPagePointer
  BRA.S LAB_A23C90
LAB_A23CD0:
  MOVEM.L (A7)+,D0-D1/A0-A1
  RTS
CMD_CHIPREGS:
  MOVEM.L D0-D1/A0-A1,-(A7)
  LEA ChipRegsText,A1
  ST  scrollLock
  MOVEQ #0,D0
  MOVE.W  #$00ff,D1
LAB_A23CEC:
  TST.B EscapePressed
  BNE.S LAB_A23D28
  LEA RegOffsetText(PC),A0
  JSR PrintText
  JSR Print4DigitHex
  LEA RegNameText(PC),A0
  JSR PrintText
  MOVEA.L A1,A0
  JSR PrintText
  JSR FindNull(PC)
  MOVEA.L A0,A1
  JSR PrintCrIfNotBlankLine
  ADDQ.W  #2,D0
  DBF D1,LAB_A23CEC
LAB_A23D28:
  SF  scrollLock
  JSR PrintCrIfNotBlankLine
  JSR PrintReady
  MOVEM.L (A7)+,D0-D1/A0-A1
  RTS
SUB_A23D40:
  MOVEM.L D0/A0,-(A7)
  LEA ChipRegsText,A0
  LSR.W #1,D0
LAB_A23D4C:
  SUBQ.W  #1,D0
  BMI.S LAB_A23D56
  JSR FindNull(PC)
  BRA.S LAB_A23D4C
LAB_A23D56:
  JSR PrintText
  MOVEM.L (A7)+,D0/A0
  RTS

  DC.B  "list of all Amiga chipregisters:",$D,"============================"
  DC.B  "====",$D,0

RegOffsetText:
  DC.B  "Register offset: ",0

RegNameText:
  DC.B  " , register name: ",0

SUB_A23DCA:
  MOVEM.L D0-D1/A0/A6,-(A7)
  MOVEA.L EXT_4.W,A6
  CLR.L $2E(A6)
  CLR.L $2A(A6)
  CLR.L $32(A6)
  CLR.L $222(A6)
  CLR.L $226(A6)
  CLR.L $22A(A6)
  LEA $22(A6),A0
  CLR.W D0
  MOVEQ #$17,D1
LAB_A23DF2:
  ADD.W (A0)+,D0
  DBF D1,LAB_A23DF2
  NOT.W D0
  MOVE.W  D0,(A0)
  MOVEM.L (A7)+,D0-D1/A0/A6
  RTS
SUB_A23E02:
  MOVEM.L D1-D7/A0-A6,-(A7)
  MOVEA.L EXT_4,A6
  MOVEA.L $2E(A6),A0
  JSR SUB_A23E3E
  BNE.S LAB_A23E26
  MOVEA.L $226(A6),A0
  JSR SUB_A23E3E
  BNE.S LAB_A23E26
  BRA.S LAB_A23E3A
LAB_A23E26:
  BTST  #1,VirusCheckerSettingsPrefs
  BEQ.S LAB_A23E32
  BSR.S SUB_A23DCA
LAB_A23E32:
  MOVEQ #9,D0
LAB_A23E34:
  MOVEM.L (A7)+,D1-D7/A0-A6
  RTS
LAB_A23E3A:
  MOVEQ #0,D0
  BRA.S LAB_A23E34
SUB_A23E3E:
  MOVEM.L D1-D2/A0-A1,-(A7)
  MOVE.L  A0,D0
  BEQ.S LAB_A23E7C
  MOVEQ #1,D0
  LEA -1024(A0),A0
  MOVE.W  #$0800,D1
  LEA LAB_A480DE,A1
  MOVE.L  #$646f732e,D2
LAB_A23E5C:
  MOVE.B  (A0),(A1)
  MOVE.B  1(A0),1(A1)
  MOVE.B  2(A0),2(A1)
  MOVE.B  3(A0),3(A1)
  ADDQ.L  #1,A0
  CMP.L (A1),D2
  BEQ.S LAB_A23E7C
  DBF D1,LAB_A23E5C
  MOVEQ #0,D0
LAB_A23E7C:
  MOVEM.L (A7)+,D1-D2/A0-A1
  TST.W D0
  RTS
checkForVirus:
  MOVEM.L D1-D7/A0-A6,-(A7)
  JSR checkExecBaseValid
  BEQ.S LAB_A23ED8
  MOVEQ #0,D0
  CMPI.L  #$00001400,EXT_4.W
  BLS.S LAB_A23EB2
  CMPI.L  #$00c00000,EXT_4.W
  BLS.S LAB_A23ED8
  CMPI.L  #$00c01000,EXT_4.W
  BLS.S LAB_A23EB2
  BRA.S LAB_A23ED8
LAB_A23EB2:
  BSR.W SUB_A23E02
  BNE.S LAB_A23ED8
  BNE.S LAB_A23ED8
  BNE.S LAB_A23ED8
  BNE.S LAB_A23ED8
  BNE.S LAB_A23ED8
  BNE.S LAB_A23ED8
  BNE.S LAB_A23ED8
  BNE.S LAB_A23ED8
  BNE.S LAB_A23ED8
  BNE.S LAB_A23ED8
  BNE.S LAB_A23ED8
  BNE.S LAB_A23ED8
  BNE.S LAB_A23ED8
  BNE.S LAB_A23ED8
  BNE.S LAB_A23ED8
  BNE.W LAB_A23ED8
LAB_A23ED8:
  MOVEM.L (A7)+,D1-D7/A0-A6
  RTS
FindVirus:
  MOVEM.L D0-D1/A0,-(A7)
  MOVE.W  #$0200,dmacon+hardware
  MOVE.W  #$4000,intena+hardware
  JSR SwapChipRam1
  MOVE.L  Int2Save,AUTO_INT2.W
  MOVE.L  Int3Save,AUTO_INT3.W
  BSR.W checkForVirus
  LEA VirusNamesTable(PC),A0
  JSR SwapChipRam1
  MOVE.L  #KeyboardIntHandler,AUTO_INT2.W
  MOVE.L  #VBlankIntHandler,AUTO_INT3.W
  MOVE.W  #$c000,intena+hardware
  MOVE.W  #$8200,dmacon+hardware
  TST.B apiCall
  BNE.S skipv
  JSR PrintCrIfNotBlankLine
  MOVE.W  D0,D1
LAB_A23F38:
  SUBQ.W  #1,D0
  BMI.S LAB_A23F42
  JSR FindNull(PC)
  BRA.S LAB_A23F38
LAB_A23F42:
  JSR PrintText
  TST.W D1
  BEQ.S LAB_A23F74
  LEA VirusFoundText(PC),A0
  JSR PrintText
  BTST  #1,VirusCheckerSettingsPrefs
  BEQ.S LAB_A23F6A
  LEA VirusKilledText(PC),A0
  JSR PrintText
LAB_A23F6A:
  LEA VirusMsgText(PC),A0
  JSR PrintText
LAB_A23F74:
  JSR PrintReady
skipv:
  MOVEM.L (A7)+,D0-D1/A0
  RTS
PrintVirusWarning:
  MOVEM.L D0/A0,-(A7)
  LEA VirusNamesTable(PC),A0
  MOVE.B  virusFound,D0
  BEQ.S LAB_A23FA8
LAB_A23F90:
  BSR.W FindNull
  SUBQ.B  #1,D0
  BNE.S LAB_A23F90
  JSR PrintText
  LEA VirusResetText(PC),A0
  JSR PrintText
LAB_A23FA8:
  MOVEM.L (A7)+,D0/A0
  RTS

VirusNamesTable:
  DC.B  "No known virus in memory!",0
  DC.B  "Traveling Jack link-virus!",$D,0
  DC.B  "Centurion link-virus, check startup-sequence",$D,0
  DC.B  "Disater Master link-virus, check CLS in C: and startup-sequen"
  DC.B  "ce",$D,0
  DC.B  "Xeno link-virus, check files on your (hard)disk",$D,0
  DC.B  "Revenge ",0
  DC.B  "Revenge-Bootloader ",0
  DC.B  "Gadaffi ",0
  DC.B  "Maybe a Disk-Doctor ",0
  DC.B  "SCA like ",0
  DC.B  "Byte Warrior ",0
  DC.B  "IRQ (link-virus!) check 2nd file in s: or look at devs:",$D,0
  DC.B  "BSG-9 (link-virus!) check 1st file in s: or look at dir-comma"
  DC.B  "nd",$D,0
  DC.B  "Lamer Exterminator ",0
  DC.B  "Byte Bandit ",0
  DC.B  "Library has changed (maybe a virus)",$D,0
  DC.B  "Reset-programm found which uses dos.library (maybe a virus)",$D,0

VirusFoundText:
  DC.B  "Virus in memory found !!!!!",$D,0

VirusKilledText:
  DC.B  "Virus in memory was killed (not Lamer/DiskDoctor)!",$D,0

VirusMsgText:
  DC.B  "If your virus is a bootblock-virus like:",$D,"SCA, Byte Bandit, By"
  DC.B  "te Warrior, Lamer Exterminator, Gadaffi, Disk Doctor",$D,"Install "
  DC.B  "your bootdisk and check eventually other disks.",$D,"Reboot with m"
  DC.B  "emory-clear option!",$D,0

VirusResetText:
  DC.B  "Virus at reset found ! ! !",$D,0

TrackDiskName:
  DC.B  "trackdisk.device",0

  MOVEM.L D1/A0-A2,-(A7)
  MOVEA.L A0,A2
  MOVE.L  A1,D1
  MOVE.L  (A2),D0
  BEQ.S LAB_A24344
LAB_A2432A:
  MOVEA.L D0,A2
  MOVE.L  (A2),D0
  BEQ.S LAB_A24344
  MOVEA.L $A(A2),A0
  MOVEA.L D1,A1
LAB_A24336:
  CMPM.B  (A0)+,(A1)+
  BNE.S LAB_A2432A
  TST.B -1(A0)
  BNE.S LAB_A24336
  MOVE.L  A2,D0
  MOVEA.L D1,A1
LAB_A24344:
  MOVEM.L (A7)+,D1/A0-A2
  RTS
PrintExecbase:
  MOVEM.L D0-D2/A0-A6,-(A7)
  LEA ExecbaseStructText(PC),A0
  JSR PrintText
  LEA LAB_A2450E(PC),A1
  LEA ExecbaseOffsetsTable(PC),A2
  MOVEA.L EXT_4,A6
LAB_A24366:
  JSR Delay
  MOVE.W  (A2)+,D2
  EXT.L D2
  BMI.W LAB_A2442E
  MOVEQ #$21,D0
  JSR PrintChar
  MOVEQ #3,D1
  MOVE.W  D2,D0
  JSR ConvertToBCD
  JSR PrintValue
  MOVEQ #5,D0
  JSR PrintSpaces
  MOVEQ #$24,D0
  JSR PrintChar
  MOVE.W  D2,D0
  JSR PrintValue
  MOVEQ #5,D0
  JSR PrintSpaces
  MOVEQ #$24,D0
  JSR PrintChar
  MOVE.L  A6,D0
  ADD.L D2,D0
  MOVEQ #7,D1
  JSR PrintValue
  MOVEQ #5,D0
  JSR PrintSpaces
  MOVEA.L A1,A0
  MOVEA.L A1,A5
  JSR FindNull(PC)
  MOVE.B  (A0)+,D0
  MOVEA.L A0,A1
  LEA 0(A6,D2.W),A0
  CMPI.B  #1,D0
  BNE.S LAB_A243EE
  JSR memSafeReadByte
  JSR Print2DigitHex
  MOVEQ #7,D0
  JSR PrintSpaces
  BRA.S LAB_A2441C
LAB_A243EE:
  CMPI.B  #2,D0
  BNE.S LAB_A2440A
  JSR memSafeReadWord
  JSR Print4DigitHex
  MOVEQ #5,D0
  JSR PrintSpaces
  BRA.S LAB_A2441C
LAB_A2440A:
  JSR memSafeReadLong
  JSR Print8DigitHex
  JSR PrintSpace
LAB_A2441C:
  MOVEA.L A5,A0
  JSR PrintText
  JSR PrintCrIfNotBlankLine
  BRA.W LAB_A24366
LAB_A2442E:
  JSR PrintReady
  MOVEM.L (A7)+,D0-D2/A0-A6
  RTS
SUB_A2443A:
  MOVEM.L D1-D5/A0-A5,-(A7)
  MOVE.W  D0,D3
  LEA LAB_A2450E(PC),A0
  LEA ExecbaseOffsetsTable(PC),A1
  MOVEQ #0,D2
LAB_A2444A:
  TST.W (A1)
  BMI.S LAB_A244B6
  CMP.W (A1)+,D0
  BEQ.S LAB_A24456
  ADDQ.W  #1,D2
  BRA.S LAB_A2444A
LAB_A24456:
  SUBQ.W  #1,D2
  BMI.S LAB_A24462
  JSR FindNull(PC)
  ADDQ.W  #1,A0
  BRA.S LAB_A24456
LAB_A24462:
  MOVEA.L A0,A1
  JSR FindNull(PC)
  MOVE.B  (A0),D1
  LEA LAB_A452C8,A3
  MOVEA.L EXT_4,A4
  SUBA.W  #$0276,A4
  CMPI.B  #1,D1
  BNE.S LAB_A2448C
  MOVE.B  0(A4,D3.W),D5
  CMP.B 0(A3,D3.W),D5
  BEQ.S LAB_A244B6
  BRA.S LAB_A244A8
LAB_A2448C:
  CMPI.B  #2,D1
  BNE.S LAB_A2449E
  MOVE.W  0(A4,D3.W),D5
  CMP.W 0(A3,D3.W),D5
  BEQ.S LAB_A244B6
  BRA.S LAB_A244A8
LAB_A2449E:
  MOVE.L  0(A4,D3.W),D5
  CMP.L 0(A3,D3.W),D5
  BEQ.S LAB_A244B6
LAB_A244A8:
  MOVEA.L A1,A0
  JSR PrintText
  JSR PrintCrIfNotBlankLine
LAB_A244B6:
  MOVEM.L (A7)+,D1-D5/A0-A5
  RTS

ExecbaseStructText:
  DC.B  "Exec-base struct:",$D,"=================",$D,"offset (dec/hex)  address"
  DC.B  "     value    name ",$D,0

LAB_A2450E:
  DC.B  "struct librarynode",0
  DC.B  $04

  DC.B  "uword softver",0
  DC.B  $02

  DC.B  "word lowmemchksum",0
  DC.B  $02

  DC.B  "ulong chkbase",0
  DC.B  $04

  DC.B  "aptr coldcapture (virus)",0
  DC.B  $04

  DC.B  "aptr coolcapture (virus)",0
  DC.B  $04

  DC.B  "aptr warmcapture (virus)",0
  DC.B  $04

  DC.B  "aptr sysstkupper",0
  DC.B  $04

  DC.B  "aptr sysstklower",0
  DC.B  $04

  DC.B  "ulong maxlocmem",0
  DC.B  $04

  DC.B  "aptr debugentry",0
  DC.B  $04

  DC.B  "aptr debugdata",0
  DC.B  $04

  DC.B  "aptr alertdata",0
  DC.B  $04

  DC.B  "aptr maxextmem",0
  DC.B  $04

  DC.B  "uword chksum",0
  DC.B  $02

  DC.B  "int-tbe",0
  DC.B  $04

  DC.B  "int-dskblk",0
  DC.B  $04

  DC.B  "int-soft",0
  DC.B  $04

  DC.B  "int-ports",0
  DC.B  $04

  DC.B  "int-copper",0
  DC.B  $04

  DC.B  "int-vertbank",0
  DC.B  $04

  DC.B  "int-blitter",0
  DC.B  $04

  DC.B  "int-audio0",0
  DC.B  $04

  DC.B  "int-audio1",0
  DC.B  $04

  DC.B  "int-audio2",0
  DC.B  $04

  DC.B  "int-audio3",0
  DC.B  $04

  DC.B  "int-rbf",0
  DC.B  $04

  DC.B  "int-disksync",0
  DC.B  $04

  DC.B  "int-extern",0
  DC.B  $04

  DC.B  "int-intern",0
  DC.B  $04

  DC.B  "int-nmi",0
  DC.B  $04

  DC.B  "struct task *thistask",0
  DC.B  $04

  DC.B  "ulong idlecount",0
  DC.B  $04

  DC.B  "ulong dispcount",0
  DC.B  $04

  DC.B  "uword quantum",0
  DC.B  $02

  DC.B  "uword elapsed",0
  DC.B  $02

  DC.B  "uword sysflags",0
  DC.B  $02

  DC.B  "byte idnestcnt",0
  DC.B  $01

  DC.B  "byte tdnestcnt",0
  DC.B  $01

  DC.B  "uword attnflags",0
  DC.B  $02

  DC.B  "uword attnresched",0
  DC.B  $02

  DC.B  "aptr resmodules",0
  DC.B  $04

  DC.B  "aptr tasktrapcode",0
  DC.B  $04

  DC.B  "aptr taskexecptcode",0
  DC.B  $04

  DC.B  "aptr taskexitcode",0
  DC.B  $04

  DC.B  "ulong tasksigalloc",0
  DC.B  $04

  DC.B  "uword tasktrapalloc",0
  DC.B  $02

  DC.B  "struct list memlist",0
  DC.B  $04

  DC.B  "struct list resourcelist",0
  DC.B  $04

  DC.B  "struct list devicelist",0
  DC.B  $04

  DC.B  "struct list intrlist",0
  DC.B  $04

  DC.B  "struct list liblist",0
  DC.B  $04

  DC.B  "struct list portlist",0
  DC.B  $04

  DC.B  "struct list taskready",0
  DC.B  $04

  DC.B  "struct list taskwait",0
  DC.B  $04

  DC.B  "struct softintlist",0
  DC.B  $04

  DC.B  "ulong lastalert",0
  DC.B  $04

  DC.B  "ubyte vblankfrequency",0
  DC.B  $01

  DC.B  "ubyte powersupplyfrequency",0
  DC.B  $01

  DC.B  "struct list semaphorelist",0
  DC.B  $04

  DC.B  "aptr kickmemptr (virus)",0
  DC.B  $04

  DC.B  "aptr kicktagptr (virus)",0
  DC.B  $04

  DC.B  "aptr kickchecksum (virus)",0
  DC.B  $04

  DC.B  "ubyte execbase reserved(10)",0
  DC.B  $04

  DC.B  "ubyte execbase newreserved(20)",0
  DC.B  $04

ExecbaseOffsetsTable:
  DC.L  $00000022,$00240026,$002a002e,$00320036
  DC.L  $003a003e,$00420046,$004a004e,$00520054
  DC.L  $0060006c,$00780084,$0090009c,$00a800b4
  DC.L  $00c000cc,$00d800e4,$00f000fc,$01080114
  DC.L  $0118011c,$01200122,$01240126,$01270128
  DC.L  $012a012c,$01300134,$0138013c,$01400142
  DC.L  $0150015e,$016c017a,$01880196,$01a401b2
  DC.L  $02020212,$02130214,$02220226,$022a022e
  DC.L  $0238ffff,$00240026,$002a002e,$0032003e
  DC.L  $00420046,$004e0052,$0054012c,$01420150
  DC.L  $015e0222,$0226022a
  DC.W  $ffff

AllocTBuff:
  MOVEM.L D0-D2/A0,-(A7)
  LEA EXT_A400,A0
  MOVE.L  ChipMemEnd,D2
  SUB.L A0,D2
  BSR.W SUB_A1F99A
  MOVE.L  D0,DiskMonBufferSize
  MOVE.L  D1,LAB_A48386
  MOVE.L  A0,DiskMonBuffer
  LEA EXT_C08400,A0
  MOVE.L  SlowMemEnd,D2
  BEQ.S LAB_A24AB0
  SUB.L A0,D2
  BSR.W SUB_A1F99A
  CMP.L DiskMonBufferSize,D0
  BLS.S LAB_A24AB0
  MOVE.L  D0,DiskMonBufferSize
  MOVE.L  D1,LAB_A48386
  MOVE.L  A0,DiskMonBuffer
LAB_A24AB0:
  TST.L autoConfigMemStart
  BEQ.S LAB_A24AE4
  MOVEA.L autoConfigMemStart,A0
  MOVE.L  autoConfigMemEnd,D2
  SUB.L A0,D2
  BSR.W SUB_A1F99A
  CMP.L DiskMonBufferSize,D0
  BLS.S LAB_A24AE4
  MOVE.L  D0,DiskMonBufferSize
  MOVE.L  D1,LAB_A48386
  MOVE.L  A0,DiskMonBuffer
LAB_A24AE4:
  MOVEM.L (A7)+,D0-D2/A0
  ST  TBufferAllocated
  RTS

LAB_41A1DC:
  DC.L  $00240026,$002a002e,$0032003e,$00420046
  DC.L  $004e0052,$0054012c,$01420150,$015e0222
  DC.L  $0226022a
  DC.W  $ffff

CMD_SLOADER:
  MOVE.W  #$0100,dmacon+hardware
  MOVE.L  #$00001000,UnpackDest
  LEA ALoadDataEnd,A0
  MOVE.L  A0,UnpackSourceEnd
  JSR UnpackNoFlash(PC)
  LEA EXT_7000.W,A0
  BSR.W backupMfmBuffer
  MOVE.L  #5,D0
  LEA ALoadName(PC),A1
  BSR.W SaveFileInit
  BMI.W LAB_41A256
  LEA ALoadDataEnd,A2
  MOVE.L  -(A2),D0
  LEA EXT_1000,A2
  BSR.W AddDataChunk
  JSR HandleDiskFull
  BMI.W LAB_41A256
  BSR.W AddFileToDirBlock
LAB_41A256:
  MOVE.L  D0,-(A7)
  MOVEQ #0,D0
  MOVE.W  #$00c7,D1
  BSR.W clearScreenArea
  JSR redrawTextPage
  MOVE.W  #$8100,dmacon+hardware
  BSR.W restoreMfmBuffer
  BMI.W LAB_41A27E
  MOVE.L  (A7)+,D0
  BRA.W PrintDiskOpResult
LAB_41A27E:
  ADDQ.L  #4,A7
  BRA.W PrintDiskOpResult

ALoadName:
  DC.B  "Aload",0

SUB_41A28A:
  CLR.L cursorX
  MOVE.W  #$00f0,D0
  JSR PrintCrIfNotBlankLine
  CLR.L cursorX
  LEA LAB_41307D(PC),A0
  JSR PrintText
  ST  cursorEnabled
  JSR PrintInputChar
  SF  cursorEnabled
  SF  forceUpper
  BSR.W SUB_A2231A
  ST  forceUpper
  MOVE.L  D0,D1
  MOVEQ #-14,D0
  TST.W D1
  BEQ.W LAB_41A33A
  LEA EXT_7000.W,A0
  CMPI.L  #$00010000,LAB_A480CA
  BHI.W LAB_41A2EE
  LEA EXT_7C000,A0
LAB_41A2EE:
  BSR.W backupMfmBuffer
  MOVE.L  D1,D0
  LEA stringWorkspace,A1
  BSR.W SaveFileInit
  BMI.W LAB_41A32E
  BSR.W MakeSVXHeader
  BMI.W .fullcheck
  BSR.W ScanAddAnno
  BMI.W .fullcheck
  BSR.W ScanAddATAK
  BMI.W .fullcheck
  BSR.W SacnAddRLSE
  BMI.W .fullcheck
  BSR.W ScanMakeBody
.fullcheck:
  JSR HandleDiskFull
  BMI.W LAB_41A32E
  BSR.W AddFileToDirBlock
LAB_41A32E:
  BSR.W PrintDiskOpResult
  BSR.W restoreMfmBuffer
  BPL.W LAB_41A33E
LAB_41A33A:
  BSR.W PrintDiskOpResult
LAB_41A33E:
  BSR.W SUB_A1FB6C
  BSR.W SUB_A1FB6C
  RTS
MakeSVXHeader:
  LEA LAB_A4520A,A1
  MOVE.L  #$464f524d,(A1)+
  CLR.L (A1)+
  MOVE.L  #$38535658,(A1)+
  MOVE.L  #$56484452,(A1)+
  MOVE.L  #$00000014,(A1)+
  MOVE.L  LAB_A480CE,D1
  SUB.L LAB_A480CA,D1
  MOVE.L  D1,(A1)+
  CLR.L (A1)+
  CLR.L (A1)+
  MOVE.L  #$00369e9b,D0
  DIVU  LAB_A480D2,D0
  MOVE.W  D0,(A1)+
  MOVE.W  #$0100,(A1)+
  MOVE.L  #$00010000,(A1)+
  ADDI.L  #$00000072,D1
  LEA LAB_A4520A,A2
  MOVE.L  D1,4(A2)
  MOVEQ #$28,D0
  BSR.W AddDataChunk
  RTS
ScanAddAnno:
  LEA ANNOData(PC),A2
  MOVEQ #$2E,D0
  BSR.W AddDataChunk
  RTS

ANNOData:
  DC.B  "ANNO",0,0,0
  DC.B  "(Ripped by Action Replay MK III - Amiga",0,0

ScanAddATAK:
  LEA ATAKData(PC),A2
  MOVEQ #$E,D0
  BSR.W AddDataChunk
  RTS
ATAKData:
  DC.L  $4154414b,$00000006,$00000001
  DS.W  1
SacnAddRLSE:
  LEA RLSEData(PC),A2
  MOVEQ #$E,D0
  BSR.W AddDataChunk
  RTS
RLSEData:
  DC.L  $524c5345,$00000006,$00000001
  DS.W  1
ScanMakeBody:
  LEA LAB_A4520A,A2
  MOVE.L  #BODY_TAG,(A2)
  MOVE.L  LAB_A480CE,D1
  SUB.L LAB_A480CA,D1
  MOVE.L  D1,4(A2)
  MOVEQ #8,D0
  BSR.W AddDataChunk
  BMI.W LAB_41A44C
  MOVEA.L LAB_A480CA,A2
  MOVE.L  D1,D0
  BSR.W AddDataChunk
LAB_41A44C:
  TST.W D0
  RTS

CMD_DISKIO:
  JSR ReadParameter
  TST.B ParamFound
  BEQ.S .2
  MOVE.L  D0,A0
  MOVE.L  D0,D7

  LEA diskio(PC),A1
  LEA diskioend(PC),A2
.1
  MOVE.W (A1)+,D0
  JSR memSafeWriteWord
  ADDQ #2,A0
  CMP.L A1,A2
  BNE.S .1
  MOVE.L A0,D6

  LEA diskiocopied(PC),A0
  JSR PrintText
  MOVE.L D7,D0
  JSR PrintAddressHex
  MOVE.B #"-",D0
  JSR PrintChar
  MOVE.L D6,D0
  SUBQ.L #1,D0
  JSR PrintAddressHex
  LEA diskiohelp(PC),A0
  JSR PrintText
  JMP PrintReady
.2
  JMP PrintWTF

diskiocopied:
  DC.B "Rob Northen disk routines copied to : ",0

diskiohelp:
  DC.B $D,$D
  DC.B "Low Level Read/Write/Format Disk Code for AmigaDos Disks",$D
  DC.B "on entry,",$D
  DC.B " d0.w = drive number",$D
  DC.B "  0-3=DF0-DF3",$D
  DC.B "  4-7=DF0-DF3 side 0 only",$D
  DC.B " d1.w = start sector no. (0-879 single sided, 0-1759 double sided)",$D
  DC.B " d2.w = number of sectors to read/write",$D
  DC.B "  0 = turn motor off (bit 15 of d3 must be set)",$D
  DC.B " d3.w = function",$D
  DC.B "  0 = read sectors",$D
  DC.B "  1 = write sectors",$D
  DC.B "  2 = format track",$D
  DC.B "  3 = find which drive(s) attached, result returned in d0.b",$D
  DC.B "  bit 15 of d3.w controls whether the drive motor is turned off",$D
  DC.B "  after use. If bit 15 is clear the drive motor is left on.",$D
  DC.B " a0.l = disk buffer address for transfer",$D
  DC.B " a1.l = workspace buffer, ($3300 bytes of CHIPMEM required)",$D,$D,0

  even
dosio:
    dc.l $48E7FFFE,$2C002E01,$28482A49,$2C4A6100,$071C4A86,$660A6100,$02082F41,$00046066
    dc.l $BC3C0001,$66066100,$02D0605A,$BC3C0002,$66066100,$045E604E,$BC3C0003,$660A6100
    dc.l $054E2F41,$0004603E,$BC3C0004,$66066100,$05A46032,$BC3C0005,$66086140,$48D70003
    dc.l $6032BC3C,$00066604,$6178601A,$BC3C0007,$660A6100,$008C48D7,$00036018,$BC3C0008
    dc.l $66046168,$600E2E80,$72007400,$363C8000,$61000804,$4CDF7FFF,$4A804E75,$7A0147FA
    dc.l $078A4AAB,$000A6710,$D6FC0012,$5205BA3C,$00026FEE,$70004E75,$204D6100,$05CE66F4
    dc.l $36BA0796,$426B0002,$70FF3740,$000442AB,$0006274D,$000A2228,$01442741,$000E2005
    dc.l $4E756100,$012242AC,$000A4E75,$61000118,$B2AC000E,$6F04222C,$000E2941,$00064E75
    dc.l $42A76100,$0102202C,$000E90AC,$00066700,$00C0B087,$6C022E00,$41FA073E,$3094202C
    dc.l $00066100,$00B0206C,$000A302C,$0002B440,$672E5280,$B4806714,$426C0002,$22280004
    dc.l $7002B090,$670E2228,$01F46008,$222801F8,$526C0002,$610006A0,$6676B46C,$000266EC
    dc.l $B86C0004,$671C3003,$E548323C,$01349240,$22301000,$D0FC0200,$6100067C,$66523944
    dc.l $0004206C,$000AD0FC,$0200203C,$000001E8,$9085D1C5,$BE806C02,$20079E80,$D1AC0006
    dc.l $D1976100,$00FE2007,$67265283,$226C000A,$234301FC,$45E90138,$E54B95C3,$6176D397
    dc.l $D3AC0006,$202C0006,$53806108,$39420002,$221F4E75,$28000280,$000001FF,$7A09EAAC
    dc.l $2A04CAFC,$0018DA80,$8AFC01E8,$D8454245,$48452404,$84FC0048,$26024243,$48430282
    dc.l $0000FFFF,$4E75200C,$5300C0FC,$001249FA,$061AD8C0,$4AAC000A,$6604584F,$70004E75
    dc.l $61000466,$667A2E28,$0144224E,$42A901FC,$45E90138,$42A76100,$00966660,$24012801
    dc.l $200D5280,$020000FE,$26402C07,$E08EE28E,$660C264E,$BE7C01E8,$6E045282,$6012616E
    dc.l $663A5282,$2A016708,$B4816604,$53866EEE,$22049484,$204B6100,$061C6620,$61000588
    dc.l $661A2028,$000CBE80,$6C022007,$9E80D197,$61105382,$66E62205,$200766A0,$221F4A80
    dc.l $4E7541E8,$00183F08,$025F0001,$661A3F0D,$025F0001,$6612E498,$60022AD8,$51C8FFFC
    dc.l $4240E598,$60021AD8,$51C8FFFC,$4E752029,$000890A9,$01FC6616,$222901F8,$67182049
    dc.l $61000514,$661042A9,$01FC45E9,$01382222,$522901FF,$70004E75,$61000198,$6712B0BC
    dc.l $000000CD,$6600016C,$61000254,$66000164,$610002D0,$70022080,$21470144,$61000258
    dc.l $317A052C,$01F670FD,$214001FC,$70012D40,$34FC7C02,$610001B6,$67000132,$41FA0518
    dc.l $30802D40,$35042207,$610001A2,$6700011E,$52860481,$00008940,$62EE2A06,$2C2E3504
    dc.l $6100018A,$610001D4,$2D463504,$42AE3508,$42AE36F8,$45EE3638,$43EE3700,$2C056100
    dc.l $01806700,$00E82A06,$7600780B,$B2846C02,$28012506,$20066100,$01A25286,$26497008
    dc.l $22C022EE,$350422EE,$34FC203C,$000001E8,$BE806C02,$20079E80,$22C022C6,$42994A40
    dc.l $67025340,$12DD51C8,$FFFC204B,$61000444,$21400014,$52837001,$D1AE34FC,$D1AE3508
    dc.l $4A87671A,$7048B0AE,$35086706,$B88366A2,$60262C2E,$35046100,$00F42D46,$36F841EE
    dc.l $35002028,$01342140,$00102228,$00046100,$046A665E,$70102080,$20076706,$2C056100
    dc.l $00CC204B,$21400010,$42A80014,$610003E4,$21400014,$22052403,$41EE3700,$61000448
    dc.l $66304A87,$670E7048,$B0AE3508,$6700FF0E,$6000FF26,$611E661A,$41EE3300,$323A03F2
    dc.l $42906100,$03AE2080,$6000041A,$203C0000,$00DD4E75,$323A03DC,$41EE3500,$61000378
    dc.l $6668303A,$03D2363A,$03CC2180,$30006000,$03EA6100,$01F46652,$28016100,$00C2664A
    dc.l $20046124,$43EE0138,$222E0008,$53812021,$611651C9,$FFFA222E,$01F86798,$204E6100
    dc.l $03366626,$200160DA,$48E7C000,$554080FC,$0020E548,$06403304,$22360000,$484001C1
    dc.l $48402D81,$00004CDF,$00034E75,$20065340,$5240B07C,$06E06706,$612267F4,$2C004E75
    dc.l $720061E8,$67102006,$52415240,$B07C06E0,$67046108,$66F22006,$4A814E75,$48E7C000
    dc.l $554080FC,$0020E548,$06403304,$22360000,$48400101,$4CDF0003,$4E7548E7,$C0005540
    dc.l $80FC0020,$E5480640,$33042236,$00004840,$01814840,$2D810000,$4CDF0003,$4E75323A
    dc.l $02F041EE,$33006100,$032A6608,$610002A4,$66000298,$4E7543E8,$01B170FF,$5200B03C
    dc.l $001E6704,$12DC66F4,$114001B0,$4E756100,$00F8664C,$78007A00,$22364018,$673641EE
    dc.l $33006100,$02526638,$7002B090,$662670FD,$B0A801FC,$67087002,$B0A801FC,$66161AC0
    dc.l $43E801B0,$701E1AD9,$51C8FFFC,$52852228,$01F066CA,$5844B87C,$012066BC,$22057000
    dc.l $4E7541EE,$35002248,$303C05FF,$429951C8,$FFFC4E75,$7200343C,$06E07602,$61000298
    dc.l $66000084,$61DC7002,$20807048,$2140000C,$70FF2140,$0138217C,$00000371,$013C6100
    dc.l $FF567001,$214001FC,$DCFC0400,$70026100,$FE985240,$B07C06E0,$66F4203C,$00000370
    dc.l $6100FEF8,$52806100,$FEF29CFC,$04006100,$01C22140,$0014D0FC,$02006100,$01B62080
    dc.l $90FC0200,$323C0370,$74026100,$021A6616,$2248303C,$007F22FC,$444F5300,$51C8FFF8
    dc.l $72006100,$02004E75,$204E2F0C,$61000140,$66000094,$43FA01B8,$32812E8C,$610000DC
    dc.l $67000084,$E54843FA,$01AA32C1,$32C02230,$0000674A,$61000140,$666C203C,$000000E1
    dc.l $7402B490,$66607402,$BC3C0003,$67064A14,$660274FD,$B4A801FC,$661E43E8,$01B045FA
    dc.l $017A7400,$14195302,$1019617A,$B01A56CA,$FFF86604,$4A12671E,$303C01F0,$60A8203C
    dc.l $000000CC,$BC3C0003,$671C4A14,$6618203C,$000000CD,$60104A14,$6600FF7A,$43FA0138
    dc.l $32A801F2,$7000285F,$4A804E75,$BC3C0006,$6C30204C,$612EB03C,$00446626,$6126B03C
    dc.l $0046661E,$10180400,$00306D16,$B03C0033,$6E100C18,$003A660A,$41FA00FE,$11400001
    dc.l $584C4E75,$1018B03C,$00616D0A,$B03C007A,$6E040200,$00DF4A00,$4E7548E7,$40C07000
    dc.l $72FF204C,$43FA00D4,$42115281,$4A146708,$0C1C002F,$66F4534C,$4A81672A,$C2FC000D
    dc.l $101861C2,$12C0D240,$02810000,$07FFB9C8,$66EA0C14,$002F6602,$524C4219,$82FC0048
    dc.l $42414841,$5C412001,$4CDF0302,$4E75323C,$03706122,$661E203C,$000000E1,$7402B490
    dc.l $66127401,$B4A801FC,$660A43FA,$006432A8,$013E7000,$4E7548E7,$30006100,$00964CDF
    dc.l $000C4A80,$660A610A,$6706203C,$00000195,$4E7548E7,$40807000,$323C007F,$D09851C9
    dc.l $FFFC4480,$4CDF0102,$4E750000,$00000000,$00000000,$00000000,$00000000,$00000000
    dc.l $00000000,$00000000,$00000000,$00000000,$00000000,$00000000,$00000000,$00000000
    dc.l $00000000,$00000000,$00000000,$00000000,$00000000,$00000000,$000042A8,$00146192
    dc.l $21400014,$74012F03,$7601610A,$261F4A80,$4E757401,$76002F09,$224E303A,$FFBC6104
    dc.l $225F4E75

diskio:
  DC.L $48E77FFC,$4E56FFDC,$B67C0003,$66086100,$01006000,$00F27803,$C8403D44,$FFDC3D41
  DC.L $FFDE3D42,$FFE03D43,$FFE22D48,$FFE42D49,$FFE8E458,$02400001,$52403D40,$FFEC7000
  DC.L $36026700,$0098701E,$D641B67C,$06E06E00,$00B60281,$0000FFFF,$82FC000B,$0C6E0001
  DC.L $FFEC6702,$D2413D41,$FFEE4841,$3D41FFF0,$61000688,$4A2EFFE3,$67046100,$04F2302E
  DC.L $FFF0720B,$9240B26E,$FFE06F04,$322EFFE0,$3D41FFF2,$610000D6,$66424A2E,$FFE36706
  DC.L $610001BA,$6636302E,$FFE0906E,$FFF2672C,$3D40FFE0,$0C2E0002,$FFE36606,$4AAEFFE4
  DC.L $670C302E,$FFF2E188,$D080D1AE,$FFE4426E,$FFF0302E,$FFECD16E,$FFEE60A2,$2F006100
  DC.L $05EC201F,$67207200,$322EFFEE,$0C6E0001,$FFEC6702,$E249C2FC,$000BD26E,$FFF0D26E
  DC.L $FFFA2F41,$00284E5E,$4A804CDF,$3FFE4E75,$3D7C0003,$FFDC7A01,$610005E0,$610005BC
  DC.L $382EFFDC,$56446116,$B0BCFFFF,$FFFF6604,$574409C5,$536EFFDC,$66DE2005,$4E75761F
  DC.L $7000610A,$D502D180,$51CBFFF8,$4E7572FF,$098113C1,$00BFD100,$08390005,$00BFE001
  DC.L $57C209C1,$13C100BF,$D1004E75,$7802426E,$FFFC426E,$FFFA426E,$FFF8342E,$FFEE6100
  DC.L $05906600,$00B8701D,$08390002,$00BFE001,$670000AA,$70000C2E,$0002FFE3,$670000BA
  DC.L $2A6EFFE8,$4BED0400,$2ABCAAAA,$AAAA3B7C,$44890004,$61000342,$610001A4,$667E302E
  DC.L $FFF4674E,$C0FC0440,$41ED0006,$61000488,$49F900DF,$F01E6100,$01DE6678,$0C2E0001
  DC.L $FFE3670A,$302EFFFA,$906EFFF2,$676A2A6E,$FFE84BED,$0400302E,$FFF4C0FC,$0440DBC0
  DC.L $2ABCAAAA,$AAAA3B7C,$44890004,$204D6100,$03FC302E,$FFF66718,$C0FC0440,$41ED0006
  DC.L $61000434,$49EEFFFE,$42546100,$018A6624,$302EFFFA,$906EFFF2,$671E701A,$2F007402
  DC.L $610004CE,$61000518,$201F0839,$000200BF,$E0016704,$51CCFF18,$6000045E,$7802426E
  DC.L $FFFA0C2E,$0002FFE3,$660A302E,$FFEE206E,$FFE86172,$6100053E,$7064D040,$61000570
  DC.L $701C0839,$000300BF,$E001674E,$41F900DF,$F000317C,$40000024,$216EFFE8,$0020317C
  DC.L $6600009E,$317C9100,$009E0C6E,$0050FFEE,$6506317C,$A000009E,$317C8210,$0096317C
  DC.L $0002009C,$317CD961,$0024317C,$D9610024,$610003C2,$670451CC,$FF9C2F00,$70026100
  DC.L $050E201F,$4E752600,$0043FF00,$4843363C,$000B2A6E,$FFE84BED,$0400286E,$FFE4204D
  DC.L $584820FC,$44894489,$20036100,$02F65148,$610002FA,$72286100,$023C6100,$02E65148
  DC.L $610002EA,$200C6728,$204C43ED,$0040203C,$00000200,$6100029E,$41ED0040,$323C0400
  DC.L $61000212,$41ED0038,$610002B8,$49EC0200,$4BED0440,$06430100,$530366A2,$4E75740A
  DC.L $41ED0006,$303C0040,$610002EC,$61000326,$66366100,$01CC6706,$51CAFFE6,$602C6100
  DC.L $018A662A,$B26EFFEE,$6624B43C,$000B6C1E,$B63C000B,$6E185303,$3D43FFF4,$3D7C000B
  DC.L $FFF6976E,$FFF67000,$4E757018,$4E75701B,$4E757019,$4E752A6E,$FFE84BED,$0400302E
  DC.L $FFF8C0FC,$0440DBC0,$203C0000,$17706100,$043E082C,$00010001,$660000F6,$61000422
  DC.L $670000F2,$4AAD0440,$67E86100,$015466BA,$61000118,$66B8B26E,$FFEE66B2,$360241ED
  DC.L $00086100,$0126103C,$000B902E,$FFF941ED,$00086100,$01EE6100,$013641ED,$00306100
  DC.L $01E2B66E,$FFF06D00,$009A302E,$FFF2D06E,$FFF0B640,$6C00008C,$082C0001,$00016600
  DC.L $0090302E,$FFFC0700,$66784A2E,$FFE36732,$61000086,$206EFFE4,$D1C143ED,$00406100
  DC.L $0174082C,$00010001,$666641ED,$0040323C,$04006100,$00E041ED,$00386100,$01866168
  DC.L $604041ED,$0040323C,$04006100,$00C82F00,$41ED0038,$61000094,$B09F6600,$FF16082C
  DC.L $00010001,$662A6130,$41ED0040,$226EFFE4,$D3C16100,$00F86130,$302EFFFA,$B06EFFF2
  DC.L $670E526E,$FFF80C6E,$000BFFF8,$6600FEE8,$70004E75,$70FF4E75,$2203926E,$FFF0203C
  DC.L $00000200,$C2C04E75,$302EFFFC,$07C03D40,$FFFC526E,$FFFA4E75,$204D720A,$700041E8
  DC.L $04402080,$51C9FFF8,$4E7541ED,$0008611A,$36000243,$00FF3400,$E04A4840,$32000241
  DC.L $00FFE048,$B03C00FF,$4E752018,$22180280,$55555555,$02815555,$5555D080,$80814E75
  DC.L $610C2F00,$41ED0030,$61E0B09F,$4E7541ED,$00087228,$2F02E449,$53417000,$2418B580
  DC.L $51C9FFFA,$241F0280,$55555555,$4E75206E,$FFE8203C,$AAAAAAAA,$22002400,$26002800
  DC.L $2A002C00,$2E0043E8,$04000C2E,$0001FFE3,$670443E8,$32C048E1,$FF00B1C9,$66F84E75
  DC.L $08390006,$00DFF002,$66F64E75,$48E7F0E0,$707F45E8,$0200263C,$55555555,$2218241A
  DC.L $C283C483,$D2818282,$22C151C8,$FFF04CDF,$070F4E75,$48E7FCC0,$C3482600,$E48B5383
  DC.L $2A002011,$E2886142,$201941F0,$58FC613A,$91C551CB,$FFEE6114,$D1C56110,$4CDF033F
  DC.L $4E752F00,$E2886122,$201F611E,$10100828,$0000FFFF,$660C0800,$0006660C,$08C00007
  DC.L $60040880,$00071080,$4E750280,$55555555,$24000A82,$55555555,$2202D482,$E28908C1
  DC.L $001FC282,$80810828,$0000FFFF,$67040880,$001F20C0,$4E7543F9,$00DFF000,$337C4000
  DC.L $0024337C,$82100096,$337C6600,$009E337C,$9500009E,$337C4489,$007E2348,$0020337C
  DC.L $0002009C,$E2480040,$80003340,$00243340,$00244E75,$43F900DF,$F000203C,$000009C4
  DC.L $6100016C,$08290001,$001F660A,$61000152,$66F270FF,$60027000,$33FC0002,$00DFF09C
  DC.L $33FC4000,$00DFF024,$4A804E75,$33FC0400,$00DFF09E,$4A6EFFE2,$6A1E72FF,$13C100BF
  DC.L $D100302E,$FFDC5680,$018113C1,$00BFD100,$01C113C1,$00BFD100,$4E7572FF,$13C100BF
  DC.L $D1000881,$000761D4,$7064D040,$600000E0,$48E73000,$26026100,$009C302E,$FFDCD040
  DC.L $41FA0106,$30300000,$6A046132,$662AE248,$E24A7201,$9440670E,$6A0472FF,$44427004
  DC.L $614E5342,$66F8302E,$FFDCD040,$41FA00DA,$31830000,$615E7000,$4CDF000C,$4E752F02
  DC.L $74550839,$000400BF,$E001670E,$700472FF,$611E51CA,$FFEE701E,$6010302E,$FFDCD040
  DC.L $41FA00A6,$42700000,$70004CDF,$00044E75,$2F00612A,$4A016B04,$08800001,$08800000
  DC.L $13C000BF,$D10008C0,$000013C0,$00BFD100,$201F603A,$610813C0,$00BFD100,$4E7548A7
  DC.L $6000302E,$FFDC1439,$00BFD100,$0002007F,$56000182,$5700D040,$323B004E,$08010000
  DC.L $67040882,$00021002,$4C9F0006,$4E75611E,$08390000,$00BFDE00,$66F65340,$66F04E75
  DC.L $08390000,$00BFDE00,$661C5340,$671813FC,$000800BF,$DE0013FC,$00CC00BF,$D40013FC
  DC.L $000200BF,$D5004E75,$FFFFFFFF,$FFFFFFFF
diskioend:

CMD_DOSIO:
  JSR ReadParameter
  TST.B ParamFound
  BEQ.S .2
  MOVE.L  D0,A0
  MOVE.L  D0,D7

  LEA dosio(PC),A1
  LEA diskioend(PC),A2
.1
  MOVE.W (A1)+,D0
  JSR memSafeWriteWord
  ADDQ #2,A0
  CMP.L A1,A2
  BNE.S .1
  MOVE.L A0,D6

  LEA dosiocopied(PC),A0
  JSR PrintText
  MOVE.L D7,D0
  JSR PrintAddressHex
  MOVE.B #"-",D0
  JSR PrintChar
  MOVE.L D6,D0
  SUBQ.L #1,D0
  JSR PrintAddressHex
  LEA dosiohelp(PC),A0
  JSR PrintText
  JMP PrintReady
.2
  JMP PrintWTF

dosiocopied:
  DC.B "Rob Northen file routines copied to : ",0

dosiohelp:
  DC.B $D,$D
  DC.B "AmigaDOS File/Disk Functions",$D
  DC.B "on entry,",$D
  DC.B "  d0.l = function",$D
  DC.B "    0=load file",$D
  DC.B "    1=save file",$D
  DC.B "    2=delete file",$D
  DC.B "    3=read file/directory names from directory",$D
  DC.B "    4=format disk",$D
  DC.B "      to format DF0: a0.l = ptr to ",34,"DF0:Volume_Name",34,$D
  DC.B "      Note: volume name must be <=30 characters",$D
  DC.B "  d1.l = length of file in bytes (for save function only)",$D
  DC.B "  a0.l = full pathname of file, terminated with 0",$D
  DC.B "  a1.l = file buffer (even word boundary)",$D
  DC.B "    if d0.l=3 a1.l = ptr to file name buffer",$D
  DC.B "  a2.l = workspace buffer ($4d00 bytes of CHIPmem required)",$D
  DC.B " on exit,",$D
  DC.B "  d0.l = result",$D
  DC.B "  d1.l = length of file in bytes, for load and save file functions",$D
  DC.B "    OR no. of file entries for directory function)",$D
  DC.B "  all others registers are preserved",$D,0

  even

CMD_CRC16:
  JSR ReadParameter
  TST.B ParamFound
  BEQ crcWTF
  MOVE.L  D0,A1

  JSR ReadParameter
  TST.B ParamFound
  BEQ crcWTF
  MOVE.L D0,A2

  CMP.L A2,A1
  BHI crcWTF

  LEA CalculatingCRC,A0
  JSR PrintText
  MOVE.W #$16,D0
  JSR Print2DigitHex
  JSR PrintRangeInfo

  MOVEQ #0,D0

  ;#define ucrc16(ch,crc) Eor(zm.crc16tbl[Eor(Shr(crc,8) AND $ff,ch)],Shl(crc,8)) AND $ffff
  ;a = Shr(crc,8) AND $ff
  ;b = Eor(a,ch)
  ;crc = Eor(zm.crc16tbl[a],Shl(crc,8))

  LEA crc16tbl,A3
.crc16
  MOVE.B (A1)+,D1

  MOVE.W D0,D2
  LSR.W #8,D2

  EOR.B D1,D2

  ADD.W D2,D2
  MOVE.W (A3,D2),D2
  LSL.W #8,D0
  EOR.W D2,D0

  CMP.L A1,A2
  BNE.S .crc16

  JSR Print4DigitHex
  JSR PrintCR
  JSR PrintCR

  JMP PrintReady

CMD_CRC32:
  JSR ReadParameter
  TST.B ParamFound
  BEQ.S crcWTF
  MOVE.L  D0,A1

  JSR ReadParameter
  TST.B ParamFound
  BEQ.S crcWTF
  MOVE.L D0,A2

  CMP.L A2,A1
  BHI.S crcWTF

  LEA CalculatingCRC,A0
  JSR PrintText
  MOVE.W #$32,D0
  JSR Print2DigitHex
  JSR PrintRangeInfo
  MOVEQ #-1,D0

  LEA crc32tbl,A3
.crc16
  MOVE.B (A1)+,D1

  MOVEQ #0,D2
  MOVE.B D0,D2
  EOR.B D1,D2

  ADD.W D2,D2
  ADD.W D2,D2
  MOVE.L (A3,D2),D2

  LSR.L #8,D0
  EOR.L D2,D0

  CMP.L A1,A2
  BNE.S .crc16
  NOT.L D0

  JSR Print8DigitHex
  JSR PrintCR
  JSR PrintCR

  JMP PrintReady
crcWTF
  JMP PrintWTF

PrintRangeInfo:
  MOVEM.L D0/A0,-(A7)
  LEA RangeFromText(PC),A0
  JSR PrintText
  MOVE.L  A1,D0
  JSR PrintAddressHex
  LEA RangeToText(PC),A0
  JSR PrintText
  MOVE.L  A2,D0
  JSR PrintAddressHex
  JSR PrintCrIfNotBlankLine
  MOVEM.L (A7)+,D0/A0
  RTS

CalculatingCRC:
  DC.B  "Calculating CRC",0

RangeFromText:
  DC.B  " from: ",0

RangeToText:
  DC.B  " to: ",0

  even
CMD_FCRC16:
  BSR.W GetFilename
  TST.W D0
  BEQ.W LAB_A21070

  MOVE.L D0,-(A7)
  LEA CalculatingCRC,A0
  JSR PrintText
  MOVE.W #$16,D0
  JSR Print2DigitHex
  MOVE.B #":",D0
  JSR PrintChar
  JSR PrintCR
  MOVE.L (A7)+,D0

  LEA EXT_7000.W,A0
  JSR backupMfmBuffer
  LEA stringWorkspace,A1
  MOVE.B  currDriveNo,-(A7)
  BSR.W OpenFile
  BMI.S filecrc16done
  MOVE.L  fileSize,D5
  BEQ.S filecrc16done
  MOVEQ #0,D6
  MOVEQ #0,D7
crc16nextbyte:
  LEA EXT_7000.W,A0
  TST.L D6
  BNE.S .2
  LEA LAB_A482A0,A2
  MOVE.L D5,D0
  CMP.L #40,D0
  BLT .1
  MOVE.L #40,D0 
.1
  MOVE.L  D0,D6 
  BSR.W readFileData
  BMI.S filecrc16done
  LEA LAB_A482A0,A4
.2
  SUBQ.L  #1,D5
  SUBQ.L  #1,D6

  LEA crc16tbl,A3
  MOVE.B  (A4)+,D1

  MOVE.W D7,D2
  LSR.W #8,D2

  EOR.B D1,D2

  ADD.W D2,D2
  MOVE.W (A3,D2),D2
  LSL.W #8,D7
  EOR.W D2,D7

  MOVEQ #-8,D0
  TST.B EscapePressed
  BNE.S filecrc16done
  TST.L D5
  BNE.S crc16nextbyte

  MOVE.W D7,D0

  JSR Print4DigitHex
  JSR PrintCR
  JSR PrintCR

  MOVEQ #0,D0
filecrc16done:
  
  MOVE.W  D0,D1
  LEA EXT_7000.W,A0
  JSR restoreMfmBuffer
  MOVE.W  D1,D0
  BSR.W PrintDiskOpResult
  MOVE.B  (A7)+,currDriveNo
  RTS

CMD_FCRC32:
  BSR.W GetFilename
  TST.W D0
  BEQ.W LAB_A21070

  MOVE.L D0,-(A7)
  LEA CalculatingCRC,A0
  JSR PrintText
  MOVE.W #$32,D0
  JSR Print2DigitHex
  MOVE.B #":",D0
  JSR PrintChar
  JSR PrintCR
  MOVE.L (A7)+,D0

  LEA EXT_7000.W,A0
  JSR backupMfmBuffer
  LEA stringWorkspace,A1
  MOVE.B  currDriveNo,-(A7)
  BSR.W OpenFile
  BMI.S filecrc32done
  MOVE.L  fileSize,D5
  BEQ.S filecrc32done
  MOVEQ #-1,D7
  MOVEQ #0,D6
crc32nextbyte:
  LEA EXT_7000.W,A0
  TST.L D6
  BNE.S .2
  LEA LAB_A482A0,A2
  MOVE.L D5,D0
  CMP.L #40,D0
  BLT .1
  MOVE.L #40,D0 
.1  
  MOVE.L  D0,D6
  BSR.W readFileData
  BMI.S filecrc32done
  LEA LAB_A482A0,A4
.2
  SUBQ.L  #1,D5
  SUBQ.L  #1,D6

  LEA crc32tbl,A3

  MOVE.B  (A4)+,D1
  MOVEQ #0,D2
  MOVE.B D7,D2
  EOR.B D1,D2

  ADD.W D2,D2
  ADD.W D2,D2
  MOVE.L (A3,D2),D2

  LSR.L #8,D7
  EOR.L D2,D7

  MOVEQ #-8,D0
  TST.B EscapePressed
  BNE.S filecrc32done
  TST.L D5
  BNE.S crc32nextbyte

  NOT.L D7
  MOVE.L D7,D0

  JSR Print8DigitHex
  JSR PrintCR
  JSR PrintCR

  MOVEQ #0,D0
filecrc32done:
  
  MOVE.W  D0,D1
  LEA EXT_7000.W,A0
  JSR restoreMfmBuffer
  MOVE.W  D1,D0
  BSR.W PrintDiskOpResult
  MOVE.B  (A7)+,currDriveNo
  RTS

  if arhardware=1
CMD_ARRAM:
  JSR CheckARRam
  JSR ConvertToBCD
  MOVEQ #4,D1
  JSR PrintValue

  LEA ramfoundText(PC),A0
  JSR PrintText
  JMP PrintReady

ramfoundText:
  DC.B "K of action replay memory found",0
  even
  endc

CheckARRam:
  MOVE.W #40,D7

  LEA arramstart,A0

  MOVE.W 16384(A0),D0
  MOVE.W (A0),D1

  CLR.W 16384(A0)
  MOVE.W #$1234,(A0)

  TST.W 16384(A0)
  BNE.S .1

  MOVEQ #0,D7

  MOVE.L A0,A1
.3
  ADD.L #$10000,A1
  ADD.W #64,D7

  MOVE.W (A1),D2
  MOVE.W #$2468,(A1)
  CMP.W #$2468,(A1)
  BNE.S .2

  CMP.W #$1234,(A0)
  BNE.S .2

  MOVE.W D2,(A1)
  BRA .3

.2
  MOVE.W D2,(A1)
.1

  MOVE.W D0,16384(a0)
  MOVE.W D1,(a0)

  MOVEQ #0,D0
  MOVE.W D7,D0
  RTS


CMD_RNC:
  LEA EXT_7000.W,A0
  JSR backupMfmBuffer
  MOVE.W #2,D6
.retry
  LEA EXT_7000.W,A0
  LEA $1000(A0),A1
  MOVE.L A1,A2
  MOVE.L  #1,D0
  BSR.W SUB_A24E64
  BSR.W readRNCTrack
  BMI .1
  MOVE.W #-5,D0
  CMP.W #$aa94,(a0)+
  BNE .1

  MOVE.W #50-1,D3
.decode
  CLR.B D2
  MOVE.B (A0)+,D0
  MOVE.B (A0)+,D1
  BTST #6,D0
  BEQ.S .1a
  BSET #7,D2
.1a
  BTST #4,D0
  BEQ.S .1b
  BSET #6,D2
.1b
  BTST #2,D0
  BEQ.S .1c
  BSET #5,D2
.1c
  BTST #0,D0
  BEQ.S .1d
  BSET #4,D2
.1d
  BTST #6,D1
  BEQ.S .2a
  BSET #3,D2
.2a
  BTST #4,D1
  BEQ.S .2b
  BSET #2,D2
.2b
  BTST #2,D1
  BEQ.S .2c
  BSET #1,D2
.2c
  BTST #0,D1
  BEQ.S .2d
  BSET #0,D2
.2d
  MOVE.B D2,(A1)+
  DBF D3,.decode

  MOVE.L A2,A1
  MOVE.W #-5,D0
  CMP.L #$526F6220,(A1)+
  BNE .1
  CMP.L #$4E6F7274,(A1)+
  BNE .1
  CMP.L #$68656E20,(A1)+
  BNE .1
  CMP.L #$436F6D70,(A1)+
  BNE .1


  LEA EXT_7000.W,A2
  move.l  a2,a0   ;A0 = buffer

  ;number 8
  add.w #2,a0
  move  #0,ccr    ;clear X
  moveq #5,d1
  moveq #0,d0
.Loop8    move.l  (a0)+,d3
  move.l  d3,d4
  moveq #15,d2
.Roxl   roxl.l  #2,d4
  roxl.l  #1,d3
  dbra  d2,.Roxl
  swap  d3
  move.l  (a0)+,d5
  move.l  d5,d4
  moveq #15,d2
.Roxl2    roxl.l  #2,d4
  roxl.l  #1,d5
  dbra  d2,.Roxl2
  move.w  d5,d3
  add.l d3,d0
  rol.l #1,d0
  dbf d1,.Loop8
  move.l  d0,-(a7)

  ;number 7
  move.l  a2,a0
  moveq #11,d1
  moveq #0,d0
.Loop7    add.l d0,d0
  add.l (a0)+,d0
  swap  d0
  dbf d1,.Loop7
  move.l  d0,-(a7)

  ;number 6
  move.l  a2,a0
  moveq #11,d1
  moveq #0,d0
.Loop6    add.l d0,d0
  sub.l (a0)+,d0
  dbf d1,.Loop6
  move.l  d0,-(a7)

  ;number 5
  move.l  a2,a0
  moveq #11,d1
  moveq #0,d0
.Loop5    add.l d0,d0
  add.l (a0)+,d0
  dbf d1,.Loop5
  move.l  d0,-(a7)

  ;number 4
  move.l  a2,a0
  moveq #11,d1
  moveq #0,d0
.Loop4    sub.l (a0)+,d0
  swap  d0
  dbf d1,.Loop4
  move.l  d0,-(a7)

  ;number 3
  move.l  a2,a0
  moveq #11,d1
  moveq #0,d0
.Loop3    add.l (a0)+,d0
  swap  d0
  dbf d1,.Loop3
  move.l  d0,-(a7)

  ;number 2
  move.l  a2,a0
  moveq #11,d1
  moveq #0,d0
.Loop2    sub.l (a0)+,d0
  dbf d1,.Loop2
  move.l  d0,-(a7)

  ;number 1
  move.l  a2,a0
  moveq #11,d1
  moveq #0,d0
.Loop1    add.l (a0)+,d0
  dbf d1,.Loop1
  move.l  d0,-(a7)

  ;number 0
  move.l  a2,a0
  moveq #11,d1
  moveq #0,d0
.Loop0    add.l (a0)+,d0
  rol.l #1,d0
  dbf d1,.Loop0
  move.l  d0,-(a7)

  JSR PrintCR
  JSR PrintCR
  MOVEQ #9-1,D1
.print
  MOVE.L (A7)+,D0
  JSR Print8DigitHex
  LEA RncTypesTable(PC),A0
  MOVE.W  D1,D0
  JSR PrintTableEntry

  JSR PrintCR
  DBF D1,.print

  CLR.W D0
  CLR.W D6
.1
  DBF D6,.retry
  JSR PrintCR
  BSR.W PrintDiskOpResult
  BSR.W restoreMfmBuffer
  RTS

RncTypesTable:
  DC.B  "  #8  add.l (a1)+,d0  rol.l #1,d0    (5 x roxl)",0
  DC.B  "  #7  add.l d6,d6     add.l (a0)+,d6  swap d6",0
  DC.B  "  #6  add.l d6,d6     sub.l (a0)+,d6",0
  DC.B  "  #5  add.l d6,d6     add.l (a0)+,d6",0
  DC.B  "  #4  sub.l (a0)+,d6  swap d6",0
  DC.B  "  #3  add.l (a0)+,d6  swap d6",0
  DC.B  "  #2  sub.l (a0)+,d6",0
  DC.B  "  #1  add.l (a0)+,d6",0
  DC.B  "  #0  add.l (a1)+,d0  rol.l #1,d0",0

readRNCTrack:
  MOVEM.L D1-D2/A0-A3/A5,-(A7)
  MOVE.L  D0,D1
  ;BSR.W  checkDiskBlockDone
  ;BMI.W  RNCREAD_DONE
  MOVEQ #-8,D0
  TST.B EscapePressed
  BNE.W RNCREAD_DONE
  LEA hardware,A5
  BSR.W SUB_A2084E
  BMI.W RNCREAD_DONE
  MOVE.B  currDriveNo,D0
  BTST  D0,LAB_A4824C
  BNE.S .3
  BSR.W SUB_A1FAB4
  BMI.W RNCREAD_DONE
.3:
  MOVE.L  D1,D0
  BSR.W StepToTrack
  BSR.W selectDrive
  MOVE.W  #$8210,$96(A5)
  MOVE.W  #$8914,$7E(A5)
  MOVE.W  #$77f0,$9E(A5)
  MOVE.W  #$9500,$9E(A5)
  MOVE.W  #$4000,$24(A5)

  MOVE.L  A0,$20(A5)
  MOVE.W  #2,$9C(A5)
  MOVE.W  #$8410,$24(A5)
  MOVE.W  #$8410,$24(A5)
  MOVE.L  #$40,D2
  MOVE.B  #0,ciaatodlo

.2
  TST.B EscapePressed
  BNE.W RNC_ABORT

  CMP.B #2,ciaatodlo
  BNE.S .2

  MOVE.B  #0,ciaatodlo
  SUBQ.L  #1,D2
  BEQ RNC_READERR

  MOVE.W $1E(A5),D0
  BTST  #1,D0
  BEQ.S .2

  MOVE.W  #2,$9C(A5)
  MOVE.W  #$4000,$24(A5)
  BRA.S RNCREAD_OK
RNC_READERR:
  MOVEQ #-2,D0    ;read error
  BRA.S RNCREAD_DONE
RNC_ABORT:
  MOVEQ #-8,D0
  BRA.S RNCREAD_DONE
RNCREAD_OK:
  MOVEQ #0,D0
RNCREAD_DONE:
  TST.W D0
  MOVEM.L (A7)+,D1-D2/A0-A3/A5
  RTS

CMD_RB:
  ST byteRead
  BRA.S CMD_RT

CMD_RS:
  ST sectorRead
  BRA.S CMD_RT

CMD_RR:
  ST mfmRead
  CLR.W mfmSync
  CLR.W mfmLength
  BRA.S CMD_RT

CMD_RPB:
  ST pdosRead
  CLR.L pdosKey
  ST byteRead
  BRA.S CMD_RT

CMD_RPS:
  ST pdosRead
  CLR.L pdosKey
  ST sectorRead
  BRA.S CMD_RT

CMD_RP:
  ST pdosRead
  CLR.L pdosKey

CMD_RT:
  SF  LAB_A480CA
  JSR ReadParameter
  TST.B ParamFound
  BEQ.W LAB_A21070
  MOVE.L  D0,D1
  JSR ReadParameter
  MOVEQ #1,D2
  TST.B ParamFound
  BEQ.S LAB_A24B1A
  MOVE.L  D0,D2
LAB_A24B1A:
  SUBQ.L  #1,D2
  MOVE.L  D1,D3
  ADD.L D2,D3

  CLR.L trackStartSkip
  MOVE.L #-1,trackMaxByteCount
  TST.B sectorRead
  BEQ.S .tr
  MOVE.L #11*$10000+1759,D0
  TST.B pdosRead
  BEQ.S .1
  MOVE.L #12*$10000+1919,D0
.1
  CMP.W  D0,D3
  BHI.W LAB_A21070

  SWAP D0
  MOVE.W D0,D3

  MOVE.L D1,D0
  DIVU D3,D0
  CLR.W D0
  SWAP D0
  LSL.L #4,D0
  LSL.L #5,D0
  MOVE.L D0,trackStartSkip

  MOVEQ #0,D0
  MOVE.W D2,D0
  ADDQ.L #1,D0
  LSL.L #4,D0
  LSL.L #5,D0
  MOVE.L D0,trackMaxByteCount

  MOVE.L D1,D0
  DIVU D3,D0
  MOVE.W D0,D1

  MOVE.L D2,D0
  ADD.W D3,D0
  SUB.W #1,D0
  DIVU D3,D0
  MOVE.W D0,D2

  BRA.S .tr3

.tr
  TST.B byteRead
  BEQ.S .tr2
  MOVE.L #1760*512-1,D0
  TST.B pdosRead
  BEQ.S .s1
  MOVE.L #1920*512-1,D0
.s1
  CMP.L  D0,D3
  BHI.W LAB_A21070

  TST.B mfmRead
  BEQ.S .notmfm
  MOVEQ #0,D1
  MOVE.W mfmLength,D3
  ADD.W D3,D3
  BRA.S .2

.notmfm
  MOVE.W #$1600,D3
  TST.B pdosRead
  BEQ.S .2
  MOVE.W #$1800,D3
.2

  MOVE.L D1,D0
  DIVU D3,D0
  CLR.W D0
  SWAP D0
  MOVE.L D0,trackStartSkip

  MOVEQ #0,D0
  MOVE.W D2,D0
  ADDQ.L #1,D0
  MOVE.L D0,trackMaxByteCount

  MOVE.L D1,D0
  DIVU D3,D0
  MOVE.W D0,D1

  MOVE.L D2,D0
  ADD.W D3,D0
  SUB.W #1,D0
  DIVU D3,D0
  MOVE.W D0,D2

  BRA.S .tr3
.tr2
  CMPI.W  #$009f,D3
  BHI.W LAB_A21070

.tr3
  TST.B mfmRead
  BEQ.S .notmfm2

  ;get sync parameter
  JSR ReadParameter
  TST.B ParamFound
  BEQ.W LAB_A21070
  MOVE.W D0,mfmSync
  CMPI.L  #$9999,D0
  BHI.W LAB_A21070

  ;get length parameter
  JSR ReadParameter
  TST.B ParamFound
  BEQ.W LAB_A21070
  MOVE.W D0,mfmLength
  CMPI.L  #$9999,D0
  BHI.W LAB_A21070

.notmfm2
  JSR ReadParameter
  TST.B ParamFound
  BEQ.S LAB_A24B46

apiReadTracks2
  BCLR  #0,D0
  MOVEA.L D0,A1
  ST  LAB_A480CA

  TST.B apiCall
  BNE.W LAB_A24C46

  TST.B pdosRead
  BEQ.S .notpdos

  JSR ReadParameter
  TST.B ParamFound
  BEQ.S .notpdos
  MOVE.L D0,pdosKey
.notpdos
  BRA.W LAB_A24C46
LAB_A24B46:
  TST.B TBufferAllocated
  BNE.S LAB_A24B52
  BSR.W AllocTBuff
LAB_A24B52:
  MOVE.L  DiskMonBufferSize,D0
  TST.B mfmRead
  BEQ.S .notmfm
  DIVU mfmLength,D0
  ASR.W #1,D0
  BRA.S .divdone
.notmfm
  TST.B pdosRead
  BEQ.S .notpdos
  DIVU  #$1800,D0
  BRA.S .divdone
.notpdos:
  DIVU  #$1600,D0
.divdone:

  CMP.W D0,D2
  BLS.W LAB_A24C46
  LEA TBuffHoldsText(PC),A0
  JSR PrintText
  ANDI.L  #$0000ffff,D0
  JSR ConvertToBCD
  MOVE.L  D1,D3
  MOVEQ #3,D1
  JSR PrintValue
  MOVE.L  D3,D1
  TST.B LAB_A48393
  BNE.S LAB_A24BA0
  LEA TracksText(PC),A0
  JSR AskYN
  TST.W D0
  BNE.S LAB_A24BA0
  MOVEQ #-8,D0
  BRA.W PrintDiskOpResult
LAB_A24BA0:
  JSR getKillBuffer
  MOVE.L  DiskMonBufferSize,D0
  TST.B mfmRead
  BEQ.S .notmfm2
  DIVU mfmLength,D0
  ASR.W #1,D0
  BRA.S .divdone2
.notmfm2
  TST.B pdosRead
  BEQ.S .notpdos2
  DIVU  #$1800,D0
  BRA.S .divdone2
.notpdos2:
  DIVU  #$1600,D0
.divdone2:
  CMP.W D0,D2
  BLS.S LAB_A24C46
  MOVE.W  D0,D2
  LEA MaxReadText(PC),A0
  JSR PrintText
  ANDI.L  #$0000ffff,D0
  JSR ConvertToBCD
  MOVE.L  D1,D3
  MOVEQ #3,D1
  JSR PrintValue
  MOVE.L  D3,D1
  LEA TracksText2(PC),A0
  JSR PrintText
LAB_A24C46:
  TST.B TBufferAllocated
  BEQ.W LAB_A24CB2
  MOVE.L  D1,D3
  LEA TBuffFromText(PC),A0
  JSR PrintText
  MOVE.L  DiskMonBuffer,D0
  JSR PrintAddressHex
  LEA TBuffToText(PC),A0
  JSR PrintText
  ADD.L DiskMonBufferSize,D0
  JSR Print8DigitHex
  LEA TBuffHoldingText(PC),A0
  JSR PrintText
  MOVE.L  DiskMonBufferSize,D0
  TST.B mfmRead
  BEQ.S .0
  MOVEQ #0,D1
  MOVE.W mfmLength,D1
  ADD.W D1,D1
  DIVU  D1,D0
  BRA.S .2
.0
  TST.B pdosRead
  BEQ.S .1
  DIVU  #$1800,D0
  BRA.S .2

.1
  DIVU  #$1600,D0
.2
  EXT.L D0
  JSR ConvertToBCD
  MOVEQ #3,D1
  JSR PrintValue
  LEA TracksText2(PC),A0
  JSR PrintText
  JSR PrintCrIfNotBlankLine
  MOVE.L  D3,D1
LAB_A24CB2:
  LEA EXT_7000.W,A0
  BSR.W backupMfmBuffer
  TST.B LAB_A480CA
  BNE.S LAB_A24CD8
  MOVEA.L DiskMonBuffer,A1
  MOVE.B  D1,LAB_A4838A
  MOVE.W  D1,D0
  ADD.W D2,D0
  MOVE.B  D0,LAB_A4838B
LAB_A24CD8:
  BSR.W ReadTracks
  BSR.W PrintDiskOpResult
  BSR.W restoreMfmBuffer
  SF pdosRead
  SF mfmRead
  SF sectorRead
  SF byteRead
  RTS
getKillBuffer:
  ST  LAB_A48393
  MOVE.L  ChipMemEnd,D0
  ADDI.L  #$00c00000,D0
  CMP.L SlowMemEnd,D0
  BHI.S LAB_A24BD0
  MOVE.L  #EXT_C08400,DiskMonBuffer
  MOVE.L  SlowMemEnd,DiskMonBufferSize
  BRA.S LAB_A24BE4
LAB_A24BD0:
  MOVE.L  #EXT_A400,DiskMonBuffer
  MOVE.L  ChipMemEnd,DiskMonBufferSize
LAB_A24BE4:
  MOVE.L  DiskMonBuffer,D0
  SUB.L D0,DiskMonBufferSize
  CLR.L LAB_A48386
  MOVE.L  DiskMonBufferSize,D0
  LSR.L #2,D0
  MOVEA.L DiskMonBuffer,A0
LAB_A24C04:
  CLR.L (A0)+
  SUBQ.L  #1,D0
  BNE.S LAB_A24C04
  RTS


ReadTracks:
  MOVEM.L D1-D7/A0-A6,-(A7)
  MOVEA.L A1,A2
LAB_A24CEA:
  MOVE.W  D1,D0
  JSR SUB_A24E64
  BSR.W SUB_A207AA
  BPL.W LAB_A24D58
  MOVE.L  D0,-(A7)
  MOVE.W  D1,D0
  BSR.W SUB_A25372
  MOVEQ #4,D0
  JSR PrintSpaces
  MOVE.L  (A7)+,D0
  BSR.W PrintDiskOpResult2
  JSR PrintCrIfNotBlankLine
  CMPI.W  #$fff8,D0
  BEQ.S LAB_A24D50
  ST  LAB_A48335
  MOVE.W  D1,D0
  BSR.W SUB_A207AA
  BMI.S LAB_A24D3E
  SF  LAB_A48335
  MOVE.L  A0,-(A7)
  LEA BadDataText(PC),A0
  JSR PrintText
  MOVEA.L (A7)+,A0
  BRA.S LAB_A24D58
LAB_A24D3E:
  SF  LAB_A48335
  TST.B mfmRead
  BEQ.S .notmfm
  ADD.W mfmLength,A2
  ADD.W mfmLength,A2
  BRA.S LAB_A24D48

.notmfm
  ADDA.W  #$1600,A2
  TST.B pdosRead
  BEQ.S LAB_A24D48
  ADDA.W  #$200,A2
LAB_A24D48:
  ADDQ.W  #1,D1
  DBF D2,LAB_A24CEA
  MOVEQ #0,D0
LAB_A24D50:
  MOVEM.L (A7)+,D1-D7/A0-A6
  TST.W D0
  RTS
LAB_A24D58:
  TST.B mfmRead
  BEQ.S .notmfm
  ADD.W mfmLength,A2
  ADD.W mfmLength,A2
  BRA.S LAB_A24D48
.notmfm
  MOVEQ #$A,D0
  TST.B pdosRead
  BEQ.S .1
  MOVEQ #$B,D0
.1
  LEA mfmSectorAddresses,A1
LAB_A24D60:
  MOVEA.L (A1)+,A3
  MOVE.W #511,D3
LAB_A24D64:
  TST.L trackStartSkip
  BEQ.S .noskip1
  TST.B (A3)+
  SUB.L #1,trackStartSkip
  BRA.S .cont

.noskip1
  TST.L trackMaxByteCount
  BEQ.S .cont

  MOVE.B  (A3)+,(A2)+
  SUB.L #1,trackMaxByteCount
.cont
  DBF D3,LAB_A24D64
  DBF D0,LAB_A24D60
  BRA.S LAB_A24D48

TBuffHoldsText:
  DC.B  "Trackbuffer holds only !",0

TracksText:
  DC.B  " tracks. Sure to kill running program? (y/n)",$D,0

MaxReadText:
  DC.B  "Can only read a maximum of !",0

TracksText2:
  DC.B  " tracks.",$D,0

BadDataText:
  DC.B  " but could be read - data may be bad.",$D,0

ReadingText:
  DC.B  "Reading ",0

DestroyingText:
  DC.B  "Destroying ",0

TBuffFromText:
  DC.B  "Trackbuffer from: ",0

TBuffToText:
  DC.B  " to: ",0

TBuffHoldingText:
  DC.B  " holding !",0

SUB_A24E3E:
  MOVEM.L D0-D1,-(A7)
  JSR PrintText
  BSR.W SUB_A25372
  CLR.W cursorX
  MOVEM.L (A7)+,D0-D1
  RTS
SUB_A24E58:
  MOVE.L  A0,-(A7)
  LEA DestroyingText(PC),A0
  BSR.S SUB_A24E3E
  MOVEA.L (A7)+,A0
  RTS
SUB_A24E64:
  MOVE.L  A0,-(A7)
  LEA ReadingText(PC),A0
  BSR.S SUB_A24E3E
  MOVEA.L (A7)+,A0
  RTS

CMD_WP:
  ST pdosRead
  CLR.L pdosKey
  BRA.S CMD_WT

CMD_WR:
  ST mfmRead
  CLR.W mfmSync
  CLR.W mfmLength

CMD_WT:
  JSR ReadParameter
  TST.B ParamFound
  BEQ.W LAB_A21070
  MOVE.L  D0,D1
  JSR ReadParameter
  TST.B ParamFound
  BEQ.W LAB_A21070
  MOVE.L  D0,D2
  JSR ReadParameter
  TST.B ParamFound
  BEQ.W LAB_A21070

  TST.B pdosRead
  BEQ.S .notpdos

  MOVE.L D0,tempD0
  ;get pdos key
  JSR ReadParameter
  TST.B ParamFound
  BEQ.W LAB_A21070

  MOVE.L D0,pdosKey
  MOVE.L tempD0,D0

.notpdos

  TST.B mfmRead
  BEQ.S .notmfm

  MOVE.L D0,tempD0
  ;get length parameter
  JSR ReadParameter
  TST.B ParamFound
  BEQ.W LAB_A21070
  MOVE.W D0,mfmLength
  CMPI.L  #$9999,D0
  BHI.W LAB_A21070

  MOVE.L tempD0,D0
.notmfm

apiWriteTracks2:
  BCLR  #0,D0
  MOVEA.L D0,A1
  MOVE.L  D2,D0
  TST.B mfmRead
  BEQ.S .0
  MULU  mfmLength,D0
  ADD.L D0,D0
  BRA.S .2
.0
  TST.B pdosRead
  BEQ.S .1

  MULU  #$1800,D0
  BRA.S .2
.1
  MULU  #$1600,D0
.2
  ADD.L A1,D0
  CMPA.L  #ChipramSave1,A1
  BHI.S LAB_A24EC4
  CMPI.L  #SECSTRT_0,D0
  BHI.W LAB_A21070
LAB_A24EC4:
  SUBQ.W  #1,D2
  CMPI.W  #$009f,D1
  BHI.W LAB_A21070
  MOVE.W  D2,D3
  ADD.W D1,D3
  CMPI.W  #$009f,D3
  BHI.W LAB_A21070
  CMP.L #EXT_A400-1,A1
  BHI.W .1
  LEA saveErr(PC),A0
  JSR PrintText
  RTS
.1
  LEA EXT_7000.W,A0
  JSR backupMfmBuffer
  BSR.S SUB_A24EF0
  MOVE.L  D0,-(A7)
  JSR restoreMfmBuffer
  MOVE.L  (A7)+,D0
  BRA.W PrintDiskOpResult

SUB_A24EF0:
  MOVEM.L D1-D7/A0-A6,-(A7)
  ;a0=mfm buffer (7000)
  ;a1=data to write
LAB_A24EF4:
  MOVEQ #9,D4
  MOVEA.L A1,A3
  MOVEA.L A0,A2
  TST.B pdosRead
  BNE.S pdos
  TST.B mfmRead
  BNE.S mfm
  MOVEQ #0,D3
LAB_A24EFC:
  CLR.L (A2)+
  MOVE.B  #$ff,(A2)+
  MOVE.B  D1,(A2)+
  MOVE.B  D3,(A2)+
  CLR.B (A2)+
  MOVEQ #5,D0
LAB_A24F0A:
  CLR.L (A2)+
  DBF D0,LAB_A24F0A
  MOVEQ #$7F,D0
LAB_A24F12:
  MOVE.L  (A1)+,(A2)+
  DBF D0,LAB_A24F12
  ADDQ.W  #1,D3
  CMP.W  #11,D3
  BNE.S LAB_A24EFC
  ;a2=8760
  BRA.S done

pdos:
  MOVEQ #0,D3
pdosSector:
  MOVE.B  D3,(A2)+    ;sector
  MOVE.B  D1,(A2)+    ;track

  MOVEQ #$7F,D0
pdosData:
  MOVE.L  (A1)+,(A2)+
  DBF D0,pdosData
  ADDQ.W  #1,D3
  CMP.W  #12,D3
  BNE.S pdosSector
  BRA.S done

mfm:
  MOVEQ #0,D0
  MOVE.W #$1a00-1,D0
  SUB.W mfmLength,D0

.clr
  MOVE.W #$AAAA,(A2)+
  DBF D0,.clr

  MOVE.W mfmLength,D0
  SUB.W #1,D0
.copy
  MOVE.W (A1)+,(A2)+
  DBF D0,.copy

done
  MOVE.B  D1,currTrackNo
  MOVE.B  currDriveNo,LAB_A4824A
LAB_A24F30:
  MOVEM.L D0/A0,-(A7)
  LEA WritingText2(PC),A0
  JSR PrintText
  MOVEQ #0,D0
  MOVE.B  D1,D0
  BSR.W SUB_A25372
  CLR.W cursorX
  MOVEM.L (A7)+,D0/A0
  BSR.W SUB_A207FC
  BPL.S LAB_A24F7A
  MOVE.L  D0,-(A7)
  MOVEQ #0,D0
  MOVE.W  D1,D0
  BSR.W SUB_A25372
  MOVEQ #4,D0
  JSR PrintSpaces
  MOVE.L  (A7)+,D0
  BSR.W PrintDiskOpResult2
  JSR PrintCrIfNotBlankLine
  CMPI.W  #$fff8,D0
  BEQ.S LAB_A24F9A
LAB_A24F7A:
  TST.B mfmRead
  BNE.S LAB_A24F88
  ;TST.B pdosRead
  ;BNE.S LAB_A24F88

  EXG A1,A3
  BSR.S SUB_A24FD6    ;verify data
  EXG A1,A3
  BPL.S LAB_A24F88
  DBF D4,LAB_A24F30
  BRA.S LAB_A24F9A
LAB_A24F88:
  ADDQ.W  #1,D1
  MOVEQ #-8,D0
  TST.B EscapePressed
  BNE.S LAB_A24F9A
  DBF D2,LAB_A24EF4
  MOVEQ #0,D0
LAB_A24F9A:
  MOVEM.L (A7)+,D1-D7/A0-A6
  SF pdosRead
  SF mfmRead
  TST.W D0
  RTS

saveErr:
  DC.B  "Saving address must be greater than $A400",$D,0

WritingText2:
  DC.B  "Writing ",0

SUB_A24FD6:
  MOVEM.L D1-D2/A1-A3,-(A7)
  MOVE.W  D1,D0
  MOVEM.L D0/A0,-(A7)
  LEA VerifyingText2(PC),A0
  JSR PrintText
  MOVEQ #0,D0
  MOVE.B  D1,D0
  BSR.W SUB_A25372
  CLR.W cursorX
  MOVEM.L (A7)+,D0/A0
  SF  LAB_A48335
  BSR.W SUB_A207AA
  BMI.S LAB_A2502A
  LEA mfmSectorAddresses,A2
  MOVEQ #11-1,D0
  TST.B pdosRead
  BEQ.S LAB_A25010
  MOVEQ #12-1,D0

LAB_A25010:
  MOVEA.L (A2)+,A3
  MOVE.W  #$01ff,D1
LAB_A25016:
  CMPM.B  (A1)+,(A3)+
  BNE.S LAB_A2502A
  DBF D1,LAB_A25016
  DBF D0,LAB_A25010
  MOVEQ #0,D0
  MOVEM.L (A7)+,D1-D2/A1-A3
  RTS
LAB_A2502A:
  MOVEQ #-29,D0
  MOVEM.L (A7)+,D1-D2/A1-A3
  RTS

VerifyingText2:
  DC.B  "Ver'ing ",0
  DS.B  1

CMD_DCOPY:
  ST  D2
  BRA.S LAB_A25042
CMD_CODECOPY:
  SF  D2
LAB_A25042:
  JSR ReadParameter
  TST.B ParamFound
  BEQ.W LAB_A21070
  MOVE.W  D0,D4
  BMI.W LAB_A21070
  JSR ReadParameter
  TST.B ParamFound
  BEQ.W LAB_A21070
  MOVE.W  D0,D5
  BMI.W LAB_A21070
  CMPI.W  #3,D4
  BHI.W LAB_A21070
  CMPI.W  #3,D5
  BHI.W LAB_A21070
  MOVEQ #0,D6
  MOVE.L  #$0000009f,D7
  MOVEQ #-13,D0
  BTST  D4,DrivesConnectedLo
  BEQ.W PrintDiskOpResult
  BTST  D5,DrivesConnectedLo
  BEQ.W PrintDiskOpResult
  SF  cursorEnabled
  MOVE.L  DiskCoderFlags,-(A7)
  TST.B D2
  BEQ.S LAB_A250B2
  CLR.L DiskCoderFlags
LAB_A250B2:
  MOVE.B  currDriveNo,-(A7)
  BSR.S SUB_A250D0
  MOVE.B  (A7)+,currDriveNo
  MOVE.L  (A7)+,DiskCoderFlags
  ST  cursorEnabled
  BRA.W PrintDiskOpResult
SUB_A250D0:
  CMP.W D4,D5
  BEQ.W LAB_A25168
  TST.B TBufferAllocated
  BNE.S LAB_A250E2
  BSR.W AllocTBuff
LAB_A250E2:
  MOVE.L  DiskMonBufferSize,D0
  CMPI.L  #$00001600,D0
  BLS.S LAB_A25132
LAB_A250F0:
  LEA EXT_7000.W,A0
  JSR backupMfmBuffer
LAB_A250F8:
  MOVE.W  D6,D1
  MOVEQ #0,D2
  MOVEA.L DiskMonBuffer,A1
  MOVE.B  D4,currDriveNo
  BSR.W ReadTracks
  BMI.S LAB_A2511A
  MOVE.B  D5,currDriveNo
  BSR.W SUB_A24EF0
  BPL.S LAB_A25126
LAB_A2511A:
  MOVE.L  D0,-(A7)
  JSR restoreMfmBuffer
  MOVE.L  (A7)+,D0
  TST.W D0
  RTS
LAB_A25126:
  ADDQ.W  #1,D6
  CMP.W D7,D6
  BLS.S LAB_A250F8
  JSR restoreMfmBuffer
  RTS
LAB_A25132:
  TST.B LAB_A48393
  BNE.S LAB_A25148
  LEA NoFreememText(PC),A0
  JSR AskYN
  TST.W D0
  BEQ.S LAB_A25164
LAB_A25148:
  MOVE.L  #EXT_A400,DiskMonBuffer
  MOVE.L  #$00001600,DiskMonBufferSize
  CLR.L LAB_A48386
  BRA.S LAB_A250F0
LAB_A25164:
  MOVEQ #-8,D0
  RTS
LAB_A25168:
  MOVE.B  currDriveNo,-(A7)
  MOVE.B  D5,currDriveNo
  TST.B LAB_A48393
  BNE.S LAB_A25194
  LEA KillWarningText(PC),A0
  JSR AskYN
  TST.W D0
  BNE.S LAB_A25194
  MOVE.B  (A7)+,currDriveNo
  MOVEQ #-8,D0
  RTS
LAB_A25194:
  ST  LAB_A48393
  LEA EXT_7000.W,A0
  JSR backupMfmBuffer
  TST.L foundSlowMemEnd
  BNE.S LAB_A25204
  CMPI.L  #$00100000,foundChipMemEnd
  BGE.S LAB_A25204
  MOVEQ #0,D1
  MOVEQ #$4F,D2
LAB_A251BA:
  LEA InsertSourceText(PC),A0
  JSR PrintText
  BSR.W WaitKeypress
  LEA EXT_A400,A1
  LEA EXT_7000.W,A0
  BSR.W ReadTracks
  BMI.W LAB_A25282
  LEA InsertDestText(PC),A0
  JSR PrintText
  BSR.W WaitKeypress
  LEA EXT_7000.W,A0
  BSR.W SUB_A24EF0
  BMI.W LAB_A25282
  CMPI.W  #$0050,D1
  BEQ.S LAB_A25200
  MOVEQ #$50,D1
  MOVEQ #$4F,D2
  BRA.S LAB_A251BA
LAB_A25200:
  MOVEQ #0,D0
  BRA.S LAB_A25282
LAB_A25204:
  LEA InsertSourceText(PC),A0
  JSR PrintText
  BSR.W WaitKeypress
  LEA EXT_7000.W,A0
  MOVEQ #0,D1
  MOVEQ #$4F,D2
  LEA EXT_A400,A1
  BSR.W ReadTracks
  BMI.S LAB_A25282
  LEA EXT_80000,A1
  TST.L foundSlowMemEnd
  BEQ.S LAB_A2523A
  LEA EXT_200000,A1
LAB_A2523A:
  MOVEQ #$50,D1
  MOVEQ #$4F,D2
  BSR.W ReadTracks
  BMI.S LAB_A25282
  LEA InsertDestText(PC),A0
  JSR PrintText
  BSR.W WaitKeypress
  LEA EXT_7000.W,A0
  LEA EXT_A400,A1
  MOVEQ #0,D1
  MOVEQ #$4F,D2
  BSR.W SUB_A24EF0
  BMI.S LAB_A25282
  LEA EXT_80000,A1
  TST.L foundSlowMemEnd
  BEQ.S LAB_A2527A
  LEA EXT_200000,A1
LAB_A2527A:
  MOVEQ #$50,D1
  MOVEQ #$4F,D2
  BSR.W SUB_A24EF0
LAB_A25282:
  LEA EXT_7000.W,A0
  MOVE.W  D0,-(A7)
  JSR restoreMfmBuffer
  MOVE.W  (A7)+,D0
  MOVE.B  (A7)+,currDriveNo
  TST.W D0
  RTS
KillWarningText:
  DC.B  "Running Program will be killed after copy. sure to copy? (y/n"
  DC.B  ")",$D,0

InsertSourceText:
  DC.B  "Please insert source disk",$D,0

InsertDestText:
  DC.B  "Please insert destination disk",$D,0,0

WaitKeypress:
  JSR GetMappedKeyCode
  TST.W KeyCode
  BNE.S WaitKeypress
LAB_A25322:
  JSR GetMappedKeyCode
  TST.W KeyCode
  BEQ.S LAB_A25322
  RTS
NoFreememText:
  DC.B  "Couldn't find free memory. Sure to kill running program? (y/n"
  DC.B  ")",$D,0

SUB_A25372:
  MOVEM.L D0-D1/A0,-(A7)
  LEA TrackText(PC),A0
  JSR PrintText
  MOVE.W  D0,-(A7)
  MOVEQ #0,D0
  MOVE.W  (A7),D0
  LSR.W #1,D0
  JSR ConvertToBCD
  MOVEQ #2,D1
  JSR PrintValue
  LEA HeadText2(PC),A0
  JSR PrintText
  MOVEQ #0,D0
  MOVE.W  (A7)+,D0
  ANDI.W  #1,D0
  MOVEQ #1,D1
  JSR PrintValue
  MOVEM.L (A7)+,D0-D1/A0
  RTS
TrackText:
  DC.B  "track !",0

HeadText2:
  DC.B  " head ",0
  DS.B  1

SUB_A253C4:
  MOVE.L  (A7)+,LAB_A4807A
  CLR.W -(A7)
  BRA.S LAB_A253DA
SUB_A253D0:
  MOVE.L  (A7)+,LAB_A4807A
  MOVE.W  #$0700,-(A7)
LAB_A253DA:
  ST  LAB_A48391
  JSR setActivateMode
  MOVE  SR,SaveSR
  MOVE.L  TRAP_00.W,SaveColor
  MOVE.L  TRAP_01.W,SaveTrap1
  MOVE.L  TRAP_02.W,SaveTrap2
  MOVE.L  LAB_A25426(PC),TRAP_00.W
  MOVE.L  LAB_A2542A(PC),TRAP_01.W
  MOVE.L  LAB_A2542E(PC),TRAP_02.W
  MOVE.L  A0,-(A7)
  MOVE.L  USP,A0
  MOVE.L  #$00000080,-(A0)
  MOVE.L  A0,USP
  MOVEA.L (A7)+,A0
  RTE
LAB_A25426:
  DC.L  $00390000
LAB_A2542A:
  DC.L  $00bfd100
LAB_A2542E:
  DC.L  $60f660f4
LAB_A25432:
  MOVE.L  SaveColor,TRAP_00.W
  MOVE.L  SaveTrap1,TRAP_01.W
  MOVE.L  SaveTrap2,TRAP_02.W
  LEA 6(A7),A7
  MOVE.L  LAB_A4807A,-(A7)
  SF  LAB_A48391
  MOVE  SaveSR,SR
  RTS
SUB_A25462:
  SF  LAB_A48392
  SF  cursorEnabled
  MOVE.B  currDriveNo,-(A7)
  MOVE.B  LAB_A4822B,currDriveNo
LAB_A2547E:
  JSR GetMappedKeyCode
  MOVE.W  KeyCode,D0
  CMPI.W  #$008a,D0
  BEQ.S LAB_A254BC
  CMPI.W  #$008b,D0
  BEQ.S LAB_A254D8
  CMPI.W  #$008c,D0
  BEQ.S LAB_A254FE
  CMPI.W  #$008d,D0
  BEQ.W LAB_A2555E
  CMPI.W  #$008e,D0
  BEQ.W LAB_A255D0
  CMPI.W  #$008f,D0
  BEQ.W LAB_A2562E
  CMPI.W  #$0093,D0
  BEQ.S LAB_A254CA
  BRA.S LAB_A2547E
LAB_A254BC:
  ST  restartFlag
  MOVE.B  (A7)+,currDriveNo
  RTS
LAB_A254CA:
  ST  cursorEnabled
  MOVE.B  (A7)+,currDriveNo
  RTS
LAB_A254D8:
  LEA SaveCpuRegs,A0
  MOVEA.L $30(A0),A0
  MOVE.W  #$000f,D1
LAB_A254E6:
  JSR ShowMemAsAscii
  JSR PrintCR
  LEA $40(A0),A0
  DBF D1,LAB_A254E6
  BRA.W LAB_A256BA
LAB_A254FE:
  LEA stdboot(PC),A1
  MOVE.L  #$0000002a,D1
LAB_A25508:
  JSR PrintCR
  LEA EXT_7000.W,A0
  JSR backupMfmBuffer
  MOVE.B  currDriveNo,-(A7)
  CLR.B currDriveNo
  BSR.W SUB_A237D2
  BPL.S LAB_A25532
  BSR.W PrintDiskOpResult
  JSR restoreMfmBuffer
  BRA.S LAB_A25552
LAB_A25532:
  JSR restoreMfmBuffer
  TST.W D0
  BMI.S LAB_A2554E
  LEA NormalBBText(PC),A0
  CMPA.L  stdboot(PC),A1
  BEQ.S LAB_A25548
  LEA VirusProBBText(PC),A0
LAB_A25548:
  JSR PrintText
LAB_A2554E:
  BSR.W PrintDiskOpResult
LAB_A25552:
  MOVE.B  (A7)+,currDriveNo
  BSR.S SUB_A255A2
  BRA.W LAB_A2547E
LAB_A2555E:
  LEA arboot(PC),A1
  MOVE.L  #$000003ec,D1
  BRA.S LAB_A25508
NormalBBText:
  DC.B  "Normal bootblock installed",$D,0

VirusProBBText:
  DC.B  "Virus protector installed",$D,0,0

SUB_A255A2:
  LEA hashTable,A1
  MOVEA.L EXT_4,A0
  SUBA.W  #$0276,A0
  MOVE.W  #$012d,D1
LAB_A255B6:
  MOVE.L  (A1)+,D0
  JSR memSafeWriteLong
  ADDQ.L  #4,A0
  DBF D1,LAB_A255B6
  LEA ExecbaseRestoredText(PC),A0
  JSR PrintText
  RTS
LAB_A255D0:
  BSR.S SUB_A255A2
  BRA.W LAB_A254BC

ExecbaseRestoredText:
  DC.B  "Execbase has been restored",$D,0

BBChangedText:
  DC.B  $D,"Bootblock changed following:",$D,"MEMORY: (0 - $80)",$D,0

ExecbaseText:
  DC.B  "execbase:",$D,0

LAB_A2562E:
  LEA BBChangedText(PC),A0
  JSR PrintText
  MOVEQ #$1F,D2
  SUBA.L  A1,A1
  LEA LAB_A4550E,A2
LAB_A25642:
  MOVEA.L A1,A0
  ADDQ.W  #4,A1
  JSR memSafeReadLong
  CMP.L (A2)+,D0
  BEQ.S LAB_A25660
  MOVE.L  A0,D0
  JSR PrintAddressHex
  MOVEQ #2,D0
  JSR PrintSpaces
LAB_A25660:
  DBF D2,LAB_A25642
  JSR PrintCrIfNotBlankLine
  LEA ExecbaseText(PC),A0
  JSR PrintText
  LEA hashTable,A4
  MOVE.W  #$fd8a,D2
  MOVEA.L EXT_4,A3
  SUBA.W  #$0276,A3
LAB_A25688:
  MOVEA.L A4,A0
  ADDQ.W  #1,A4
  JSR memSafeReadLong
  MOVE.L  D0,D1
  MOVEA.L A3,A0
  ADDQ.W  #1,A3
  JSR memSafeReadLong
  CMP.L D0,D1
  BEQ.S LAB_A256A8
  MOVE.W  D2,D0
  JSR SUB_A2443A(PC)
LAB_A256A8:
  ADDQ.W  #1,D2
  CMPI.W  #$0244,D2
  BLE.S LAB_A25688
  JSR PrintCR
  BRA.W LAB_A256BA
LAB_A256BA:
  LEA DangerText,A0
  JSR PrintText
  BRA.W LAB_A2547E
CMD_BOOTCODE:
  JSR ReadParameter
  TST.B ParamFound
  BEQ.S LAB_A256E4
  MOVE.L  D0,BootblockCoderValue
  SNE BootblockCoderPrefsFlag
LAB_A256E4:
  LEA BBCodeText(PC),A0
  TST.L BootblockCoderPrefsFlag
  BNE.S LAB_A256F6
  LEA BBCoderDisabledText(PC),A0
  BRA.S LAB_A256FE
LAB_A256F6:
  BSET  #2,VirusCheckerSettingsPrefs
LAB_A256FE:
  JSR PrintText
  TST.L BootblockCoderPrefsFlag
  BEQ.S LAB_A25718
  MOVE.L  BootblockCoderValue,D0
  JSR Print8DigitHex
LAB_A25718:
  JSR PrintReady
  RTS
BBCodeText:
  DC.B  "Bootblockcode is now: ",0

BBCoderDisabledText:
  DC.B  "Bootblockcoder disabled",$D,0

CMD_BOOTPROT:
  JSR ReadParameter
  MOVE.L  BootblockCoderValue,LAB_A480CA
  TST.L ParamFound
  BEQ.S LAB_A2576E
  MOVE.L  D0,LAB_A480CA
LAB_A2576E:
  LEA BBCodeYNText(PC),A0
  JSR PrintText
  MOVE.B  currDriveNo,D0
  MOVEQ #1,D1
  JSR PrintValue
  LEA YNText2(PC),A0
  JSR AskYN
  TST.W D0
  BNE.S LAB_A2579A
  MOVEQ #-8,D0
  BRA.W PrintDiskOpResult
LAB_A2579A:
  LEA EXT_7000.W,A0
  JSR backupMfmBuffer
  MOVEQ #0,D0
  JSR loadSector(PC)
  BMI.S LAB_A257C6
  ADDQ.W  #8,A1
  MOVE.L  LAB_A480CA,D2
  EOR.L D2,(A1)
  EOR.L D2,-8(A1)
  ST  TrackBufferModified
  JSR restoreMfmBuffer
  BRA.W PrintDiskOpResult
LAB_A257C6:
  JSR PrintDiskOpResult(PC)
  JSR restoreMfmBuffer
  BMI.W PrintDiskOpResult
  RTS
BBCodeYNText:
  DC.B  "Sure to protect bootblock in drive DF",0

YNText2:
  DC.B  ":? (y/n)",$D,0

CMD_TYPE:
  BSR.W GetFilename
  TST.W D0
  BEQ.W LAB_A21070
  LEA EXT_7000.W,A0
  JSR backupMfmBuffer
  LEA stringWorkspace,A1
  MOVE.B  currDriveNo,-(A7)
  BSR.W OpenFile
  BMI.S filecrcdone
  MOVE.L  fileSize,D5
  BEQ.S filecrcdone
LAB_A25830:
  LEA EXT_7000.W,A0
  LEA LAB_A47FB6,A2
  MOVEQ #1,D0
  BSR.W readFileData
  BMI.S filecrcdone
  SUBQ.L  #1,D5
  ST  scrollLock
  LEA LAB_A47FB6,A4
  MOVE.B  (A4)+,D0
  CMPI.W  #9,D0
  BNE.S LAB_A25876
  MOVE.W  cursorX,D1
  ADDQ.W  #7,D1
  ANDI.W  #$00f8,D1
  SUB.W cursorX,D1
  BEQ.S LAB_A25876
  EXG D0,D1
  JSR PrintSpaces
  EXG D0,D1
LAB_A25876:
  CMPI.W  #$0020,D0
  BLT.S LAB_A25882
  JSR InvalidAsciiToDot
LAB_A25882:
  JSR PrintChar
  TST.B EscapePressed
  BNE.W LAB_A25892
LAB_A25892:
  MOVEQ #-8,D0
  TST.B EscapePressed
  BNE.S filecrcdone
  TST.L D5
  BNE.S LAB_A25830
  MOVEQ #0,D0
filecrcdone:
  MOVE.W  D0,D1
  LEA EXT_7000.W,A0
  JSR restoreMfmBuffer
  MOVE.W  D1,D0
  BSR.W PrintDiskOpResult
  SF  scrollLock
  MOVE.B  (A7)+,currDriveNo
  RTS
SUB_A258C0:
  MOVEM.L D0/A0-A1,-(A7)
  MOVEQ #0,D0
  MOVEQ #0,D1
  JSR readCmdChar
  CMPI.W  #$0020,D0
  BNE.W LAB_A25966
  MOVEQ #$3F,D2
LAB_A258D8:
  SF  forceUpper
  JSR readCmdChar
  ST  forceUpper
  TST.B endOfCmdString
  BNE.S LAB_A25966
  EXG A0,A1
  EXG D0,D1
  JSR memSafeReadByte
  EXG D0,D1
  ADDQ.L  #1,A0
  EXG A0,A1
  JSR InvalidAsciiToDot
  CMPI.W  #$002e,D0
  BNE.S LAB_A25938
  CMPI.W  #$001f,D1
  BLS.S LAB_A2595E
  CMPI.W  #$007e,D1
  BHI.S LAB_A2595E
  CMPI.W  #$0040,D1
  BEQ.S LAB_A2595E
  CMPI.W  #$005b,D1
  BEQ.S LAB_A2595E
  CMPI.W  #$005d,D1
  BEQ.S LAB_A2595E
  CMPI.W  #$007b,D1
  BEQ.S LAB_A2595E
  CMPI.W  #$007d,D1
  BEQ.S LAB_A2595E
LAB_A25938:
  CMP.W D0,D1
  BEQ.S LAB_A2595E
  CMPI.W  #$0041,D0
  BCS.S LAB_A25950
  CMPI.W  #$005a,D0
  BHI.S LAB_A25950
  BCLR  #5,D1
  CMP.W D0,D1
  BEQ.S LAB_A2595E
LAB_A25950:
  MOVEA.L A0,A2
  LEA -1(A1),A0
  JSR memSafeUpdateByte
  MOVEA.L A2,A0
LAB_A2595E:
  DBF D2,LAB_A258D8
  MOVEQ #0,D0
  BRA.S LAB_A25968
LAB_A25966:
  MOVEQ #-1,D0
LAB_A25968:
  MOVEM.L (A7)+,D0/A0-A1
  RTS
CMD_DISKCHECK:
  JSR ReadParameter
  TST.B ParamFound
  BNE.S LAB_A25982
  MOVE.B  currDriveNo,D0
LAB_A25982:
  BTST  D0,DrivesConnectedLo
  BEQ.W LAB_A21070
  TST.W D0
  BMI.W LAB_A21070
  CMPI.W  #3,D0
  BHI.W LAB_A21070
  TST.B TBufferAllocated
  BNE.S LAB_A259A6
  JSR AllocTBuff(PC)
LAB_A259A6:
  CMPI.L  #$00001a00,DiskMonBufferSize
  BCS.S LAB_A25A14
  MOVE.B  currDriveNo,-(A7)
  MOVE.B  D0,currDriveNo
  LEA EXT_7000.W,A0
  JSR backupMfmBuffer
  MOVE.W  #$009f,D4
  MOVEQ #0,D1
  SF  cursorEnabled
LAB_A259D2:
  MOVEQ #0,D2
  LEA EXT_7000.W,A0
  MOVEA.L DiskMonBuffer,A1
  BSR.W SUB_A24E64
  BSR.W ReadTracks
  BPL.S LAB_A259F2
  CMPI.W  #$fff8,D0
  BEQ.S LAB_A259FA
  BSR.W PrintDiskOpResult
LAB_A259F2:
  ADDQ.W  #1,D1
  DBF D4,LAB_A259D2
  MOVEQ #0,D0
LAB_A259FA:
  BSR.W PrintDiskOpResult
  LEA EXT_7000.W,A0
  JSR restoreMfmBuffer
  MOVE.B  (A7)+,currDriveNo
  ST  cursorEnabled
  RTS
LAB_A25A14:
  TST.B  LAB_A48393  
  BNE.S .1
  LEA killProgText(PC),A0
  JSR AskYN
  TST.W D0
  BEQ.S .1
  JSR getKillBuffer
  BRA LAB_A259A6
.1
  BSR.S SUB_A25A1E
  JSR PrintReady
  RTS
SUB_A25A1E:
  MOVE.L  A0,-(A7)
  LEA NoFreeMemText(PC),A0
  JSR PrintText
  MOVEA.L (A7)+,A0
  RTS

killProgText
  DC.B  "Not enough memory. Kill running program? (y/n)",13,0

NoFreeMemText:
  DC.B  "Out of free memory error!",$D,0
  even
CMD_MEMCODE:
  JSR ReadParameter
  TST.B ParamFound
  BEQ.W LAB_A21070
  MOVE.L  D0,D1
  JSR ReadParameter
  TST.B ParamFound
  BEQ.W LAB_A21070
  MOVE.L  D0,D2
  JSR ReadParameter
  TST.B ParamFound
  BEQ.W LAB_A21070
  MOVE.L  D0,D3
  CMP.L D1,D2
  BCS.W LAB_A21070
  MOVEA.L D1,A1
  MOVEA.L D2,A1
LAB_A25A8A:
  MOVEA.L D1,A0
  JSR memSafeReadByte
  EOR.B D3,D0
  JSR memSafeUpdateByte
  ADDQ.L  #1,D1
  CMP.L D1,D2
  BGT.S LAB_A25A8A
  JSR PrintReady
  RTS
CMD_ADD:
  JSR ReadParameter
  TST.B ParamFound
  BEQ.W LAB_A21070
  MOVE.L  D0,D1
  JSR ReadParameter
  TST.B ParamFound
  BEQ.W LAB_A21070
  MOVE.L  D0,D2
  JSR ReadParameter
  TST.B ParamFound
  BEQ.W LAB_A21070
  MOVE.L  D0,D3
  CMP.L D1,D2
  BCS.W LAB_A21070
  MOVEA.L D1,A1
  MOVEA.L D2,A1
LAB_A25AE8:
  MOVEA.L D1,A0
  JSR memSafeReadByte
  ADD.B D3,D0
  JSR memSafeUpdateByte
  ADDQ.L  #1,D1
  CMP.L D1,D2
  BGT.S LAB_A25AE8
  JSR PrintReady
  RTS
CMD_SMDC:
  ST  LAB_A480CA
  BRA.S LAB_A25B14
CMD_SMDATA:
  SF  LAB_A480CA
LAB_A25B14:
  SF  forceUpper
  BSR.W GetFilename
  ST  forceUpper
  TST.W D0
  BNE.S LAB_A25B2E
  MOVEQ #-14,D0
  BRA.W PrintDiskOpResult
LAB_A25B2E:
  MOVE.L  D0,D2
  JSR ReadParameter
  TST.B ParamFound
  BEQ.W LAB_A21070
  MOVEA.L D0,A1
  JSR ReadParameter
  TST.B ParamFound
  BEQ.W LAB_A21070
apiSaveData2
  EXG D0,A1
  EXG D0,A1
  MOVE.L  D0,D1
  SUB.L A1,D1
  BCS.W LAB_A21070
  BEQ.W LAB_A21070
  MOVEA.L A1,A2
  LEA EXT_7000.W,A0
  JSR backupMfmBuffer
  LEA stringWorkspace,A1
  MOVE.L  D2,D0
  MOVE.B  currDriveNo,-(A7)
  BSR.W SaveFileInit
  BMI.S LAB_A25BA4
  MOVE.L  D1,D5
LAB_A25B82:
  MOVEQ #$10,D4
  CMPI.L  #$00000010,D5
  BHI.S LAB_A25B8E
  MOVE.L  D5,D4
LAB_A25B8E:
  SUB.L D4,D5
  BSR.S SUB_A25BC0
  BMI.S LAB_A25BA4
  MOVEQ #-8,D0
  TST.B EscapePressed
  BNE.S LAB_A25BA4
  TST.L D5
  BNE.S LAB_A25B82
  MOVEQ #0,D0
LAB_A25BA4:
  MOVE.W  D0,D1
  BSR.W AddFileToDirBlock
  MOVE.B  (A7)+,currDriveNo
  TST.W D1
  BPL.S LAB_A25BB6
  MOVE.W  D1,D0
LAB_A25BB6:
  JSR PrintDiskOpResult
  JSR restoreMfmBuffer
  RTS
SUB_A25BC0:
  MOVEM.L D1-D7/A1/A3-A6,-(A7)
  MOVEA.L A2,A4
  MOVEQ #5,D0
  LEA DCText(PC),A2
  TST.B LAB_A480CA
  BNE.S LAB_A25BD8
  LEA DataText(PC),A2
LAB_A25BD8:
  JSR SaveFileData(PC)
  BMI.S LAB_A25C48
  MOVEA.L A0,A5
LAB_A25BE0:
  MOVE.L  #$30303030,SaveColor
  MOVEA.L A4,A0
  JSR memSafeReadByte
  ADDQ.L  #1,A0
  MOVEA.L A0,A4
  JSR ConvertToBCD
  ROR.W #8,D0
  OR.B  D0,LAB_A4806B
  CLR.B D0
  ROL.W #4,D0
  OR.B  D0,LAB_A4806C
  CLR.B D0
  ROL.W #4,D0
  OR.B  D0,LAB_A4806D
  LEA LAB_A4806B,A2
  MOVEQ #3,D0
  MOVEA.L A5,A0
  JSR SaveFileData(PC)
  BMI.S LAB_A25C48
  LEA LAB_A25C58(PC),A2
  MOVEQ #1,D0
  SUBQ.W  #1,D4
  BEQ.S LAB_A25C3C
  JSR SaveFileData(PC)
  BMI.S LAB_A25C48
  MOVEA.L A0,A5
  BRA.S LAB_A25BE0
LAB_A25C3C:
  ADDQ.L  #1,A2
  JSR SaveFileData(PC)
  BMI.S LAB_A25C48
  MOVEA.L A4,A2
  MOVEQ #0,D0
LAB_A25C48:
  MOVEM.L (A7)+,D1-D7/A1/A3-A6
  RTS
DCText:
  DC.B  "DC.B "

DataText:
  DC.B  "DATA "

LAB_A25C58:
  MOVE.L  A2,D6
CMD_DMON:
  TST.B TBufferAllocated
  BNE.S LAB_A25C66
  BSR.W AllocTBuff
LAB_A25C66:
  LEA DmonBuffStartText(PC),A0
  JSR PrintText
  MOVE.L  DiskMonBuffer,D0
  JSR PrintAddressHex
  LEA DmonBuffEndText(PC),A0
  JSR PrintText
  MOVE.L  DiskMonBufferSize,D0
  ADD.L DiskMonBuffer,D0
  JSR PrintAddressHex
  LEA DmonBuffLenText(PC),A0
  JSR PrintText
  MOVE.L  DiskMonBufferSize,D0
  JSR PrintAddressHex
  JSR PrintReady
  RTS
DmonBuffStartText:
  DC.B  "Disk-mon buffer  start: ",0

DmonBuffLenText:
  DC.B  $D,"Disk-mon buffer length: ",0

DmonBuffEndText:
  DC.B  $0d
  DC.B  "Disk-mon buffer    end: ",0
  DS.B  1

CMD_DISKWIPE:
  JSR ReadParameter
  TST.B ParamFound
  BNE.S LAB_A25D18
  MOVE.B  currDriveNo,D0
LAB_A25D18:
  BTST  D0,DrivesConnectedLo
  BEQ.W LAB_A21070
  TST.W D0
  BMI.W LAB_A21070
  CMPI.W  #3,D0
  BHI.W LAB_A21070
  LEA hardware,A5
  MOVE.B  currDriveNo,-(A7)
  MOVE.B  D0,currDriveNo
  JSR SUB_A1FAB4
  BMI.S LAB_A25DB6
  MOVEQ #0,D0
  SF  cursorEnabled
LAB_A25D50:
  TST.B EscapePressed
  BNE.S LAB_A25DB4
  BSR.W SUB_A24E58
  JSR StepToTrack
  JSR selectDrive
  BTST  #3,ciaapra
  BEQ.S LAB_A25DD2
  MOVE.W  #$4000,$24(A5)
  MOVE.W  #$7f00,$9E(A5)
  MOVE.L  #EXT_7000,$20(A5)
  MOVE.W  #$c180,D5
  MOVE.W  #2,$9C(A5)
  MOVE.W  #$8010,$96(A5)
  MOVE.W  D5,$24(A5)
  MOVE.W  D5,$24(A5)
LAB_A25D9A:
  BTST  #1,$1F(A5)
  BEQ.S LAB_A25D9A
  MOVE.W  #$4000,$24(A5)
  ADDQ.W  #1,D0
  CMPI.W  #$00f0,D0
  BNE.S LAB_A25D50
  MOVEQ #0,D0
  BRA.S LAB_A25DB6
LAB_A25DB4:
  MOVEQ #-8,D0
LAB_A25DB6:
  JSR SUB_A1FAF8
  MOVE.B  (A7)+,currDriveNo
  JSR PrintDiskOpResult
  ST  cursorEnabled
  MOVE.W  #$0010,$96(A5)
  RTS
LAB_A25DD2:
  MOVEQ #-10,D0
  BRA.S LAB_A25DB6
CMD_VERSION:
  LEA versionText,A0
  JSR PrintText
  JMP PrintReady
  JSR ReadParameter
  TST.B ParamFound
  BNE.S LAB_A25DFC
  MOVE.L  DefaultAddress,D0
LAB_A25DFC:
  TST.L D0
  BNE.S LAB_A25E06
  MOVE.L  SaveOldPc,D0
LAB_A25E06:
  RTS

  if arhardware=1
SUB_41BB88:
  CMPI.B  #$13,kickstartVersion
  BEQ.S .1
  RTS

.1  
  LEA LAB_A483AA,A0
  CLR.L (A0)+
  CLR.L (A0)+
  CLR.L (A0)+
  CLR.L foundAutoConfigMemStart
  CLR.L foundAutoConfigMemEnd
  SF  ExtMemAddPrefsFlag
  SF  AutoConfigPrefsFlag
  LEA EXT_E80000,A0
  MOVEQ #$14,D1
LAB_41BBB4:
  MOVE.W  (A0),D0
  CMP.W #$ffff,D0
  BEQ.W LAB_41BC78

  AND.W #$e000,D0
  CMPI.W  #$a000,D0
  BNE.W LAB_41BC78
  MOVE.W  2(A0),D0
  AND.W #$7000,D0
  BNE.W LAB_41BC2E
  ST  AutoConfigPrefsFlag
  MOVE.B  #$ff,$4C(A0)
  BRA.W LAB_41BC78
LAB_41BBDE:
;#$1000 ; 64k e90000
;#$2000 ; 128k ea0000
;#$3000 ; 256k e00000
;#$4000 ; 512k 200000
;#$5000 ; 1024k 200000
  CMPI.W  #$6000,D0
  BNE.W LAB_41BC78
  SF  AutoConfigPrefsFlag
  SF  ExtMemAddPrefsFlag
  MOVE.L  #$00200000,LAB_A483AA
  MOVE.L  #$00200000,foundAutoConfigMemStart
  MOVE.L  #SECSTRT_0,LAB_A483AE
  MOVE.L  #SECSTRT_0,foundAutoConfigMemEnd
  MOVE.L  #$00200000,LAB_A483B2
  MOVE.B  #$20,$48(A0)
  BRA.W LAB_41BC78
LAB_41BC2E:
  CMPI.W  #$7000,D0
  BNE.S LAB_41BBDE
  MOVE.B  #$60,$48(A0)
  ST  AutoConfigPrefsFlag
  MOVE.L  #$00600000,LAB_A483AA
  MOVE.L  #$00600000,foundAutoConfigMemStart
  MOVE.L  #$00a00000,LAB_A483AE
  MOVE.L  #$00a00000,foundAutoConfigMemEnd
  MOVE.L  #SECSTRT_0,LAB_A483B2
  ST  ExtMemAddPrefsFlag
LAB_41BC78:
  MOVE.B  #$ff,$4C(A0)
  DBF D1,LAB_41BBB4
  RESET
  BSR.W SUB_41BD86
  RTS

SUB_41BC8A:
  CMPI.B  #$13,kickstartVersion
  BEQ.S .1
  RTS
.1
  LEA LAB_A483AA,A0
  CLR.L (A0)+
  CLR.L (A0)+
  CLR.L (A0)+
  CLR.L foundAutoConfigMemStart
  CLR.L foundAutoConfigMemEnd
  SF  ExtMemAddPrefsFlag
  SF  AutoConfigPrefsFlag
  LEA EXT_E80000,A0
  MOVEQ #$14,D1
LAB_41BCB6:
  MOVE.W  (A0),D0
  CMP.W #$ffff,D0
  BEQ.W LAB_41BD7A
  
  AND.W #$e000,D0
  CMPI.W  #$a000,D0
  BNE.W LAB_41BD7A
  MOVE.W  2(A0),D0
  AND.W #$7000,D0
  BNE.W LAB_41BD30
  ST  AutoConfigPrefsFlag
  MOVE.B  #$ff,$4C(A0)
  BRA.W LAB_41BD7A
LAB_41BCE0:
  CMPI.W  #$6000,D0
  BNE.W LAB_41BD7A
  SF  AutoConfigPrefsFlag
  SF  ExtMemAddPrefsFlag
  MOVE.L  #$00200000,LAB_A483AA
  MOVE.L  #$00200000,foundAutoConfigMemStart
  MOVE.L  #SECSTRT_0,LAB_A483AE
  MOVE.L  #SECSTRT_0,foundAutoConfigMemEnd
  MOVE.L  #$00200000,LAB_A483B2
  MOVE.B  #$20,$48(A0)
  BRA.W LAB_41BD7A
LAB_41BD30:
  CMPI.W  #$7000,D0
  BNE.S LAB_41BCE0
  MOVE.B  #$60,$48(A0)
  ST  AutoConfigPrefsFlag
  MOVE.L  #$00600000,LAB_A483AA
  MOVE.L  #$00600000,foundAutoConfigMemStart
  MOVE.L  #$00a00000,LAB_A483AE
  MOVE.L  #$00a00000,foundAutoConfigMemEnd
  MOVE.L  #SECSTRT_0,LAB_A483B2
  ST  ExtMemAddPrefsFlag
LAB_41BD7A:
  MOVE.B  #$ff,$4C(A0)
  DBF D1,LAB_41BCB6
  RTS
SUB_41BD86:
  LEA EXT_E80000,A0
  MOVEQ #$14,D1
  TST.B AutoConfigPrefsFlag
  BEQ.W LAB_41BDEA
LAB_41BD98:
  MOVE.W  (A0),D0
  CMP.W #$ffff,D0
  BEQ.S LAB_41BDE0

  AND.W #$e000,D0
  CMPI.W  #$a000,D0
  BNE.W LAB_41BDE0
  MOVE.W  2(A0),D0  ;board size
  AND.W #$7000,D0
  BNE.W LAB_41BDBC
  ;8mb board
  MOVE.B  #$ff,$4C(A0)
  BRA.W LAB_41BDE0
LAB_41BDBC:
  CMPI.W  #$7000,D0
  BNE.W LAB_41BDCE

  ;4mb board
  MOVE.B  #$60,$48(A0)  ;map to $600000
  BRA.W LAB_41BDEC
LAB_41BDCE:
  CMPI.W  #$6000,D0
  BNE.W LAB_41BDE0
  ;2mb board
  MOVE.B  #$20,$48(A0)  ;map to $200000
  BRA.W LAB_41BDEC
LAB_41BDE0:
  ;other size
  MOVE.B  #$ff,$4C(A0)
  DBF D1,LAB_41BD98
LAB_41BDEA:
  RTS
LAB_41BDEC:
  MOVE.B  #$ff,$4C(A0)
  DBF D1,LAB_41BDEC
  RTS

  endc

  if arhardware=0

SUB_41BB88:
  LEA LAB_A483AA,A0
  CLR.L (A0)+
  CLR.L (A0)+
  CLR.L (A0)+
  CLR.L foundAutoConfigMemStart
  CLR.L foundAutoConfigMemEnd
  SF  ExtMemAddPrefsFlag
  SF  AutoConfigPrefsFlag
  MOVEM.L D2-D7/A0-A6,-(A7)
  MOVEA.L EXT_4.W,A6
  MOVE.L  $142(A6),D0
  TST.L D0
  BEQ.S LAB_A25E52
  MOVEA.L D0,A6
  MOVE.L  $14(A6),D0
  MOVE.L  $18(A6),D1
  ANDI.L  #$fff00000,D0
  ANDI.L  #$fff00000,D1
LAB_A25E52:
  MOVEM.L (A7)+,D2-D7/A0-A6
  TST.L D0
  BNE.S LAB_A25EA0
  SF  AutoConfigPrefsFlag
  SF  ExtMemAddPrefsFlag
  MOVE.L  #$00200000,LAB_A483AA
  MOVE.L  #$00200000,foundAutoConfigMemStart
  MOVE.L  #SECSTRT_0,LAB_A483AE
  MOVE.L  #SECSTRT_0,foundAutoConfigMemEnd
  MOVE.L  #$00200000,LAB_A483B2
  MOVE.B  #$20,$48(A0)
  BRA.S LAB_A25ECE
LAB_A25EA0:
  ST  AutoConfigPrefsFlag
  ST  ExtMemAddPrefsFlag
  MOVE.L  D0,LAB_A483AA
  MOVE.L  D0,foundAutoConfigMemStart
  MOVE.L  D1,LAB_A483AE
  MOVE.L  D1,foundAutoConfigMemEnd
  MOVE.L  #SECSTRT_0,LAB_A483B2
LAB_A25ECE:
  RTS
  endc
CMD_MEGASTICK:
  JSR ReadParameter
  TST.B ParamFound
  SNE D4
  SF  cursorEnabled
  ST  MegaStickPrefsFlag
  LEA hardware,A5
  MOVE.W  #$ff00,$34(A5)
  JSR Cls
  LEA MegaStickText(PC),A0
  JSR PrintText
  LEA LAB_A483E0,A0
  MOVEQ #4,D7
LAB_A25F0E:
  CMP.W D0,D7
  BEQ.S LAB_A25F20
  MOVE.W  D0,D7
  MOVE.W  D0,LAB_A48416
  JSR SUB_A260D6
LAB_A25F20:
  TST.B EscapePressed
  BNE.S LAB_A25F76
  JSR SUB_A2603E
  TST.B D4
  BEQ.S LAB_A25F3A
  CMPI.W  #$001b,D0
  BLT.S LAB_A25F3A
  MOVEQ #-1,D0
LAB_A25F3A:
  TST.W D0
  BPL.S LAB_A25F5C
  MOVE.W  RawKeyCode,D2
  CMPI.W  #$0075,D2
  BEQ.S LAB_A25F76
  BTST  #0,D2
  BEQ.S LAB_A25F0E
  CLR.B 0(A0,D6.W)
  JSR SUB_A260D6
  BRA.S LAB_A25F0E
LAB_A25F5C:
  MOVE.W  RawKeyCode,D1
  BTST  #0,D1
  BEQ.S LAB_A25F0E
  MOVE.B  D1,0(A0,D0.W)
  JSR SUB_A260D6
  MOVE.W  D0,D6
  BRA.S LAB_A25F0E
LAB_A25F76:
  ST  cursorEnabled
  JSR PrintReady
  RTS

MegaStickText:
  DC.B  "Megastickhandler: Press ESC to exit and activate Megastick-ha"
  DC.B  "ndler",$D,$D,"Set direction and fire then press/release wanted key",$D,"T"
  DC.B  "o clear last key code press any key without joystick directio"
  DC.B  "n",$D,0

SUB_A2603E:
  MOVEM.L D1/A0/A5,-(A7)
  LEA hardware,A5
  MOVEQ #0,D1
  BTST  #7,ciaapra
  BNE.S LAB_A26056
  MOVEQ #9,D1
LAB_A26056:
  BTST  #6,$16(A5)
  BNE.S LAB_A26060
  MOVEQ #$12,D1
LAB_A26060:
  LEA $C(A5),A0
  JSR SUB_A260A2
  ADD.W D0,D1
  CMPI.W  #4,D1
  BNE.S LAB_A2609A
  MOVEQ #$1B,D1
  BTST  #6,ciaapra
  BNE.S LAB_A26080
  MOVEQ #$24,D1
LAB_A26080:
  BTST  #2,$16(A5)
  BNE.S LAB_A2608A
  MOVEQ #$2D,D1
LAB_A2608A:
  LEA $A(A5),A0
  BSR.S SUB_A260A2
  ADD.W D0,D1
  CMPI.W  #$001f,D1
  BNE.S LAB_A2609A
  MOVEQ #-1,D1
LAB_A2609A:
  MOVE.L  D1,D0
  MOVEM.L (A7)+,D1/A0/A5
  RTS
SUB_A260A2:
  MOVEM.L D1/A0,-(A7)
  MOVE.W  (A0),D1
  ANDI.W  #$0303,D1
  MOVEQ #0,D0
  LEA LAB_A260C4(PC),A0
LAB_A260B2:
  CMP.W (A0)+,D1
  BEQ.S LAB_A260BE
  ADDQ.W  #1,D0
  CMPI.W  #8,D0
  BNE.S LAB_A260B2
LAB_A260BE:
  MOVEM.L (A7)+,D1/A0
  RTS
LAB_A260C4:
  DC.L  $02000100,$01030300,$00000003,$03010001
  DC.W  $0002
SUB_A260D6:
  MOVEM.L D0-D4/A0/A6,-(A7)
  LEA LAB_A261B6(PC),A0
  JSR SUB_A283B8
  LEA LAB_A261C2(PC),A0
  JSR SUB_A283B8
  LEA LAB_A261CE(PC),A0
  JSR SUB_A283B8
  LEA LAB_A261D7(PC),A0
  JSR SUB_A283B8
  LEA LAB_A261E0(PC),A0
  JSR SUB_A283B8
  LEA LAB_A483E0,A0
  MOVEQ #5,D4
  LEA LAB_A26282(PC),A6
LAB_A26118:
  MOVE.W  (A6)+,D0
  MOVE.W  (A6)+,D1
  BSR.W SUB_A2629A
  LEA 9(A0),A0
  DBF D4,LAB_A26118
  CLR.W cursorX
  MOVE.W  #$0014,cursorY
  LEA JoyAndFireText(PC),A0
  JSR PrintText
  JSR PrintSpaces
  CLR.W cursorX
  MOVE.W  LAB_A48416,D0
  BPL.S LAB_A26160
  LEA NoDirText(PC),A0
  JSR PrintText
  BRA.S LAB_A261B0
LAB_A26160:
  LEA Player1TExt(PC),A0
  CMPI.W  #$001b,D0
  BCS.S LAB_A26172
  LEA Player2Text(PC),A0
  SUBI.W  #$001b,D0
LAB_A26172:
  JSR PrintText
  LEA NoFireText(PC),A0
  CMPI.W  #9,D0
  BCS.S LAB_A26198
  SUBI.W  #9,D0
  LEA Fire0Text(PC),A0
  CMPI.W  #9,D0
  BCS.S LAB_A26198
  SUBI.W  #9,D0
  LEA Fire1Text(PC),A0
LAB_A26198:
  JSR PrintText
  LEA StickPosTable(PC),A0
  MULU  #$000b,D0
  LEA 0(A0,D0.W),A0
  JSR PrintText
LAB_A261B0:
  MOVEM.L (A7)+,D0-D4/A0/A6
  RTS
LAB_A261B6:
  DC.W  $0504

Player1TExt:
  DC.B  "Player 1 ",0

LAB_A261C2:
  DC.W  $2804

Player2Text:
  DC.B  "Player 2 ",0

LAB_A261CE:
  DC.W  $170b

Fire0Text:
  DC.B  "Fire0 ",0

LAB_A261D7:
  DC.B  $17
  DC.B  $10

Fire1Text:
  DC.B  "Fire1 ",0

LAB_A261E0:
  DC.W  $1706

NoFireText:
  DC.B  "NoFire ",0

JoyAndFireText:
  DC.B  "Joystick and fire position: ",$D,0

NoDirText:
  DC.B  "No direction or fire !",0

StickPosTable:
  DC.B  "up-left   ",0
  DC.B  "up        ",0
  DC.B  "up-right  ",0
  DC.B  "left      ",0
  DC.B  "middle    ",0
  DC.B  "right     ",0
  DC.B  "down-left ",0
  DC.B  "down      ",0
  DC.B  "down-right",0

LAB_A26282:
  DC.L  $00050005,$0005000a,$0005000f,$00280005
  DC.L  $0028000a,$0028000f

SUB_A2629A:
  MOVEM.L D0-D5/A0,-(A7)
  MOVE.W  D0,cursorX
  MOVE.W  D1,cursorY
  MOVE.W  D0,D4
  MOVE.W  D1,D5
  MOVEQ #2,D1
  MOVEQ #2,D2
LAB_A262B2:
  MOVEQ #2,D3
LAB_A262B4:
  MOVE.B  (A0)+,D0
  JSR PrintValue
  JSR PrintSpace
  DBF D3,LAB_A262B4
  ADDQ.W  #1,D5
  MOVE.W  D4,cursorX
  MOVE.W  D5,cursorY
  DBF D2,LAB_A262B2
  MOVEM.L (A7)+,D0-D5/A0
  RTS
CMD_NOSTICK:
  LEA MStickAlreadyRemovedText(PC),A0
  TST.B MegaStickPrefsFlag
  BEQ.S LAB_A262EE
  LEA MStickRemovedText(PC),A0
LAB_A262EE:
  JSR PrintText
  SF  MegaStickPrefsFlag
  JSR PrintReady
  RTS

MStickRemovedText:
  DC.B  "Megastickhandler removed!",$D,0

MStickAlreadyRemovedText:
  DC.B  "Megastickhandler is already removed!",$D,0,0

CMD_CLRSTICK:
  LEA LAB_A483E0,A0
  MOVEQ #$35,D0
LAB_A2634C:
  CLR.B (A0)+
  DBF D0,LAB_A2634C
  LEA JoyCodesClrText(PC),A0
  JSR PrintText
  JSR PrintReady
  RTS

JoyCodesClrText:
  DC.B  "Joystickcodes cleared!",$D,0

CMD_LSTICK:
  BSR.W GetFilename
  TST.W D0
  BNE.S LAB_A2638A
  MOVEQ #-14,D0
  JMP PrintDiskOpResult
LAB_A2638A:
  LEA EXT_7000.W,A0
  JSR backupMfmBuffer
  LEA stringWorkspace,A1
  MOVE.B  currDriveNo,-(A7)
  BSR.W OpenFile
  BMI.S LAB_A263DE
  CMPI.L  #$00000036,fileSize
  BNE.S LAB_A263D2
  MOVEQ #$36,D0
  LEA LAB_A483E0,A2
  BSR.W readFileData
  BMI.S LAB_A263DE
  LEA JoyCodesLoadText(PC),A0
LAB_A263C2:
  JSR PrintText
  ST  MegaStickPrefsFlag
  MOVEQ #0,D0
  BRA.S LAB_A263DE
LAB_A263D2:
  LEA BadJoyFileText(PC),A0
  SF  MegaStickPrefsFlag
  BRA.S LAB_A263C2
LAB_A263DE:
  MOVE.W  D0,D1
  LEA EXT_7000.W,A0
  JSR restoreMfmBuffer
  MOVE.W  D1,D0
  JSR PrintDiskOpResult
  MOVE.B  (A7)+,currDriveNo
  RTS

JoyCodesLoadText:
  DC.B  "Joystick codes loaded",$D,0

BadJoyFileText:
  DC.B  "File is not a joystick code file",$D,0,0

CMD_SSTICK:
  SF  forceUpper
  BSR.W GetFilename
  ST  forceUpper
  TST.W D0
  BNE.S LAB_A2644A
  MOVEQ #-14,D0
  JMP PrintDiskOpResult
LAB_A2644A:
  MOVE.L  D0,D2
  LEA EXT_7000.W,A0
  JSR backupMfmBuffer
  LEA stringWorkspace,A1
  MOVE.L  D2,D0
  MOVE.B  currDriveNo,-(A7)
  BSR.W SaveFileInit
  BMI.S LAB_A26486
  MOVEQ #$36,D0
  LEA LAB_A483E0,A2
  BSR.W SaveFileData
  JSR HandleDiskFull
  BMI.S LAB_A26486
  BSR.W AddFileToDirBlock
  LEA JoyCodesSavedText(PC),A0
  JSR PrintText
  MOVEQ #0,D0
LAB_A26486:
  MOVE.W  D0,D1
  LEA EXT_7000.W,A0
  JSR restoreMfmBuffer
  MOVE.W  D1,D0
  JSR PrintDiskOpResult
  MOVE.B  (A7)+,currDriveNo
  RTS

JoyCodesSavedText:
  DC.B  "Joystick codes saved",$D,0

CMD_RESET:
  MOVEA.L EXT_F80004,A0
  MOVE  #$2700,SR
  CLR.L EXT_4.W
  CLR.L EXT_0.W
  CLR.L AronFlag
  RESET
  JMP (A0)

CMD_MFM:
  JSR ReadParameter   ;source address
  TST.B ParamFound
  BEQ mfmWtf
  MOVEA.L D0,A1

  JSR ReadParameter
  TST.B ParamFound
  BEQ mfmWtf
  MOVE.L D0,D1     ;track length

  JSR ReadParameter
  TST.B ParamFound
  BEQ mfmWtf
  MOVE.L D0,D2     ;track count

  JSR ReadParameter   ;destination address
  TST.B ParamFound
  BEQ mfmWtf
  MOVE.L D0,A2

  JSR ReadParameter
  TST.B ParamFound
  BEQ mfmWtf
  MOVE.L D0,D3     ;sector sync

  JSR ReadParameter
  TST.B ParamFound
  BEQ mfmWtf
  MOVE.L D0,D4     ;sector offset

  JSR ReadParameter
  TST.B ParamFound
  BEQ mfmWtf
  MOVE.L D0,D5     ;sector count

  JSR ReadParameter
  TST.B ParamFound
  BEQ mfmWtf
  MOVE.L D0,D6     ;sector length

  JSR ReadParameter
  TST.B ParamFound
  BEQ mfmWtf
  SWAP D6
  MOVE.W D0,D6     ;sector interleave
  SWAP D6

  JSR ReadParameter
  MOVEQ #-1,D7

  TST.B ParamFound
  BEQ .noparam
  MOVE.L D0,D7     ;sector number offset
.noparam

  TST.W D1
  BEQ mfmWtf

  TST.W D2
  BEQ mfmWtf

  TST.W D5
  BEQ mfmWtf

  TST.W D6
  BEQ mfmWtf

  SWAP D6
  TST.W D6
  BEQ mfmWtf
  SWAP D6

  SUBQ #1,D2
  ADD.W D1,D1

.processTrack
  MOVEM.L D1/D2,-(SP)

  LEA (A0,D1),A2  ;track end
  MOVEQ #0,D0 ;sector count

  MOVE.W D5,tempD1
  SUBQ #1,D5

.findsync

  CMP.W (A0)+,D3  ;find sector sync
  BEQ.S .sectorsync
  CMP.L A0,A2
  BEQ.W .nexttrack
  BRA.S .findsync

.sectorsync
  CMP.W (A0)+,D3  ;find sector sync
  BEQ.S .sectorsync
  LEA -2(A0),A0

  CMP.L #-1,D7
  BEQ.S .nosec
  MOVEM.L D1/D2,-(A7)
  MOVEQ #0,D1
  MOVE.B (A0,D7),D1
  MOVE.B 4(A0,D7),D2
  AND.B #$55,D1
  AND.B #$55,D2
  LSL.B #1,D1
  OR.B D2,D1
  MULU D6,D1
  MOVE.W D1,tempD0    ;destination sector offset
  LEA (A1,D1),A1
  MOVEM.L (A7)+,D1/D2
.nosec

  ADD.L D4,A0   ;add sector offset

  MOVE.L A0,A3
  SWAP D6
  LEA (A0,D6.W),A4
  SWAP D6
  MOVE.L D0,-(SP)
  MOVE.W D6,D0
  SUB.W #1,D0

  MOVEM.L D1-D3,-(A7)
  MOVEQ #0,D3
.mfmdecode
  ;decode sector
  MOVE.B (A3)+,D1
  MOVE.B (A4)+,D2

  ADD.W #1,D3
  SWAP D6
  CMP.W D3,D6
  BNE.S .noskip

  LEA (A3,D6.W),A3
  LEA (A4,D6.W),A4
  CLR.W D3
.noskip
  SWAP D6


  ;track end overrun check
  CMP.L A4,A2
  BNE.S .2


.clrdata
  CLR.B (A1)+
  DBF D0,.clrdata

  MOVE.W tempD0,D1    ;destination sector offset
  ADD.W D6,D1
  NEG.W D1
  LEA (A1,D1),A1

  MOVEM.L (A7)+,D1-D3
  MOVE.L (SP)+,D0
  MOVE.W tempD1,D5
  BRA.S .nexttrack

.2
  AND.B #$55,D1
  AND.B #$55,D2
  LSL.B #1,D1
  OR.B D2,D1
  MOVE.B D1,(A1)+
  DBF D0,.mfmdecode

  CMP.L #-1,D7
  BEQ.S .seqsec1
  MOVE.W tempD0,D1    ;destination sector offset
  ADD.W D6,D1
  NEG.W D1
  LEA (A1,D1),A1
.seqsec1

  MOVEM.L (A7)+,D1-D3

  MOVE.L (SP)+,D0
  ADDQ #1,D0

  MOVE.L A3,A0

  DBF D5,.findsync

.nexttrack
  CMP.L #-1,D7
  BEQ.S .seqsec2
  MOVE.W tempD1,D1
  MULU D6,D1
  LEA (A1,D1),A1
.seqsec2
  MOVE.W tempD1,D5
  CMP.W D0,D5
  BEQ.S .1

  ;print sector count warning
  nop
.1

  MOVEM.L (SP)+,D1/D2
  MOVE.L A2,A0
  DBF D2,.processTrack

  JMP PrintReady

mfmWtf:
  JMP PrintWTF

CMD_DBG:
  ST debuggerMode
  RTS

CMD_SMALLCHAR:
  ST  LAB_A480CA
  BRA.S LAB_A264DE
CMD_NORMALCHAR:
  SF  LAB_A480CA
LAB_A264DE:
  TST.B PrinterFound
  BNE.S LAB_A264EC
  JMP NoPrinter
LAB_A264EC:
  MOVEQ #6,D0
  LEA LAB_A2650A(PC),A0
  TST.B LAB_A480CA
  BNE.S LAB_A26500
  MOVEQ #4,D0
  LEA LAB_A26510(PC),A0
LAB_A26500:
  BSR.S SUB_A26514
  JSR PrintReady
  RTS
LAB_A2650A:
  DC.L  $1b53011b
  DC.W  $3310
LAB_A26510:
  DC.L  $1b541b30
SUB_A26514:
  MOVEM.L D0-D1/A0,-(A7)
  SUBQ.W  #1,D0
  MOVE.W  D0,D1
LAB_A2651C:
  MOVE.B  (A0)+,D0
  JSR PrintCharToPrinter2
  DBF D1,LAB_A2651C
  MOVEM.L (A7)+,D0-D1/A0
  RTS
CMD_PRT:
  TST.B PrinterFound
  BNE.S LAB_A2653C
  JMP NoPrinter
LAB_A2653C:
  SF  forceUpper
  JSR SUB_A1375E
  ST  forceUpper
  TST.W D0
  BEQ.W LAB_A21070
  LEA stringWorkspace,A0
  BSR.S SUB_A26514
  JSR PrintReady
  RTS
SUB_A26564:
  MOVEM.L D1/D6/A1/A3-A4,-(A7)
  CLR.L (A2)
  JSR loadSector
  BMI.S LAB_A26596
  MOVEA.L A2,A3
  LEA $18(A1),A1
  MOVEQ #$47,D0
LAB_A26578:
  MOVE.L  (A1)+,(A3)+
  DBF D0,LAB_A26578
  EXG A2,A3
  MOVEA.L A2,A4
  CLR.L (A2)
  MOVEQ #0,D7
  MOVEQ #$47,D6
LAB_A26588:
  MOVE.L  (A3)+,D1
  BNE.S LAB_A2659E
LAB_A2658C:
  DBF D6,LAB_A26588
  MOVEQ #0,D0
  SUBQ.W  #1,D7
  MOVEA.L A4,A2
LAB_A26596:
  TST.W D0
  MOVEM.L (A7)+,D1/D6/A1/A3-A4
  RTS
LAB_A2659E:
  MOVE.L  D1,D0
  JSR loadSector
  BMI.S LAB_A26596
  CMPI.L  #2,(A1)
  BNE.S LAB_A2658C
  CMPI.L  #$fffffffd,$1FC(A1)
  BEQ.S LAB_A265C6
  CMPI.L  #2,$1FC(A1)
  BNE.S LAB_A2658C
  BSET  #$1F,D1
LAB_A265C6:
  MOVE.L  D1,(A2)+
  MOVE.L  A1,-(A7)
  LEA $1B0(A1),A1
  MOVE.B  D7,(A2)+
  ADDQ.W  #1,D7
  MOVEQ #0,D0
  MOVE.B  (A1)+,D0
  SUBQ.W  #1,D0
LAB_A265D8:
  MOVE.B  (A1)+,(A2)+
  DBF D0,LAB_A265D8
  CLR.B (A2)+
  MOVE.L  A2,D0
  ADDQ.L  #1,D0
  ANDI.W  #$fffe,D0
  MOVEA.L D0,A2
  CLR.L (A2)
  MOVEA.L (A7)+,A1
  MOVE.L  $1F0(A1),D1
  BEQ.S LAB_A2658C
  BRA.S LAB_A2659E
fileDialog:
  DC.L  $00020002,$00190002,$00000002,$00040019
  DC.L  $00040000,$00020006,$00190006,$00000002
  DC.L  $00080019,$00080000,$0002000a,$0019000a
  DC.L  $00000002,$000c0019,$000c0000,$0002000e
  DC.L  $0019000e,$00000002,$00100019,$00100000
  DC.L  $00020013,$00030013,$303a0000,$00070013
  DC.L  $00080013,$313a0000,$000c0013,$000d0013
  DC.L  $323a0000,$00110013,$00120013,$333a0000
  DC.L  $00160013,$00160013,$3c000019,$00130019
  DC.L  $00133e00,$00020016,$00070016

  DC.B  "  OK",0
  DS.B  1
  DC.L  $000b0016,$00100016

  DC.B  "Parent",0
  DS.B  1
  DC.L  $00140016,$00190016

  DC.B  "Cancel",0
  DS.B  1
  DC.L  $001e0016,$004e0016

  DC.B  "Name: ",0
  DS.B  1
  DC.L  $00010001,$001a0017,$0000001e,$0013004e
  DC.W  $0013

  DC.B  "Path: ",0
  DS.B  1
  DS.W  1

displayFileSelector:
  CLR.B stringWorkspace
displayFileSelector2:
  MOVEM.L D1-D7/A0-A6,-(A7)
  MOVE.L  LAB_A480DE,-(A7)
  MOVE.B  currDriveNo,-(A7)
  LEA EXT_70000,A0
  JSR backupMfmBuffer
  MOVE.B viewingPrefs,viewingPrefsCopy
  BEQ notalreadyviewing
  MOVEQ #0,D0
  MOVE.W #$c7,D1
  JSR clearScreenArea
  BRA alreadyviewing

notalreadyviewing:
  JSR setupPrefsViewer
alreadyviewing:
  LEA fileDialog(PC),A6
  EXG A6,A0
  JSR DrawPrefsPage
  MOVE.L  #$00240016,cursorX
  MOVE.L  A0,-(A7)
  LEA stringWorkspace,A0
  JSR PrintText
  MOVEA.L (A7)+,A0
  CLR.W LAB_A4841C
  MOVE.W  #$ffff,LAB_A4841E
  MOVE.L  currentDirBlock,LAB_A48418
  LEA rootBlockLoadedFlags,A1
  MOVEQ #0,D0
  MOVE.B  currDriveNo,D0
  TST.B 0(A1,D0.W)
  BNE.S LAB_A26766
  MOVE.L  #$00000370,LAB_A48418
LAB_A26766:
  JSR SUB_A26AE8
  JSR SUB_A26A52
  MOVE.L  LAB_A48418,D0
  LEA hashTable,A2
  EXG A6,A0
  BSR.W SUB_A26564
  EXG A6,A0
  TST.W D0
  BPL.S LAB_A2678E
  BSR.W LAB_A26A34
LAB_A2678E:
  JSR SUB_A1FB1A
  BSR.W SUB_A26B2A
LAB_A26796:
  JSR TrackMouse
  TST.L D0
  BMI.S LAB_A26796
  TST.W D0
  BPL.S LAB_A267B0
  NEG.W D0
  CMPI.W  #$0045,D0
  BEQ.W LAB_A26856
  BRA.S LAB_A267FA
LAB_A267B0:
  CMPI.W  #$0011,D0
  BHI.S LAB_A26796
  BSR.W SUB_A26B2A
  CMPI.W  #$0010,D0
  BEQ.W LAB_A26856
  CMPI.W  #7,D0
  BLS.W LAB_A26876
  CMPI.W  #$000b,D0
  BLS.W LAB_A26934
  CMPI.W  #$000c,D0
  BEQ.W LAB_A2695E
  CMPI.W  #$000d,D0
  BEQ.W LAB_A2697A
  CMPI.W  #$000e,D0
  BEQ.W LAB_A269C0
  CMPI.W  #$000f,D0
  BEQ.W LAB_A2699A
  CMPI.W  #$0011,D0
  BEQ.S LAB_A26828
  BRA.S LAB_A2678E
LAB_A267FA:
  MOVEQ #$2B,D6
  MOVEQ #$4F,D3
  MOVE.L  #$00240016,D7
  MOVE.L  A1,-(A7)
  LEA stringWorkspace,A1
  JSR SUB_A26C42
  TST.B (A1)
  MOVEM.L (A7)+,A1
  BEQ.W LAB_A2678E
  MOVE.W  #$ffff,LAB_A4841E
  BRA.W LAB_A269C0
LAB_A26828:
  MOVEQ #$2B,D6
  MOVEQ #$4F,D3
  MOVE.L  #$00240016,D7
  MOVE.L  A1,-(A7)
  LEA stringWorkspace,A1
  JSR SUB_A26C64
  TST.B (A1)
  MOVEM.L (A7)+,A1
  BEQ.W LAB_A2678E
  MOVE.W  #$ffff,LAB_A4841E
  BRA.W LAB_A269C0
LAB_A26856:
  TST.B viewingPrefsCopy
  BNE.S LAB_A26864
  JSR cleanupPrefsViewer
LAB_A26864:
  EXG A6,A0
  LEA EXT_70000,A0
  JSR restoreMfmBuffer
  MOVEQ #0,D0
  BRA.W LAB_A26A08
LAB_A26876:
  MOVE.W  LAB_A4841C,D1
  ADD.W D0,D1
  CMP.W D7,D1
  BHI.W LAB_A2678E
  CMP.W LAB_A4841E,D1
  BEQ.W LAB_A269C0
  MOVE.W  D1,LAB_A4841E
  MOVEA.L A2,A1
LAB_A26896:
  CMP.B 4(A1),D1
  BEQ.S LAB_A268AE
  ADDQ.L  #5,A1
LAB_A2689E:
  TST.B (A1)+
  BNE.S LAB_A2689E
  EXG D0,A1
  ADDQ.L  #1,D0
  ANDI.W  #$fffe,D0
  EXG D0,A1
  BRA.S LAB_A26896
LAB_A268AE:
  MOVE.L  (A1),D0
  BMI.S LAB_A268F8
  MOVE.L  D0,D1
  LEA 5(A1),A1
  LEA stringWorkspace,A3
LAB_A268BE:
  MOVE.B  (A1)+,(A3)+
  BNE.S LAB_A268BE
  LEA stringWorkspace,A3
  CLR.B $2B(A3)
  EXG A3,A0
  MOVE.L  #$00240016,cursorX
  MOVEQ #$2B,D0
  JSR PrintSpaces
  MOVE.L  #$00240016,cursorX
  JSR PrintText
  EXG A3,A0
  MOVE.L  D1,D0
  BPL.W LAB_A2678E
LAB_A268F8:
  CLR.W LAB_A4841C
  MOVE.W  #$ffff,LAB_A4841E
  BCLR  #$1F,D0
  MOVE.L  D0,LAB_A48418
  CLR.L (A2)
  MOVE.L  D0,D1
  JSR SUB_A26AE8
  BMI.S LAB_A2692C
  MOVE.L  D1,D0
  LEA hashTable,A2
  EXG A6,A0
  BSR.W SUB_A26564
  EXG A6,A0
LAB_A2692C:
  BSR.W LAB_A26A34
  BRA.W LAB_A2678E
LAB_A26934:
  SUBQ.W  #8,D0
  BTST  D0,DrivesConnectedLo
  BEQ.W LAB_A2678E
  ST  currTrackNo
  MOVE.B  D0,currDriveNo
  JSR SUB_A26A52
  BMI.W LAB_A2678E
  MOVE.L  #$00000370,D0
  BRA.S LAB_A268F8
LAB_A2695E:
  TST.W LAB_A4841C
  BEQ.W LAB_A2678E
  MOVE.W  #$ffff,LAB_A4841E
  SUBQ.W  #8,LAB_A4841C
  BRA.W LAB_A2678E
LAB_A2697A:
  MOVE.W  LAB_A4841C,D0
  ADDQ.W  #8,D0
  CMP.W D7,D0
  BHI.W LAB_A2678E
  MOVE.W  #$ffff,LAB_A4841E
  MOVE.W  D0,LAB_A4841C
  BRA.W LAB_A2678E
LAB_A2699A:
  EXG A6,A0
  MOVE.L  LAB_A48418,D0
  JSR loadSector
  BPL.S LAB_A269B2
  EXG A6,A0
  BSR.W LAB_A26A34
  BRA.W LAB_A2678E
LAB_A269B2:
  EXG A6,A0
  MOVE.L  $1F4(A1),D0
  BEQ.W LAB_A2678E
  BRA.W LAB_A268F8
LAB_A269C0:
  MOVEQ #0,D0
  LEA stringWorkspace,A2
  MOVEQ #-1,D0
LAB_A269CA:
  ADDQ.L  #1,D0
  MOVE.B  (A2),D1
  CMPI.W  #$0060,D1
  BLS.S LAB_A269E6
  CMPI.W  #$007a,D1
  BHI.S LAB_A269E6
  TST.B forceUpper
  BEQ.S LAB_A269E6
  SUBI.W  #$0020,D1
LAB_A269E6:
  MOVE.B  D1,(A2)+
  BNE.S LAB_A269CA
  TST.B viewingPrefsCopy
  BNE.S LAB_A269F8
  JSR cleanupPrefsViewer
LAB_A269F8:
  EXG A0,A6
  MOVE.L  D0,-(A7)
  LEA EXT_70000,A0
  JSR restoreMfmBuffer
  MOVE.L  (A7)+,D0
LAB_A26A08:
  MOVE.L  LAB_A48418,currentDirBlock
  MOVEQ #0,D1
  MOVE.B  currDriveNo,D1
  LEA rootBlockLoadedFlags,A0
  ST  0(A0,D1.W)
  LEA 2(A7),A7
  MOVE.L  (A7)+,LAB_A480DE
  MOVEM.L (A7)+,D1-D7/A0-A6
  RTS
LAB_A26A34:
  MOVE.L  cursorX,-(A7)
  MOVE.L  #$00280002,cursorX
  JSR PrintDiskOpResult2
  MOVE.L  (A7)+,cursorX
  TST.W D0
  RTS
SUB_A26A52:
  EXG A0,A6
  SF  LAB_A48332
  JSR SUB_A21A66(PC)
  EXG A0,A6
  TST.W D0
  BMI.S LAB_A26A34
  JSR SUB_A2202C(PC)
  MOVE.L  D0,D2
  JSR ConvertToBCD
  MOVE.L  cursorX,-(A7)
  MOVE.L  #$00230005,cursorX
  MOVEQ #4,D1
  JSR PrintValue
  MOVE.L  A0,-(A7)
  LEA BlocksFreeText,A0
  JSR PrintText
  MOVE.L  #$000006e0,D0
  SUB.L D2,D0
  MULU  #$03e8,D0
  DIVU  #$06e0,D0
  EXT.L D0
  JSR ConvertToBCD
  ROXR.L  #4,D0
  MOVEQ #2,D1
  CMPI.W  #$0100,D0
  BNE.S LAB_A26AB8
  MOVEQ #3,D1
LAB_A26AB8:
  JSR PrintValue
  MOVE.W  #$002e,D0
  JSR PrintChar
  ROXL.L  #4,D0
  MOVEQ #1,D1
  JSR PrintValue
  LEA DiskUsedText,A0
  JSR PrintText
  MOVEA.L (A7)+,A0
  MOVE.L  (A7)+,cursorX
  MOVEQ #0,D0
  RTS
SUB_A26AE8:
  MOVE.L  A0,-(A7)
  MOVE.L  currentDirBlock,-(A7)
  MOVE.L  LAB_A48418,currentDirBlock
  MOVE.L  #$00240013,cursorX
  MOVEQ #$2B,D0
  JSR PrintSpaces
  MOVE.L  #$00240013,cursorX
  EXG A6,A0
  JSR SUB_A22160(PC)
  EXG A6,A0
  MOVE.L  (A7)+,currentDirBlock
  MOVEA.L (A7)+,A0
  TST.W D0
  RTS
SUB_A26B2A:
  LEA fileDialog(PC),A0
  MOVEM.L D0-D2/A0-A2,-(A7)
  MOVEQ #3,D1
  MOVEQ #$B,D0
LAB_A26B36:
  BTST  D1,DrivesConnectedLo
  BNE.S LAB_A26B44
  JSR disablePrefsBox
LAB_A26B44:
  SUBQ.W  #1,D0
  DBF D1,LAB_A26B36
  MOVEA.L A2,A1
LAB_A26B4C:
  TST.L (A1)
  BEQ.S LAB_A26B70
  ADDQ.L  #4,A1
  MOVE.W  LAB_A4841C,D0
  CMP.B (A1)+,D0
  BEQ.S LAB_A26B6C
LAB_A26B5C:
  TST.B (A1)+
  BNE.S LAB_A26B5C
  EXG D0,A1
  ADDQ.L  #1,D0
  ANDI.W  #$fffe,D0
  EXG D0,A1
  BRA.S LAB_A26B4C
LAB_A26B6C:
  LEA -5(A1),A1
LAB_A26B70:
  MOVE.L  cursorX,-(A7)
  MOVE.L  #$00020002,cursorX
  MOVEQ #0,D2
LAB_A26B82:
  LEA LAB_A26C3A(PC),A0
  TST.L (A1)
  BEQ.W LAB_A26C1C
  BMI.S LAB_A26B92
  LEA LAB_A26C3E(PC),A0
LAB_A26B92:
  MOVEQ #0,D1
  LEA 4(A1),A1
  MOVE.B  (A1)+,D1
  CMP.W LAB_A4841E,D1
  BEQ.S LAB_A26BD0
  JSR PrintText
  MOVEA.L A1,A0
  MOVE.B  $15(A0),-(A7)
  CLR.B $15(A0)
  MOVE.L  cursorX,-(A7)
  MOVEQ #$15,D0
  JSR PrintSpaces
  MOVE.L  (A7)+,cursorX
  JSR PrintText
  MOVE.B  (A7)+,$15(A0)
LAB_A26BD0:
  ADDQ.W  #2,cursorY
  MOVE.W  #2,cursorX
  CLR.L LAB_A47F3E
  CMP.W LAB_A4841E,D1
  BNE.S LAB_A26BF8
  MOVE.W  D2,D0
  LEA fileDialog(PC),A0
  JSR highlightPrefsBox
LAB_A26BF8:
  TST.B (A1)+
  BNE.S LAB_A26BF8
  EXG D0,A1
  ADDQ.L  #1,D0
  ANDI.W  #$fffe,D0
  EXG D0,A1
LAB_A26C06:
  ADDQ.W  #1,D2
  CMPI.W  #7,D2
  BLS.W LAB_A26B82
  MOVE.L  (A7)+,cursorX
  MOVEM.L (A7)+,D0-D2/A0-A2
  RTS
LAB_A26C1C:
  MOVEQ #$18,D0
  JSR PrintSpaces
  ADDQ.W  #2,cursorY
  MOVE.W  #2,cursorX
  CLR.L LAB_A47F3E
  BRA.S LAB_A26C06
LAB_A26C3A:
  MOVE.L  $2900(A2),D4
LAB_A26C3E:
  MOVE.L  -(A0),D0
  MOVE.L  D0,D0
SUB_A26C42:
  MOVEM.L D0-D7/A0-A3,-(A7)
  LSL.B #1,D0
  NOT.B D0
  BSET  #0,D0
  MOVE.W  D0,RawKeyCode
  JSR DecodeRawKeyCode
  CLR.W RawKeyCode
  MOVEA.L D0,A3
  BRA.S LAB_A26C6A
SUB_A26C64:
  MOVEM.L D0-D7/A0-A3,-(A7)
  SUBA.L  A3,A3
LAB_A26C6A:
  JSR SUB_A26F30
  ST  cursorEnabled
  MOVE.L  cursorX,-(A7)
  MOVE.L  D7,cursorX
  MOVE.L  D7,LAB_A47F3E
  MOVEQ #0,D4
  MOVEQ #0,D2
LAB_A26C8C:
  MOVE.L  cursorX,-(A7)
  MOVE.L  D7,cursorX
  MOVE.W  D6,D0
  JSR PrintSpaces
  MOVE.L  D7,cursorX
  MOVEA.L A1,A0
  LEA 0(A0,D2.W),A0
  MOVE.B  0(A0,D6.W),-(A7)
  CLR.B 0(A0,D6.W)
  JSR PrintText
  MOVE.B  (A7)+,0(A0,D6.W)
  MOVE.L  (A7)+,cursorX
  JSR PrintCursor
  MOVEA.L A1,A0
  MOVEQ #-1,D5
LAB_A26CCE:
  ADDQ.W  #1,D5
  TST.B (A0)+
  BNE.S LAB_A26CCE
LAB_A26CD4:
  MOVE.L  A3,D0
  BEQ.S LAB_A26CDC
  SUBA.L  A3,A3
  BRA.S LAB_A26CE6
LAB_A26CDC:
  JSR GetMappedKeyCode
  TST.W D0
  BEQ.S LAB_A26CD4
LAB_A26CE6:
  CMPI.W  #$001f,D0
  BLS.S LAB_A26D2E
  CMPI.W  #$007f,D0
  BLS.S LAB_A26CF8
  CMPI.W  #$009f,D0
  BLS.S LAB_A26D2E
LAB_A26CF8:
  CMP.W D3,D5
  BEQ.S LAB_A26C8C
  MOVEA.L A1,A0
  MOVE.W  D3,D1
LAB_A26D00:
  MOVE.B  -1(A0,D1.W),0(A0,D1.W)
  SUBQ.W  #1,D1
  CMP.W D4,D1
  BNE.S LAB_A26D00
  CLR.B 0(A0,D3.W)
  MOVE.B  D0,0(A0,D4.W)
  ADDQ.W  #1,D4
  MOVE.W  D2,D0
  ADD.W D6,D0
  CMP.W D0,D4
  BLS.S LAB_A26D24
  ADDQ.W  #1,D2
  BRA.W LAB_A26C8C
LAB_A26D24:
  ADDQ.W  #1,cursorX
  BRA.W LAB_A26C8C
LAB_A26D2E:
  CMPI.W  #$000d,D0
  BEQ.W LAB_A26DD6
  CMPI.W  #8,D0
  BEQ.S LAB_A26D52
  CMPI.W  #$0084,D0
  BEQ.S LAB_A26D7E
  CMPI.W  #$0082,D0
  BEQ.S LAB_A26D9A
  CMPI.W  #$0083,D0
  BEQ.S LAB_A26DB6
  BRA.W LAB_A26C8C
LAB_A26D52:
  TST.W D4
  BEQ.W LAB_A26C8C
  MOVE.W  D4,D0
  MOVEA.L A1,A0
LAB_A26D5C:
  MOVE.B  0(A0,D0.W),-1(A0,D0.W)
  ADDQ.W  #1,D0
  CMP.W D3,D0
  BLS.S LAB_A26D5C
  SUBQ.W  #1,D4
  CMP.W D2,D4
  BGE.S LAB_A26D74
  SUBQ.W  #1,D2
  BRA.W LAB_A26C8C
LAB_A26D74:
  SUBQ.W  #1,cursorX
  BRA.W LAB_A26C8C
LAB_A26D7E:
  CMP.W D5,D4
  BCC.W LAB_A26C8C
  ADDQ.W  #1,D4
  MOVE.W  D2,D0
  ADD.W D6,D0
  CMP.W D0,D4
  BLS.S LAB_A26D92
  ADDQ.W  #1,D2
  BRA.S LAB_A26D52
LAB_A26D92:
  ADDQ.W  #1,cursorX
  BRA.S LAB_A26D52
LAB_A26D9A:
  TST.W D4
  BEQ.W LAB_A26C8C
  SUBQ.W  #1,D4
  CMP.W D2,D4
  BGE.S LAB_A26DAC
  SUBQ.W  #1,D2
  BRA.W LAB_A26C8C
LAB_A26DAC:
  SUBQ.W  #1,cursorX
  BRA.W LAB_A26C8C
LAB_A26DB6:
  CMP.W D5,D4
  BCC.W LAB_A26C8C
  ADDQ.W  #1,D4
  MOVE.W  D2,D0
  ADD.W D6,D0
  CMP.W D0,D4
  BLS.S LAB_A26DCC
  ADDQ.W  #1,D2
  BRA.W LAB_A26C8C
LAB_A26DCC:
  ADDQ.W  #1,cursorX
  BRA.W LAB_A26C8C
LAB_A26DD6:
  SF  cursorEnabled
  LEA EXT_1000,A0
  MOVE.W  #$0280,D0
  MULU  cursorY,D0
  ADD.W cursorX,D0
  ADDI.W  #$0230,D0
  CMPI.B  #$ff,0(A0,D0.W)
  BNE.S LAB_A26E02
  SF  0(A0,D0.W)
LAB_A26E02:
  MOVE.L  (A7)+,cursorX
  JSR SUB_A26F62
  MOVEM.L (A7)+,D0-D7/A0-A3
  RTS
CMD_EXQR:
  ST  restartFlag
CMD_EXQ:
  TST.B sqInRamdisk
  BNE.S LAB_A26E28
  JMP LAB_A1D714
LAB_A26E28:
  SF  cursorEnabled
  SF  TBufferAllocated
  LEA hardware,A5
  JSR InitialiseDisk
  MOVE.W  #$0200,$96(A5)
  MOVE.W  #$4000,$9A(A5)
  JSR SwapChipRam1
  JSR SUB_A1F9A2
  MOVE.L  D0,D5
  MOVE.L  D1,D6
  MOVE.L  A0,D7
  CMPI.L  #$00000400,D0
  BLS.W LAB_A26F0A
  MOVEA.L A0,A1
  JSR SUB_A22F5A(PC)
  SUBA.L  A0,A0
  MOVEA.L ramDiskMem,A1
  MOVE.L  #$0001ffff,D0
LAB_A26E7A:
  MOVE.L  (A0),D1
  MOVE.L  (A1),(A0)+
  MOVE.L  D1,(A1)+
  SUBQ.L  #1,D0
  BPL.S LAB_A26E7A
  MOVE.L  ramDiskMem2,D0
  BEQ.S LAB_A26E9E
  MOVEA.L D0,A0
  MOVE.L  #$0001ffff,D0
LAB_A26E94:
  MOVE.L  (A0),D1
  MOVE.L  (A1),(A0)+
  MOVE.L  D1,(A1)+
  SUBQ.L  #1,D0
  BPL.S LAB_A26E94
LAB_A26E9E:
  MOVEA.L LAB_A48362,A1
  JSR SUB_A22F96(PC)
  BPL.S LAB_A26EB0
  JMP LAB_A1D6E8
LAB_A26EB0:
  TST.W D0
  BEQ.S LAB_A26EBE
  LEA DriveConfigWarnText(PC),A0
  JSR PrintText
LAB_A26EBE:
  MOVEA.L LAB_A48362,A0
  MOVE.L  LAB_A4835A,D0
  LSR.L #2,D0
  MOVE.L  LAB_A4835E,D1
LAB_A26ED2:
  MOVE.L  D1,(A0)+
  SUBQ.L  #1,D0
  BNE.S LAB_A26ED2
  JSR SwapChipRam1
  JSR PrintReady
  MOVE.L  D5,LAB_A4835A
  MOVE.L  D6,LAB_A4835E
  MOVE.L  D7,LAB_A48362
  MOVE.W  #$c000,$9A(A5)
  MOVE.W  #$8200,$96(A5)
  ST  cursorEnabled
  RTS
LAB_A26F0A:
  LEA NoDataSpaceText,A0
  JSR PrintText
  JSR PrintReady
  JSR SwapChipRam1
  MOVE.W  #$c000,$9A(A5)
  MOVE.W  #$8200,$96(A5)
  RTS
SUB_A26F30:
  MOVE.L  A5,-(A7)
  LEA hardware,A5
  MOVE.W  #$0020,$9A(A5)
  MOVE.W  #$0020,$9C(A5)
LAB_A26F44:
  BTST  #5,$1F(A5)
  BEQ.S LAB_A26F44
  MOVE.W  #$0020,$96(A5)
  JSR ClearSpriteData
  MOVE.W  #$8020,$9A(A5)
  MOVEA.L (A7)+,A5
  RTS
SUB_A26F62:
  MOVE.L  A5,-(A7)
  LEA hardware,A5
  MOVE.W  #$0020,$9A(A5)
  MOVE.W  #$0020,$9C(A5)
LAB_A26F76:
  BTST  #5,$1F(A5)
  BEQ.S LAB_A26F76
  MOVE.W  #$8020,$96(A5)
  MOVE.W  #$8020,$9A(A5)
  MOVEA.L (A7)+,A5
  RTS
SUB_A26F8E:
  TST.B LAB_A483CD
  BNE.S LAB_A26FA4
  JSR checkExecBaseValid
  TST.W D0
  BNE.S LAB_A26FB6
  MOVEQ #-1,D0
  RTS
LAB_A26FA4:
  MOVE.W  #$0100,dmacon+hardware
  JSR SwapChipRam1
  MOVEQ #0,D0
  RTS
LAB_A26FB6:
  TST.B TBufferAllocated
  BEQ.S LAB_A26FC4
  JSR TBuffRestoreQuiet
LAB_A26FC4:
  LEA EXT_120.W,A1
  MOVE.L  LAB_A2700C(PC),(A1)+
  MOVE.L  LAB_A2700C+4(PC),(A1)+
  MOVE.L  LAB_A27014(PC),(A1)+
  MOVEA.L EXT_4.W,A0
  LEA -54(A0),A0
  ADDQ.L  #2,A0
  JSR memSafeReadLong
  MOVE.L  D0,(A1)+
  MOVE.L  (A7)+,(A1)+
  MOVE.L  #$00000120,D0
  JSR memSafeWriteLong
  ST  LAB_A483CC
  ST  restartFlag
  MOVEA.L saveSp,A7
  JMP arCommandLoop
LAB_A2700C:
  ORI.B #0,ciabprb
LAB_A27014:
  BRA.S LAB_A2700C
  BRA.S LAB_A2700C
LAB_A27018:
  SF  LAB_A483CC
  MOVEA.L EXT_4,A0
  LEA -54(A0),A0
  LEA EXT_120,A1
  CLR.L (A1)+
  CLR.L (A1)+
  CLR.L (A1)+
  ADDQ.L  #2,A0
  MOVE.L  (A1),D0
  JSR memSafeWriteLong
  SUBQ.L  #2,A0
  CLR.L (A1)+
  PEA arCommandLoop
  MOVE.L  (A1),-(A7)
  CLR.L (A1)+
  CMPI.L  #$00000120,SaveOldPc
  BNE.S LAB_A27080
  MOVE.L  SaveOldPc,LAB_A480CA
  MOVE.L  A0,SaveOldPc
  ST  LAB_A483CD
  MOVE.W  #$0100,dmacon+hardware
  JSR SwapChipRam1
  MOVEQ #0,D0
  RTS
LAB_A27080:
  MOVEQ #-1,D0
  RTS
SUB_A27084:
  JSR SwapChipRam1
  MOVE.W  #$8100,dmacon+hardware
  RTS
CMD_SAFEDISK:
  CMPI.B  #$13,kickstartVersion
  BLS.S LAB_A270AE
  LEA WrongTDiskText(PC),A0
  JSR PrintText
  JMP PrintReady
LAB_A270AE:
  ST  LAB_A4807E
  SF  LAB_A480CE
LAB_A270BA:
  JSR readCmdCharSkipSpaces
  TST.B endOfCmdString
  BNE.S LAB_A2712A
  MOVEQ #5,D1
  CMPI.B  #$55,D0
  BEQ.S LAB_A2710A
  MOVEQ #3,D1
  CMPI.B  #$4e,D0
  BEQ.S LAB_A2710A
  MOVEQ #0,D1
  CMPI.B  #$42,D0
  BEQ.S LAB_A2710A
  MOVEQ #1,D1
  CMPI.B  #$56,D0
  BEQ.S LAB_A2710A
  MOVEQ #2,D1
  CMPI.B  #$53,D0
  BEQ.S LAB_A2710A
  MOVEQ #4,D1
  CMPI.B  #$51,D0
  BEQ.S LAB_A2710A
  CMPI.B  #$41,D0
  BNE.W LAB_A289B4
  MOVE.B  #$2f,LAB_A480CE
  BRA.S LAB_A270BA
LAB_A2710A:
  BSET  D1,LAB_A480CE
  BRA.S LAB_A270BA
LAB_A27112:
  MOVE.B  LAB_A483D6,LAB_A480CE
  ADDI.B  #$27,LAB_A480CE
  SF  LAB_A4807E
LAB_A2712A:
  TST.B LAB_A480CE
  BEQ.S LAB_A2713A
  BSET  #0,LAB_A480CE
LAB_A2713A:
  TST.B LAB_A4807E
  BEQ.S LAB_A27152
  JSR SUB_A26F8E(PC)
  BPL.S LAB_A27152
  LEA MTaskNotActiveText(PC),A0
  JMP PrintText
LAB_A27152:
  LEA ARPTSText(PC),A1
  MOVEA.L EXT_4,A6
  JSR SUB_A2798C
  MOVE.L  D0,LAB_A480CA
  BNE.S LAB_A271E4
  TST.B LAB_A480CE
  BEQ.W LAB_A2726A
  MOVE.L  #$00000042,D0
  MOVE.L  #$00010001,D1
  MOVEA.L EXT_4,A6
  PEA -198(A6)
  JSR SUB_A253D0(PC)
  LEA NoMemText(PC),A0
  MOVE.L  D0,LAB_A480CA
  BEQ.W LAB_A2727E
  MOVEA.L D0,A0
  LEA $36(A0),A1
  LEA ARPTSText(PC),A2
LAB_A271A6:
  MOVE.B  (A2)+,(A1)+
  BNE.S LAB_A271A6
  LEA $36(A0),A1
  MOVE.L  A1,$A(A0)
  MOVE.B  #$0f,8(A0)
  MOVEA.L LAB_A480CA,A0
  MOVEA.L EXT_4,A6
  PEA -558(A6)
  JSR SUB_A253D0(PC)
  LEA $214(A6),A0
  MOVEA.L LAB_A480CA,A1
  MOVEA.L EXT_4,A6
  PEA -270(A6)
  JSR SUB_A253D0(PC)
LAB_A271E4:
  MOVEA.L LAB_A480CA,A2
  MOVEA.L $2E(A2),A3
  MOVE.L  A3,D0
  BNE.S LAB_A271FA
  MOVE.L  #$0000000a,$32(A2)
LAB_A271FA:
  LEA AnotherPatchText(PC),A0
  CMPI.L  #$0000000a,$32(A2)
  BNE.S LAB_A2727E
  MOVE.L  A3,D0
  BEQ.S LAB_A27214
  TST.B LAB_A480CE
  BEQ.S LAB_A2726A
LAB_A27214:
  JSR SUB_A27852
  BMI.S LAB_A2727E
  BTST  #4,LAB_A480CE
  BEQ.S LAB_A27238
  JSR SUB_A277C8
  JSR SUB_A2736C
  LEA TrackPatchRemovedText(PC),A0
  BRA.S LAB_A2727E
LAB_A27238:
  JSR SUB_A277C8
  MOVEA.L LAB_A480CA,A0
  MOVE.L  $2E(A0),D0
  JSR SUB_A27542
  BMI.S LAB_A2727E
  MOVEA.L LAB_A480CA,A0
  MOVE.L  D0,$2E(A0)
  MOVEA.L D0,A1
  ADDA.L  #0,A1
  MOVE.L  A0,(A1)
  JSR SUB_A277FA
LAB_A2726A:
  TST.B LAB_A4807E
  BEQ.S LAB_A2727C
  JSR SUB_A27084(PC)
  JSR SUB_A27414
LAB_A2727C:
  RTS
LAB_A2727E:
  TST.B LAB_A4807E
  BEQ.S LAB_A2727C
  JSR SUB_A27084(PC)
  JSR PrintText
  RTS

MTaskNotActiveText:
  DC.B  "Multitasking surface not active",$D,0

NoMemText:
  DC.B  "Could'nt allocate (enough?) systemmemory",$D,0

AnotherPatchText:
  DC.B  "Another unknown trackdisk-patch is already running",$D,0

TrackPatchRemovedText:
  DC.B  "Trackdiskpatch removed",$D,0

WrongTDiskText:
  DC.B  "Wrong Trackdisk-Version (not 33 or 34), not changed",$D,0

ARPTSText:
  DC.B  "ARP TS_Hook",0,0,0

SUB_A2736C:
  MOVE.L  LAB_A480CA,D0
  BEQ.S LAB_A273DE
  MOVEA.L D0,A0
  MOVE.L  $2E(A0),D0
  BEQ.S LAB_A273B0
  MOVEA.L D0,A1
  MOVE.L  A1,-(A7)
  MOVE.L  $82(A1),D0
  BEQ.S LAB_A2739C
  MOVEA.L D0,A1
  MOVE.L  #$0000640c,D0
  MOVEA.L EXT_4,A6
  PEA -210(A6)
  JSR SUB_A253D0(PC)
LAB_A2739C:
  MOVEA.L (A7)+,A1
  MOVE.L  $B8(A1),D0
  MOVEA.L EXT_4,A6
  PEA -210(A6)
  JSR SUB_A253D0(PC)
LAB_A273B0:
  MOVEA.L LAB_A480CA,A1
  MOVEA.L EXT_4,A6
  PEA -252(A6)
  JSR SUB_A253D0(PC)
  MOVEA.L LAB_A480CA,A1
  MOVE.L  #$00000042,D0
  MOVEA.L EXT_4,A6
  PEA -210(A6)
  JSR SUB_A253D0(PC)
LAB_A273DE:
  RTS
BadTDiskText:
  DC.B  "Cannot access trackdisk.device - drive(s) in use:",$D,0,0

SUB_A27414:
  LEA TdiskStatusText(PC),A0
  JSR PrintText
  LEA TDiskUnchangedText(PC),A0
  MOVE.L  LAB_A480CA,D0
  BNE.S LAB_A27432
LAB_A2742A:
  JSR PrintText
  RTS
LAB_A27432:
  MOVEA.L D0,A0
  MOVE.L  $2E(A0),D0
  BEQ.S LAB_A2742A
  MOVEA.L D0,A0
  MOVE.L  $82(A0),D0
  MOVE.L  $76(A0),D0
  MOVE.B  $6C(A0),D0
  LEA BugsFixedText(PC),A0
  BTST  #0,D0
  BEQ.S LAB_A27458
  JSR PrintText
LAB_A27458:
  LEA NoClickText(PC),A0
  BTST  #3,D0
  BEQ.S LAB_A27468
  JSR PrintText
LAB_A27468:
  LEA VerifiesWritesText(PC),A0
  BTST  #1,D0
  BEQ.S LAB_A27478
  JSR PrintText
LAB_A27478:
  LEA ReadDamagedText(PC),A0
  BTST  #2,D0
  BEQ.S LAB_A27488
  JSR PrintText
LAB_A27488:
  LEA UpdatesTksText(PC),A0
  BTST  #5,D0
  BEQ.S LAB_A27498
  JSR PrintText
LAB_A27498:
  JSR PrintReady
  RTS

TdiskStatusText:
  DC.B  "Trackdisk status report:",$D,0

TDiskUnchangedText:
  DC.B  "Trackdisk.device is running unchanged.",$D,0

NoClickText:
  DC.B  "Noclick installed. ",$D,0

VerifiesWritesText:
  DC.B  "Verifies writes. ",$D,0

BugsFixedText:
  DC.B  "Bugs fixed. ",$D,0

ReadDamagedText:
  DC.B  "Reads damaged tracks. ",$D,0

UpdatesTksText:
  DC.B  "Updates Tracks.",$D,0,0

SUB_A27542:
  MOVE.L  D0,-(A7)
  LEA IntuitionLibName(PC),A1
  LEA $17A(A6),A0
  JSR LAB_A27934
  LEA NoIntuitionText(PC),A0
  MOVE.L  D0,LAB_A480D2
  BEQ.W LAB_A27702
  LEA TrackDiskName(PC),A1
  JSR SUB_A2795C
  LEA NoProperTDiskText(PC),A0
  MOVE.L  D0,LAB_A480D6
  BEQ.W LAB_A27702
  MOVEA.L D0,A1
  CMPI.B  #$21,$B(A1)
  BEQ.W LAB_A27632
  CMPI.B  #$22,$B(A1)
  BNE.W LAB_A27702
  MOVE.L  6(A1),D0
  SUB.L 2(A1),D0
  MOVE.L  D0,LAB_A480DA
  MOVE.L  D0,D1
  MOVE.L  (A7),D0
  BNE.S LAB_A275C4
  MOVE.L  D1,D0
  ADDI.L  #$00000904,D0
  ADDI.L  #$000000bc,D0
  MOVE.L  #$00010001,D1
  MOVEA.L EXT_4,A6
  PEA -198(A6)
  JSR SUB_A253D0(PC)
LAB_A275C4:
  LEA NoMemText(PC),A0
  MOVE.L  D0,LAB_A480DE
  BEQ.W LAB_A27702
  MOVEA.L D0,A1
  MOVE.L  A1,$14(A1)
  MOVE.L  A1,$2A(A1)
  MOVE.L  A1,$40(A1)
  MOVE.L  A1,$56(A1)
  MOVE.L  LAB_A480D2,$B4(A1)
  MOVE.L  LAB_A480DA,D0
  ADDI.L  #$00000904,D0
  ADDI.L  #$000000bc,D0
  MOVE.L  D0,$B8(A1)
  MOVE.L  LAB_A480D6,$6E(A1)
  MOVE.L  LAB_A480DA,$72(A1)
  LEA LAB_A27994(PC),A2
  MOVEA.L LAB_A480DE,A3
  ADDA.L  #$000000bc,A3
  MOVE.L  A3,$7A(A1)
  MOVE.L  #$00000904,$7E(A1)
  MOVE.W  #$0481,D0
LAB_A27632:
  MOVE.W  (A2)+,(A3)+
  DBF D0,LAB_A27632
  MOVE.L  A3,$76(A1)
  MOVEA.L LAB_A480D6,A2
  MOVE.L  LAB_A480DA,D0
  LSR.W #1,D0
  SUBQ.W  #1,D0
LAB_A2764C:
  MOVE.W  (A2)+,(A3)+
  DBF D0,LAB_A2764C
  JSR SUB_A27A90
  JSR SUB_A27AB0
  MOVEA.L LAB_A480DE,A0
  MOVEA.L $76(A0),A0
  LEA LAB_A2799C(PC),A1
  BTST  #0,LAB_A480CE
  BEQ.S LAB_A2767C
  JSR SUB_A27B42
LAB_A2767C:
  LEA LAB_A279B8(PC),A1
  BTST  #3,LAB_A480CE
  BEQ.S LAB_A27690
  JSR SUB_A27B42
LAB_A27690:
  LEA LAB_A279C6(PC),A1
  BTST  #2,LAB_A480CE
  BEQ.S LAB_A276A4
  JSR SUB_A27B42
LAB_A276A4:
  LEA LAB_A27A08(PC),A1
  BTST  #1,LAB_A480CE
  BEQ.S LAB_A276B8
  JSR SUB_A27B42
LAB_A276B8:
  LEA LAB_A27A54(PC),A1
  BTST  #5,LAB_A480CE
  BEQ.S LAB_A276CC
  JSR SUB_A27B42
LAB_A276CC:
  MOVEA.L LAB_A480DE,A0
  LEA $86(A0),A0
  MOVEA.L EXT_4,A6
  PEA -558(A6)
  JSR SUB_A253D0(PC)
  JSR SUB_A2774A
  BMI.S LAB_A27702
  MOVE.L  LAB_A480DE,D0
  MOVEA.L D0,A0
  MOVE.B  LAB_A480CE,$6C(A0)
  ADDQ.L  #4,A7
  MOVEQ #0,D1
  RTS
LAB_A27702:
  MOVE.L  (A7)+,D0
  MOVEQ #-1,D0
  RTS
NoIntuitionText:
  DC.B  "Can't find intuition.library",$D,0

NoProperTDiskText:
  DC.B  "Can't find proper trackdisk.device",$D,0

SUB_A2774A:
  BTST  #2,LAB_A480CE
  BNE.S LAB_A2778E
  BTST  #1,LAB_A480CE
  BNE.S LAB_A2778E
  MOVEA.L LAB_A480DE,A0
  MOVE.L  $82(A0),D0
  BEQ.S LAB_A2778A
  MOVEA.L D0,A1
  MOVE.L  #$0000640c,D0
  MOVEA.L EXT_4,A6
  PEA -210(A6)
  JSR SUB_A253D0(PC)
  MOVEA.L LAB_A480DE,A0
  CLR.L $82(A0)
LAB_A2778A:
  MOVEQ #0,D0
  RTS
LAB_A2778E:
  MOVEA.L LAB_A480DE,A0
  MOVE.L  $82(A0),D0
  BNE.S LAB_A2778A
  MOVE.L  #$0000640c,D0
  MOVE.L  #2,D1
  MOVEA.L EXT_4,A6
  PEA -198(A6)
  JSR SUB_A253D0(PC)
  MOVEA.L LAB_A480DE,A0
  MOVE.L  D0,$82(A0)
  BNE.S LAB_A2778A
  LEA NoMemText(PC),A0
  MOVEQ #-1,D0
  RTS
SUB_A277C8:
  MOVEA.L LAB_A480CA,A0
  MOVE.L  $2E(A0),D0
  BEQ.S LAB_A277F8
  MOVEA.L D0,A0
  LEA 4(A0),A1
LAB_A277DA:
  MOVE.L  (A1),D0
  BEQ.S LAB_A277F8
  CLR.L (A1)+
  MOVEA.L D0,A2
  MOVEA.L $C(A2),A3
  MOVEA.L $3E(A3),A4
  MOVE.L  4(A2),-20(A4)
  MOVE.L  8(A2),$58(A3)
  BRA.S LAB_A277DA
LAB_A277F8:
  RTS
SUB_A277FA:
  MOVEA.L LAB_A480DE,A2
  LEA 4(A2),A3
  LEA $14(A2),A4
  LEA hashTable,A0
LAB_A2780E:
  MOVE.L  (A0)+,D0
  BEQ.S LAB_A27850
  MOVEA.L D0,A1
  MOVE.L  A4,(A3)+
  MOVE.L  $6E(A2),D0
  ADDI.L  #$00001592,D0
  MOVE.L  $76(A2),D1
  ADDI.L  #$00001592,D1
  MOVE.L  D0,4(A4)
  MOVEA.L $3E(A1),A5
  MOVE.L  D1,-20(A5)
  MOVE.L  $58(A1),8(A4)
  MOVE.W  #$000a,$14(A4)
  MOVE.L  A4,$58(A1)
  MOVE.L  A1,$C(A4)
  ADDA.W  #$0016,A4
  BRA.S LAB_A2780E
LAB_A27850:
  RTS
SUB_A27852:
  MOVE.L  LAB_A480CA,D0
  BEQ.S LAB_A2786A
  MOVEA.L D0,A0
  MOVE.L  $2E(A0),D0
  BEQ.S LAB_A2786A
  MOVEA.L D0,A0
  MOVE.L  $76(A0),D0
  BRA.S LAB_A2788E
LAB_A2786A:
  LEA TrackDiskName(PC),A1
  LEA hashTable,A0
  MOVEA.L $12C(A6),A2
LAB_A27878:
  MOVE.L  (A2)+,(A0)+
  BNE.S LAB_A27878
  MOVE.L  A1,LAB_A480DA
  JSR SUB_A2795C
  MOVE.L  D0,LAB_A480DE
LAB_A2788E:
  LEA NoProperTDiskText(PC),A0
  MOVE.L  D0,D6
  BEQ.S LAB_A278D6
  ADDI.L  #$00001592,D6
  LEA hashTable,A2
  MOVEQ #3,D7
  LEA $1A4(A6),A0
LAB_A278A8:
  LEA TrackDiskName(PC),A1
  MOVEM.L D6-D7/A2,-(A7)
  JSR LAB_A27934
  MOVEM.L (A7)+,D6-D7/A2
  MOVEA.L D0,A0
  MOVE.L  D0,(A2)+
  BEQ.S LAB_A278DA
  MOVEA.L $3E(A0),A3
  CMP.L -20(A3),D6
  BNE.S LAB_A278D2
  DBF D7,LAB_A278A8
LAB_A278CE:
  MOVEQ #0,D0
  RTS
LAB_41D986:
  MOVE.L  A2,-(A7)
  MOVEA.L A0,A2
  MOVE.L  A1,D1
  MOVE.L  (A2),D0
  BEQ.W LAB_41D9AC
LAB_41D992:
  MOVEA.L D0,A2
  MOVE.L  (A2),D0
  BEQ.W LAB_41D9AC
  MOVEA.L $A(A2),A0
  MOVEA.L D1,A1
LAB_41D9A0:
  CMPM.B  (A0)+,(A1)+
  BNE.S LAB_41D992
  TST.B -1(A0)
  BNE.S LAB_41D9A0
  MOVE.L  A2,D0
LAB_41D9AC:
  MOVEA.L D1,A1
  MOVEA.L (A7)+,A2
  RTS
LAB_A278D2:
  LEA BadTDiskText(PC),A0
LAB_A278D6:
  MOVEQ #-1,D0
  RTS
LAB_A278DA:
  LEA $196(A6),A0
  SUBQ.L  #4,A2
LAB_A278E0:
  LEA TrackDiskName(PC),A1
  MOVEM.L D6-D7/A2,-(A7)
  JSR LAB_A27934
  MOVEM.L (A7)+,D6-D7/A2
  MOVEA.L D0,A0
  MOVE.L  D0,(A2)+
  BEQ.S LAB_A27906
  MOVEA.L $3E(A0),A3
  CMP.L -20(A3),D6
  BNE.S LAB_A278D2
  DBF D7,LAB_A278E0
LAB_A27906:
  LEA $114(A6),A0
  MOVEA.L (A0),A0
LAB_A2790C:
  LEA TrackDiskName(PC),A1
  MOVEM.L D6-D7/A2,-(A7)
  JSR LAB_A27934
  MOVEM.L (A7)+,D6-D7/A2
  MOVEA.L D0,A0
  MOVE.L  D0,(A2)+
  BEQ.W LAB_A278CE
  MOVEA.L $3E(A0),A3
  CMP.L -20(A3),D6
  BNE.S LAB_A278D2
  DBF D7,LAB_A2790C
  BRA.W LAB_A278CE
LAB_A27934:
  MOVE.L  A2,-(A7)
  MOVEA.L A0,A2
  MOVE.L  A1,D1
  MOVE.L  (A2),D0
  BEQ.S LAB_A27956
LAB_A2793E:
  MOVEA.L D0,A2
  MOVE.L  (A2),D0
  BEQ.S LAB_A27956
  MOVEA.L $A(A2),A0
  MOVEA.L D1,A1
LAB_A2794A:
  CMPM.B  (A0)+,(A1)+
  BNE.S LAB_A2793E
  TST.B -1(A0)
  BNE.S LAB_A2794A
  MOVE.L  A2,D0
LAB_A27956:
  MOVEA.L D1,A1
  MOVEA.L (A7)+,A2
  RTS
SUB_A2795C:
  MOVEM.L A2-A3,-(A7)
  MOVEA.L $12C(A6),A2
  MOVEA.L A1,A3
LAB_A27966:
  MOVE.L  (A2)+,D0
  BEQ.S LAB_A27986
  BGT.S LAB_A27974
  BCLR  #$1F,D0
  MOVEA.L D0,A2
  BRA.S LAB_A27966
LAB_A27974:
  MOVEA.L D0,A1
  MOVEA.L A3,A0
  MOVEA.L $E(A1),A1
LAB_A2797C:
  CMPM.B  (A0)+,(A1)+
  BNE.S LAB_A27966
  TST.B -1(A0)
  BNE.S LAB_A2797C
LAB_A27986:
  MOVEM.L (A7)+,A2-A3
  RTS
SUB_A2798C:
  LEA $214(A6),A0
  JMP LAB_A27934(PC)
LAB_A27994:
  BSET  #1,$41(A3)
  RTS
LAB_A2799C:
  DC.L  $1a380003,$0c800000,$800000e6,$00010016
  DC.L  $10400002,$6100ebf6
  DS.L  1
LAB_A279B8:
  DC.L  $01040003,$6100f5f6,$4e710000
  DS.W  1
LAB_A279C6:
  DC.L  $10f80002,$6000e60a,$0ec80001,$663a0f04
  DC.L  $0012246b,$0044206b,$004e0c2a,$0003001d
  DC.L  $6600ec36,$0c28000b,$00036516,$15680003
  DC.L  $001f6000,$0116102a,$00026d00,$fed80000
  DS.W  1
LAB_A27A08:
  DC.L  $07c40002,$6100f4a2,$0edc0002,$6100ed8a
  DC.L  $11d60002,$6100ea90,$15d20002,$6100e694
  DC.L  $16fe0002,$48e7be20,$18fa0002,$4cdf047e
  DC.L  $180e0002,$6100e3c4,$08640006,$30822748
  DC.L  $004e6100,$f3f84e71
  DS.L  1
LAB_A27A54:
  DC.L  $0bd60002,$6000f00a,$00a40002,$6000fb52
  DS.L  1
LAB_A27A68:
  DC.L  $07a207aa,$082807c0,$07d207da,$07fe0806
  DC.L  $08700874,$08780884,$08880848,$084c0850
  DC.L  $085c0860,$08900000
SUB_A27A90:
  MOVEA.L LAB_A480DE,A0
  MOVEA.L $7A(A0),A0
  LEA LAB_A27A68(PC),A1
LAB_A27A9E:
  MOVE.W  (A1)+,D0
  BEQ.S LAB_A27AAE
  MOVE.L  A0,D1
  ADD.L 0(A0,D0.W),D1
  MOVE.L  D1,0(A0,D0.W)
  BRA.S LAB_A27A9E
LAB_A27AAE:
  RTS
SUB_A27AB0:
  MOVEA.L LAB_A480DE,A0
  MOVEA.L $76(A0),A1
  MOVE.L  $6E(A0),D0
  SUB.L A1,D0
  LEA LAB_A27AD0(PC),A0
  BRA.S LAB_A27ACA
LAB_A27AC6:
  SUB.L D0,0(A1,D1.W)
LAB_A27ACA:
  MOVE.W  (A0)+,D1
  BNE.S LAB_A27AC6
  RTS
LAB_A27AD0:
  DC.L  $00020006,$000e0012,$00160324,$032a03c0
  DC.L  $091c0940,$09660980,$099409b6,$09c409cc
  DC.L  $0a000a04,$0a080a0c,$0a100a14,$0a1c0a20
  DC.L  $0a240a28,$0a2c0a30,$0a340a38,$0a3c0a40
  DC.L  $0a440a48,$0a4c0a50,$0a540a58,$0a5c0a60
  DC.L  $0a640a68,$0a6c0a70,$127e12ea,$13161352
  DC.L  $138613e4,$14461690,$16b8195a,$19a219b2
  DS.W  1
SUB_A27B42:
  MOVEM.L A2,-(A7)
  MOVEA.L A0,A2
LAB_A27B48:
  MOVEA.L A2,A0
  MOVE.W  (A1)+,D0
  ADDA.W  D0,A0
  MOVE.W  (A1)+,D1
  BEQ.S LAB_A27B5C
  BRA.S LAB_A27B56
LAB_A27B54:
  MOVE.W  (A1)+,(A0)+
LAB_A27B56:
  DBF D1,LAB_A27B54
  BRA.S LAB_A27B48
LAB_A27B5C:
  MOVEM.L (A7)+,A2
  RTS
SUB_A27B62:
  MOVEM.L D1-D2,-(A7)
  MOVE.L  foundAutoConfigMemEnd,D0
  BEQ.S LAB_A27B88
  MOVEA.L foundAutoConfigMemStart,A0
  MOVE.L  autoConfigMemEnd,D2
  BEQ.S LAB_A27B84
  SUB.L D2,D0
  BEQ.S LAB_A27B88
  MOVEA.L D2,A0
  BRA.S LAB_A27BC2
LAB_A27B84:
  SUB.L A0,D0
  BRA.S LAB_A27BC2
LAB_A27B88:
  MOVE.L  foundSlowMemEnd,D0
  BEQ.S LAB_A27BAA
  MOVE.L  SlowMemEnd,D1
  BNE.S LAB_A27B9E
  MOVE.L  #$00c00000,D1
LAB_A27B9E:
  SUB.L D1,D0
  BEQ.S LAB_A27BAA
  LEA EXT_C00000,A0
  BRA.S LAB_A27BC2
LAB_A27BAA:
  MOVE.L  foundChipMemEnd,D0
  SUB.L ChipMemEnd,D0
  BEQ.S LAB_A27BC0
  LEA EXT_80000,A0
  BRA.S LAB_A27BC2
LAB_A27BC0:
  MOVEQ #0,D0
LAB_A27BC2:
  MOVEM.L (A7)+,D1-D2
  RTS
CMD_TDX:
  SF  DeepTrainerActive
  JSR PrintReady
  RTS
CMD_TD:
  TST.B DeepTrainerActive
  BEQ.S LAB_A27C16
  LEA DeepTrainerListText(PC),A0
  JSR PrintText
  MOVEA.L LAB_A48420,A0
  MOVEA.L A0,A1
  ADDA.L  #$0007fffa,A1
LAB_A27BF6:
  MOVE.L  (A0)+,D0
  BMI.S LAB_A27C10
  TST.B EscapePressed
  BNE.S LAB_A27C16
  JSR PrintAddressHex
  MOVEQ #2,D0
  JSR PrintSpaces
LAB_A27C10:
  ADDQ.W  #2,A0
  CMPA.L  A0,A1
  BGT.S LAB_A27BF6
LAB_A27C16:
  JSR PrintReady
  RTS
DeepTrainerListText:
  DC.B  "List of deeptraineraddresses:",$D,0,0

CMD_TDC:
  MOVEQ #0,D1
  BRA.S LAB_A27C44
CMD_TDS:
  MOVEQ #1,D1
LAB_A27C44:
  TST.B DeepTrainerActive
  BNE.W LAB_A27D54
  BSR.W SUB_A27B62
  MOVE.L  D0,D3
  MOVEA.L A0,A3
  TST.L D0
  BNE.S LAB_A27C6C
  LEA NoWorkMemText(PC),A0
LAB_A27C5E:
  JSR PrintText
  JSR PrintReady
  RTS
LAB_A27C6C:
  LEA Select512KText(PC),A0
  CMPI.L  #$00080000,ChipMemEnd
  BNE.S LAB_A27C5E
  TST.L SlowMemEnd
  BNE.S LAB_A27C5E
  TST.L autoConfigMemEnd
  BNE.S LAB_A27C5E
  ST  DeepTrainerActive
  MOVE.L  A3,LAB_A48420
  CLR.L trainerContinueAddress
  SUBA.L  A0,A0
  MOVEA.L A3,A1
  ADDA.L  #$0007fffa,A3
LAB_A27CA8:
  MOVE.L  A0,(A1)+
  JSR memSafeReadByte
  MOVE.B  D0,(A1)+
  MOVE.B  D0,(A1)+
  ADDQ.W  #1,A0
  CMPA.L  A1,A3
  BGT.S LAB_A27CA8
  MOVE.L  A0,trainerContinueAddress
  LEA ChangeCounterText2(PC),A0
  BRA.S LAB_A27C5E
NoWorkMemText:
  DC.B  "No work memory",$D,0

Select512KText:
  DC.B  "Select only 512k chip memory",$D,0

ChangeCounterText2:
  DC.B  "Change now your counter",$D,0

RestoreOrChangeText:
  DC.B  "Restore (TDS) or change (TDC) now your counter",$D,0

PossibleAddrsText:
  DC.B  "Possible addresses: ",$D,0,0

LAB_A27D54:
  TST.W D1
  BEQ.W LAB_A27E3C
  SF  LAB_A480CA
  LEA PossibleAddrsText(PC),A0
  JSR PrintText
  MOVEA.L LAB_A48420,A2
  MOVEA.L A2,A4
  MOVEQ #-1,D5
  ADDA.L  #$0007fffa,A4
LAB_A27D7A:
  MOVEA.L (A2)+,A0
  JSR memSafeReadByte
  CMPM.B  (A2)+,(A2)+
  BEQ.S LAB_A27DB0
  CMP.B -1(A2),D0
  BNE.S LAB_A27DB0
  MOVE.B  D0,-2(A2)
  TST.B EscapePressed
  BNE.S LAB_A27DA8
  MOVE.L  A0,D0
  JSR PrintAddressHex
  MOVEQ #2,D0
  JSR PrintSpaces
LAB_A27DA8:
  ST  LAB_A480CA
  BRA.S LAB_A27DB4
LAB_A27DB0:
  MOVE.L  D5,-6(A2)
LAB_A27DB4:
  CMPA.L  A2,A4
  BGT.S LAB_A27D7A
  JSR PrintCrIfNotBlankLine
  TST.B LAB_A480CA
  BNE.S LAB_A27DD2
  LEA NothingFoundText,A0
  JSR PrintText
LAB_A27DD2:
  MOVEA.L trainerContinueAddress,A3
  MOVEA.L LAB_A48420,A2
  MOVE.L  #$00080000,D5
  MOVEA.L A2,A4
  ADDA.L  #$0007fffa,A4
LAB_A27DEC:
  CMP.L A3,D5
  BEQ.S LAB_A27E12
  TST.L (A2)
  BMI.S LAB_A27DF8
  ADDQ.W  #6,A2
  BRA.S LAB_A27E0E
LAB_A27DF8:
  MOVE.L  A3,(A2)+
  MOVEA.L A3,A0
  JSR memSafeReadByte
  MOVE.B  D0,(A2)+
  MOVE.B  D0,(A2)+
  ADDQ.W  #1,A3
  ST  LAB_A480CA
LAB_A27E0E:
  CMPA.L  A2,A4
  BGT.S LAB_A27DEC
LAB_A27E12:
  MOVE.L  A3,trainerContinueAddress
  TST.B LAB_A480CA
  BNE.S LAB_A27E30
  LEA LAB_A27E38(PC),A0
  JSR PrintText
  SF  DeepTrainerActive
LAB_A27E30:
  LEA ChangeCounterText2(PC),A0
  BSR.W SUB_A27F02
LAB_A27E38:
  BRA.W LAB_A27C5E
LAB_A27E3C:
  MOVEA.L LAB_A48420,A3
  MOVEA.L A3,A4
  ADDA.L  #$0007fffa,A4
  MOVEQ #-1,D5
LAB_A27E4C:
  MOVEA.L (A3)+,A0
  JSR memSafeReadByte
  MOVE.B  D0,(A3)+
  CMP.B (A3)+,D0
  BNE.S LAB_A27E5E
  MOVE.L  D5,-6(A3)
LAB_A27E5E:
  CMPA.L  A3,A4
  BGT.S LAB_A27E4C
  MOVEA.L trainerContinueAddress,A3
  MOVEA.L LAB_A48420,A2
  MOVE.L  #$00080000,D5
LAB_A27E74:
  CMP.L A3,D5
  BEQ.S LAB_A27E94
  TST.L (A2)
  BMI.S LAB_A27E80
  ADDQ.W  #6,A2
  BRA.S LAB_A27E90
LAB_A27E80:
  MOVE.L  A3,(A2)+
  MOVEA.L A3,A0
  JSR memSafeReadByte
  MOVE.B  D0,(A2)+
  MOVE.B  D0,(A2)+
  ADDQ.W  #1,A3
LAB_A27E90:
  CMPA.L  A2,A4
  BGT.S LAB_A27E74
LAB_A27E94:
  MOVE.L  A3,trainerContinueAddress
  LEA RestoreOrChangeText(PC),A0
  BSR.S SUB_A27F02
  BRA.W LAB_A27C5E
CMD_TDD:
  TST.B DeepTrainerActive
LAB_A27EAA:
  BEQ.W LAB_A289B4
  JSR ReadParameter
  TST.B ParamFound
  BEQ.S LAB_A27EAA
  MOVEA.L D0,A1
  JSR ReadParameter
  TST.B ParamFound
  BEQ.S LAB_A27EAA
  MOVEA.L D0,A2
  CMPA.L  A1,A2
  BCS.S LAB_A27EAA
  MOVEA.L LAB_A48420,A0
  MOVEA.L A0,A3
  ADDA.L  #$0007fffa,A3
LAB_A27EE0:
  MOVE.L  (A0)+,D0
  BMI.S LAB_A27EF4
  CMP.L A1,D0
  BCS.S LAB_A27EF4
  CMP.L A2,D0
  BGE.S LAB_A27EF4
  MOVE.L  #$ffffffff,-4(A0)
LAB_A27EF4:
  ADDQ.W  #2,A0
  CMPA.L  A0,A3
  BGT.S LAB_A27EE0
  JSR PrintReady
  RTS
SUB_A27F02:
  MOVEM.L D0/A0,-(A7)
  LEA SearchedUptoText,A0
  JSR PrintText
  MOVE.L  trainerContinueAddress,D0
  JSR PrintAddressHex
  JSR PrintCrIfNotBlankLine
  MOVEM.L (A7)+,D0/A0
  RTS
CMD_MS:
  TST.B TraceActive
  BEQ.S LAB_A27F38
  LEA CannotMWText(PC),A0
  BRA.S LAB_A27F64
LAB_A27F38:
  JSR ReadParameter
  TST.B ParamFound
  BEQ.W CMD_MW
  MOVEA.L D0,A1
  MOVEQ #4,D2
  LEA MemWatchAddrs,A0
LAB_A27F52:
  TST.L (A0)+
  BMI.S LAB_A27F72
  CMP.L -4(A0),D0
  BEQ.S LAB_A27F72
  DBF D2,LAB_A27F52
  LEA NoFreMWText(PC),A0
LAB_A27F64:
  JSR PrintText
  JSR PrintReady
  RTS
LAB_A27F72:
  MOVE.L  D0,-4(A0)
  LEA memWatchSlotsUsed1,A0
  ST  0(A0,D2.W)
  LEA MWSetText(PC),A0
  BRA.S LAB_A27F64
NoFreMWText:
  DC.B  "All memwatchpoints occupied",$D,0

MWSetText:
  DC.B  "Memwatchpoint set",$D,0

CannotMWText:
  DC.B  "Cannot set memwatchpoint: trace active!",$D,0,0

CMD_MD:
  JSR ReadParameter
  TST.B ParamFound
  BEQ.W LAB_A289B4
  LEA MemWatchAddrs,A0
  MOVEQ #4,D1
LAB_A27FF8:
  CMP.L (A0)+,D0
  BEQ.S LAB_A28012
  DBF D1,LAB_A27FF8
  LEA MWNotFoundText(PC),A0
LAB_A28004:
  JSR PrintText
  JSR PrintReady
  RTS
LAB_A28012:
  MOVE.L  #$ffffffff,-4(A0)
  LEA memWatchSlotsUsed1,A0
  SF  0(A0,D1.W)
  LEA MWDeletedText(PC),A0
  BRA.S LAB_A28004
MWDeletedText:
  DC.B  "Memwatchpoint deleted",$D,0

MWNotFoundText:
  DC.B  "Memwatchpoint not found",$D,0

CMD_MW:
  LEA MWListText(PC),A0
  JSR PrintText
  LEA MemWatchAddrs,A0
  MOVEQ #4,D1
LAB_A2806C:
  MOVE.L  (A0)+,D0
  BMI.S LAB_A2807E
  JSR PrintAddressHex
  MOVEQ #2,D0
  JSR PrintSpaces
LAB_A2807E:
  DBF D1,LAB_A2806C
  JSR PrintReady
  RTS

MWListText:
  DC.B  "List of memwatchpoints: ",0,0

CMD_MDA:
  LEA MWAllDeletedText(PC),A0
  JSR PrintText
  MOVEQ #4,D0
  LEA MemWatchAddrs,A0
LAB_A280B6:
  MOVE.L  #$ffffffff,(A0)+
  DBF D0,LAB_A280B6
  LEA memWatchSlotsUsed1,A0
  CLR.L (A0)+
  CLR.L (A0)
  JSR PrintReady
  RTS

MWAllDeletedText:
  DC.B  "All memwatchpoints deleted!",$D,0,0

RestoreMemWatch:
  LEA MemWatchAddrs,A2
  MOVEA.L A2,A3
  MOVEQ #4,D1
LAB_A280FA:
  TST.L (A2)+
  BPL.S LAB_A2813E
  DBF D1,LAB_A280FA
  TST.B MemwatchActive
  BEQ.S LAB_A28136
  MOVEQ #3,D1
  LEA EXT_15A.W,A0
LAB_A28110:
  CMPI.W  #$4e73,(A0)
  BEQ.S LAB_A2811E
  LEA $A(A0),A0
  DBF D1,LAB_A28110
LAB_A2811E:
  MOVE.L  #$08970007,(A0)+
  MOVE.W  #$4e73,(A0)+
  LEA EXT_130.W,A0
  MOVE.L  #$08970007,(A0)+
  MOVE.W  #$4e73,(A0)+
LAB_A28136:
  SF  MemwatchActive
  RTS
LAB_A2813E:
  ST  MemwatchActive
  MOVEQ #4,D3
  MOVE.W  #$00ec,D4
  LEA EXT_130.W,A2
  if arhardware=1
  MOVE.L  #$4a3900bf,(A2)+
  MOVE.L  #$e0014e71,(A2)+
  MOVE.W  #$4e71,(A2)+
  else
  MOVE.L  #$00000046,TRAP_15.W
  MOVE.W  #$4e73,EXT_46.W
  MOVE.L  #$4e714e71,(A2)+
  MOVE.L  #$4e4f4e71,(A2)+
  MOVE.W  #$4e71,(A2)+
  endc
LAB_A2816C:
  MOVE.L  (A3)+,D0
  BPL.S LAB_A28194
LAB_A28170:
  DBF D3,LAB_A2816C
  LEA LAB_A281B2(PC),A0
  LEA LAB_A281C8(PC),A1
LAB_A2817C:
  MOVE.W  (A0)+,(A2)+
  CMPA.L  A0,A1
  BNE.S LAB_A2817C
  ORI.W #$8000,SaveOldSr
  JSR getVBR
  MOVE.L  #$0000013a,TRACE(A0)
  RTS
LAB_A28194:
  MOVEA.L D0,A0
  MOVEQ #0,D0
  JSR memSafeReadByte
  MOVE.W  #$0c39,(A2)+
  MOVE.W  D0,(A2)+
  MOVE.L  A0,(A2)+
  MOVE.B  #$66,(A2)+
  MOVE.B  D4,(A2)+
  SUBI.W  #$000a,D4
  BRA.S LAB_A28170
LAB_A281B2:
  MOVE.L  A0,-(A7)
  MOVEA.L 6(A7),A0
  CMPI.W  #$4e73,(A0)
  BNE.S LAB_A281C4
  BSET  #7,4(A7)
LAB_A281C4:
  MOVEA.L (A7)+,A0
  RTE
LAB_A281C8:
  RTS
SUB_A281CA:
  MOVE.W  EXT_0.W,-(A7)
  JSR SUB_A27B62(PC)
  MOVEA.L ChipMemEnd,A5
  LEA hardware,A6
  CMP.L A5,D0
  BCS.W LAB_A28380
  MOVEA.L A0,A4
  MOVEA.L A4,A1
  MOVE  #$2700,SR
  SUBA.L  A0,A0
  MOVE.W  #$07ff,D1
  CMPA.L  #$00100000,A5
  BLT.S LAB_A281FE
  MOVE.W  #$0fff,D1
LAB_A281FE:
  MOVEQ #$3F,D2
LAB_A28200:
  MOVE.L  (A0)+,(A1)+
  DBF D2,LAB_A28200
  MOVE.W  #0,$2C(A6)
  DBF D1,LAB_A281FE
  SUBA.L  A0,A0
LAB_A28212:
  MOVEQ #$3F,D0
LAB_A28214:
  MOVE.L  #$849cf89c,(A0)+
  DBF D0,LAB_A28214
  MOVE.W  #0,$2C(A6)
  CMPA.L  A0,A5
  BNE.S LAB_A28212
  SUBA.L  A0,A0
  MOVEQ #$C,D7
  MOVE.B  #$7f,ciaaicr
  TST.B ciaaicr
  MOVE.B  #$7f,ciabicr
  TST.B ciabicr
  MOVE.L  #$00003000,$2A(A6)
  MOVE.W  #$7fff,$9C(A6)
LAB_A28256:
  MOVE.W  #$8280,$96(A6)
  MOVE.W  #$0280,$96(A6)
  TST.W $1E(A6)
  BEQ.S LAB_A28256
  MOVE.L  4(A6),D0
  MOVE.L  #0,$2A(A6)
  ANDI.L  #$0001ff00,D0
  SEQ LAB_A483D1
  BTST  #2,$1E(A6)
  BEQ.S LAB_A2828A
  ADDQ.W  #2,A0
LAB_A2828A:
  MOVEA.L A0,A2
  MOVEQ #0,D0
LAB_A2828E:
  MOVEQ #$3F,D1
LAB_A28290:
  ORI.W #$8000,D0
  MOVE.W  #$fe9c,(A0)+
  MOVE.W  D0,(A0)+
  ADDQ.W  #1,D0
  DBF D1,LAB_A28290
  MOVE.W  #0,$2C(A6)
  CMPA.L  A0,A5
  BGT.S LAB_A2828E
  MOVE.B  #$7f,ciaaicr
  TST.B ciaaicr
  MOVE.B  #$7f,ciabicr
  TST.B ciabicr
  MOVE.W  #$3000,$2C(A6)
  MOVE.W  #$7fff,$9C(A6)
  MOVE.W  #$8280,$96(A6)
  MOVE.W  #$0280,$96(A6)
  MOVEQ #0,D0
  MOVE.W  $1E(A6),D0
  ANDI.W  #$7fff,D0
  LSL.L #2,D0
  LEA 0(A2,D0.L),A2
  MOVEA.L A2,A0
  MOVEQ #0,D0
LAB_A282F2:
  ORI.W #$8000,D0
  MOVEA.L A0,A1
  MOVE.W  #$03e8,D1
LAB_A282FC:
  MOVE.W  #$fe9c,(A1)+
  MOVE.W  D0,(A1)+
  MOVE.W  #$3000,$2C(A6)
  DBF D1,LAB_A282FC
  ADDQ.W  #1,D0
  ADDA.L  #$00020000,A0
  CMPA.L  A0,A5
  BGT.S LAB_A282F2
  MOVEQ #-1,D2
LAB_A2831A:
  MOVE.W  #$3000,$2C(A6)
  MOVE.W  #$7fff,$9C(A6)
  MOVE.W  #$8280,$96(A6)
  MOVE.W  #$0280,$96(A6)
  MOVE.W  $1E(A6),D0
  ANDI.W  #$7fff,D0
  CMPI.W  #7,D0
  BGT.S LAB_A2831A
  CMP.W D0,D2
  BEQ.S LAB_A28348
  MOVE.W  D0,D2
  BRA.S LAB_A2831A
LAB_A28348:
  MOVE.L  #$00002000,D1
  MULU  D0,D1
  MULU  #$0010,D1
  SUB.L D7,D1
  LEA 0(A2,D1.L),A2
  MOVE.L  A2,LAB_A48438
  SUBA.L  A0,A0
LAB_A28362:
  MOVE.L  (A4)+,(A0)+
  CMPA.L  A0,A5
  BGT.S LAB_A28362
  MOVE.W  #$7fff,$9C(A6)
  JSR PrepCIA
  MOVE  #$2000,SR
LAB_A28378:
  MOVE.W  (A7)+,EXT_0
  RTS
LAB_A28380:
  ST  LAB_A483D3
  BRA.S LAB_A28378

CMD_LED:
  bchg  #1,$bfe001
  bchg  #1,saveCIAA
  JSR PrintReady
  RTS

CMD_PAL:
  MOVE.W  #$0020,beamcon0+hardware
  MOVE.W  #$0020,SaveBeamCon0
  CLR.W VgaModeFlag

  JSR PrintReady
  RTS
CMD_NTSC:
  MOVE.W  #0,beamcon0+hardware
  MOVE.W  #0,SaveBeamCon0
  CLR.W VgaModeFlag

  JSR PrintReady
  RTS
  MOVE.W  D1,-(A7)
LAB_A283AA:
  JSR PrintChar
  SUBQ.W  #1,D1
  BNE.S LAB_A283AA
  MOVE.W  (A7)+,D1
  RTS

CMD_DUMP
  JSR GetFilename
  TST.W D0
  BEQ.W dumpWTF

  ST.B scrollLock
  LEA EXT_7000.W,A0
  JSR backupMfmBuffer
  LEA stringWorkspace,A1
  MOVE.B  currDriveNo,-(A7)
  JSR OpenFile
  BMI filedumpdone
  MOVE.L  fileSize,D5
  BEQ filedumpdone
  MOVEQ #0,D6
  MOVEQ #0,D7
dumpnextbyte:

  LEA EXT_7000.W,A0
  TST.L D6
  BNE.S .2
  LEA LAB_A482A0,A2
  MOVE.L D5,D0
  CMP.L #16,D0
  BLT .1
  MOVE.L #16,D0 
.1
  MOVE.L  D0,D6 
  JSR readFileData
  BMI filedumpdone

  LEA LAB_A482A0,A4
  JSR PrintCR
  TST.B EscapePressed
  BNE .3

  MOVE.L  D7,D0
  JSR Print6DigitHex
  ADD.L #16,D7

.2
  SUBQ.L  #1,D5
  SUBQ.L  #1,D6
 
  TST.L D6
  BLT .3
  JSR PrintSpace
  MOVE.B (A4)+,D0
  JSR Print2DigitHex
  MOVEQ #0,D0
  MOVE.W cursorX,D0
  MOVE.W D0,-(A7)
  SUB.W #9,D0
  DIVU #3,D0
  ADD.W #55,D0
  MOVE.W D0,cursorX
  MOVE.B -1(A4),D0
  JSR InvalidAsciiToDot
  JSR PrintChar
  MOVE.W (A7)+,cursorX
  
.3
  MOVEQ #-8,D0
  TST.B EscapePressed
  BNE.S filedumpdone
  TST.L D5
  BNE dumpnextbyte

  JSR PrintCR

  MOVEQ #0,D0
filedumpdone:
  SF.B scrollLock
 
  MOVE.W  D0,D1
  LEA EXT_7000.W,A0
  JSR restoreMfmBuffer
  MOVE.W  D1,D0
  JSR PrintDiskOpResult
  MOVE.B  (A7)+,currDriveNo
  RTS

dumpWTF:
  JMP PrintWTF

SUB_A283B8:
  MOVE.L  A0,-(A7)
  MOVE.B  (A0)+,cursorXLo
  MOVE.B  (A0)+,cursorYLo
  JSR PrintText
  MOVEA.L (A7)+,A0
  RTS
LAB_A283D0:
  DC.L  $00020005,$00030005,$7e000006,$00050006
  DC.L  $00053100,$00090005,$00090005,$3200000c
  DC.L  $0005000c,$00053300,$000f0005,$000f0005
  DC.L  $34000012,$00050012,$00053500,$00150005
  DC.L  $00150005,$36000018,$00050018,$00053700
  DC.L  $001b0005,$001b0005,$3800001e,$0005001e
  DC.L  $00053900,$00210005,$00210005,$30000024
  DC.L  $00050024,$00052d00,$00270005,$00270005
  DC.L  $3d00002a,$0005002a,$00055c00,$00020005
  DC.L  $00030005,$00000042,$000d0045,$000d2030
  DC.L  $00000007,$00070007,$00075100,$000a0007
  DC.L  $000a0007,$5700000d,$0007000d,$00074500
  DC.L  $00100007,$00100007,$52000013,$00070013
  DC.L  $00075400,$00160007,$00160007,$59000019
  DC.L  $00070019,$00075500,$001c0007,$001c0007
  DC.L  $4900001f,$0007001f,$00074f00,$00220007
  DC.L  $00220007,$50000025,$00070025,$00075b00
  DC.L  $00280007,$00280007,$5d000002,$00050003
  DC.L  $00050000,$0042000b,$0042000b,$31000045
  DC.L  $000b0045,$000b3200,$0048000b,$0048000b
  DC.L  $33000009,$00090009,$00094100,$000c0009
  DC.L  $000c0009,$5300000f,$0009000f,$00094400
  DC.L  $00120009,$00120009,$46000015,$00090015
  DC.L  $00094700,$00180009,$00180009,$4800001b
  DC.L  $0009001b,$00094a00,$001e0009,$001e0009
  DC.L  $4b000021,$00090021,$00094c00,$00240009
  DC.L  $00240009,$3b000027,$00090027,$00092700
  DC.L  $002a0009,$002a0009,$23000002,$00050003
  DC.L  $00050000,$00420009,$00420009,$34000045
  DC.L  $00090045,$00093500,$00480009,$00480009
  DC.L  $36000007,$000b0007,$000b3c00,$000a000b
  DC.L  $000a000b,$5a00000d,$000b000d,$000b5800
  DC.L  $0010000b,$0010000b,$43000013,$000b0013
  DC.L  $000b5600,$0016000b,$0016000b,$42000019
  DC.L  $000b0019,$000b4e00,$001c000b,$001c000b
  DC.L  $4d00001f,$000b001f,$000b2c00,$0022000b
  DC.L  $0022000b,$2e000025,$000b0025,$000b2f00
  DC.L  $00020005,$00030005,$00000048,$000d0048
  DC.L  $000d2e00,$00420007,$00420007,$37000045
  DC.L  $00070045,$00073800,$00480007,$00480007
  DC.L  $3900000a,$000d0022,$000d2020,$20202020
  DC.L  $20202053,$70616365,$0000002d,$0005002d
  DC.L  $00056200,$00020007,$00040007,$54616200
  DC.L  $004b000b,$004b000d,$52657400,$002d0007
  DC.L  $002d0009,$52657400,$00020002,$00020002
  DC.L  $65000033,$00050036,$00054465,$6c000002
  DC.L  $00050003,$00050000,$00020005,$00030005
  DC.L  $00000002,$00050003,$00050000,$004b0007
  DC.L  $004b0007,$2d000002,$00050003,$00050000
  DC.L  $00370009,$00380009,$55410000,$0037000b
  DC.L  $0038000b,$44410000,$003b000b,$003c000b
  DC.L  $52410000,$0033000b,$0034000b,$4c410000
  DC.L  $00060002,$00070002,$46310000,$000a0002
  DC.L  $000b0002,$46320000,$000e0002,$000f0002
  DC.L  $46330000,$00120002,$00130002,$46340000
  DC.L  $00160002,$00170002,$46350000,$001b0002
  DC.L  $001c0002,$46360000,$001f0002,$00200002
  DC.L  $46370000,$00230002,$00240002,$46380000
  DC.L  $00270002,$00280002,$46390000,$002b0002
  DC.L  $002c0002,$46300000,$00420005,$00420005
  DC.L  $5b000045,$00050045,$00055d00,$00480005
  DC.L  $00480005,$2f00004b,$0005004b,$00052a00
  DC.L  $004b0009,$004b0009,$2b000039,$0005003c
  DC.W  $0005

  DC.B  "Help",0
  DS.B  1
  DC.L  $0002000b,$0004000b,$53687400,$0028000b
  DC.L  $002d000b

  DC.B  "Shift",0
  DC.L  $00060009,$00060009,$6f000002,$00090003
  DC.L  $00094374,$00000002,$000d0003,$000d416c
  DC.L  $00000029,$000d002a,$000d416c,$00000006
  DC.L  $000d0007,$000d416d,$00000025,$000d0026
  DC.L  $000d416d
  DS.W  1
LAB_A28828:
  DC.L  $00020012,$00080012

  DC.B  "Install",0
  DC.L  $000d0012,$00130012
  DC.B  $20

  DC.B  "Save",0
  DC.L  $00180012,$001e0012
  DC.B  $20

  DC.B  "Load",0
  DC.L  $00230012,$00290012

  DC.B  " Exit",0
  DC.L  $00010001,$004c000e,$00000001,$0011002a
  DC.L  $00160000
  DS.W  1

LAB_A28878:
  DC.L  $000c0011,$000e0011
  DC.B  "Sht",0

  even
  DC.L  $00100011,$00120011
  DC.B  "Alt",0

  even
  DC.L  $00140011,$00160011
  DC.B  "Ctl",0

  even
  DC.L  $00190011,$00200011
  DC.B  "CapsLock",0

  even
  DC.L  $00220011,$002b0011
  DC.B  "Repeatable",0
  
  even
  DC.L  $000c0013,$00110013
  DC.B  "String",0

  even
  DC.L  $00130013,$00150013
  DC.B  "NOP",0

  even
  DC.L  $00170013,$001c0013
  DC.B  "DownUp",0

  even
  DC.L  $001f0013,$00240013
  DC.B  "  OK",0

  even
  DC.L  $00260013,$002b0013
  DC.B  "Cancel",0
  even
  
  DC.L  $000c0016,$002b0016,$00000001,$0010002c
  DC.L  $00170000,$80020011,$00070011
  DC.B  "Code:",0

  even
  DC.L  $80020016,$00080016
  DC.B  "String:",0

  even
  DC.L  $002e0010,$004c0017,$0000802e,$00100034
  DC.W  $0017

  DC.B  "NoQual:    Sh:    Al:  AlSh:    Ct:  CtSh:  CtAl:CtAlSh:",0
  even
  DC.W 0

ScanningMemText:
  DC.B  "Scanning memory for buffer, please wait."
  DC.W  $0d00

LAB_A289B4:
  JMP PrintWTF

SUB_A289BA:
  MOVEM.L D0/A0,-(A7)
  LEA LAB_A283D0(PC),A0
  TST.L LAB_A4843E
  BNE.S LAB_A289D2
  MOVEQ #$68,D0
  JSR disablePrefsBox
LAB_A289D2:
  MOVEM.L (A7)+,D0/A0
  RTS
CMD_SETMAP:
  JSR SUB_A26F8E(PC)
  BPL.S LAB_A289EA
  LEA MTaskNotActiveText(PC),A0
  JSR PrintText
  BRA.S LAB_A289EE
LAB_A289EA:
  JSR SUB_A27084(PC)
LAB_A289EE:
  TST.B TBufferAllocated
  BNE.S LAB_A28A04
  LEA ScanningMemText(PC),A0
  JSR PrintText
  JSR AllocTBuff(PC)
LAB_A28A04:
  LEA NoMemText2(PC),A1
  CMPI.L  #EXT_7000,DiskMonBufferSize
  BLS.W LAB_A28BDE
  JSR SUB_A29E2E
  BPL.S LAB_A28A2C
  MOVEA.L A1,A0
  JSR PrintText
  JSR WaitKeypress(PC)
  SUBA.L  A1,A1
LAB_A28A2C:
  MOVE.L  A1,LAB_A4843E
  TST.L LAB_A4843E
  BEQ.S LAB_A28A54
  JSR SUB_A299C0
  BPL.S LAB_A28A56
  MOVEA.L A1,A0
  JSR PrintText
  JSR WaitKeypress(PC)
  CLR.W KeyCode
  CLR.L LAB_A4843E
LAB_A28A54:
  SUBA.L  A3,A3
LAB_A28A56:
  MOVE.L  A3,LAB_A480DA
  LEA LAB_A283D0(PC),A0
  JSR setupPrefsViewer
  JSR DrawPrefsPage
  JSR SUB_A289BA(PC)
  CLR.B LAB_A480CA
LAB_A28A76:
  ;install/save/load/exit
  LEA LAB_A28828(PC),A0
  JSR DrawPrefsPage

  JSR SUB_A289BA(PC)

  ;status ok
  LEA LAB_A28C85(PC),A0
  JSR SUB_A283B8(PC)

  LEA LAB_A283D0(PC),A0
  MOVE.W  #$0200,D4
  TST.L LAB_A480DA
  BNE.S LAB_A28AA0
  MOVEQ #$6A,D0
  BRA.S LAB_A28AB0
LAB_A28AA0:
  JSR TrackMouse
  TST.L D0
  BMI.S LAB_A28A76
  TST.W D0
  BPL.S LAB_A28AB0
  NEG.W D0
LAB_A28AB0:
  CMPI.W  #$006b,D0
  BHI.S LAB_A28A76
  LEA LAB_A283D0(PC),A0
  CMPI.W  #$006b,D0
  BEQ.W LAB_A28BAC
  CMPI.W  #$0068,D0
  BNE.S LAB_A28ADC
  TST.L LAB_A4843E
  BEQ.S LAB_A28A76
  JSR SUB_A290B8
  BPL.S LAB_A28A76
  BRA.W LAB_A28BC8
LAB_A28ADC:
  CMPI.W  #$0069,D0
  BNE.S LAB_A28AF4
  CLR.B LAB_A480CA
  JSR SUB_A28EDA
  BPL.S LAB_A28A76
  BRA.W LAB_A28BC8
LAB_A28AF4:
  CMPI.W  #$006a,D0
  BNE.S LAB_A28B18
  CLR.B LAB_A480CA
  JSR SUB_A28D8C
  BPL.W LAB_A28A76
  TST.L LAB_A4843E
  BEQ.W LAB_A28BAC
  BRA.W LAB_A28BC8
LAB_A28B18:
  CMPI.W  #$005f,D0
  BLS.S LAB_A28B82
  CMPI.W  #$0062,D0
  BHI.S LAB_A28B48
  BCHG  #0,LAB_A480CA
  MOVEQ #$62,D0
  JSR highlightPrefsBox
  MOVEQ #$60,D0
  JSR highlightPrefsBox
  MOVEQ #$61,D0
  JSR highlightPrefsBox
  BRA.W LAB_A28A76
LAB_A28B48:
  CMPI.W  #$0063,D0
  BHI.S LAB_A28B60
  BCHG  #2,LAB_A480CA
  JSR highlightPrefsBox
  BRA.W LAB_A28A76
LAB_A28B60:
  CMPI.W  #$0065,D0
  BHI.S LAB_A28B82
  BCHG  #1,LAB_A480CA
  MOVEQ #$65,D0
  JSR highlightPrefsBox
  MOVEQ #$64,D0
  JSR highlightPrefsBox
  BRA.W LAB_A28A76
LAB_A28B82:
  MOVE.W  D0,LAB_A480CC
  JSR highlightPrefsBox
  JSR SUB_A2924E
  BPL.S LAB_A28B9C
  LEA LAB_A28C47(PC),A0
  BRA.S LAB_A28BB4
LAB_A28B9C:
  MOVE.W  LAB_A480CC,D0
  JSR highlightPrefsBox
  BRA.W LAB_A28A76
LAB_A28BAC:
  JSR cleanupPrefsViewer
  BRA.S LAB_A28BE6
LAB_A28BB4:
  MOVE.L  A0,-(A7)
  LEA LAB_A283D0(PC),A0
  MOVE.W  LAB_A480CC,D0
  JSR highlightPrefsBox
  MOVEA.L (A7)+,A0
LAB_A28BC8:
  JSR SUB_A283B8(PC)
  JSR WaitKeypress(PC)
  CLR.W RawKeyCode
  LEA LAB_A283D0(PC),A0
  BRA.W LAB_A28A76
LAB_A28BDE:
  TST.B  LAB_A48393  
  BNE.S .1
  JSR PrintCR
  LEA killProgText(PC),A0
  JSR AskYN
  TST.W D0
  BEQ.S .1
  JSR getKillBuffer
  BRA.W LAB_A28A04
.1
  MOVEA.L A1,A0
  JSR PrintText
LAB_A28BE6:
  RTS

NoMemText2:
  DC.B  "Can't alloc enough memory",$D,0

KickVerText:
  DC.B  "Kickstartversion >1.x !",$D

NoKeymapText:
  DC.B  "Can't find default keymap",$D,0

LAB_A28C35:
  DC.B  $02
  DC.B  $15

KeymapCorruptText:
  DC.B  "keymap corrupt",$D,0

LAB_A28C47:
  DC.B  $02
  DC.B  $15

  DC.B  "String too long - key may be corrupt",0
  DC.W  $0215

  DC.B  "not yet implemented"
  DC.B  $0d
  DS.B  1
LAB_A28C85:
  DC.B  $02
  DC.B  $15

  DC.B  "Status: o.k.                        ",0

LAB_A28CAC:
  DC.B  "Fatal Error - couldnot install keymap",$D,0

LAB_A28CD3:
  DC.B  $02
  DC.B  $15

  DC.B  "Failed - keymap too large"
  DC.W  $0d00

LAB_A28CF0:
  DC.B  "Not enough memory to install!",$D,0

LAB_A28D0F:
  DC.B  "Keymap installed succesfully!",$D,0

LAB_A28D2E:
  DC.W  $0215
  DC.B  "Disk error !",0

LAB_A28D3D:
  DC.B  $02
  DC.B  $15
  DC.B  "Keymap saved successfully"
  DC.W  $0d00

LAB_A28D5A:
  DC.W  $0215
  DC.B  "Unrecognized file structure",0

LAB_A28D78:
  DC.W  $0215
  DC.B  "Filename expected",0

SUB_A28D8C:
  MOVEM.L D1-D5/A1-A2,-(A7)
  SF  forceUpper
  JSR displayFileSelector(PC)
  ST  forceUpper
  TST.W D0
  BNE.S LAB_A28DAE
  LEA LAB_A28D78(PC),A0
  MOVEQ #-1,D0
  BRA.W LAB_A28EB0
LAB_A28DAE:
  MOVE.W  D0,D1
  MOVE.W  #$0100,dmacon+hardware
  LEA EXT_7000.W,A0
  JSR backupMfmBuffer
  MOVEQ #0,D0
  MOVE.W  D1,D0
  LEA stringWorkspace,A1
  JSR OpenFile
  BPL.S LAB_A28DE4
LAB_A28DD4:
  JSR restoreMfmBuffer
LAB_A28DDA:
  LEA LAB_A28D2E(PC),A0
  MOVEQ #-1,D0
  BRA.W LAB_A28EB0
LAB_A28DE4:
  CMPI.L  #$00005000,fileSize
  BLS.S LAB_A28E00
  JSR restoreMfmBuffer
  LEA LAB_A28CD3(PC),A0
  MOVEQ #-1,D0
  BRA.W LAB_A28EB0
LAB_A28E00:
  MOVE.L  fileSize,D0
  LEA EXT_1000,A2
  JSR readFileBytes
  BMI.S LAB_A28DD4
  JSR restoreMfmBuffer
  BMI.S LAB_A28DDA
  LEA EXT_1000,A0
  CMPI.L  #$000003f3,(A0)
  BEQ.S LAB_A28E32
LAB_A28E2A:
  LEA LAB_A28D5A(PC),A0
  MOVEQ #-1,D0
  BRA.S LAB_A28EB0
LAB_A28E32:
  LEA $18(A0),A0
  CMPI.L  #$000003e9,(A0)+
  BNE.S LAB_A28E2A
  MOVE.L  (A0)+,D0
  LSL.W #2,D0
  SUBI.W  #$000f,D0
  CMPI.W  #$3400,D0
  BHI.S LAB_A28E2A
  LEA $E(A0),A0
  LEA EXT_100E,A1
LAB_A28E56:
  MOVE.B  (A0)+,(A1)+
  DBF D0,LAB_A28E56
  MOVE.L  A0,D0
  BTST  #0,D0
  BNE.S LAB_A28E2A
  CMPI.L  #$000003ec,(A0)+
  BNE.S LAB_A28E2A
  LEA EXT_1000,A1
  MOVE.L  (A0)+,D0
  SUBQ.L  #1,D0
  TST.L (A0)+
  BNE.S LAB_A28E2A
LAB_A28E7A:
  MOVE.L  (A0)+,D1
  MOVE.L  A1,D2
  ADD.L D2,0(A1,D1.L)
  DBF D0,LAB_A28E7A
  TST.L (A0)+
  BNE.S LAB_A28E2A
  CMPI.L  #$000003f2,(A0)+
  BNE.S LAB_A28E2A
  LEA EXT_100E,A1
  JSR SUB_A299B8
  BPL.S LAB_A28EA8
  LEA LAB_A28C35(PC),A0
  MOVEQ #-1,D0
  BRA.S LAB_A28EB0
LAB_A28EA8:
  MOVE.L  A3,LAB_A480DA
  MOVEQ #0,D0
LAB_A28EB0:
  MOVEM.L D0-D1/A0,-(A7)
  MOVEQ #0,D0
  MOVE.W  #$00c7,D1
  JSR clearScreenArea
  LEA LAB_A283D0(PC),A0
  JSR DrawPrefsPage
  JSR SUB_A289BA(PC)
  MOVE.W  #$8100,dmacon+hardware
  MOVEM.L (A7)+,D0-D1/A0
  MOVEM.L (A7)+,D1-D5/A1-A2
  TST.L D0
  RTS
  MOVEQ #0,D0
  BRA.S LAB_A28EB0
SUB_A28EDA:
  MOVEM.L D1-D5/A1-A2,-(A7)
  SF  forceUpper
  JSR displayFileSelector(PC)
  ST  forceUpper
  TST.W D0
  BEQ.W LAB_A290B4
  MOVE.W  D0,LAB_A480D6
  MOVE.W  #$0100,dmacon+hardware
  MOVE.L  LAB_A480DA,D0
  SUB.L DiskMonBuffer,D0
  SUBI.L  #$00000080,D0
  ADDI.L  #$0000000e,D0
  MOVEQ #0,D1
  MOVE.W  LAB_A480D6,D1
  ADD.L D1,D0
  ADDQ.L  #1,D0
  ADDQ.L  #3,D0
  ANDI.W  #$fffc,D0
  LSR.L #2,D0
  MOVE.L  D0,LAB_A48442
  LEA EXT_1000,A0
  MOVE.L  #$000003f3,(A0)+
  CLR.L (A0)+
  MOVE.L  #1,(A0)+
  CLR.L (A0)+
  CLR.L (A0)+
  MOVE.L  LAB_A48442,(A0)+
  MOVE.L  #$000003e9,(A0)+
  MOVE.L  LAB_A48442,(A0)+
  CLR.L (A0)+
  CLR.L (A0)+
  CLR.W (A0)+
  MOVE.L  LAB_A480DA,D0
  SUB.L DiskMonBuffer,D0
  SUBI.L  #$00000080,D0
  MOVE.W  D0,D1
  ADDI.L  #$0000000e,D0
  MOVE.L  D0,(A0)+
  MOVEA.L DiskMonBuffer,A1
  LEA $80(A1),A1
  SUBQ.W  #1,D1
  MOVE.L  A0,LAB_A48446
  MOVE.L  A1,LAB_A4844A
LAB_A28F98:
  MOVE.B  (A1)+,(A0)+
  DBF D1,LAB_A28F98
  MOVE.W  LAB_A480D6,D0
  SUBQ.W  #1,D0
  LEA stringWorkspace,A1
LAB_A28FAC:
  MOVE.B  (A1)+,(A0)+
  DBF D0,LAB_A28FAC
  CLR.B (A0)+
  MOVE.L  A0,D0
  ADDQ.L  #3,D0
  ANDI.W  #$fffc,D0
  MOVEA.L D0,A0
  MOVE.L  #$000003ec,(A0)+
  MOVEA.L A0,A2
  LEA 4(A0),A0
  CLR.L (A0)+
  MOVEQ #1,D3
  MOVE.L  #$0000000a,(A0)+
  MOVEQ #$E,D0
  MOVEA.L LAB_A48446,A1
  MOVEQ #$E,D1
  SUB.L LAB_A4844A,D1
  LEA -14(A1),A1
  MOVEQ #7,D2
LAB_A28FEA:
  ADD.L D1,0(A1,D0.W)
  MOVE.L  D0,(A0)+
  ADDQ.W  #1,D3
  ADDQ.W  #4,D0
  DBF D2,LAB_A28FEA
  MOVE.W  #$00b6,D0
  MOVE.W  #$004e,D4
  MOVEQ #0,D2
LAB_A29002:
  BTST  #6,0(A1,D4.W)
  BEQ.S LAB_A29012
  ADD.L D1,0(A1,D0.W)
  MOVE.L  D0,(A0)+
  ADDQ.W  #1,D3
LAB_A29012:
  ADDQ.W  #4,D0
  ADDQ.W  #1,D4
  ADDQ.W  #1,D2
  CMPI.W  #$0067,D2
  BLS.S LAB_A29002
  MOVE.L  D3,(A2)
  CLR.L (A0)+
  MOVE.L  #$000003f2,(A0)+
  MOVE.L  A0,D0
  SUBI.L  #$00001000,D0
  MOVE.W  D0,LAB_A48442
  LEA EXT_7000.W,A0
  JSR backupMfmBuffer
  LEA stringWorkspace,A1
  MOVEQ #0,D0
  MOVE.W  LAB_A480D6,D0
  JSR SaveFileInit
  BPL.S LAB_A29062
LAB_A29056:
  JSR restoreMfmBuffer
  LEA LAB_A28D2E(PC),A0
  BRA.S LAB_A2908C
LAB_A29062:
  LEA EXT_1000,A2
  MOVEQ #0,D0
  MOVE.W  LAB_A48442,D0
  JSR writeFileBytes
  JSR HandleDiskFull
  BMI.S LAB_A29056
  JSR AddFileToDirBlock
  BMI.S LAB_A29056
  JSR restoreMfmBuffer
  BMI.S LAB_A29056
  LEA LAB_A28D3D(PC),A0
LAB_A2908C:
  MOVEQ #-1,D0
LAB_A2908E:
  MOVEM.L D0-D1/A0,-(A7)
  MOVEQ #0,D0
  MOVE.W  #$00c7,D1
  JSR clearScreenArea
  LEA LAB_A283D0(PC),A0
  JSR DrawPrefsPage
  JSR SUB_A289BA(PC)
  MOVE.W  #$8100,dmacon+hardware
  MOVEM.L (A7)+,D0-D1/A0
  MOVEM.L (A7)+,D1-D5/A1-A2
  TST.L D0
  RTS
LAB_A290B4:
  MOVEQ #0,D0
  BRA.S LAB_A2908E
SUB_A290B8:
  LEA EXT_1000,A0
  MOVE.L  LAB_A480DA,D0
  SUB.L DiskMonBuffer,D0
  SUBI.L  #$00000080,D0
  CMPI.W  #$4000,D0
  BLS.S LAB_A29104
  LEA LAB_A28CD3(PC),A0
  MOVEQ #-1,D0
  RTS
LAB_A290DE:
  MOVE.L  A0,-(A7)
  JSR SUB_A27084(PC)
  MOVEA.L (A7)+,A0
LAB_A290E6:
  MOVE.W  #$8100,dmacon+hardware
  MOVE.L  A0,-(A7)
  JSR cleanupPrefsViewer
  MOVEA.L (A7)+,A0
  JSR PrintText
  LEA 4(A7),A7
  RTS
LAB_A29104:
  MOVE.W  #$0100,dmacon+hardware
  MOVE.W  D0,LAB_A48442
  SUBQ.W  #1,D0
  MOVEA.L DiskMonBuffer,A1
  LEA $80(A1),A1
  MOVE.L  A1,LAB_A4844A
LAB_A29124:
  MOVE.B  (A1)+,(A0)+
  DBF D0,LAB_A29124
  JSR TBuffRestoreQuiet
  JSR SUB_A26F8E(PC)
  BPL.S LAB_A2913C
  LEA LAB_A28CAC(PC),A0
  BRA.S LAB_A290E6
LAB_A2913C:
  MOVEA.L EXT_4,A6
  MOVEQ #0,D0
  MOVE.W  LAB_A48442,D0
  MOVE.L  #$00010001,D1
  MOVEA.L EXT_4,A6
  PEA -198(A6)
  JSR SUB_A253D0(PC)
  LEA LAB_A28CF0(PC),A0
  MOVE.L  D0,LAB_A48446
  BEQ.W LAB_A290DE
  JSR SUB_A27084(PC)
  MOVE.W  #$0100,dmacon+hardware
  MOVE.W  LAB_A48442,D1
  MOVEA.L LAB_A48446,A0
  LEA EXT_1000,A1
  SUBQ.W  #1,D1
LAB_A2918C:
  MOVE.B  (A1)+,D0
  JSR memSafeUpdateByte
  LEA 1(A0),A0
  DBF D1,LAB_A2918C
  JSR SUB_A291D4
  MOVEA.L LAB_A4843E,A1
  MOVEA.L LAB_A48446,A2
  MOVEQ #7,D1
LAB_A291B0:
  MOVEA.L A2,A0
  JSR memSafeReadLong
  MOVEA.L A1,A0
  JSR memSafeWriteLong
  LEA 4(A1),A1
  LEA 4(A2),A2
  DBF D1,LAB_A291B0
  LEA LAB_A28D0F(PC),A0
  BRA.W LAB_A290E6
SUB_A291D4:
  MOVEM.L D0-D2/A0-A2,-(A7)
  MOVEA.L LAB_A48446,A0
  MOVE.L  A0,D1
  SUB.L LAB_A4844A,D1
  MOVEQ #7,D2
LAB_A291E8:
  JSR memSafeReadLong
  ADD.L D1,D0
  JSR memSafeWriteLong
  LEA 4(A0),A0
  DBF D2,LAB_A291E8
  MOVEA.L LAB_A48446,A0
  JSR memSafeReadLong
  MOVEA.L D0,A1
  LEA 4(A0),A0
  JSR memSafeReadLong
  MOVEA.L D0,A2
  MOVEQ #0,D2
LAB_A2921A:
  MOVEA.L A1,A0
  JSR memSafeReadByte
  BTST  #6,D0
  BEQ.S LAB_A29238
  MOVEA.L A2,A0
  JSR memSafeReadLong
  ADD.L D1,D0
  JSR memSafeWriteLong
LAB_A29238:
  LEA 1(A1),A1
  LEA 4(A2),A2
  ADDQ.W  #1,D2
  CMPI.W  #$0067,D2
  BLS.S LAB_A2921A
  MOVEM.L (A7)+,D0-D2/A0-A2
  RTS
SUB_A2924E:
  MOVEM.L D1-D7/A0-A5,-(A7)
  MOVEQ #$007c,D0
  MOVE.W  #$00c7,D1
  JSR clearScreenArea
  ;key edit
  LEA LAB_A28878(PC),A0
  JSR DrawPrefsPage
  MOVEA.L DiskMonBuffer,A2
  LEA $80(A2),A2
  MOVE.W  LAB_A480CC,D1
  SWAP  D1
  JSR SUB_A29DB2
  MOVEA.L 0(A2,D7.W),A1
  MOVE.B  0(A1,D1.W),LAB_A480CE
  MOVEA.L 4(A2,D7.W),A1
  LEA 0(A1,D6.W),A1
  MOVE.L  A1,LAB_A480D2
  MOVEA.L 8(A2,D7.W),A1
  MOVE.W  D1,D2
  MOVE.W  D2,D3
  LSR.W #3,D2
  ANDI.W  #7,D3
  BTST  D3,0(A1,D2.W)
  SNE LAB_A480D7
  MOVEA.L $C(A2,D7.W),A1
  BTST  D3,0(A1,D2.W)
  SNE LAB_A480D6
  JSR SUB_A29686
  JSR SUB_A296F0
  MOVEQ #0,D0
  MOVE.B  LAB_A480CA,D0
  LEA LAB_A45352,A1
  CLR.W cursorX
  JSR SUB_A2994A
  BPL.S LAB_A292DE
  MOVEQ #0,D0
LAB_A292DE:
  LEA LAB_A45452,A0
  CLR.B 0(A0,D0.W)
  TST.W D0
  BEQ.S LAB_A292F2
  JSR SUB_A29896
LAB_A292F2:
  LEA LAB_A45452,A1
  MOVE.B  LAB_A480CE,LAB_A480CF
LAB_A29302:
  MOVEQ #$7F,D3
  MOVEQ #$20,D6
  MOVE.L  #$000c0016,D7
  JSR SUB_A26C64(PC)
LAB_A29310:
  LEA LAB_A28878(PC),A0
  MOVE.W  #$0200,D4
  JSR TrackMouse
  TST.L D0
  BMI.S LAB_A29310
  TST.W D0
  BPL.S LAB_A29338
  NEG.W D0
  CMPI.W  #$0044,D0
  BEQ.W LAB_A293AA
  CMPI.W  #$0045,D0
  BEQ.S LAB_A293A0
  BRA.S LAB_A29310
LAB_A29338:
  CMPI.W  #2,D0
  BHI.S LAB_A2934C
  BCHG  D0,LAB_A480CF
LAB_A29344:
  JSR highlightPrefsBox
  BRA.S LAB_A29310
LAB_A2934C:
  CMPI.W  #3,D0
  BNE.S LAB_A2935A
  NOT.B LAB_A480D7
  BRA.S LAB_A29344
LAB_A2935A:
  CMPI.W  #4,D0
  BNE.S LAB_A29368
  NOT.B LAB_A480D6
  BRA.S LAB_A29344
LAB_A29368:
  CMPI.W  #5,D0
  BNE.S LAB_A29370
  BRA.S LAB_A29310
LAB_A29370:
  CMPI.W  #6,D0
  BNE.S LAB_A29380
  BCHG  #7,LAB_A480CF
  BRA.S LAB_A29344
LAB_A29380:
  CMPI.W  #7,D0
  BNE.S LAB_A29388
  BRA.S LAB_A29310
LAB_A29388:
  CMPI.W  #8,D0
  BEQ.S LAB_A293AA
  CMPI.W  #9,D0
  BEQ.S LAB_A293A0
  CMPI.W  #$000a,D0
  BHI.W LAB_A29310
  BRA.W LAB_A29302
LAB_A293A0:
  MOVEQ #0,D0
LAB_A293A2:
  MOVE.L  D0,-(A7)
  MOVE.W	#$007c,D0
  MOVE.W	#$00c7,D1
  JSR	clearScreenArea
  MOVE.L  (A7)+,D0
  BRA.W LAB_A29608
LAB_A293AA:
  LEA LAB_A45452,A1
  JSR SUB_A29610
  MOVE.W  D0,LAB_A480D0
  MOVEQ #0,D1
  BTST  #6,LAB_A480CE
  BEQ.W LAB_A29454
  MOVEA.L LAB_A480D2,A1
  MOVEA.L (A1),A1
  MOVEA.L A1,A2
  MOVEA.L A1,A3
  MOVEQ #0,D0
  MOVEQ #0,D1
  MOVEQ #0,D2
  MOVE.B  1(A1),D1
  LSR.W #1,D1
  SUBQ.W  #1,D1
LAB_A293E4:
  MOVE.B  (A1),D2
  ADD.W D2,D0
  LEA 2(A1),A1
  DBF D1,LAB_A293E4
  LEA 0(A1,D0.W),A1
  EXG D0,A1
  ADDQ.L  #1,D0
  ANDI.W  #$fffe,D0
  EXG D0,A1
LAB_A293FE:
  CMPA.L  LAB_A480DA,A1
  BEQ.S LAB_A2940A
  MOVE.B  (A1)+,(A2)+
  BRA.S LAB_A293FE
LAB_A2940A:
  MOVE.L  A2,LAB_A480DA
  MOVE.L  A1,D0
  SUB.L A2,D0
  MOVEA.L DiskMonBuffer,A2
  LEA $80(A2),A2
  MOVEQ #0,D1
  SWAP  D1
  JSR SUB_A29DB2
  MOVEA.L 0(A2,D7.W),A1
  LEA 0(A1,D1.W),A1
  MOVEA.L 4(A2,D7.W),A2
  LEA 0(A2,D6.W),A2
  MOVEQ #-1,D1
LAB_A2943A:
  ADDQ.W  #1,D1
  CMPI.W  #$0067,D1
  BHI.S LAB_A29454
  BTST  #6,(A1)+
  BEQ.S LAB_A2944E
  CMPA.L  (A2),A3
  BGE.S LAB_A2944E
  SUB.L D0,(A2)
LAB_A2944E:
  LEA 4(A2),A2
  BRA.S LAB_A2943A
LAB_A29454:
  MOVEA.L DiskMonBuffer,A2
  LEA $80(A2),A2
  MOVE.W  LAB_A480CC,D1
  SWAP  D1
  JSR SUB_A29DB2
  MOVEM.L D2-D3,-(A7)
  MOVE.W  D1,D2
  MOVE.W  D1,D3
  LSR.W #3,D2
  ANDI.W  #7,D3
  MOVEA.L 8(A2,D7.W),A5
  BCLR  D3,0(A5,D2.W)
  TST.B LAB_A480D7
  BEQ.S LAB_A2948E
  BSET  D3,0(A5,D2.W)
LAB_A2948E:
  MOVEA.L $C(A2,D7.W),A5
  BCLR  D3,0(A5,D2.W)
  TST.B LAB_A480D6
  BEQ.S LAB_A294A2
  BSET  D3,0(A5,D2.W)
LAB_A294A2:
  MOVEM.L (A7)+,D2-D3
  MOVEA.L 0(A2,D7.W),A1
  LEA 0(A1,D1.W),A1
  MOVEA.L 4(A2,D7.W),A2
  LEA 0(A2,D6.W),A2
  MOVE.L  LAB_A480DA,(A2)
  BSET  #6,LAB_A480CF
  MOVE.B  LAB_A480CF,D0
  OR.B  LAB_A480CA,D0
  MOVE.B  D0,(A1)
  MOVE.W  D0,D5
  ANDI.W  #7,D5
  MOVEQ #0,D3
  MOVE.B  LAB_A480CE,D3
  MOVE.L  D3,D4
  ANDI.W  #7,D3
  ANDI.W  #$0040,D4
  MOVEQ #0,D2
  LEA LAB_A45352,A3
  MOVEA.L LAB_A480DA,A4
  MOVEA.L A4,A0
  MOVEQ #1,D6
  BTST  #0,D5
  BEQ.S LAB_A29504
  LSL.W #1,D6
LAB_A29504:
  BTST  #1,D5
  BEQ.S LAB_A2950C
  LSL.W #1,D6
LAB_A2950C:
  BTST  #2,D5
  BEQ.S LAB_A29514
  LSL.W #1,D6
LAB_A29514:
  LSL.W #1,D6
  SF  LAB_A480CB
LAB_A2951C:
  MOVE.W  D2,D1
  AND.W D5,D1
  CMP.W D1,D2
  BNE.S LAB_A2953C
  CMP.B LAB_A480CA,D2
  BEQ.W LAB_A295CA
  JSR SUB_A29CD8
  TST.W D0
  BPL.S LAB_A29566
  CLR.B (A0)+
  MOVE.B  D6,(A0)+
LAB_A2953C:
  ADDQ.W  #1,D2
  CMPI.W  #7,D2
  BLS.S LAB_A2951C
  MOVE.L  A4,D0
  ADD.L D6,D0
  EXG D0,D0
  ADDQ.L  #1,D0
  ANDI.W  #$fffe,D0
  EXG D0,D0
  MOVE.L  D0,LAB_A480DA
  TST.B LAB_A480CB
  BNE.W LAB_A29602
  BRA.W LAB_A293A0
LAB_A29566:
  BTST  #6,D4
  BEQ.S LAB_A2959C
  MOVEA.L (A3),A5
  MOVE.W  D0,D7
  MOVEQ #0,D0
  MOVEQ #0,D1
  MOVE.B  0(A5,D7.W),D0
  BEQ.S LAB_A29580
  CMPI.W  #$007f,D6
  BHI.S LAB_A295F6
LAB_A29580:
  MOVE.B  1(A5,D7.W),D1
  MOVE.B  D0,(A0)+
  MOVE.B  D6,(A0)+
  LEA 0(A5,D1.W),A5
  SUBQ.W  #1,D0
  BMI.S LAB_A2953C
LAB_A29590:
  MOVE.B  (A5)+,0(A4,D6.W)
  ADDQ.W  #1,D6
  DBF D0,LAB_A29590
  BRA.S LAB_A2953C
LAB_A2959C:
  CMPI.W  #$007f,D6
  BHI.S LAB_A295F6
  MOVE.B  #1,(A0)+
  MOVE.B  D6,(A0)+
  MOVE.B  0(A3,D0.W),D7
  CMPI.B  #7,D3
  BNE.S LAB_A295C0
  BTST  #2,D2
  BEQ.S LAB_A295C0
  BCLR  #5,D7
  BCLR  #6,D7
LAB_A295C0:
  MOVE.B  D7,0(A4,D6.W)
  ADDQ.W  #1,D6
  BRA.W LAB_A2953C
LAB_A295CA:
  MOVE.W  LAB_A480D0,D0
  BEQ.S LAB_A295D8
  CMPI.W  #$007f,D6
  BHI.S LAB_A295F6
LAB_A295D8:
  MOVE.B  D0,(A0)+
  MOVE.B  D6,(A0)+
  LEA LAB_A45452,A5
  SUBQ.W  #1,D0
  BMI.W LAB_A2953C
LAB_A295E8:
  MOVE.B  (A5)+,0(A4,D6.W)
  ADDQ.W  #1,D6
  DBF D0,LAB_A295E8
  BRA.W LAB_A2953C
LAB_A295F6:
  CLR.W (A0)+
  ST  LAB_A480CB
  BRA.W LAB_A2953C
LAB_A29602:
  MOVEQ #-1,D0
  BRA.W LAB_A293A2
LAB_A29608:
  TST.L D0
  MOVEM.L (A7)+,D1-D7/A0-A5
  RTS
SUB_A29610:
  MOVEM.L D1-D2/A0-A2,-(A7)
  MOVEQ #0,D1
  MOVEA.L A1,A0
LAB_A29618:
  TST.B (A1)
  BEQ.S LAB_A2967E
  CMPI.B  #$3c,(A1)
  BNE.S LAB_A29666
  MOVE.B  1(A1),D0
  JSR UpperCaseChar
  CMPI.B  #$52,D0
  BEQ.S LAB_A2966C
  CMPI.B  #$24,D0
  BNE.S LAB_A29666
  ADDQ.W  #2,A1
  MOVEQ #0,D2
LAB_A2963C:
  MOVE.B  (A1),D0
  BEQ.S LAB_A2965A
  ADDQ.L  #1,A1
  JSR UpperCaseChar
  JSR AsciiCharToHexDigit
  OR.B  D0,D2
  CMPI.B  #$3e,(A1)
  BEQ.S LAB_A2965A
  LSL.B #4,D2
  BRA.S LAB_A2963C
LAB_A2965A:
  MOVE.B  D2,(A0)+
  ADDQ.W  #1,D1
  TST.B (A1)
  BEQ.S LAB_A2967E
  ADDQ.L  #1,A1
  BRA.S LAB_A29618
LAB_A29666:
  MOVE.B  (A1)+,(A0)+
  ADDQ.W  #1,D1
  BRA.S LAB_A29618
LAB_A2966C:
  CMPI.B  #$3e,2(A1)
  BNE.S LAB_A29666
  ADDQ.L  #3,A1
  MOVE.B  #$0d,(A0)+
  ADDQ.W  #1,D1
  BRA.S LAB_A29618
LAB_A2967E:
  MOVE.L  D1,D0
  MOVEM.L (A7)+,D1-D2/A0-A2
  RTS
SUB_A29686:
  MOVEM.L D0-D3/A0-A3,-(A7)
  MOVE.B  LAB_A480CE,D1
  BTST  #7,D1
  BEQ.S LAB_A296A2
  CLR.L LAB_A45352
LAB_A2969C:
  MOVEM.L (A7)+,D0-D3/A0-A3
  RTS
LAB_A296A2:
  BTST  #6,D1
  BNE.S LAB_A296B6
  MOVEA.L LAB_A480D2,A0
  MOVE.L  (A0),LAB_A45352
  BRA.S LAB_A2969C
LAB_A296B6:
  MOVEA.L LAB_A480D2,A0
  MOVEA.L (A0),A1
  MOVEQ #0,D0
  MOVE.B  1(A1),D0
  LSR.W #1,D0
  SUBQ.W  #1,D0
  MOVEQ #0,D1
  MOVEQ #0,D2
  LEA hashTable,A3
LAB_A296D2:
  MOVE.B  (A1),D2
  ADD.W D2,D1
  MOVE.W  (A1)+,(A3)+
  DBF D0,LAB_A296D2
  SUBQ.W  #1,D1
LAB_A296DE:
  MOVE.B  (A1)+,(A3)+
  DBF D1,LAB_A296DE
  MOVE.L  #hashTable,LAB_A45352
  BRA.S LAB_A2969C
SUB_A296F0:
  MOVEM.L D0-D5/A0-A1,-(A7)
  MOVE.L  #$00080011,cursorX
  MOVE.W  LAB_A480CC,D0
  JSR Print2DigitHex
  LEA LAB_A28878(PC),A0
  MOVEQ #0,D0
  BTST  #0,LAB_A480CE
  BEQ.S LAB_A29720
  JSR highlightPrefsBox
LAB_A29720:
  MOVEQ #1,D0
  BTST  #1,LAB_A480CE
  BEQ.S LAB_A29732
  JSR highlightPrefsBox
LAB_A29732:
  MOVEQ #2,D0
  BTST  #2,LAB_A480CE
  BEQ.S LAB_A29744
  JSR highlightPrefsBox
LAB_A29744:
  MOVEQ #3,D0
  BTST  #0,LAB_A480D7
  BEQ.S LAB_A29756
  JSR highlightPrefsBox
LAB_A29756:
  MOVEQ #4,D0
  BTST  #0,LAB_A480D6
  BEQ.S LAB_A29768
  JSR highlightPrefsBox
LAB_A29768:
  MOVEQ #5,D0
  BTST  #6,LAB_A480CE
  BEQ.S LAB_A2977A
  JSR highlightPrefsBox
LAB_A2977A:
  MOVEQ #6,D0
  BTST  #7,LAB_A480CE
  BEQ.S LAB_A2978C
  JSR highlightPrefsBox
LAB_A2978C:
  MOVEQ #7,D0
  BTST  #3,LAB_A480CE
  BEQ.S LAB_A2979E
  JSR highlightPrefsBox
LAB_A2979E:
  MOVEQ #0,D2
  MOVEQ #0,D3
  MOVE.B  LAB_A480CE,D3
  MOVE.L  D3,D4
  BTST  #7,D4
  BEQ.S LAB_A297EE
  MOVEQ #7,D1
  MOVE.L  #$00360010,cursorX
LAB_A297BC:
  MOVEQ #$16,D0
  JSR PrintSpaces
  MOVE.W  #$0036,cursorX
  LEA NotUsedText(PC),A0
  JSR PrintText
  MOVE.W  #$0036,cursorX
  ADDQ.W  #1,cursorY
  DBF D1,LAB_A297BC
  MOVEM.L (A7)+,D0-D5/A0-A1
  RTS
LAB_A297EE:
  ANDI.W  #7,D3
  ANDI.W  #$0040,D4
  MOVE.L  #$00360010,cursorX
  MOVEQ #7,D5
LAB_A29802:
  MOVEQ #$16,D0
  JSR PrintSpaces
  MOVE.W  #$0036,cursorX
  LEA LAB_A45352,A1
  MOVE.L  D2,D0
  JSR SUB_A2994A
  BPL.S LAB_A29846
  LEA NotUsedText(PC),A0
  JSR PrintText
LAB_A2982C:
  MOVE.W  #$0036,cursorX
  ADDQ.W  #1,cursorY
  ADDQ.W  #1,D2
  DBF D5,LAB_A29802
  MOVEM.L (A7)+,D0-D5/A0-A1
  RTS
LAB_A29846:
  TST.W D0
  BEQ.S LAB_A2982C
  JSR SUB_A29896
  MOVEA.L A1,A0
  CLR.B $16(A0)
  JSR PrintText
  BRA.S LAB_A2982C

NotUsedText:
  DC.B  "<not used>",0,0

SUB_A2986A:
  MOVE.W  D0,-(A7)
  LSR.B #4,D0
  JSR SUB_A29884
  MOVE.W  (A7),D0
  ANDI.W  #$000f,D0
  JSR SUB_A29884
  MOVE.W  (A7)+,D0
  RTS
SUB_A29884:
  ADDI.B  #$30,D0
  CMPI.B  #$39,D0
  BLS.S LAB_A29892
  ADDI.B  #$27,D0
LAB_A29892:
  MOVE.B  D0,(A0)+
  RTS
SUB_A29896:
  MOVEM.L D0-D2/A0,-(A7)
  MOVE.W  D0,D1
  SUBQ.W  #1,D1
  LEA LAB_A45452,A0
LAB_A298A4:
  MOVEQ #0,D0
  MOVE.B  (A1)+,D0
  CMPI.B  #$0d,D0
  BEQ.W LAB_A29938
  CMPI.B  #$0a,D0
  BEQ.W LAB_A29938
  CMPI.B  #$1f,D0
  BLS.S LAB_A29914
  MOVE.W  #$0080,D2
  CMPI.B  #$c4,D0
  BEQ.S LAB_A29924
  MOVE.W  #$0081,D2
  CMPI.B  #$e4,D0
  BEQ.S LAB_A29924
  MOVE.W  #$0082,D2
  CMPI.B  #$d6,D0
  BEQ.S LAB_A29924
  MOVE.W  #$0083,D2
  CMPI.B  #$f6,D0
  BEQ.S LAB_A29924
  MOVE.W  #$0084,D2
  CMPI.B  #$dc,D0
  BEQ.S LAB_A29924
  MOVE.W  #$0085,D2
  CMPI.B  #$fc,D0
  BEQ.S LAB_A29924
  MOVE.W  #$0086,D2
  CMPI.B  #$df,D0
  BEQ.S LAB_A29924
  MOVE.W  #$0087,D2
  CMPI.B  #$a7,D0
  BEQ.S LAB_A29924
  CMPI.B  #$7f,D0
  BLS.S LAB_A29924
LAB_A29914:
  MOVE.B  #$3c,(A0)+
  MOVE.B  #$24,(A0)+
  JSR SUB_A2986A(PC)
  MOVE.B  #$3e,D0
LAB_A29924:
  MOVE.B  D0,(A0)+
LAB_A29926:
  DBF D1,LAB_A298A4
  CLR.B (A0)+
  LEA LAB_A45452,A1
  MOVEM.L (A7)+,D0-D2/A0
  RTS
LAB_A29938:
  MOVE.B  #$3c,(A0)+
  MOVE.B  #$72,(A0)+
  MOVE.B  #$3e,(A0)+
  BRA.S LAB_A29926
  MOVE.W  D2,D0
  BRA.S LAB_A29924
SUB_A2994A:
  MOVEM.L D1-D3,-(A7)
  MOVEQ #0,D2
  MOVE.B  D0,D2
  MOVEQ #0,D3
  MOVE.B  LAB_A480CE,D3
  MOVE.L  D3,D4
  ANDI.W  #7,D3
  ANDI.W  #$0040,D4
  JSR SUB_A29CD8
  BPL.S LAB_A29972
  MOVEM.L (A7)+,D1-D3
  RTS
LAB_A29972:
  BTST  #6,D4
  BNE.S LAB_A2999E
  MOVE.B  0(A1,D0.W),LAB_A45452
  LEA LAB_A45452,A1
  CMPI.W  #7,D3
  BNE.S LAB_A29996
  BTST  #2,D2
  BEQ.S LAB_A29996
  ANDI.B  #$9f,(A1)
LAB_A29996:
  MOVEQ #1,D0
  MOVEM.L (A7)+,D1-D3
  RTS
LAB_A2999E:
  MOVEQ #0,D1
  MOVEQ #0,D2
  MOVEA.L (A1),A1
  MOVE.B  0(A1,D0.W),D1
  MOVE.B  1(A1,D0.W),D2
  LEA 0(A1,D2.W),A1
  MOVE.L  D1,D0
  MOVEM.L (A7)+,D1-D3
  RTS
SUB_A299B8:
  ST  LAB_A47FB6
  BRA.S LAB_A299C6
SUB_A299C0:
  SF  LAB_A47FB6
LAB_A299C6:
  MOVEM.L D1/A0-A2/A4,-(A7)
  MOVEA.L DiskMonBuffer,A2
  LEA $80(A2),A2
  LEA $20(A2),A3
  MOVE.L  A3,8(A2)
  LEA 8(A1),A0
  MOVEQ #7,D1
  JSR SUB_A29A5C
  BNE.S LAB_A29A50
  MOVE.L  A3,$C(A2)
  LEA $C(A1),A0
  MOVEQ #7,D1
  JSR SUB_A29A5C
  BNE.S LAB_A29A50
  MOVE.L  A3,$18(A2)
  LEA $18(A1),A0
  MOVEQ #7,D1
  JSR SUB_A29A5C
  BNE.S LAB_A29A50
  MOVE.L  A3,$1C(A2)
  LEA $1C(A1),A0
  MOVEQ #7,D1
  JSR SUB_A29A5C
  BNE.S LAB_A29A50
  MOVE.L  A3,(A2)
  LEA (A1),A0
  LEA $40(A3),A3
  MOVE.L  A3,$10(A2)
  LEA $28(A3),A3
  MOVE.L  A3,4(A2)
  LEA $100(A3),A3
  MOVE.L  A3,$14(A2)
  LEA $A0(A3),A3
  JSR SUB_A29A7A
  BMI.S LAB_A29A50
  MOVEM.L (A7)+,D1/A0-A2/A4
  MOVEQ #0,D0
  RTS
LAB_A29A50:
  MOVEM.L (A7)+,D1/A0-A2/A4
  LEA KeymapCorruptText(PC),A1
  MOVEQ #-1,D0
  RTS
SUB_A29A5C:
  JSR SUB_A29DD6
  BNE.S LAB_A29A78
  MOVEA.L D0,A0
LAB_A29A66:
  JSR SUB_A29E06
  BNE.S LAB_A29A78
  MOVE.B  D0,(A3)+
  ADDQ.W  #1,A0
  DBF D1,LAB_A29A66
  MOVEQ #0,D0
LAB_A29A78:
  RTS
SUB_A29A7A:
  MOVEQ #0,D1
LAB_A29A7C:
  SWAP  D1
  JSR SUB_A29DB2
  LEA 0(A1,D7.W),A0
  JSR SUB_A29DD6
  BNE.S LAB_A29ABC
  MOVEA.L D0,A0
  MOVE.B  0(A0,D1.W),D0
  ANDI.W  #$00e0,D0
  BEQ.S LAB_A29AC0
  MOVE.B  D0,D2
  ANDI.W  #$0020,D2
  CMP.W D0,D2
  BEQ.W LAB_A29BDA
  MOVE.B  D0,D2
  ANDI.W  #$0040,D2
  CMP.W D0,D2
  BEQ.S LAB_A29B08
  MOVE.B  D0,D2
  ANDI.W  #$00c0,D2
  CMP.W D0,D2
  BEQ.S LAB_A29AF4
LAB_A29ABC:
  MOVEQ #-1,D0
  RTS
LAB_A29AC0:
  MOVE.B  0(A0,D1.W),D0
  MOVEA.L 0(A2,D7.W),A0
  MOVE.B  D0,0(A0,D1.W)
  LEA 4(A1,D7.W),A0
  JSR SUB_A29DD6
  BNE.S LAB_A29ABC
  MOVEA.L D0,A0
  MOVE.L  0(A0,D6.W),D0
  MOVEA.L 4(A2,D7.W),A0
  MOVE.L  D0,0(A0,D6.W)
LAB_A29AE6:
  SWAP  D1
  ADDQ.W  #1,D1
  CMPI.W  #$0067,D1
  BLS.S LAB_A29A7C
  MOVEQ #0,D0
  RTS
LAB_A29AF4:
  MOVEA.L 0(A2,D7.W),A0
  MOVE.B  #$80,0(A0,D1.W)
  MOVEA.L 4(A2,D7.W),A0
  CLR.L 0(A0,D6.W)
  BRA.S LAB_A29AE6
LAB_A29B08:
  MOVEQ #0,D2
  MOVEQ #0,D3
  MOVE.B  0(A0,D1.W),D3
  MOVEA.L 0(A2,D7.W),A0
  MOVE.B  D3,0(A0,D1.W)
  MOVEA.L 4(A2,D7.W),A0
  MOVE.L  A3,0(A0,D6.W)
  ANDI.W  #7,D3
  MOVEQ #$40,D4
  MOVEQ #2,D5
  BTST  #0,D3
  BEQ.S LAB_A29B30
  LSL.W #1,D5
LAB_A29B30:
  BTST  #2,D3
  BEQ.S LAB_A29B38
  LSL.W #1,D5
LAB_A29B38:
  BTST  #1,D3
  BEQ.S LAB_A29B40
  LSL.W #1,D5
LAB_A29B40:
  LEA 0(A3,D5.W),A4
  LEA 4(A1,D7.W),A0
  JSR SUB_A29DD6
  BNE.W LAB_A29ABC
  MOVEA.L D0,A0
  LEA 0(A0,D6.W),A0
  JSR SUB_A29DD6
  BNE.W LAB_A29ABC
  MOVEA.L D0,A5
LAB_A29B64:
  JSR SUB_A29CD8
  MOVEA.L A5,A0
  LEA 0(A0,D0.W),A0
  JSR SUB_A29E06
  BNE.W LAB_A29ABC
  MOVE.B  D0,(A3)+
  MOVEQ #0,D6
  MOVE.B  D0,D6
  ADDQ.W  #1,A0
  JSR SUB_A29E06
  BNE.W LAB_A29ABC
  MOVE.B  D5,(A3)+
  MOVEA.L A5,A0
  EXT.W D0
  LEA 0(A0,D0.W),A0
  ADD.W D6,D5
  SUBQ.W  #1,D6
  BMI.S LAB_A29BAE
LAB_A29B9C:
  JSR SUB_A29E06
  BNE.W LAB_A29ABC
  MOVE.B  D0,(A4)+
  ADDQ.W  #1,A0
  DBF D6,LAB_A29B9C
LAB_A29BAE:
  ADDQ.W  #1,D2
  CMPI.W  #7,D2
  BHI.S LAB_A29BC4
  MOVE.W  D3,-(A7)
  AND.W D2,D3
  CMP.W D2,D3
  MOVEM.W (A7)+,D3
  BEQ.S LAB_A29B64
  BRA.S LAB_A29BAE
LAB_A29BC4:
  MOVEA.L A4,A3
  EXG D0,A3
  ADDQ.L  #1,D0
  ANDI.W  #$fffe,D0
  EXG D0,A3
  BRA.W LAB_A29AE6
  CLR.B (A3)+
  MOVE.B  D5,(A3)+
  BRA.S LAB_A29BAE
LAB_A29BDA:
  MOVEQ #0,D2
  MOVEQ #0,D3
  MOVE.B  0(A0,D1.W),D3
  MOVEA.L 0(A2,D7.W),A0
  MOVE.B  D3,0(A0,D1.W)
  ANDI.B  #7,0(A0,D1.W)
  BSET  #6,0(A0,D1.W)
  MOVEA.L 4(A2,D7.W),A0
  MOVE.L  A3,0(A0,D6.W)
  ANDI.W  #7,D3
  MOVEQ #$40,D4
  MOVEQ #2,D5
  BTST  #0,D3
  BEQ.S LAB_A29C0E
  LSL.W #1,D5
LAB_A29C0E:
  BTST  #2,D3
  BEQ.S LAB_A29C16
  LSL.W #1,D5
LAB_A29C16:
  BTST  #1,D3
  BEQ.S LAB_A29C1E
  LSL.W #1,D5
LAB_A29C1E:
  LEA 0(A3,D5.W),A4
  LEA 4(A1,D7.W),A0
  JSR SUB_A29DD6
  BNE.W LAB_A29ABC
  MOVEA.L D0,A0
  LEA 0(A0,D6.W),A0
  JSR SUB_A29DD6
  BNE.W LAB_A29ABC
  MOVEA.L D0,A5
LAB_A29C42:
  JSR SUB_A29CD8
  MOVEA.L A5,A0
  LEA 0(A0,D0.W),A0
  JSR SUB_A29E06
  BNE.W LAB_A29ABC
  TST.B D0
  BNE.S LAB_A29C74
  ADDQ.W  #1,A0
  JSR SUB_A29E06
  BNE.W LAB_A29ABC
  MOVE.B  #1,(A3)+
  MOVE.B  D5,(A3)+
  MOVE.B  D0,(A4)+
  ADDQ.W  #1,D5
  BRA.S LAB_A29CAE
LAB_A29C74:
  CMPI.B  #1,D0
  BNE.S LAB_A29CA2
  ADDQ.W  #1,A0
  JSR SUB_A29E06
  BNE.W LAB_A29ABC
  EXT.W D0
  LEA 0(A5,D0.W),A0
  JSR SUB_A29E06
  BNE.W LAB_A29ABC
  MOVE.B  #1,(A3)+
  MOVE.B  D5,(A3)+
  MOVE.B  D0,(A4)+
  ADDQ.W  #1,D5
  BRA.S LAB_A29CAE
LAB_A29CA2:
  CMPI.B  #8,D0
  BNE.W LAB_A29ABC
  CLR.B (A3)+
  MOVE.B  D5,(A3)+
LAB_A29CAE:
  ADDQ.W  #1,D2
  CMPI.W  #7,D2
  BHI.S LAB_A29CC4
  MOVE.W  D3,-(A7)
  AND.W D2,D3
  CMP.W D2,D3
  MOVEM.W (A7)+,D3
  BEQ.S LAB_A29C42
  BRA.S LAB_A29CAE
LAB_A29CC4:
  MOVEA.L A4,A3
  EXG D0,A3
  ADDQ.L  #1,D0
  ANDI.W  #$fffe,D0
  EXG D0,A3
  BRA.W LAB_A29AE6
  CLR.W (A3)+
  BRA.S LAB_A29CAE
SUB_A29CD8:
  MOVE.L  D2,-(A7)
  MOVE.W  D2,D0
  AND.W D3,D2
  CMP.W D0,D2
  BEQ.S LAB_A29CE8
  MOVE.L  (A7)+,D2
  MOVEQ #-1,D0
  RTS
LAB_A29CE8:
  MOVEM.L D3/A0,-(A7)
  ANDI.W  #7,D3
  LEA LAB_A29D1A(PC),A0
  TST.B D4
  BEQ.S LAB_A29CFC
  LEA LAB_A29D66(PC),A0
LAB_A29CFC:
  MOVEQ #0,D0
  MOVE.B  D3,D0
  LSL.W #2,D0
  MOVEA.L 0(A0,D0.W),A0
  MOVEQ #0,D0
  MOVE.B  D2,D0
  LEA 0(A0,D0.W),A0
  MOVEQ #0,D0
  MOVE.B  (A0),D0
  MOVEM.L (A7)+,D3/A0
  MOVE.L  (A7)+,D2
  RTS
LAB_A29D1A:
  DC.L  LAB_A29D3A
  DC.L  LAB_A29D3B
  DC.L  LAB_A29D3D
  DC.L  LAB_A29D41
  DC.L  LAB_A29D45
  DC.L  LAB_A29D4D
  DC.L  LAB_A29D55
  DC.L  LAB_A29D5D
LAB_A29D3A:
  DC.B  $03
LAB_A29D3B:
  DC.B  $03
  DC.B  $02
LAB_A29D3D:
  DC.B  $03
  DC.W  $0002
  DS.B  1
LAB_A29D41:
  DC.B  $03
  DC.W  $0201
  DS.B  1
LAB_A29D45:
  DC.B  $03
  DC.L  $00000002
  DS.W  1
  DS.B  1
LAB_A29D4D:
  DC.B  $03
  DC.L  $02000001
  DS.W  1
  DS.B  1
LAB_A29D55:
  DC.B  $03
  DC.L  $00020001
  DS.W  1
  DS.B  1
LAB_A29D5D:
  DC.B  $03
  DC.L  $02010003,$02010000
LAB_A29D66:
  DC.L  LAB_A29D86
  DC.L  LAB_A29D87
  DC.L  LAB_A29D89
  DC.L  LAB_A29D8D
  DC.L  LAB_A29D91
  DC.L  LAB_A29D99
  DC.L  LAB_A29DA1
  DC.L  LAB_A29DA9
LAB_A29D86:
  DS.B  1
LAB_A29D87:
  DS.B  1
  DC.B  $02
LAB_A29D89:
  DS.B  1
  DC.W  $0002
  DS.B  1
LAB_A29D8D:
  DS.B  1
  DC.W  $0204
  DC.B  $06
LAB_A29D91:
  DS.B  1
  DC.L  $00000002
  DS.W  1
  DS.B  1
LAB_A29D99:
  DS.B  1
  DC.L  $02000004
  DC.W  $0600
  DS.B  1
LAB_A29DA1:
  DS.B  1
  DC.L  $00020004
  DC.W  $0006
  DS.B  1
LAB_A29DA9:
  DS.B  1
  DC.L  $02040608,$0a0c0e00
SUB_A29DB2:
  SWAP  D1
  MOVE.W  D1,-(A7)
  SWAP  D1
  MOVE.W  (A7)+,D1
  MOVE.L  #0,D7
  CMPI.W  #$003f,D1
  BLS.S LAB_A29DD0
  MOVE.L  #$00000010,D7
  SUBI.W  #$0040,D1
LAB_A29DD0:
  MOVE.W  D1,D6
  LSL.W #2,D6
  RTS
SUB_A29DD6:
  TST.B LAB_A47FB6
  BNE.S LAB_A29DE6
LAB_A29DDE:
  JSR SUB_A1B0EE
  RTS
LAB_A29DE6:
  MOVE.L  A0,D0
  BTST  #0,D0
  BNE.S LAB_A29DDE
  CMPI.L  #$00000fff,D0
  BLS.S LAB_A29DDE
  CMPI.L  #EXT_7000,D0
  BHI.S LAB_A29DDE
  MOVE.L  (A0),D0
  ORI.W #4,SR
  RTS
SUB_A29E06:
  TST.B LAB_A47FB6
  BNE.S LAB_A29E16
LAB_A29E0E:
  JSR SUB_A1B0BC
  RTS
LAB_A29E16:
  CMPA.L  #$00000fff,A0
  BLS.S LAB_A29E0E
  CMPA.L  #EXT_7000,A0
  BHI.S LAB_A29E0E
  MOVE.B  (A0),D0
  ORI.W #4,SR
  RTS
SUB_A29E2E:
  MOVEM.L A0/A2-A3/A6,-(A7)
  CMPI.B  #$13,kickstartVersion
  BEQ.S LAB_A29E42
  LEA KickVerText(PC),A1
  BRA.S LAB_A29E50
LAB_A29E42:
  JSR checkExecBaseValid
  TST.W D0
  BNE.S LAB_A29E58
LAB_A29E4C:
  LEA NoKeymapText(PC),A1
LAB_A29E50:
  MOVEM.L (A7)+,A0/A2-A3/A6
  MOVEQ #-1,D0
  RTS
LAB_A29E58:
  MOVEA.L EXT_4,A6
  LEA $15E(A6),A0
LAB_A29E62:
  JSR SUB_A1B0EE
  BNE.S LAB_A29E4C
  MOVEA.L D0,A3
  MOVEA.L A3,A1
  LEA $A(A1),A0
  JSR SUB_A1B0EE
  BNE.S LAB_A29E4C
  MOVEA.L D0,A0
  LEA ConsoleDev(PC),A2
LAB_A29E80:
  JSR SUB_A1B0BC
  BNE.S LAB_A29E4C
  ADDQ.W  #1,A0
  TST.B D0
  BEQ.S LAB_A29E9E
  CMP.B (A2)+,D0
  BEQ.S LAB_A29E80
LAB_A29E92:
  MOVEA.L A3,A0
  TST.B EscapePressed
  BNE.S LAB_A29E4C
  BRA.S LAB_A29E62
LAB_A29E9E:
  TST.B (A2)
  BNE.S LAB_A29E92
  LEA $98(A3),A1
  MOVEM.L (A7)+,A0/A2-A3/A6
  MOVEQ #0,D0
  RTS

ConsoleDev:
  DC.B  "console.device",0,0

CMD_RELABEL:
  SF  forceUpper
  JSR SUB_A2231A
  ST  forceUpper
  MOVE.W  D0,D1
  MOVEQ #-14,D0
  TST.W D1
  BEQ.S LAB_A29F38
  LEA NewNameTooLongText(PC),A0
  CMPI.W  #$001e,D1
  BLS.S LAB_A29EEA
  JSR PrintText
  RTS
LAB_A29EEA:
  LEA EXT_7000.W,A0
  JSR backupMfmBuffer
  MOVE.L  #$00000370,D0
  JSR loadSector
  BMI.S LAB_A29F2E
  MOVEA.L A1,A3
  LEA $1B0(A1),A1
  MOVE.B  D1,(A1)+
  SUBQ.W  #1,D1
  LEA stringWorkspace,A2
LAB_A29F12:
  MOVE.B  (A2)+,(A1)+
  DBF D1,LAB_A29F12
  MOVEA.L A3,A1
  JSR calcDataSectorChecksum
  ST  TrackBufferModified
  JSR restoreMfmBuffer
  BRA.S LAB_A29F38
LAB_A29F2E:
  MOVE.W  D0,D1
  JSR restoreMfmBuffer
  MOVE.W  D1,D0
LAB_A29F38:
  JSR PrintDiskOpResult
  RTS
NewNameTooLongText:
  DC.B  "New name too long!",$D,0

CMD_RENAME:
  MOVE.B  currDriveNo,-(A7)
  SF  forceUpper
  JSR GetFilename
  ST  forceUpper
  MOVE.W  D0,D1
  MOVEQ #-14,D0
  TST.W D1
  BEQ.W LAB_A2A0E8
  MOVEA.L A0,A6
  LEA EXT_7000.W,A0
  JSR backupMfmBuffer
  LEA stringWorkspace,A1
  MOVEA.L A1,A2
  MOVE.W  D1,D0
  JSR SUB_A236E2
  BMI.W LAB_A2A0DE
  MOVE.W  D2,D0
  JSR calcFilenameHash
  MOVE.W  D0,D6
  MOVE.W  D2,D0
  JSR SUB_A2197A
  BMI.W LAB_A2A0DE
  MOVE.L  D1,D4
  MOVE.L  D4,D0
  JSR loadSector
  BMI.W LAB_A2A0DE
  MOVE.L  $1F4(A1),D5
  EXG A6,A0
  SF  forceUpper
  JSR SUB_A2231A
  ST  forceUpper
  EXG A6,A0
  MOVE.W  D0,LAB_A480CA
  MOVE.W  D0,D1
  MOVEQ #-14,D0
  TST.W D1
  BEQ.W LAB_A2A0DE
  CMPI.W  #$001e,D1
  BLS.S LAB_A29FFA
  LEA NewNameTooLongText(PC),A0
  JSR PrintText
  MOVEQ #0,D0
  BRA.W LAB_A2A0DE
LAB_A29FFA:
  LEA stringWorkspace,A1
  MOVE.W  D1,D0
  MOVEM.L D1,-(A7)
  MOVE.L  D5,D1
  JSR SUB_A2197A
  MOVEM.L (A7)+,D1
  BMI.S LAB_A2A01A
  MOVEQ #-26,D0
  BRA.W LAB_A2A0DE
LAB_A2A01A:
  MOVE.W  D1,D0
  JSR calcFilenameHash
  MOVE.W  D0,D7
  LSL.W #2,D6
  LSL.W #2,D7
  MOVE.L  D4,D0
  JSR loadSector
  BMI.W LAB_A2A0DE
  MOVE.L  $1F0(A1),D1
  MOVE.L  D5,D0
  JSR loadSector
  BMI.W LAB_A2A0DE
  MOVEQ #-21,D0
  MOVE.L  $18(A1,D6.W),D2
  BEQ.W LAB_A2A0DE
  CMP.L D2,D4
  BNE.S LAB_A2A064
  MOVE.L  D1,$18(A1,D6.W)
  JSR calcDataSectorChecksum
  ST  TrackBufferModified
  BRA.S LAB_A2A08A
LAB_A2A064:
  MOVE.L  D2,D0
  JSR loadSector
  BMI.S LAB_A2A0DE
  MOVEQ #-21,D0
  MOVE.L  $1F0(A1),D2
  BEQ.S LAB_A2A0DE
  CMP.L D2,D4
  BNE.S LAB_A2A064
  MOVE.L  D1,$1F0(A1)
  JSR calcDataSectorChecksum
  ST  TrackBufferModified
LAB_A2A08A:
  MOVE.L  D5,D0
  JSR loadSector
  BMI.S LAB_A2A0DE
  MOVE.L  $18(A1,D7.W),D2
  MOVE.L  D4,$18(A1,D7.W)
  JSR calcDataSectorChecksum
  ST  TrackBufferModified
  MOVE.L  D4,D0
  JSR loadSector
  BMI.S LAB_A2A0DE
  MOVE.L  D2,$1F0(A1)
  MOVE.W  LAB_A480CA,D0
  LEA $1B0(A1),A2
  MOVE.B  D0,(A2)+
  SUBQ.W  #1,D0
  LEA stringWorkspace,A3
LAB_A2A0CA:
  MOVE.B  (A3)+,(A2)+
  DBF D0,LAB_A2A0CA
  JSR calcDataSectorChecksum
  ST  TrackBufferModified
  MOVEQ #0,D0
LAB_A2A0DE:
  MOVE.W  D0,D1
  JSR restoreMfmBuffer
  MOVE.W  D1,D0
LAB_A2A0E8:
  JSR PrintDiskOpResult
  MOVE.B  (A7)+,currDriveNo
  RTS
SUB_A2A0F6:
  MOVE.B  printerDumpToggle,-(A7)
  MOVE.W  cursorX,-(A7)
  MOVE.L  D0,-(A7)
  SF  printerDumpToggle
  TST.B debuggerMode
  BEQ.S .1
  MOVE.W  #1,cursorX
  MOVEQ #53,D0
  JSR PrintSpaces
  BRA.S .2
.1
  CLR.W cursorX
  MOVEQ #$4F,D0
  JSR PrintSpaces
.2
  MOVE.L  (A7)+,D0
  MOVE.W  (A7)+,cursorX
  MOVE.B  (A7)+,printerDumpToggle
  RTS
  MOVE.L  D1,-(A7)
  SUBQ.W  #1,D0
LAB_A2A12C:
  MOVE.L  vposr+hardware,D1
  ANDI.L  #$0001ffff,D1
  CMPI.L  #$00000100,D1
  BGT.S LAB_A2A12C
  DBF D0,LAB_A2A12C
  MOVE.L  (A7)+,D1
  RTS
LAB_A2A148:
  JSR GetMappedKeyCode
  TST.B KeyCodeLo
  BNE.S LAB_A2A148
  RTS

WaitNoKeypress:
  MOVE.W KeyCode,-(A7)
.wait:
  JSR GetMappedKeyCode
  MOVE.W  KeyCode,D0
  BNE.S .wait
  MOVE.W (A7)+,KeyCode
  RTS
PrintTableEntry:
  MOVEM.L D0/A0,-(A7)
LAB_A2A15C:
  SUBQ.W  #1,D0
  BMI.S LAB_A2A166
LAB_A2A160:
  TST.B (A0)+
  BNE.S LAB_A2A160
  BRA.S LAB_A2A15C
LAB_A2A166:
  JSR PrintText
  MOVEM.L (A7)+,D0/A0
  RTS
CMD_EA:
  BTST.B #2,ChipsetIdValue      ;aga
  BNE .3

  MOVE.L AgaPaletteSave,D1
  BEQ .6
  MOVE.L D1,A1

  ST.B scrollLock
  MOVE.W #255,D1
  MOVEQ #0,D4
.nextcol
  MOVE.W (A1)+,D2
  MOVE.W (A1)+,D3
  MOVE.W D4,D0

  JSR Print2DigitHex
  JSR PrintSpace

  ROL.W #8,D2
  ROL.W #8,D3
  MOVE.B D2,D0
  JSR Print1DigitHex
  MOVE.B D3,D0
  JSR Print1DigitHex
  ROL.W #4,D2
  ROL.W #4,D3
  MOVE.B D2,D0
  JSR Print1DigitHex
  MOVE.B D3,D0
  JSR Print1DigitHex
  ROL.W #4,D2
  ROL.W #4,D3
  MOVE.B D2,D0
  JSR Print1DigitHex
  MOVE.B D3,D0
  JSR Print1DigitHex

  ADD.W #1,D4
  MOVE.W D4,D0
  AND.W #7,D0
  BEQ.S .4

  JSR PrintSpace
  BRA.S .5
.4
  JSR PrintCR
.5
  DBF D1,.nextcol

  SF.B scrollLock
  JSR PrintReady
  RTS

.6
  LEA NoAgaText(PC),A0
  BRA.S .3a
.3
  LEA NoAgaText(PC),A0
.3a
  JSR PrintText
  JSR PrintReady
  RTS
NoAgaText2:
  DC.B "No AGA palette saved",0

NoAgaText:
  DC.B "No AGA detected",0
  even
CMD_SETAPI:
  ST.B apiActive
  LEA EXT_100.W,A0

  if arhardware=1
  MOVE.L  #$4a3900bf,(A0)+
  MOVE.L  #$e0014e73,(A0)+
  else
  MOVE.L  #$4e4e4e73,(A0)+
  MOVE.W  #$4e71,(A0)+
  endc

  MOVE.L A0,A1
  JSR getVBR

  if arhardware=0
  MOVE.L a1,TRAP_14(A0)

  MOVE.W #$4ef9,(a1)+
  MOVE.L #ApiEntry,(a1)+
  endc

  MOVE.L  #$00000100,TRAP_07(A0)
  LEA ApiHandlerInsText(PC),A0
  JSR PrintText
  JMP PrintReady

ApiHandlerInsText:
  DC.B  "Api Exception handler installed!",$D,0
  even

CMD_CLRAPI:
  SF.B apiActive

  LEA ApiHandlerRemText(PC),A0
  JSR PrintText
  JMP PrintReady

ApiHandlerRemText:
  DC.B  "Api Exception handler removed!",$D,0
  even

CMD_KEYMAP:
  JSR readCmdCharSkipSpaces
  TST.B endOfCmdString
  BNE.S .keymapWTF
  JSR UpperCaseChar
  MOVE.B D0,D1

  JSR readCmdChar
  TST.B endOfCmdString
  BNE.S .keymapWTF

  JSR UpperCaseChar
  LSL.W #8,D1
  MOVE.B D0,D1

  CMP.W #"DE",D1
  BEQ.S .keymapDE

  CMP.W #"UK",D1
  BEQ.S .keymapUK

  CMP.W #"US",D1
  BEQ.S .keymapUS

  CMP.W #"IT",D1
  BEQ.S .keymapIT

.keymapWTF:
  JMP PrintWTF

.keymapDE
  LEA GermanKeymapText,A0
  MOVE.B #0,keymap
  BRA.S .keymapPrint

.keymapUS
  LEA UsaKeymapText,A0
  MOVE.B #1,keymap
  BRA.S .keymapPrint

.keymapUK
  LEA UKKeymapText,A0
  MOVE.B #-1,keymap
  BRA.S .keymapPrint

.keymapIT
  LEA ITKeymapText,A0
  MOVE.B #2,keymap

.keymapPrint
  JMP PrintText

CMD_ED:
  TST.B TBufferAllocated
  BNE.W LAB_420C92
  JSR AllocTBuff
LAB_420C92:
  JSR GetFilename
  MOVE.W  D0,D1
  MOVEQ #-14,D0
  TST.W D1
  BEQ.W LAB_420EB2
  LEA EXT_7000.W,A0
  JSR backupMfmBuffer
  LEA stringWorkspace,A1
  MOVE.W  D1,D0
  MOVE.B  currDriveNo,-(A7)
  JSR OpenFile
  BMI.W LAB_420D9E
  MOVE.L  DiskMonBufferSize,D0
  CMP.L fileSize,D0
  BCC.W LAB_420CE2
  LEA LAB_420D86(PC),A0
  JSR PrintText
  BRA.W LAB_420D9E
LAB_420CE2:
  MOVEA.L DiskMonBuffer,A2
  LEA EXT_7000.W,A0
  MOVE.L  fileSize,D0
  JSR readFileData
  MOVE.L  DiskMonBuffer,LAB_A480CA
  MOVE.L  fileSize,D0
  ADD.L D0,LAB_A480CA
  MOVE.L  DiskMonBuffer,LAB_A480CE
  MOVE.L  LAB_A480CE,LAB_A480D6
  MOVE.L  LAB_A480CE,LAB_A480D2
  MOVE.L  DiskMonBuffer,D0
  ADD.L D0,LAB_A480D2
  CLR.W LAB_A480DA
  ST  LAB_A4839B
  JSR SUB_420DC2
LAB_420D4A:
  JSR GetMappedKeyCode
  MOVE.W  D0,D7
  JSR PrintCursor
  CMPI.W  #$0081,D7
  BEQ.W LAB_420EC6
  CMPI.W  #$0080,D7
  BEQ.W LAB_420EB8
  CMPI.W  #$0082,D7
  BEQ.W LAB_420EF4
  CMPI.W  #$0083,D7
  BEQ.W LAB_420F88
  TST.B EscapePressed
  BEQ.S LAB_420D4A
  MOVEQ #0,D0
  BRA.W LAB_420D9E

LAB_420D86:
  DC.B  "dmonbuffer too small!",$D,0,0

LAB_420D9E:
  MOVE.B  (A7)+,currDriveNo
  JSR PrintDiskOpResult
  LEA EXT_7000.W,A0
  JSR restoreMfmBuffer
  JSR PrintReady
  SF  LAB_A4839B
  RTS
SUB_420DC2:
  MOVEQ #0,D0
  MOVE.W  LAB_A480DA,D2
  JSR Cls
  SF  LAB_A480DE
  MOVEA.L LAB_A480D6,A0
  MOVE.W  D2,D1
LAB_420DDE:
  SUBQ.W  #1,D1
  BMI.W LAB_420E1C
  CMPA.L  LAB_A480CA,A0
  BEQ.W LAB_420EA0
  CMPA.L  LAB_A480CE,A0
  BNE.W LAB_420DFE
  MOVE.L  cursorX,D7
LAB_420DFE:
  MOVE.B  (A0)+,D0
  CMPI.W  #$000a,D0
  BNE.S LAB_420DDE
  JSR PrintCR
  MOVE.W  D2,D1
  MOVE.W PageHeight,D0
  CMP.W  cursorY,D0
  BNE.S LAB_420DDE
  BRA.W LAB_420EAA
LAB_420E1C:
  CMPA.L  LAB_A480CA,A0
  BEQ.W LAB_420EA0
  CMPA.L  LAB_A480CE,A0
  BNE.W LAB_420E36
  MOVE.L  cursorX,D7
LAB_420E36:
  MOVE.B  (A0)+,D0
  CMPI.W  #$000a,D0
  BNE.W LAB_420E72
  TST.B LAB_A480DE
  BNE.W LAB_420E54
  MOVE.W  #$0095,D0
  JSR PrintChar
LAB_420E54:
  SF  LAB_A480DE
  JSR PrintCrIfNotBlankLine
  MOVE.W  D2,D1
  MOVE.W PageHeight,D0
  CMP.W  cursorY,D0
  BNE.W LAB_420DDE
  BRA.W LAB_420EAA
LAB_420E72:
  CMPI.W  #$004f,cursorX
  BNE.W LAB_420E8E
  MOVE.W  #$0096,D0
  JSR PrintChar
  ST  LAB_A480DE
LAB_420E8E:
  TST.B LAB_A480DE
  BNE.S LAB_420E1C
  JSR PrintChar
  BRA.W LAB_420E1C
LAB_420EA0:
  MOVE.W  #$0094,D0
  JSR PrintChar
LAB_420EAA:
  MOVE.L  D7,cursorX
  RTS
LAB_420EB2:
  JMP PrintDiskOpResult
LAB_420EB8:
  ADDQ.W  #1,LAB_A480DA
  JSR SUB_420DC2(PC)
  BRA.W LAB_420D4A
LAB_420EC6:
  MOVE.W PageHeight,D4
  CMP.W  cursorY,D4
  BNE.W LAB_420ED8
  JSR SUB_420FF8
LAB_420ED8:
  MOVE.W  cursorX,D4
  ADD.W LAB_A480DA,D4
  MOVEA.L LAB_A480CE,A0
  ADDQ.W  #1,cursorY
  BRA.W LAB_420D4A
LAB_420EF4:
  MOVE.L  LAB_A480CE,D0
  CMP.L LAB_A480CA,D0
  BEQ.W LAB_420D4A
  SUBQ.L  #1,LAB_A480CE
  SUBQ.W  #1,cursorX
  BPL.W LAB_420D4A
  TST.W LAB_A480DA
  BEQ.W LAB_420F2E
  SUBI.W  #$0028,LAB_A480DA
  JSR SUB_420DC2(PC)
  BRA.W LAB_420D4A
LAB_420F2E:
  MOVEQ #0,D2
  MOVEA.L LAB_A480CE,A0
LAB_420F36:
  CMPA.L  LAB_A480D6,A0
  BEQ.W LAB_420F4C
  CMPI.B  #$0a,-(A0)
  BEQ.W LAB_420F4C
  ADDQ.W  #1,D2
  BRA.S LAB_420F36
LAB_420F4C:
  TST.W cursorY
  BEQ.W LAB_420F84
  SUBQ.W  #1,cursorY
  CMPI.W  #$004e,D2
  BHI.W LAB_420F6E
  MOVE.W  D2,cursorX
  BRA.W LAB_420D4A
LAB_420F6E:
  ADDI.W  #$0028,LAB_A480DA
  SUB.W #$0028,D2
  CMPI.W  #$004e,D2
  BHI.S LAB_420F6E
  JSR SUB_420DC2(PC)
LAB_420F84:
  BRA.W LAB_420D4A
LAB_420F88:
  MOVE.L  LAB_A480CE,D0
  CMP.L LAB_A480CA,D0
  BEQ.W LAB_420D4A
  ADDQ.L  #1,LAB_A480CE
  MOVEA.L LAB_A480CE,A0
  CMPI.B  #$0a,-1(A0)
  BEQ.W LAB_420FDA
  ADDQ.W  #1,cursorX
  CMPI.W  #$004f,cursorX
  BNE.W LAB_420D4A
  CMPI.B  #$0a,-1(A0)
  BEQ.W LAB_420FDA
  ADDI.W  #$0028,LAB_A480DA
  JSR SUB_420DC2(PC)
  BRA.W LAB_420D4A
LAB_420FDA:
  JSR PrintCR
  TST.W LAB_A480DA
  BEQ.W LAB_420FF4
  CLR.W LAB_A480DA
  JSR SUB_420DC2(PC)
LAB_420FF4:
  BRA.W LAB_420D4A
SUB_420FF8:
  MOVEA.L LAB_A480CE,A0
LAB_420FFE:
  CMPA.L  LAB_A480CA,A0
  BEQ.W SUB_42101A
  CMPI.B  #$0a,(A0)+
  BNE.S LAB_420FFE
  JSR ScrollUp
  MOVE.W  LAB_A480DA,D2
SUB_42101A:
  MOVEM.L A0-A1,-(A7)
  LEA stringWorkspace,A0
LAB_421024:
  MOVE.B  (A1)+,(A0)+
  BNE.S LAB_421024
  MOVEM.L (A7)+,A0-A1
  RTS

prefsFilename:
  DC.B  "AAR.pref",0,0

LoadPrefs:
  MOVEM.L D0-D3/A0-A3,-(A7)
  LEA EXT_7000.W,A0
  JSR backupMfmBuffer
  LEA prefsFilename(PC),A1
  JSR SUB_42101A(PC)
  JSR displayFileSelector2(PC)
  MOVE.W  #$0100,dmacon+hardware
  TST.W D0
  BEQ.W LAB_4210BC
  LEA stringWorkspace,A1
  JSR OpenFile
  BMI.W LAB_4210BC
  LEA EXT_1000,A2
  MOVE.L  fileSize,D0
  CMPI.W  #$0400,D0
  BHI.W LAB_4210BC
  JSR readFileBytes
  BMI.W LAB_4210BC
  LEA EXT_1000,A1
  CMPI.L  #$70726566,(A1)+
  BNE.W LAB_4210BC
  LEA LAB_4211F4(PC),A2
LAB_42109E:
  MOVE.L  (A2)+,D0
  BEQ.W LAB_4210B2
  MOVEA.L D0,A3
  MOVE.W  (A2)+,D0
  SUBQ.W  #1,D0
LAB_4210AA:
  MOVE.B  (A1)+,(A3)+
  DBF D0,LAB_4210AA
  BRA.S LAB_42109E
LAB_4210B2:
  JSR restoreMfmBuffer
  BPL.W LAB_4210FA
LAB_4210BC:
  MOVE.L  D0,-(A7)
  MOVE.L  #$00009c40,D0
LAB_4210C4:
  MOVE.L  vhposr+hardware,color00+hardware
  SUBQ.L  #1,D0
  BPL.S LAB_4210C4
  MOVE.L  (A7)+,D0
  LEA EXT_7000.W,A0
  JSR restoreMfmBuffer
  BPL.W LAB_4210FA
  MOVE.L  D0,-(A7)
  MOVE.L  #$00009c40,D0
LAB_4210EA:
  MOVE.L  vhposr+hardware,color00+hardware
  SUBQ.L  #1,D0
  BPL.S LAB_4210EA
  MOVE.L  (A7)+,D0
LAB_4210FA:
  MOVE.W  #0,D0
  MOVE.W  #$00c7,D1
  JSR clearScreenArea
  MOVE.W  #$8100,dmacon+hardware
  MOVEM.L (A7)+,D0-D3/A0-A3
  RTS
SavePrefs:
  MOVEM.L D0-D3/A0-A3,-(A7)
  LEA EXT_7000.W,A0
  JSR backupMfmBuffer
  LEA prefsFilename(PC),A1
  JSR SUB_42101A(PC)
  JSR displayFileSelector2(PC)
  MOVE.W  #$0100,dmacon+hardware
  TST.W D0
  BEQ.W LAB_42119A
  LEA stringWorkspace,A1
  JSR SaveFileInit
  BMI.W LAB_42119A
  MOVEQ #4,D1
  LEA EXT_1000,A1
  MOVE.L  #$70726566,(A1)+
  LEA LAB_4211F4(PC),A2
LAB_42115E:
  MOVE.L  (A2)+,D0
  BEQ.W LAB_421174
  MOVEA.L D0,A3
  MOVE.W  (A2)+,D0
  ADD.W D0,D1
  SUBQ.W  #1,D0
LAB_42116C:
  MOVE.B  (A3)+,(A1)+
  DBF D0,LAB_42116C
  BRA.S LAB_42115E
LAB_421174:
  LEA EXT_1000,A2
  MOVEQ #0,D0
  MOVE.W  D1,D0
  JSR AddDataChunk
  JSR HandleDiskFull
  BMI.W LAB_42119A
  JSR AddFileToDirBlock
  BMI.W LAB_42119A
  JSR restoreMfmBuffer
  BPL.W LAB_4211D8
LAB_42119A:
  MOVE.L  D0,-(A7)
  MOVE.L  #$00009c40,D0
LAB_4211A2:
  MOVE.L  vhposr+hardware,color00+hardware
  SUBQ.L  #1,D0
  BPL.S LAB_4211A2
  MOVE.L  (A7)+,D0
  LEA EXT_7000.W,A0
  JSR restoreMfmBuffer
  BPL.W LAB_4211D8
  MOVE.L  D0,-(A7)
  MOVE.L  #$00009c40,D0
LAB_4211C8:
  MOVE.L  vhposr+hardware,color00+hardware
  SUBQ.L  #1,D0
  BPL.S LAB_4211C8
  MOVE.L  (A7)+,D0
LAB_4211D8:
  MOVE.W  #0,D0
  MOVE.W  #$00c7,D1
  JSR clearScreenArea
  MOVE.W  #$8100,dmacon+hardware
  MOVEM.L (A7)+,D0-D3/A0-A3
  RTS
LAB_4211F4:
  DC.L  memoryControlPrefsValue
  DC.W  $0002
  DC.L  LAB_A483AA
  DC.W  $000c
  DC.L  AutoConfigPrefsFlag
  DC.W  $0001
  DC.L  NoresPrefsFlag
  DC.W  $0001
  DC.L  TestPrefsFlag
  DC.W  $0001
  DC.L  BlankerPrefsFlag
  DC.W  $0003
  DC.L  ArBgCol
  DC.W  $0004
  DC.L  LAB_A481E5
  DC.W  $0002
  DC.L  BootblockCoderPrefsFlag
  DC.W  $0001
  DC.L  BootblockCoderValue
  DC.W  $0004
  DC.L  DiskCoderFlags
  DC.W  $0014
  DC.L  DriveControlPrefsValue
  DC.W  $0002
  DC.L  VirusCheckerSettingsPrefs
  DC.W  $0001
  DC.L  keymap
  DC.W  $0001
  DC.L  ExtMemAddPrefsFlag
  DC.W  $0001
  DC.L  LAB_A483B6
  DC.W  $0004
  DC.L  BurstNibblerFastStartPrefsFlag
  DC.W  $0001
  DC.L  $0000

CMD_COPY:
  MOVE.B  currDriveNo,-(A7)
  SF  forceUpper
  JSR GetFilename
  ST  forceUpper
  MOVE.W  D0,D1
  MOVEQ #-14,D0
  TST.W D1
  BEQ.W LAB_A2A32C
  MOVEA.L A0,A6
  TST.B TBufferAllocated
  BNE.S LAB_A2A20C
  JSR AllocTBuff
LAB_A2A20C:
  LEA EXT_7000.W,A0
  JSR backupMfmBuffer
  LEA stringWorkspace,A1
  MOVE.W  D1,D6
  MOVE.W  D6,D0
  MOVEA.L A1,A2
  JSR SUB_A236E2
  BMI.W LAB_A2A31C
  MOVE.W  D2,D0
  LEA SaveColor,A2
  MOVEA.L A1,A3
  MOVE.B  D2,(A2)+
  SUBQ.W  #1,D2
LAB_A2A23A:
  MOVE.B  (A3)+,(A2)+
  DBF D2,LAB_A2A23A
  MOVE.W  D6,D0
  LEA stringWorkspace,A1
  JSR OpenFile
  BMI.W LAB_A2A31C
  MOVE.L  fileSize,D0
  CMP.L DiskMonBufferSize,D0
  BHI.W LAB_A2A340
  MOVEA.L DiskMonBuffer,A2
  JSR readFileBytes
  BMI.W LAB_A2A31C
  EXG A6,A0
  SF  forceUpper
  JSR GetFilename
  ST  forceUpper
  EXG A6,A0
  MOVE.W  D0,D6
  MOVEQ #-14,D0
  TST.W D1
  BEQ.W LAB_A2A31C
  MOVE.W  D6,D0
  LEA stringWorkspace,A2
  JSR getDirBlock
  BMI.S LAB_A2A2CE
  LEA stringWorkspace,A2
  LEA 0(A2,D6.W),A2
  LEA SaveColor,A3
  MOVEQ #0,D3
  MOVE.B  (A3)+,D3
  ADD.W D3,D6
  CMPI.B  #$3a,-1(A2)
  BEQ.S LAB_A2A2C6
  ADDQ.W  #1,D6
  MOVE.B  #$2f,(A2)+
LAB_A2A2C6:
  SUBQ.W  #1,D3
LAB_A2A2C8:
  MOVE.B  (A3)+,(A2)+
  DBF D3,LAB_A2A2C8
LAB_A2A2CE:
  MOVE.W  D6,D0
LAB_A2A2D0:
  LEA stringWorkspace,A1
  JSR SaveFileInit
  BPL.S LAB_A2A300
LAB_A2A2DE:
  JSR PrintDiskOpResult
  JSR WaitKeypress(PC)
  SF  forceUpper
  JSR displayFileSelector(PC)
  ST  forceUpper
  TST.W D0
  BNE.S LAB_A2A2D0
  MOVEQ #-14,D0
  BRA.S LAB_A2A31C
LAB_A2A300:
  MOVEA.L DiskMonBuffer,A2
  MOVE.L  fileSize,D0
  JSR writeFileBytes
  JSR HandleDiskFull
  BMI.S LAB_A2A2DE
  JSR AddFileToDirBlock
  BMI.S LAB_A2A2DE
LAB_A2A31C:
  MOVE.W  D0,D1
  LEA EXT_7000.W,A0
  JSR restoreMfmBuffer
  BMI.S LAB_A2A32C
  MOVE.W  D1,D0
LAB_A2A32C:
  JSR PrintDiskOpResult
  JSR PrintReady
  MOVE.B  (A7)+,currDriveNo
  RTS
LAB_A2A340:
  LEA FileTooLargeText(PC),A0
  JSR PrintText
  MOVEQ #0,D0
  BRA.S LAB_A2A31C
FileTooLargeText:
  DC.B  "File too large for dmon-buffer!",$D,0

ShortcutsText:
  DC.B  $D,"Shortcuts for some commands:",$D
  DC.B  "============================",$D,$D
  DC.B  "interrupts <--> int",$D
  DC.B  "exceptions <--> exc",$D
  DC.B  "normalchar <--> nchar",$D
  DC.B  "setexcept  <--> sexc",$D
  DC.B  "libraries  <--> lib",$D
  DC.B  "resources  <--> res",$D
  DC.B  "killvirus  <--> kvir",$D
  DC.B  "diskcheck  <--> dchk",$D
  DC.B  "megastick  <--> mst",$D
  DC.B  "smallchar  <--> schar",$D
  DC.B  "chipregs   <--> creg",$D
  DC.B  "execbase   <--> exec",$D
  DC.B  "bootcode   <--> bcode",$D
  DC.B  "bootprot   <--> bprot",$D
  DC.B  "diskwipe   <--> dwipe",$D
  DC.B  "codecopy   <--> ccopy",$D
  DC.B  "clrstick   <--> cst",$D
  DC.B  "safedisk   <--> sdisk",$D
  DC.B  "makedir    <--> mdir",$A
  DC.B  "install    <--> inst",$D
  DC.B  "devices    <--> dev",$D
  DC.B  "tracker    <--> srip",$D
  DC.B  "nostick    <--> nst",$D
  DC.B  "relabel    <--> rel",$D
  DC.B  "rcolour    <--> rcolor",$D
  DC.B  "rename     <--> ren",$D
  DC.B  "colour     <--> color",$D
  DC.B  "delete     <--> del",$D
  DC.B  "lstick     <--> lst",$D
  DC.B  "sstick     <--> sst",$D
  DC.B  "setmap     <--> key",$D
  DC.B  "keymap     <--> km",$D
  DC.B  "trans      <--> i",$D
  DC.B  "comp       <--> v",$D
  DC.B 0

HelpText:
  DC.B  $D
  DC.B  "COMMANDS + SYNTAX (space for next page):",$D
  DC.B  "========================================",$D
  DC.B  $D
  DC.B  "Commands for system information:",$D
  DC.B  "--------------------------------",$D
  DC.B  "interrupts: Show execbase interrupt-lists        - interrupts",$D
  DC.B  "exceptions: Show exception- and interruptvectors - exceptions",$D
  DC.B  "  execbase: Show whole execbase structure         - execbase",$D
  DC.B  "     avail: Show free memory                     - avail",$D
  DC.B  "      info: Show important systemparameters      - info (picnr)",$D
  DC.B  " libraries: Show execbase library-list           - libraries",$D
  DC.B  " resources: Show execbase resource-list          - resources",$D
  DC.B  "  chipregs: Show name + offset of chipregisters  - chipregs",$D
  DC.B  "     dchip: Explain function of chipregister     - dchip registername",$D
  DC.B  "   devices: Show execbase device-list            - devices",$D
  DC.B  "     tasks: Show execbase task-lists             - tasks",$D
  DC.B  "     ports: Show execbase port-list              - ports",$D
  DC.B  $D
  DC.B  "Disk and diskcoding commands:",$D
  DC.B  "-----------------------------",$D
  DC.B  "  bootcode: Show/set bootblock codenumber        - bootcode (codenumber)",$D
  DC.B  "  bootprot: Code bootblock of active drive       - bootprot (codenumber)",$D
  DC.B  "      code: Show/set disk codenumbers            - code (drive codenumber)",$D
  DC.B  "     dcopy: Backup amigados disks                - dcopy source dest",$D
  DC.B  "     burst: Turbo-Burstnibbler                   - burst (drive)",$D
  DC.B  "  codecopy: Diskcopy + decode source + code dest - codecopy source dest",$D
  DC.B  "  safedisk: Patch/show state of trackdisk.device - safedisk (a/b/s/n/u/v/q)",$D
  DC.B  "        cd: Show/change current module-path      - cd (path)",$D
  DC.B  "       dir: Show disk-directory                  - dir (path)",$D
  DC.B  "      dira: Show whole disk-directory            - dira (path)",$D
  DC.B  "      copy: Make copy of a File                  - copy (path)source,dest",$D
  DC.B  "   makedir: Create directory                     - makedir path",$D
  DC.B  "    delete: Delete file                          - delete (path)filename",$D
  DC.B  "    format: Format disk in active drive (FFS)    - format (name)(,ffs)",$D
  DC.B  "   formatq: Format disk quick (FFS)              - formatq (name)(,ffs)",$D
  DC.B  "   formatv: Format disk and verify format (FFS)  - formatv (name)(,ffs)",$D
  DC.B  "   install: Install disk in active drive         - install (bootblocknr.)",$D
  DC.B  " diskcheck: Checks disk for errors               - diskcheck (drive)",$D
  DC.B  "  diskwipe: Clears a disk very fast              - diskwipe (drive)",$D
  DC.B  "    fcrc16: Calculate crc16 of a file            - fcrc16 (path)filename",$D
  DC.B  "    fcrc32: Calculate crc32 of a file            - fcrc32 (path)filename",$D
  DC.B  "      type: Type file on screen                  - type (path)filename",$D
  DC.B  "      dump: Show a file as hex                   - dump (path)filename",$D
  DC.B  "    rename: Rename file                          - rename (path)oldname,newname",$D
  DC.B  "   relabel: Change/set diskname                  - relabel diskname",$A
  DC.B  $D
  DC.B  "Freezer and ripper commands:",$D
  DC.B  "----------------------------",$D
  DC.B  "        sa: Save current program to disk         - sa (path)name(,crate)",$D
  DC.B  "        sr: Save current program and start       - sr (path)name(,crate)",$D
  DC.B  "        la: Load freezefile from disk            - la (path)name",$D
  DC.B  "        lr: Load freezefile from disk and start  - lr (path)name",$D
  DC.B  "   sloader: Save loader to active drive          - sloader",$D
  DC.B  "        lq: Load all from ramdisk                - lq",$D
  DC.B  "       lqr: Load all from ramdisk and restart    - lqr",$D
  DC.B  "        sq: Save all to ramdisk                  - sq",$D
  DC.B  "       sqr: Save all to ramdisk and restart      - sqr",$D
  DC.B  "       exq: Exchange prg with ramdisk prg        - exq",$D
  DC.B  "      exqr: Exchange prg with ramdisk prg + run  - exqr",$D
  DC.B  "     sqmem: En/disable savequick in fastmemory   - sqmem (0/start)",$D
  DC.B  "   tracker: Rips soundtracker-modules in memory  - tracker (start)",$D
  DC.B  "      scan: Scan memory for samples              - scan",$D
  DC.B  "        sp: Save current picture to disk         - sp (path)name(,nr hight)",$D
  DC.B  "         p: Show current picture/mempeeker       - p (picnr)",$D
  DC.B  "       spm: Save picture of memory-peeker        - spm (path)name",$A
  DC.B  $D
  DC.B  "Diskmonitor commands:",$D
  DC.B  "---------------------",$D
  DC.B  "        rt: Read tracks from active drive        - rt strack (num dest)",$D
  DC.B  "        rs: Read sectors from active drive       - rs start-sector (num dest)",$D
  DC.B  "        rb: Read bytes from active drive         - rb start-offset (num dest)",$D
  DC.B  "        rp: Read pdos tracks from active drive   - rp strack (num dest key)",$D
  DC.B  "       rps: Read pdos sectors from active drive  - rps start-sector (num dest)",$D
  DC.B  "       rpb: Read pdos bytes from active drive    - rpb start-offset (num dest)",$D
  DC.B  "        rr: Read raw mfm tracks from active dr   - rr st sync words (num dest)",$D
  DC.B  "        wt: Write tracks to active drive         - wt strack num source",$D
  DC.B  "        wp: Write pdos tracks to active drive    - wp strack num src key",$D
  DC.B  "        wr: Write raw mfm data to active drive   - wr strack num src words",$D
  DC.B  "       mfm: Decode mfm data                      - mfm src tlen tcnt dest",$D
  DC.B  "                                                     sync soff scnt slen",$D
  DC.B  "                                                     sint (snumoff)",$D
  DC.B  "       rnc: Show rnc serial track                - rnc",$D
  DC.B  "      dmon: Get/display disk-mon buffer          - dmon",$D
  DC.B  "   clrdmon: Restore disk-mon buffer              - clrdmon",$D
  DC.B  "   bootchk: Set correct bootblockchecksum        - bootchk sectoraddr.",$D
  DC.B  "   datachk: Set correct datachecksum             - datachk sectoraddr.",$D
  DC.B  "    bamchk: Set correct bitmapchecksum           - bamchk sectoraddr.",$A
  DC.B  $D
  DC.B  "Trainer commands:",$D
  DC.B  "-----------------",$D
  DC.B  "        ts: Start trainer/trainermode            - ts startlives startaddress",$D
  DC.B  "         t: Show addresses/continue trainer      - t (actlives)",$D
  DC.B  "        tx: Exit trainermode                     - tx",$D
  DC.B  "        tf: Search for decrementing opcodes      - tf address",$D
  DC.B  "       tfd: Search and remove decrement opcodes  - tfd address",$D
  DC.B  "        pc: Show current picture + energy count  - pc (picnr)",$D
  DC.B  "       tds: Deep trainer start count             - tds",$D
  DC.B  "       tdc: Deep trainer change count            - tdc",$D
  DC.B  "       tdd: Deep trainer delete addresses        - tdd start end",$D
  DC.B  "        td: Display deep trainer addresses       - td",$D
  DC.B  "       tdi: Display probable trainer addresses   - tdi",$D
  DC.B  "       tdx: Exit old deep trainer                - tdx",$A
  DC.B  $D
  DC.B  "Misc. commands",$D
  DC.B  "--------------",$D
  DC.B  "   ramtest: Checks memoryblock for harderrors    - ramtest start end",$D
  DC.B  "      pack: Packs memory                         - pack start end dest crrate",$D
  DC.B  "    unpack: Unpacks with pack-command packed mem - unpack dest endofpacked",$D
  DC.B  "     color: Set/show module-editor colors        - color (back pen)",$D
  DC.B  "    rcolor: Reset module-editor colors           - rcolor",$D
  DC.B  "        tm: Show remarks about curr. program     - tm",$D
  DC.B  "       tms: Set remark about curr. programaddr.  - tms addr",$D
  DC.B  "       tmd: Delete remark about program          - tmd addr",$D
  DC.B  "       spr: Show/edit sprites                    - spr nr|addr (nr|addr)",$D
  DC.B  "   version: Show cartridge-version               - version",$D
  DC.B  " megastick: Joystick-handler (1 = only player 1) - megastick (1)",$D
  DC.B  "   nostick: Remove joystick-handler              - nostick",$D
  DC.B  "  clrstick: Clear all joystick-handler codes     - clrstick",$D
  DC.B  "    lstick: Load joystick-handler data           - lstick (path)name",$D
  DC.B  "    sstick: Save joystick-handler data           - sstick (path)name",$D
  DC.B  "     reset: Exit AR and reset Amiga              - reset",$D
  DC.B  "       pal: Switch to ECS PAL mode               - pal",$D
  DC.B  "      ntsc: Switch to ECS NTSC mode              - ntsc",$D
  DC.B  "    setmap: Keymap editor                        - setmap",$D
  DC.B  "    keymap: Switch keymap                        - keymap code",$D
  DC.B  "    setcop: Copper specify for Exit of AR-PRO    - setcop (address)",$D
  DC.B  "     ascii: Show ASCII-Table                     - ascii",$D
  DC.B  "     alert: Display alert (guru) list            - alert (guru-number)",$D
  DC.B  "    diskio: install rob northen diskio routines  - diskio (address)",$D
  DC.B  "     dosio: install rob northen dosio routines   - dosio (address)",$D
  DC.B  "     flash: flash a new rom (requires flash hw)  - flash (path)name",$D
  if arhardware=1
  DC.B  "     arram: display the amount of memory on cart - arram",$D
  endc
  DC.B  "     crc16: calculate a crc16 checksum           - crc16 start end",$D
  DC.B  "     crc32: calculate a crc32 checksum           - crc32 start end",$D
  DC.B  "       led: toggle led status                    - led",$D
  DC.B  "     imode: Entering AR-PRO mode                 - imode 0|1|2|3",$D
  DC.B  "      kill: Removes action replay from memory    - kill",$D
  DC.B  "    allexc: Enable/Disable exception activation  - allexc",$D
  DC.B  "    deepmw: Enable/Disable deep memwatcher       - deepmw",$D
  DC.B  "  romavoid: Enable/Disable triggering from ROM   - romavoid",$D
  DC.B  "kickromadr: Change kickstart placement adr       - kickromadr",$D
  DC.B  "     cache: Change cache status (020/030 only)   - cache 0|1",$A
  DC.B  $D
  DC.B  "Printer commands:",$D
  DC.B  "-----------------",$D
  DC.B  " smallchar: Activate very small printer chars    - smallchar",$D
  DC.B  "normalchar: Normal printerchars                  - normalchar",$D
  DC.B  "       prt: Print string                         - prt string",$D
  DC.B  $D
  DC.B  "Virus commands:",$D
  DC.B  "---------------",$D
  DC.B  "    virus: Search virus in memory                - virus",$D
  DC.B  "killvirus: Search and remove virus in memory     - killvirus",$A
  DC.B  $D
  DC.B  "Monitor command:",$D
  DC.B  "----------------",$D
  DC.B  " setexcept: Set exception handler (no more guru) - setexcept",$D
  DC.B  "    setapi: Set api handler (see api document)   - setapi",$D
  DC.B  "    clrapi: Remove api handler (see api document)- clrapi",$D
  DC.B  "      comp: Compare memoryblocks                 - comp start end dest",$D
  DC.B  "        lm: Load file to memory                  - lm (path)name,dest",$D
  DC.B  "        sm: Save memoryblock to disk             - sm (path)name,start end",$D
  DC.B  "      smdc: Save memoryblock to disk as dc.b     - smdc (path)name,start end",$D
  DC.B  "    smdata: Save memoryblock to disk as data     - smdata (path)name,start end",$D
  DC.B  "         a: Start mc68000 assembler              - a address",$D
  DC.B  "         b: Show current breakpoints             - b address",$D
  DC.B  "        bs: Set breakpoint                       - bs address",$D
  DC.B  "        bd: Delete breakpoint                    - bd address",$D
  DC.B  "       bda: Delete all breakpoints               - bda",$D
  DC.B  "        mw: Display memwatchpoints               - mw",$D
  DC.B  "        ms: Set memwatchpoint                    - ms address",$D
  DC.B  "        md: Delete memwatchpoint                 - md address",$D
  DC.B  "       mda: Delete all memwatchpoints            - mda",$D
  DC.B  "        tr: Trace current program (not subs)     - tr (steps)",$D
  DC.B  "        st: Trace current program (also subs)    - st (steps)",$D
  DC.B  "         x: Restart current program              - x",$D
  DC.B  "         c: Copperassembler/disassembler         - c 1|2|address",$D
  DC.B  "         d: MC68000 disassembler                 - d (0|address)",$D
  DC.B  "        dd: MC68000 disassembler (8 lines)       - dd (0|address)",$D
  DC.B  "       ddd: MC68000 disassembler (16 lines)      - ddd (0|address)",$D
  DC.B  "         e: Show/edit chipregisters              - e (offset)",$D
  DC.B  "        ea: Show complete aga pallete            - ea",$D
  DC.B  "         f: Search for string (casesensitive)    - f string(,start end)",$D
  DC.B  "        fa: Search for adr addressing opcode     - fa address (start end)",$D
  DC.B  "       faq: Fastsearch for adr addressing opcode - faq adr (start end)",$D
  DC.B  "        fr: Search for relative-string           - fr string(,start end)",$D
  DC.B  "        fc: Search for copylock code             - fc (start end)",$D
  DC.B  "        ci: Show copylock info                   - ci <addr>",$D
  DC.B  "        fs: Search string (not casesensitive)    - fs string(,start end)",$D
  DC.B  "         g: Restart program at address           - g (address)",$D
  DC.B  "     trans: Copy memoryblock                     - trans start end dest",$D
  DC.B  "        ws: Write string to memory               - ws string, address",$D
  DC.B  "         m: Show/edit memory as bytes            - m address",$D
  DC.B  "        mm: Show/edit memory as bytes (8 lines)  - mm address",$D
  DC.B  "       mmm: Show/edit memory as bytes (16 lines) - mmm address",$D
  DC.B  "   memcode: Codes memory (eor.b)                 - memcode start end code",$D
  DC.B  "       add: Adds value to memory-range           - add start end value",$D
  DC.B  "         n: Show/edit memory as ascii            - n address",$D
  DC.B  "        nn: Show/edit memory as ascii (8 lines)  - nn address",$D
  DC.B  "       nnn: Show/edit memory as ascii (16 lines) - nnn address",$D
  DC.B  "        no: Show/set ascii-dump offset           - no (offset)",$D
  DC.B  "        mq: Display memory quick as hex/ascii    - mq address",$D
  DC.B  "        nq: Display memory quick as ascii        - nq address",$D
  DC.B  "         o: Fill memoryblock with string         - o string, start end",$D
  DC.B  "      robd: Enable/Disable Rob Northen MODE      - robd",$D
  DC.B  "         r: Show/edit processor registers        - r (reg value)",$D
  DC.B  "         rc: Show 020+ control registers         - rc",$D
  DC.B  "         rf: Show fpu registers                  - rf",$D
  DC.B  "         rm: Show mmu registers                  - rm",$D
  DC.B  "         w: Show/edit cia's                      - w (register)",$D
  DC.B  "         y: Show/edit memory as binary           - y address",$D
  DC.B  "        yy: Show/edit memory as binary (8 lines) - yy address",$D
  DC.B  "       yyy: Show/edit memory as binary (16 lines)- yyy address",$D
  DC.B  "        ys: Show/set datawidth for the y command - ys (bytes)",$D
  DC.B  "         ?: Calculator                           - ? (+|-|*|/ value)",$A
  DC.B  $D
  DC.B  "Number formats:",$D
  DC.B  "---------------",$D
  DC.B  "hexadecimal:  $12ab or 12ab",$D
  DC.B  $D
  DC.B  "decimal:      -!15 , !880",$D
  DC.B  $D
  DC.B  "binary:       %001110101 , -%101",$D
  DC.B  $D
  DC.B  "register:     \d0,..,\d7,\a0,..,\a7,\pc,\sp(=usp) \b(=Dmon-Buffer)",$D
  DC.B  $D
  DC.B  "diskmonitor (if using rt and wt commands with diskbuffer):",$D
  DC.B  " a) t = track (!0 - !159), s = sector (!0 - !10), o = offset (!0 - !511)",$D
  DC.B  " b) s = sector (!0 - !1760) , o = offset (!0 - !511)",$D
  DC.B  $D
  DC.B  " Example to read/display rootblock:",$D
  DC.B  "     rt !75 !10",$D
  DC.B  "     m t!80 or m t!80s0 or m t$50s0o0 or m t50s0o0 or m s!880 or m s370",$A
  DC.B  $D
  DC.B  "Editor-tools:",$D
  DC.B  "-------------",$D
  DC.B  "HELP   : This short help",$D
  DC.B  $D
  DC.B  "SH HELP: Show shortcuts for some commands",$D
  DC.B  "SHIFT  : No Scroll/pause",$D
  DC.B  $D
  DC.B  "TAB    : Insert space(s)",$D
  DC.B  "ESC    : Escape any command (not t/ts !)",$D
  DC.B  "F1     : Clr + cursor home",$D
  DC.B  "SH F1  : Cursor home",$D
  DC.B  "F2     : Restore screen from second screen",$D
  DC.B  "SH F2  : Save screen to second screen",$D
  DC.B  "F3     : Preferences+system control",$D
  DC.B  "F4     : Repeat last command",$D
  DC.B  "F5     : Print screen",$D
  DC.B  "F6     : Switch printer dump on/off",$D
  DC.B  "F7     : Switch overwrite/insert mode",$D
  DC.B  "F8     : Show instructions for the mempeeker",$D
  DC.B  "F9     : Switch uk, german & usa keyboard",$D
  DC.B  "SH F9  : Compare screen pages",$D
  DC.B  "F10    : Switch screen",$D
  DC.B  "SH F10 : Switch between 15Mhz/31Mhz",$D
  DC.B  $D
  DC.B  "POWER-LED is off = ready to execute commands!",$D
  DC.B  "Press left mousebutton to abort printer output",$D
  DC.B  "Use cursorkeys in combination with shift too",$D
  DC.B  "============================================",$D
  DC.B  $D
  DC.B  0

MemPeekerText:
  DC.B  $D
  DC.B  "Instructions for the mempeeker v2.2",$D
  DC.B  "===============================",$D
  DC.B  "      a - Autoplane",$D
  DC.B  "      b - Brightness plus",$D
  DC.B  "SHIFT b - Brightness minus",$D
  DC.B  "      c - Colorreg +1",$D
  DC.B  "SHIFT c - Colorreg +16 (AGA)",$D
  DC.B  "      d - Dual playfield mode on",$D
  DC.B  "SHIFT d - Dual playfield mode off",$D
  DC.B  "      e - Right border plus",$D
  DC.B  "SHIFT e - Right border minus",$D
  DC.B  "      f - Fast plane up",$D
  DC.B  "SHIFT f - Fast plane down",$D
  DC.B  "      g - Interlace mode on",$D
  DC.B  "SHIFT g - Interlace mode off",$D
  DC.B  "      h - Hold and modify (ham) on",$D
  DC.B  "SHIFT h - Hold and modify (ham) off",$D
  DC.B  "      i - Invert all colors",$D
  DC.B  "      l - Lores mode on",$D
  DC.B  "SHIFT l - Hires mode on",$D
  DC.B  "      m - Modulo 1+2 plus",$D
  DC.B  "      n - Modulo 1+2 minus",$D
  DC.B  "      o - Modulo 1 minus",$D
  DC.B  "SHIFT o - Modulo 2 minus",$D
  DC.B  "      p - Modulo 1 plus",$D
  DC.B  "SHIFT p - Modulo 2 plus",$D
  DC.B  "      q - Clr modulo 1+2",$D
  DC.B  "      r - Rotate planepointer",$D
  DC.B  "      s - Left border minus",$D
  DC.B  "SHIFT s - Left border plus",$D
  DC.B  "      w - White helpscreen",$D
  DC.B  "SHIFT w - Black helpscreen",$D
  DC.B  "      x - Colorreg -1",$D
  DC.B  "SHIFT x - Colorreg -16 (AGA)",$D
  DC.B  "      y - Switch diw and ddf mode",$D
  DC.B  "      0 - Unlock all planes",$D
  DC.B  "SHIFT 0 - Lock all planes",$D
  DC.B  "      1 - Lock plane 1",$D
  DC.B  "SHIFT 1 - Unlock plane 1",$D
  DC.B  "      2 - Lock plane 2",$D
  DC.B  "SHIFT 2 - Unlock plane 2",$D
  DC.B  "      3 - Lock plane 3",$D
  DC.B  "SHIFT 3 - Unlock plane 3",$D
  DC.B  "      4 - Lock plane 4",$D
  DC.B  "SHIFT 4 - Unlock plane 4",$D
  DC.B  "      5 - Lock plane 5",$D
  DC.B  "SHIFT 5 - Unlock plane 5",$D
  DC.B  "      6 - Lock plane 6",$D
  DC.B  "SHIFT 6 - Unlock plane 6",$D
  DC.B  "      7 - Lock plane 7",$D
  DC.B  "SHIFT 8 - Unlock plane 8",$D
  DC.B  "      + - 1 bitplane plus",$D
  DC.B  "      - - 1 bitplane minus",$D
  DC.B  "      = - Set all bitplanes to bitplane1",$D
  DC.B  "     F1 - Default colors",$D
  DC.B  "     F2 - Random colors",$D
  DC.B  "     F3 - Reset",$D
  DC.B  "     F4 - Red color plus",$D
  DC.B  "SHFT F4 - Red color minus",$D
  DC.B  "     F5 - Blue color plus",$D
  DC.B  "SHFT F5 - Blue color minus",$D
  DC.B  "     F6 - Green color plus",$D
  DC.B  "SHFT F6 - Green color minus",$D
  DC.B  "   F10  - Set chosen picture into current program",$D
  DC.B  "   LEFT - Rotate picture left",$D
  DC.B  "  RIGHT - Rotate picture right",$D
  DC.B  "     UP - Scroll picture up",$D
  DC.B  "SHFT UP - Scroll picture up fast",$D
  DC.B  "   DOWN - Scroll picture down",$D
  DC.B  "SH DOWN - Scroll picture down fast",$D
  DC.B  "    DEL - Hide helpscreen",$D
  DC.B  "LEFT MOUSEBUTTON  - Picture heigth plus",$D
  DC.B  "RIGHT MOUSEBUTTON - Picture heigth minus",$D
  DC.B  "Set helpscreen with mouse on position",$D
  DC.B  $D
  DC.B  "    ESC - Quit mempeeker",$D
  DC.B  "   HELP - Show helpscreen",$D
  DC.B  $D

  DC.B  "To save mempeeker-picture quit mempeeker and save picture with spm command",$D
  DC.B  0
  even
LAB_424826:
  DC.L  $0006ab18,$0006ab80,$0006aaf8,$0006ab00
  DC.L  $0006ab58,$0006ac80,$0006ab08,$0006ab10
  DC.L  $0000ff07,$ff07fe00,$ffbfffef,$ffeffff7
  DS.L  1
  DC.L  $000000ff,$47f4ff7f,$00000007,$07030303
  DC.L  $03030703,$03030307,$43078000,$07074707
  DC.L  $07074747,$47070707,$80000000,$47070747
  DC.L  $47474747,$07030307,$80000000,$01470707
  DC.L  $07074707,$03030780
  DS.L  1
  DC.L  $42004100,$04020080,$80800080,$41414141
  DC.L  $41414141,$41414141,$41410505,$00000040
  DC.L  $80808080,$80808080,$7e607e60,$21b92131
  DC.L  $b2402232,$23b3a733,$a2b02434,$25bc2535
  DC.L  $5ebd2636,$26be2f37,$2ab72838,$28ab2939
  DC.L  $29bb3d30,$5f2d3fdf,$0006ad20,$7c5c7c5c
  DS.L  1
  DC.L  $00000030,$c5e55171,$b0b05777,$0006ad2a
  DC.L  $aeae5272,$defe5474,$a5a45a7a,$0006ad42
  DC.L  $0006ad5a,$0006ad72,$b6b65070,$7b5bdcfc
  DC.L  $7d5d2a2b
  DS.L  1
  DC.L  $00000031,$00000032,$00000033,$0006ad8a
  DC.L  $a7df5373,$d0f04464,$0006ada2,$0006adb8
  DC.L  $0006adce,$0006ade4,$0006adfa,$a3a34c6c
  DC.L  $3a3bd6f6,$2227c4e4,$5e235e23
  DS.L  1
  DC.L  $00000034,$00000035,$00000036,$00003e3c
  DC.L  $0006ae10,$f7d75878,$c7e74363,$aaaa5676
  DC.L  $baba4262,$0006ae28,$bfb84d6d,$3c2c3b2c
  DC.L  $3e2e3a2e,$3f2f5f2d
  DS.L  1
  DC.L  $0000002e,$00000037,$00000038,$00000039
  DC.L  $0006ae40,$00000008,$0006ae46,$0000000d
  DC.L  $00000a0d,$00009b1b,$0000007f
  DS.L  3
  DC.L  $0000002d
  DS.L  1
  DC.L  $0006ae4e,$0006ae56,$0006ae5e,$0006ae68
  DC.L  $0006ae72,$0006ae7e,$0006ae8a,$0006ae96
  DC.L  $0006aea2,$0006aeae,$0006aeba,$0006aec6
  DC.L  $0006aed2,$0006aede,$1b1b7b5b,$1d1d7d5d
  DC.L  $0000002f,$0000002a,$0000002b,$0006aeea
  DS.L  8
  DC.L  $00080008,$01080109,$3d2b0110,$01110112
  DC.L  $01130114,$01150116,$01176545,$a9a90505
  DC.L  $85850110,$01110112,$01130114,$01150116
  DC.L  $01177555,$b5b51515,$95950110,$01110112
  DC.L  $01130114,$01150116,$01176949,$a1a60909
  DC.L  $89890110,$01110112,$01130114,$01150116
  DC.L  $01176f4f,$f8d80f0f,$8f8f0110,$01110112
  DC.L  $01130114,$01150116,$01176141,$e6c60101
  DC.L  $81810110,$01110012,$00120112,$01130114
  DC.L  $01156646,$06068686,$01100111,$00120012
  DC.L  $01120113,$01140115,$67470707,$87870110
  DC.L  $01110012,$00120112,$01130114,$01156848
  DC.L  $08088888,$01100111,$00120012,$01120113
  DC.L  $01140115,$6a4a0a0a,$8a8a0110,$01110012
  DC.L  $00120112,$01130114,$01156b4b,$0b0b8b8b
  DC.L  $01100111,$01120113,$01140115,$01160117
  DC.L  $7959b1ac,$19199999,$01100111,$01120113
  DC.L  $01140115,$01160117,$6e4eadaf,$0e0e8e8e
  DC.L  $01040105,$20a00104,$0205099b,$5a3a0204
  DC.L  $02069b41,$9b540204,$02069b42,$9b530204
  DC.L  $03069b43,$9b204000,$02040306,$9b449b20
  DC.L  $41320304,$04079b30,$7e9b3130,$7e3a0304
  DC.L  $04079b31,$7e9b3131,$7e640304,$04079b32
  DC.L  $7e9b3132,$7e3a0304,$04079b33,$7e9b3133
  DC.L  $7e6c0304,$04079b34,$7e9b3134,$7e330304
  DC.L  $04079b35,$7e9b3135,$7e340304,$04079b36
  DC.L  $7e9b3136,$7e350304,$04079b37,$7e9b3137
  DC.L  $7e360304,$04079b38,$7e9b3138,$7e370304
  DC.L  $04079b39,$7e9b3139,$7e380302,$9b3f7e0b
  DC.L  $181cf008,$03038000,$b5c83109,$f865c059
  DC.L  $2da06002,$066a0600,$2060a060,$02064a06
  DC.L  $02840aa1,$4ee07da1,$a512e701,$01c22284
  DC.L  $c21c0084,$aafc6e09,$422204a8,$cbee0203
  DC.L  $02030000,$81720d3e,$4684102a,$00101fc0
  DC.L  $2e480f86,$0118dc97,$6582a809,$28450831
  DC.L  $8a022605,$0133c20f,$00ffc493,$60856016
  DC.L  $882184dc,$a0668bcc,$0f9870aa,$84c0b905
  DC.L  $a0206740,$58ac0020,$28268014,$12000a00
  DC.L  $83200380,$92c9833c,$01a081e6,$01604680
  DC.L  $29180dc1,$36602024,$106e38a0,$c0b58152
  DC.L  $64938668,$0c468073,$8206c92e,$81e8041a
  DC.L  $181d0081,$9505c1b2,$65003068,$3804281c
  DC.L  $08c8159a,$14940d60,$4240b023,$20580206
  DC.L  $3808b861,$81429404,$ae981090,$72c03d83
  DC.L  $40a081a0,$b0018088,$22168939,$020d42b8
  DC.L  $031bc038,$1104ad6f,$011f4800,$025d401f
  DC.L  $034f7fff,$dbc01d88,$3fc48e05,$6a0191c9
  DC.L  $7601f687,$05805054,$5ec10488,$b9409448
  DC.L  $b9e079c1,$e2d140c8,$20c780b1,$5d20274c
  DC.L  $004c1925,$1c021010,$25210964,$038ec0da
  DC.L  $40101c0c,$40784020,$5c83f00f,$f00fd8b0
  DC.L  $0f29f80f,$2f55caf3,$81ba1d05,$fc009701
  DC.L  $bc1205cc,$09050c3c,$90ff481b,$8a13ff3f
  DC.L  $445ed03d,$493f5000,$728bd0e9,$02b80480
  DC.L  $207d0048,$1390240b,$280e07f0,$070040ea
  DC.L  $00702a20,$38129300,$9824a0a6,$266e2629
  DC.L  $03c0b582,$40103940,$240bb012,$04780902
  DC.L  $c8048020,$77004813,$a0240b30,$12063009
  DC.L  $0020d480,$90254048,$10502401,$03d80240
  DC.L  $8e012050,$804832a0,$480206b0,$04816402
  DC.L  $40860122,$20108020,$50386024,$45007080
  DC.L  $1e20e024,$00700207,$c8070881,$02097f02
  DC.L  $e28eb040,$da018030,$0bc86956,$802066a0
  DC.L  $68020613,$24004c0d,$060a0722,$b4010371
  DC.L  $01c02832,$501c0083,$49c93f41,$714e0241
  DC.L  $840ac0e0,$4a112790,$ec5c99f8,$110a2c1c
  DC.L  $8a1265d0,$1206055d,$00e0b82a,$012261be
  DC.L  $0495728b,$17001a06,$2140cf81,$ad3c4dc0
  DC.L  $780206f4,$0240206e,$40241220,$12010349
  DC.L  $01209c00,$904e8048,$040c8809,$4340d100
  DC.L  $81aa0008,$4114a751,$415834c1,$f85a1117
  DC.L  $ac0f0124,$02f84112,$04aea81a,$120131f0
  DC.L  $181bf4f8,$2400ca8a,$0b322492,$4bbc301d
  DC.L  $3c510138,$16700851,$40180bc5,$12788605
  DC.L  $e289480d,$8290e905,$e8c00400,$196c1281
  DC.L  $e405c974,$004083ba,$4c009074,$28f3fc2d
  DC.L  $63428608,$79228320,$0109049c,$0282d605
  DC.L  $bb5804a2,$3a030491,$2002097f,$9e208309
  DC.L  $738707e0,$15281904,$c92001c0,$d04ed298
  DC.L  $9014020d,$bc117a41,$f420fc01,$d003ba05
  DC.L  $03080342,$18445c90,$152400eb,$03816ee5
  DC.L  $6bfe8f88,$c382beb3,$42822c04,$3e4240c2
  DC.L  $321e2202,$00ea0c60,$6002000c,$c800ef42
  DC.L  $c1b90c00,$80b94501,$6001a690,$365109c4
  DC.L  $22401f61,$ed0cc6e1,$dfe65f7e,$0e181ce2
  DC.L  $4401a411,$cd030920,$28041208,$34540080
  DC.L  $039a0a82,$20433279,$130b1402,$8824e4eb
  DC.L  $fe59c620,$70628530,$e206440a,$0c9c0440
  DC.L  $60f80089,$3c08f829,$27813301,$10303190
  DC.L  $325e8010,$72a010a0,$08250064,$01069b8d
  DC.L  $0e890208,$04025201,$666761c4,$ab504140
  DC.L  $01860248,$401fdfe8,$003fffe0,$2001aba2
  DC.L  $0134c760,$9f0e4bbf,$e54e55ce,$1fa00c1f
  DC.L  $24453303,$f2760668,$4834f020,$78c0dc93
  DC.L  $ab8390a9,$120ddbd8,$11bb0b54,$b0248608
  DC.L  $081da010,$8081c083,$83c61696,$46c84838
  DC.L  $213f0607,$3963174b,$22cc52a9,$838da1a7
  DC.L  $a8217ad4,$cbd4c848,$0a06a155,$9505c545
  DC.L  $4e493008,$1ec01037,$60208ca0,$08382828
  DC.L  $6256403a,$a4a4a0f4,$040d7012,$10221c3e
  DC.L  $c1d0428c,$6f92ec07,$836686ce,$2ec2c070
  DC.L  $38e0e066,$5345eccc,$094c3c1d,$68c149f2
  DC.L  $99941424,$9db13979,$4714b676,$b212a962
  DC.L  $e1604662,$3915d80e,$97d56502,$67435b62
  DC.L  $0a260624,$dd4ca10c,$ec4c081c,$9d4d9d9d
  DC.L  $81e32a66,$685456de,$d5d9d4c8,$d5c5dcb0
  DC.L  $9d8120e1,$02274b73,$0b170217,$7b024323
  DC.L  $7b271728,$51252579,$25025a02,$770b4b1b
  DC.L  $53021b7b,$43134b3b,$73281208,$0973c27c
  DC.L  $38d000f1,$02a2f000,$2114048d,$1000cbec
  DC.L  $00c1cad7,$fc2d0391,$149bdb39,$d0da5919
  DC.L  $3a193a79,$03ecb083,$0094c645,$a0458ca0
  DC.L  $2689b8a1,$3ff3f524,$a560f049,$04a01400
  DC.L  $2ff7f440,$2049a720,$60492729,$d58ee170
  DC.L  $2ea20907,$109a43bf,$c190e708,$40851410
  DC.L  $80980201,$03020906,$0a5112a4,$80405666
  DC.L  $c086087b,$40ec0002,$140c402c,$18107830
  DC.L  $82a2c800,$640405f6,$08280582,$aa060141
  DC.L  $84070369,$800220cf,$20822016,$0c5e59a0
  DC.L  $04120582,$07810814,$dac0840a,$c2010117
  DC.L  $948034c8,$04042007,$fc4b9c04,$1a085c00
  DC.L  $128a0393,$4481c081,$a94ccc05,$4a201d22
  DC.L  $06608330,$93260c95,$01069f40,$3eb30b95
  DC.L  $08997db0,$7928c459,$008a2cb2,$aceb26cd
  DC.L  $b2ec3401,$0219f643,$9ee4799e,$579b8007
  DC.L  $8017800f,$98192a20,$06a00ea0,$07a00fa0
  DC.L  $06600e60,$07600f60,$03e01a1c,$32689fe0
  DC.L  $18200c20,$1c200e20,$1e3fffe1,$a83e6470
  DC.L  $01884008,$18053386,$6e040af0,$8cc1927e
  DC.L  $4682ac58,$4bf01483,$66b99206,$a454a295
  DC.L  $9bf0903b,$4d103c28,$f8284412,$24539576
  DC.L  $29aa1e21,$003f0206,$70057020,$6f005702
  DC.L  $06280600,$206a8060,$02066806,$00206380
  DC.L  $600206b8,$0600206e,$12c02f80,$09020604
  DC.L  $06013a00,$424300bd,$00112180,$5f262030
  DC.L  $0be42406,$017c9480,$c02f9190,$18045801
  DC.L  $c90c02ac,$00148601,$36004a43,$00bb0015
  DC.L  $21805926,$a0300b24,$3406011c,$bd660812
  DC.L  $460300b7,$00132180,$47801990,$c02bc001
  DC.L  $c86013e0,$04e43008,$845c0601,$10942488
  DC.L  $840209c2,$90fc0084,$e14800b4,$22060020
  DC.L  $6a200c15,$49126080,$c0a3300a,$18044582
  DC.L  $230308bc,$4c600d28,$60109005,$94300b88
  DC.L  $01ca1824,$8310079c,$30410b50,$2e2d809c
  DC.L  $138b60a7,$00a98053,$40b45b02,$d8020c30
  DC.L  $0b68128b,$603b00a1,$86015d03,$716c0f60
  DC.L  $4918560f,$b0768a28,$06c81375,$019a07c5
  DC.L  $20ce6606,$7cf4050c,$020f8223,$271a0814
  DC.L  $125e0212,$05060092,$00380052,$00170181
  DC.L  $ee200801,$04100838,$20200478,$0a4e8008
  DC.L  $28024006,$660407fc,$010000b2,$028205f0
  DC.L  $007f4080,$5030fff9,$04085000,$6f800101
  DC.L  $7fbff071,$f1f3d1a2,$92aa233e,$0330ce01
  DC.L  $3e4e7e30,$380e0a57,$cb9dcf9b,$cfdc0f81
  DC.L  $8790288b,$02402808,$1fb03806,$82306681
  DC.L  $30c318c0,$c2140206,$0008c842,$4010a020
  DC.L  $679781bc,$0506d81f,$c3cfc4cf,$c31c0fc1
  DC.L  $de1ec7dc,$1d838a01,$0380f1b7,$b7f7f1a0
  DC.L  $a08e5ede,$2ee8e08d,$a0205161,$42466080
  DC.L  $8c00283e,$d0e626c0,$d8060c1e,$81b82021
  DC.L  $32460066,$08b08d8d,$a0a10398,$7341f0f3
  DC.L  $9983187b,$1bf819c3,$00985b73,$739b8340
  DC.L  $71e1f879,$013736e6,$f73786e1,$83f1e3f3
  DC.L  $37b606a0,$ec02d808,$20810bfd,$02021324
  DC.L  $c02de180,$286e153c,$41343008,$0e440121
  DC.L  $084730ff,$0702ec40,$d8640018,$0194a04f
  DC.L  $80502e04,$1028362a,$405032f9,$003a0f02
  DC.L  $6092ba80,$4d4f32c3,$7a066c00,$a74240b9
  DC.L  $4740b04c,$80e02080,$70168038,$151e6834
  DC.L  $f8000a8d,$3d47d24c,$3c279a0c,$81e18010
  DC.L  $3c20184f,$e1210825,$87800fe5,$20501cd8
  DC.L  $4229d483,$1048c920,$30409808,$19d414fa
  DC.L  $1c0a8d50,$08413053,$c0dd2415,$e8141ab8
  DC.L  $21e80019,$2d22a13b,$0150a580,$e842c088
  DC.L  $26603a88,$028c10cc,$5130b810,$4161305c
  DC.L  $84c0f40a,$0d380b82,$aa07a812,$80655209
  DC.L  $e62394d4,$006a0056,$00c2aa06,$c1290911
  DC.L  $42dc4832,$0318080b,$880c2200,$274bb00b
  DC.L  $df8b8005,$cc2410e0,$38488070,$87a9e444
  DC.L  $a0a9e4b2,$42938001,$172011a9,$f83950d3
  DC.L  $89458560,$d04a00f5,$0019067c,$e082c054
  DC.L  $83c4808f,$01ea01f8,$11040288,$bc40f848
  DC.L  $0d5726a8,$01e02131,$700606fb,$4c8c83a9
  DC.L  $ba020040,$c0c369a1,$b100a760,$21110973
  DC.L  $81808228,$4b8c8901,$059f003d,$a875ab00
  DC.L  $7d240b19,$11141304,$1003fc12,$fdfab044
  DC.L  $0997dc03,$07276a88,$0f26b224,$ee0c3089
  DC.L  $000e0438,$062040cb,$ea101044,$26e01414
  DC.L  $200c43c2,$00c9a9c4,$54283018,$0502d9a0
  DC.L  $b70e1607,$30ba7081,$0605c809,$10809803
  DC.L  $41c2304c,$81252096,$845484d8,$80c2f801
  DC.L  $b32948a1,$3410022b,$4ffc7f35,$4ed98398
  DC.L  $4d4a542c,$c8044813,$c0365fff,$f980781b
  DC.L  $a3d0607a,$2de0308a,$0241ac59,$50484848
  DC.L  $e22cca00,$8091b424,$47e00108,$e138e931
  DC.L  $527feefe,$1d833a98,$6a123caa,$8280821f
  DC.L  $45a4f520,$31822e61,$b2271104,$9bca0166
  DC.L  $5fe300a6,$a104a10a,$4015045d,$ff598600
  DC.L  $7f0680e6,$d9c0daa0,$06983044,$0dc00848
  DC.L  $2a68038a,$18043401,$250c028b,$00028301
  DC.L  $490065b8,$06082600,$83530611,$8c008412
  DC.L  $fefa0874,$c2240770,$9b910201,$22d120d8
  DC.L  $6d23e48b,$dfe2ce4a,$ec248222,$60c03000
  DC.L  $a5980501,$020905c0,$c0830141,$00491288
  DC.L  $30090081,$90009008,$1d000900,$81b00090
  DC.L  $081f0009,$2602a242,$02f01c81,$00818402
  DC.L  $3e60188a,$08301521,$820e05c8,$e083b008
  DC.L  $34c02864,$12615500,$c03d0008,$0206d006
  DC.L  $80207500,$68948520,$c0040d40,$0b1300c8
  DC.L  $4841a0a2,$00f68425,$0020000a,$28123db0
  DC.L  $b0102500,$1814c0c2,$0c11f006,$f2182889
  DC.L  $600b0b02,$100b8002,$10a78111,$caf53003
  DC.L  $03b78081,$b96ec07f,$5580885c,$6008c830
  DC.L  $444005c8,$60105838,$0c021800,$4c860164
  DC.L  $00064300,$9c001521,$80520002,$90c149c0
  DC.L  $06506017,$f0012430,$09780114,$22f002b8
  DC.L  $00100701,$9a6b160b,$e894ad31,$00146bcc
  DC.L  $0108c002,$a040d225,$50667c2c,$0a4be022
  DC.L  $822211c4,$b280b598,$41284342,$c21e03d4
  DC.L  $af813850,$04221181,$004b0002,$05000302
  DC.L  $8600817e,$015c8481,$c6a148c0,$de7317c0
  DC.L  $3008d790,$e81fcb80,$0ca8005f,$9ff8e221
  DC.L  $6ba00338,$941ceefb,$0f0442a4,$ae1c8ce0
  DC.L  $18190470,$110cf407,$1080e000,$c0600402
  DC.L  $50213f14,$db081c5d,$810c0ae5,$5c4044aa
  DC.L  $6831fee8,$80461966,$60664540,$580e0610
  DC.L  $b87fcb85,$002069d1,$80a04e51,$d0301fe0
  DC.L  $18516001,$878017d4,$10110020,$41033eaf
  DC.L  $e95c17e3,$f0030438,$14400513,$2cae2a53
  DC.L  $9030aac0,$1987e284,$ffdaf890,$50780824
  DC.L  $0be01201,$81ba4141,$8afd0764,$cb1f9169
  DC.L  $213a6005,$bd7e7102,$41790100,$aa062f9f
  DC.L  $be010180,$01007aa9,$880e06a5,$80127c5d
  DC.L  $3f6cf45e,$3f2c0040,$c0e20258,$0102940b
  DC.L  $a00a0ba5,$3f029100,$03801035,$902a5007
  DC.L  $02017878,$98265169,$03803030,$ca8003e3
  DC.L  $987c8310,$002409a1,$01400e0c,$2c5cc110
  DC.L  $5c117520,$956c34ce,$3b87d838,$109a4070
  DC.L  $27681052,$940512d0,$00810204,$02038d90
  DC.L  $6c093278,$22f6f8b8,$22e6f83e,$1107649b
  DC.L  $c100e364,$f197d874,$2be0602b,$b8180081
  DC.L  $fbc04180,$af601903,$601fbf60,$064bf01d
  DC.L  $2a000064,$7f800281,$00606e20,$10169002
  DC.L  $09080405,$6402026c,$03c2b10f,$e4211081
  DC.L  $8afeff80,$817300a1,$2300904e,$5cb390a0
  DC.L  $2d4a411c,$d8908920,$a0311102,$414c610f
  DC.L  $e1017f81,$027107e0,$b0040c06,$120a11a0
  DC.L  $30283948,$00440005,$f84201cc,$3f424088
  DC.L  $42388bfb,$f861bec3,$d501803f,$e8ee3000
  DC.L  $74cca370,$100ed020,$0281fc44,$02200201
  DC.L  $06100288,$100ac008,$04981f62,$ec020a00
  DC.L  $02228000,$29400028,$a021c080,$5cc04023
  DC.L  $60201570,$100968a0,$00b47000,$3a38003d
  DC.L  $1c07c810,$5808d020,$14c01008,$98900010
  DC.L  $5800222c,$0df02098,$1fe0402e,$00201680
  DC.L  $1008c8f0,$32408043,$4781aa04,$02f40201
  DC.L  $281e0005,$8f03cc08,$04507800,$56220dd0
  DC.L  $2013e010,$0a080804,$440402e2,$02012901
  DC.L  $00ac8080,$4140402c,$a0201350,$100a6808
  DC.L  $04740402,$fa020123,$0100a980,$8042c040
  DC.L  $2d602013,$b0100a38,$08045c04,$02ee0201
  DC.L  $2f010420,$bf0101ae,$19060810,$09800805
  DC.L  $20040230,$02017801,$00920080,$55004021
  DC.L  $802016c0,$1009e008,$05080402,$24020172
  DC.L  $01009500,$80568040,$20c02016,$601009b0
  DC.L  $08053804,$023c0201,$7e010090,$80805440
  DC.L  $40212020,$16901009,$c8080514,$04022a02
  DC.L  $0a41d610,$0040c030,$000089e8,$095e5999
  DC.L  $00001478
ALoadDataEnd:
SUB_425B32:
  MOVEA.L EXT_4.W,A6
  LEA $15E(A6),A0
LAB_425B3A:
  MOVEA.L (A0),A3
  MOVEA.L A3,A1
  LEA $A(A1),A0
  MOVEA.L (A0),A0
  LEA ConsoleDev(PC),A2
LAB_425B48:
  MOVE.B  (A0)+,D0
  TST.B D0
  BEQ.W LAB_425B58
  CMP.B (A2)+,D0
  BEQ.S LAB_425B48
LAB_425B54:
  MOVEA.L A3,A0
  BRA.S LAB_425B3A
LAB_425B58:
  TST.B (A2)
  BNE.S LAB_425B54
  LEA $98(A3),A0
  MOVE.L  A0,LAB_A4843E
  MOVE.W  #$0418,LAB_A48442
  LEA LAB_424826(PC),A1
  MOVEA.L 8(A1),A1
  LEA -32(A1),A1
  MOVE.L  A1,LAB_A4844A
  MOVEQ #0,D0
  MOVE.W  LAB_A48442,D0
  MOVE.L  #$00010000,D1
  MOVEA.L EXT_4.W,A6
  PEA -198(A6)
  JSR SUB_A253D0
  MOVE.L  D0,LAB_A48446
  BEQ.W LAB_425BD8
  MOVE.W  LAB_A48442,D1
  MOVEA.L LAB_A48446,A0
  LEA LAB_424826(PC),A1
  SUBQ.W  #1,D1
LAB_425BB8:
  MOVE.B  (A1)+,(A0)+
  DBF D1,LAB_425BB8
  JSR SUB_425C16
  MOVEA.L LAB_A4843E,A1
  MOVEA.L LAB_A48446,A2
  MOVEQ #7,D1
LAB_425BD2:
  MOVE.L  (A2)+,(A1)+
  DBF D1,LAB_425BD2
LAB_425BD8:
  RTS
SUB_425C16:
  MOVEM.L D0-D2/A0-A2,-(A7)
  MOVEA.L LAB_A48446,A0
  MOVE.L  A0,D1
  SUB.L LAB_A4844A,D1
  MOVEQ #7,D2
LAB_425C2A:
  ADD.L D1,(A0)+
  DBF D2,LAB_425C2A
  MOVEA.L LAB_A48446,A0
  MOVEA.L (A0)+,A1
  MOVEA.L (A0),A2
  MOVEQ #0,D2
LAB_425C3C:
  MOVEA.L A1,A0
  MOVE.B  (A0),D0
  BTST  #6,D0
  BEQ.W LAB_425C4C
  MOVEA.L A2,A0
  ADD.L D1,(A0)
LAB_425C4C:
  LEA 1(A1),A1
  LEA 4(A2),A2
  ADDQ.W  #1,D2
  CMPI.W  #$0067,D2
  BLS.S LAB_425C3C
  MOVEM.L (A7)+,D0-D2/A0-A2
  RTS
SUB_425C62:
  MOVEM.L D0-D1/A0-A1,-(A7)
  CMPI.L  #$0000000f,LAB_A483B2
  BLS.W LAB_425CF2
  MOVEQ #$20,D0
  MOVE.L  #$00010001,D1
  MOVEA.L EXT_4.W,A6
  PEA -198(A6)
  JSR SUB_A253D0
  TST.L D0
  BEQ.W LAB_425CF2
  MOVE.L  LAB_A483B2,D1
  LSR.L #2,D1
  SUBQ.L  #1,D1
  MOVEA.L LAB_A483AA,A0
  MOVEA.L EXT_4.W,A6
  LEA $142(A6),A0
  MOVE.L  (A0),D1
  MOVE.L  D0,(A0)
  MOVEA.L D0,A1
  MOVE.L  D1,(A1)
  MOVE.L  A0,4(A1)
  MOVE.W  #$0a14,8(A1)
  CLR.L $A(A1)
  MOVE.W  #5,$E(A1)
  MOVE.L  LAB_A483AA,$10(A1)
  MOVE.L  LAB_A483AA,$14(A1)
  MOVE.L  LAB_A483AE,$18(A1)
  MOVE.L  LAB_A483B2,D0
  SUBQ.L  #8,D0
  MOVE.L  D0,$1C(A1)
  MOVEA.L $10(A1),A0
  CLR.L (A0)
  MOVE.L  D0,4(A0)
LAB_425CF2:
  MOVEM.L (A7)+,D0-D1/A0-A1
  RTS
CMD_SQMEM:
  JSR ReadParameter
  TST.B ParamFound
  BEQ.S LAB_A2DB76
  TST.L D0
  BNE.S LAB_A2DB56
  SF  LAB_A48397
  BRA.S LAB_A2DBA0
LAB_A2DB56:
  CMPI.L  #$00080000,D0
  BLS.W LAB_A289B4
  MOVEA.L D0,A1
  SF  LAB_A48397
  MOVE.L  D0,LAB_A483B6
  BEQ.S LAB_A2DB76
  ST  LAB_A48397
LAB_A2DB76:
  LEA SQNoMemText(PC),A0
  TST.B LAB_A48397
  BNE.S LAB_A2DB8A
  JSR PrintText
  BRA.S LAB_A2DBA0
LAB_A2DB8A:
  LEA SQMemText(PC),A0
  JSR PrintText
  MOVE.L  LAB_A483B6,D0
  JSR PrintAddressHex
LAB_A2DBA0:
  JSR PrintReady
  RTS

SQNoMemText:
  DC.B  "No expansion memory for savequick!",$D,0

SQMemText:
  DC.B  "Savequick uses expansion memory from: ",0,0

CMD_ST:
  LEA MemWatchAddrs,A2
  MOVEQ #4,D1
LAB_A2DBFC:
  TST.L (A2)+
  BPL.S LAB_A2DC4E
  DBF D1,LAB_A2DBFC
  TST.B TraceActive
  BNE.S LAB_A2DC3C
  JSR ReadParameter
  TST.B ParamFound
  BNE.S LAB_A2DC1C
  MOVEQ #1,D0
LAB_A2DC1C:
  MOVE.L  D0,TraceStepCount
  BNE.S LAB_A2DC2E
  MOVE.L  #1,TraceStepCount
LAB_A2DC2E:
  ST  restartFlag
  SF  TraceSkipSubs
  RTS
LAB_A2DC3C:
  LEA AlreadyActiveText(PC),A0
LAB_A2DC40:
  JSR PrintText
  JSR PrintReady
  RTS
LAB_A2DC4E:
  LEA CantTraceText(PC),A0
  BRA.S LAB_A2DC40
AlreadyActiveText:
  DC.B  "Trace already active: quit modul to finish actual trace!",$D,0

CantTraceText:
  DC.B  "Cannot trace: memwatchpoints active!",$D,0

CMD_TR:
  LEA MemWatchAddrs,A2
  MOVEQ #4,D1
LAB_A2DCBC:
  TST.L (A2)+
  BPL.S LAB_A2DD0E
  DBF D1,LAB_A2DCBC
  TST.B TraceActive
  BNE.S LAB_A2DCFC
  JSR ReadParameter
  TST.B ParamFound
  BNE.S LAB_A2DCDC
  MOVEQ #1,D0
LAB_A2DCDC:
  MOVE.L  D0,TraceStepCount
  BNE.S LAB_A2DCEE
  MOVE.L  #1,TraceStepCount
LAB_A2DCEE:
  ST  restartFlag
  ST  TraceSkipSubs
  RTS
LAB_A2DCFC:
  LEA AlreadyActiveText(PC),A0
LAB_A2DD00:
  JSR PrintText
  JSR PrintReady
  RTS
LAB_A2DD0E:
  LEA CantTraceText(PC),A0
  BRA.S LAB_A2DD00
ActivateTrace:
  TST.L TraceStepCount
  BEQ.W LAB_A2DDAE
  MOVE.L  TRACE.W,OldTrace
  if pistorm=1
  ;enable trace
  dc.w $4e7a,$01e0  ;movec #$1e0,d0
  or.w #$1000,d0
  dc.w $4e7b,$01e0  ;movec d0,#$1e0
  endc


  move.l a0,-(a7)
  lea EXT_150.W,a0

  if arhardware=1
  move.l #$4a3900bf,(a0)+
  move.l #$e00160f8,(a0)+
  endc

  if arhardware=0
  MOVE.W #$4ef9,(a0)+
  MOVE.L #DoArTrace,(a0)+
  endc

  JSR getVBR
  MOVE.L  #EXT_150,TRACE(a0)
  move.l (a7)+,a0

  BSET  #7,SaveOldSr
  ST  TraceActive
  SF  LAB_A483DE
  TST.B TraceSkipSubs
  BEQ.S LAB_A2DDAE
  MOVEM.L D0/A0,-(A7)
  MOVEA.L SaveOldPc,A0
  MOVE.W  (A0),D0
  ANDI.W  #$ffc0,D0
  CMPI.W  #$4e80,D0
  BNE.S LAB_A2DD90
  MOVE.W  (A0),D0
  CMPI.W  #$4eb9,D0
  BNE.S LAB_A2DD6C
  MOVEQ #6,D0
  BRA.S LAB_A2DD7C
LAB_A2DD6C:
  ANDI.W  #$fff8,D0
  CMPI.W  #$4e90,D0
  BNE.S LAB_A2DD7A
  MOVEQ #2,D0
  BRA.S LAB_A2DD7C
LAB_A2DD7A:
  MOVEQ #4,D0
LAB_A2DD7C:
  ADD.L A0,D0
  MOVE.L  D0,LAB_A484C6
  ST  LAB_A483DE
  MOVEM.L (A7)+,D0/A0
  BRA.S LAB_A2DDAE
LAB_A2DD90:
  MOVE.W  (A0),D0
  ANDI.W  #$ff00,D0
  CMPI.W  #$6100,D0
  BNE.S LAB_A2DDAA
  CMPI.W  #$6100,(A0)
  BNE.S LAB_A2DDA6
  MOVEQ #4,D0
  BRA.S LAB_A2DD7C
LAB_A2DDA6:
  MOVEQ #2,D0
  BRA.S LAB_A2DD7C
LAB_A2DDAA:
  MOVEM.L (A7)+,D0/A0
LAB_A2DDAE:
  RTS
SUB_A2DDB0:
  TST.B TraceActive
  BEQ.S LAB_A2DE06
  BCLR  #7,SaveOldSr
  TST.L TraceStepCount
  BNE.S LAB_A2DDFC
  JSR SUB_A131F6
  SF  LAB_A48205
  MOVE.L  SaveOldPc,D0
  JSR SUB_A12F08
  JSR PrintCR
  SF  TraceActive
  MOVE.L  OldTrace,TRACE.W
  CLR.L TraceStepCount
  RTS
LAB_A2DDFC:
  MOVE.L  #1,TraceStepCount
LAB_A2DE06:
  RTS
RepeatLastCmd:
  CLR.W cursorX
  MOVE.W  #$004e,D1
  LEA LastCmdBuff,A1
  SF  cursorEnabled
LAB_A2DE1E:
  MOVE.B  (A1)+,D0
  JSR PrintChar
  DBF D1,LAB_A2DE1E
  ST  cursorEnabled
  CLR.W cursorX
  MOVE.W  cursorY,D0
  CMP.W PageHeight,D0
  BNE.S LAB_A2DE46
  SUBQ.W  #1,D0
LAB_A2DE46:
  MULU  #$0050,D0
  MOVEA.L CurrentPage,A0
  LEA 0(A0,D0.W),A0
  MOVEQ #$4F,D7
  MOVEA.L saveSp,A7
  JSR PrintCR
  JMP LAB_A12160
CMD_TDI:
  TST.B DeepTrainerActive
  BEQ.S LAB_A2DEB4
  LEA ProbableAddrsText(PC),A0
  JSR PrintText
  MOVEA.L LAB_A48420,A0
  MOVEA.L A0,A1
  ADDA.L  #$0007fffa,A1
  MOVEQ #0,D6
LAB_A2DE8A:
  MOVE.L  (A0)+,D0
  BMI.S LAB_A2DEAE
  TST.B EscapePressed
  BNE.S LAB_A2DEB4
  CMP.L D0,D6
  BLS.S LAB_A2DEAC
  JSR PrintAddressHex
  JSR PrintSpace
  JSR PrintSpace
LAB_A2DEAC:
  MOVE.L  D0,D6
LAB_A2DEAE:
  ADDQ.W  #2,A0
  CMPA.L  A0,A1
  BGT.S LAB_A2DE8A
LAB_A2DEB4:
  JSR PrintReady
  RTS
ProbableAddrsText:
  DC.B  "List of probable deeptraineraddresses:",$D,0

BurstNibDataStart:
  DC.L  $72a9b368,$0860a004,$0d000500,$40dcaa70
  DC.L  $05582073,$a040b0c5,$a649a3c1,$8809b011
  DC.L  $aa2023c0,$46ae20fc,$0e226a88,$17800411
  DC.L  $b0040b3c,$10003d08,$42911e1b,$00260c21
  DC.L  $12503602,$b9014450,$1c8c9062,$2c606089
  DC.L  $06a0940c,$73881880,$14050005,$02810280
  DC.L  $104400a1,$1a4097c1,$e1405c40,$24238001
  DC.L  $68121490,$1417813b,$090ca2ab,$0778220d
  DC.L  $e0884fc0,$9dd54938,$80110d72,$06085218
  DC.L  $0081a009,$0146612e,$606080dd,$870a0508
  DC.L  $c549ffab,$b1a2925c,$c43fc114,$14a30010
  DC.L  $9061c410,$04a01722,$84ffd7e8,$217087c1
  DC.L  $b8281818,$09aab200,$c8100208,$13947408
  DC.L  $2ce01c0e,$426c082c,$85481445,$cc901006
  DC.L  $06a00774,$a067ccd0,$3011c060,$0e271623
  DC.L  $fe40000e,$415708c0,$828a1d81,$0564b90c
  DC.L  $01302946,$a1471014,$2065e840,$2e4eb7e3
  DC.L  $62805886,$e00c841d,$80404038,$640c4402
  DC.L  $00c0db21,$00a06b20,$67bf80ea,$5398481c
  DC.L  $144400d9,$0a0040cf,$00a023d8,$905018a0
  DC.L  $28060930,$14008180,$81405a40,$cd5a0418
  DC.L  $3f0acba4,$1b468085,$cb3b989a,$1070b4b6
  DC.L  $3673a1b4,$b2327432,$760705b0,$4bd0809d
  DC.L  $2019216a,$809200b9,$c1c14154,$21c621fc
  DC.L  $ab0b2a02,$d5050e0e,$e2036101,$1f0ff706
  DC.L  $5d046508,$a2022f01,$3b021d0d,$d5055303
  DC.L  $3d0d7b0b,$5b0bb707,$7909984e,$a0040fbc
  DC.L  $0acd5eaa,$85cc0b09,$dc02c840,$d904c07f
  DC.L  $c0600a0e,$000601c0,$c565b043,$d820a97f
  DC.L  $b7c07ca8,$1c008062,$79a18fa1,$95569040
  DC.L  $0609c81d,$aab109c8,$c3341827,$0cc3f0ac
  DC.L  $305f71f0,$35a88654,$167a5e01,$f8206de0
  DC.L  $0faa0ba0,$503f61ea,$19886470,$28a0040a
  DC.L  $2403c8b0,$0c05320c,$8138b349,$800d8808
  DC.L  $10542090,$30a0f524,$e0405008,$1c00dc12
  DC.L  $05210850,$281c0564,$050081c1,$00502819
  DC.L  $d40e240e,$a4128145,$81686200,$1b0230a0
  DC.L  $a47a00a9,$481c3c00,$3d2030a8,$0c812b60
  DC.L  $525088b1,$10302e42,$59886917,$23282a4b
  DC.L  $9204192f,$f00409a0,$180081b4,$0140081b
  DC.L  $93040ea3,$00300103,$18c82340,$c0850911
  DC.L  $30110000,$86100840,$79012928,$80303288
  DC.L  $2a608a04,$88520020,$0c0e6042,$09714421
  DC.L  $45238921,$80081f46,$401a0620,$af280489
  DC.L  $80064081,$e701b240,$04b9ffdf,$c8a8040d
  DC.L  $d0008261,$950042ba,$013047b2,$20085f40
  DC.L  $240ba084,$0c26000f,$d0780228,$0bc01700
  DC.L  $418d008c,$a192e2d0,$38f0181a,$0b10044a
  DC.L  $f9140b43,$04042800,$0814c006,$12e88c4a
  DC.L  $02ad3fc9,$45cc03a0,$a06b0060,$02071801
  DC.L  $e2c80643,$563c9012,$81c83199,$7dff7fd1
  DC.L  $93aa4550,$2a1e4640,$a4c34446,$43201e0a
  DC.L  $405ac01d,$c24e3280,$d5712039,$092e8110
  DC.L  $c0461750,$90602907,$b056d860,$8c0f709d
  DC.L  $b0413001,$c0420030,$1c0ffc4e,$0c820400
  DC.L  $9ae83c02,$07633652,$02b4a825,$40e04a02
  DC.L  $a020040d,$c8262904,$d3c1df03,$99585280
  DC.L  $44a020d2,$118905c9,$f209129d,$00c0a3f4
  DC.L  $94b95721,$4c4300d4,$2a401e48,$1a18600d
  DC.L  $0ab00100,$061006c0,$06900704,$11081210
  DC.L  $81210812,$10812108,$12108121,$481214aa
  DC.L  $00203300,$10178008,$0a200405,$50020271
  DC.L  $08598010,$718e2e90,$0a200a12,$1208d510
  DC.L  $03019400,$2d402088,$40908409,$08409084
  DC.L  $09084090,$84091e40,$972803a2,$04053002
  DC.L  $03d80101,$dc008081,$00404880,$20324019
  DC.L  $a016400d,$ac401609,$02608428,$e0080888
  DC.L  $0406c402,$02cd5500,$4a801b00,$01b014ba
  DC.L  $0c301015,$a0105a08,$300e1341,$70648040
  DC.L  $9480ce54,$c03b22c0,$7d909010,$5e001818
  DC.L  $85881053,$011020b2,$1de04036,$71841e03
  DC.L  $01670180,$9d8082a8,$0c8104d0,$9102013a
  DC.L  $9e87f810,$08080804,$94040226,$050b60de
  DC.L  $0e56fb54,$0ac281b9,$9559ba0e,$65421562
  DC.L  $42794680,$a35702e1,$1ac0804c,$2a6e02c2
  DC.L  $a11ec0b0,$5dc09634,$0d412811,$0323c03f
  DC.L  $087d81c1,$1e00c40c,$01a9c801,$b57f52c0
  DC.L  $10153fe0,$1fa17838,$f2074463,$02015d02
  DC.L  $80aa80b8,$a447302e,$1350354a,$0450ba16
  DC.L  $af225813,$c70040ee,$2040e4ef,$6e624a59
  DC.L  $d9d0980d,$078dec1d,$3c08cd4e,$8a1216a6
  DC.L  $26440048,$35893a9a,$190613b7,$302677b5
  DC.L  $72763530,$2134b676,$b5078002,$06080692
  DC.L  $94f4834c,$64838173,$1f204023,$80501140
  DC.L  $28153172,$0f82a905,$0602a961,$41244b1b
  DC.L  $20f0040c,$dc0e80c0,$cdc0d026,$20689546
  DC.L  $e1820803,$00904982,$451888c0,$fd1405a1
  DC.L  $a0825f3f,$8134106c,$08a4c041,$09d85200
  DC.L  $81ad0a84,$917fb5c1,$20081bb8,$0e8281a8
  DC.L  $42422085,$06813037,$8220d036,$f4946940
  DC.L  $40d900fc,$940d8a7e,$4906993f,$2503049f
  DC.L  $9241b833,$c1f9041b,$58192241,$bf270370
  DC.L  $17812a50,$37d83ea0,$6c807dfe,$af020820
  DC.L  $62007689,$565e948d,$f9281a10,$583c0278
  DC.L  $3f24832a,$0506e601,$a8e06541,$40df9181
  DC.L  $93003528,$1a84789c,$0c50a404,$100d4e07
  DC.L  $60dd00d4,$906e1078,$50370678,$2595c24b
  DC.L  $b00ee01a,$9c0dc09e,$01a8a0c4,$40a8c40d
  DC.L  $8e6fab20,$558f0083,$1501409f,$4d42cc02
  DC.L  $88b00070,$c0c64031,$2800042d,$b0282780
  DC.L  $32470360,$02e4dd41,$418a003f,$83244835
  DC.L  $09861818,$c80b2381,$a5214132,$38196454
  DC.L  $3532842c,$414e4049,$829dfe46,$01c18401
  DC.L  $100080aa,$b1a9362e,$0f06cc02,$e154031a
  DC.L  $103610d0,$61406114,$2938ac20,$40d7e981
  DC.L  $a8810068,$19e01037,$40324580,$081b06e9
  DC.L  $75221204,$0b813a52,$1364e51d,$0b2fa4c2
  DC.L  $8700206d,$a846c830,$8800550c,$15421810
  DC.L  $800a0083,$2a02e400,$7905de84,$2c407c53
  DC.L  $00202700,$40f30091,$094c434c,$135ae11b
  DC.L  $89a6241e,$e682a044,$14a11494,$1b501c59
  DC.L  $81a800d7,$255e0471,$2307034e,$9740e536
  DC.L  $94c80ac1,$a0e00f20,$ac110e00,$520ac2c0
  DC.L  $05606060,$0020abc5,$20842521,$705614a4
  DC.L  $230406d2,$0cd05e8d,$d28a92b0,$f027d2f4
  DC.L  $c8002abd,$8ca48258,$7c6a0654,$22594559
  DC.L  $58129017,$0a109052,$80206c00,$2814b5c8
  DC.L  $06480a70,$24898114,$82e8f0a8,$202502fb
  DC.L  $046e00d4,$450af606,$97086082,$2f7d8094
  DC.L  $00a81284,$c942294f,$fd3cb0d1,$8c122c91
  DC.L  $12710350,$0080a800,$40594c0a,$90b11fdf
  DC.L  $ef301f1f,$86605701,$f12c6305,$1f1d06c1
  DC.L  $0f8d0324,$01905832,$19a06000,$705a8c0d
  DC.L  $a0f5b20e,$40008620,$c2458189,$80e4481a
  DC.L  $21b03100,$2064c039,$1606cc03,$59410206
  DC.L  $a340f000,$202b0c56,$418f0905,$05190381
  DC.L  $60836040,$24a05012,$98281c08,$11ac1121
  DC.L  $06962417,$95c00012,$7c05e008,$7900382b
  DC.L  $fa440e07,$200bc010,$ca007004,$0dbc0702
  DC.L  $5005e008,$75003802,$06b60381,$a802f004
  DC.L  $36803201,$037d0320,$b4661fff,$ff907828
  DC.L  $1820dc00,$607000c2,$140ce004,$18c80e03
  DC.L  $c1b43640,$e05fa382,$9f00e048,$00701a0f
  DC.L  $a0d20702,$20038020,$60c03811,$003c5580
  DC.L  $0d12ee94,$0e70fa0a,$103f6fc8,$870f4024
  DC.L  $10986004,$0d1ea81a,$94f41204,$239a1691
  DC.L  $00d79202,$00818780,$20041b28,$11cbfe0f
  DC.L  $0032d401,$41b6c02d,$837866bf,$f0482200
  DC.L  $836b0378,$783ff488,$3781037f,$01595a1b
  DC.L  $20a72025,$c1bc121b,$f81bc480,$02810de1
  DC.L  $6adfd520,$88020c1c,$0de150df,$c420565e
  DC.L  $834829d0,$07706f06,$862002f1,$6f055688
  DC.L  $25804401,$06aea454,$8240e064,$00249800
  DC.L  $4826e037,$2dfa441c,$2a308906,$b8019e0c
  DC.L  $60c0dc08,$00904130,$41404206,$007f57c1
  DC.L  $44c80028,$217c7220,$55910f80,$010a8406
  DC.L  $8988a4c0,$04148a00,$008040c6,$80b1181b
  DC.L  $00406051,$081a40e4,$1d04c059,$40c83e00
  DC.L  $58990081,$ac803928,$1cc36181,$5002451d
  DC.L  $c4a270f9,$0a028003,$0178143d,$41815828
  DC.L  $6009f48c,$2ec84004,$4006411c,$3a558755
  DC.L  $275561a2,$281b6000,$e0111ec0,$5e4010c0
  DC.L  $a604882d,$45940614,$444ca801,$81740612
  DC.L  $ac0950a9,$54419435,$43541011,$92bc0040
  DC.L  $5000202d,$0050a880,$97d84010,$804ab622
  DC.L  $05d80942,$dfefec48,$10102415,$1f6a0c92
  DC.L  $2a02c2b8,$c00ed061,$1380c82b,$c9ff7127
  DC.L  $ec03c41a,$5000480e,$07e0c715,$e7fe9e20
  DC.L  $c2080331,$8d0fc22c,$07c93af0,$43e75062
  DC.L  $40a010fe,$c580041e,$007f3082,$03400801
  DC.L  $c104a12c,$49df1072,$b1c44210,$44270028
  DC.L  $003f41d0,$3ae95804,$20d30005,$05c549ff
  DC.L  $8bb12aa0,$e0647206,$c4030742,$b114919f
  DC.L  $c01a45a1,$b0014071,$a9820a04,$d2ad0098
  DC.L  $65f781c1,$46e96ab8,$18700270,$01700370
  DC.L  $07058281,$8e0c4158,$5500e030,$00700206
  DC.L  $06070138,$0380a001,$10ae1220,$b8181121
  DC.L  $da062f04,$1f021a56,$1186171a,$260bfd4d
  DC.L  $480b0602,$2107040d,$8609414a,$09004240
  DC.L  $84048171,$60883320,$d0c02c19,$886850a2
  DC.L  $8420d10f,$604085a3,$1180d004,$07311a21
  DC.L  $08a33ff6,$f2104311,$203030f0,$1214000f
  DC.L  $2d242958,$0900c18a,$0090181a,$78090081
  DC.L  $97809018,$18680903,$41ff9040,$90181978
  DC.L  $09008185,$80901819,$880900c1,$83809292
  DC.L  $02fcac37,$a9156b10,$4235025c,$828ff8b2
  DC.L  $51520155,$3322c284,$a42c1a4f,$e7b05084
  DC.L  $243c0294,$780c0c40,$119d80c4,$329a461c
  DC.L  $0c4241bf,$009275ca,$22bcf02d,$0087c3c0
  DC.L  $0a800865,$3f000082,$832b8e07,$82148686
  DC.L  $084eae0c,$07085046,$38915818,$9010bf1f
  DC.L  $e5002e0a,$0040d080,$00bc14f3,$00d8871c
  DC.L  $0c36081a,$426c3182,$8300405f,$c0908c0d
  DC.L  $7c0908c0,$d1000b14,$0d430200,$b5258a06
  DC.L  $150a4080,$60284a21,$e2174788,$0c4020d8
  DC.L  $00b0238a,$503a1308,$18572a20,$0082ab4c
  DC.L  $ad410390,$410a8003,$05702b03,$0d206890
  DC.L  $505812ba,$c035412a,$a0202a48,$780206d4
  DC.L  $27005001,$061d893e,$85029815,$0a760c02
  DC.L  $6c070020,$65c1d0b8,$8619a031,$18024f21
  DC.L  $40438068,$29e00296,$c8b80d02,$85104100
  DC.L  $6818602e,$ca0d306f,$a02020df,$18010002
  DC.L  $73108250,$20808550,$01011760,$8705400c
  DC.L  $01fe0e47,$b8206410,$f00c6789,$f8626860
  DC.L  $e2e64209,$77b4182b,$696e686c,$3858c5d2
  DC.L  $ded8ccae,$a0e06256,$12c159a5,$87a9b051
  DC.L  $234f022b,$61a24ee6,$045ec305,$cd4c9c09
  DC.L  $0ced41cb,$d8da1998,$10969530,$b5b024b3
  DC.L  $b02464e4,$e4620780,$0886091d,$5c820813
  DC.L  $ba58b858,$135a9a79,$1bda1938,$98113a9b
  DC.L  $3a98bb43,$c0010304,$0244141c,$0c114a07
  DC.L  $94038402,$8241c001,$68a860a0,$dc018180
  DC.L  $0168041a,$e154c341,$a5813824,$19201385
  DC.L  $756e0f42,$fa04e090,$7e00082a,$70503629
  DC.L  $38a90512,$00cc9033,$20330503,$c45380b0
  DC.L  $30318283,$00205000,$2028c010,$bfd5e034
  DC.L  $0c0d2003,$40c0f440,$340c0c18,$034140c4
  DC.L  $b9c0c111,$0f801001,$0ca03910,$99005018
  DC.L  $1a100129,$f0f81a4b,$83102855,$548a1524
  DC.L  $21b84a93,$40ec40a9,$340c0042,$0a9340c4
  DC.L  $27001800,$3ec3d019,$803fdbdc,$aba83c00
  DC.L  $323ff040,$07fb800f,$f7001fee,$003fdc00
  DC.L  $7fb800ff,$7001fee0,$03fdc003,$4b0012e7
  DC.L  $030482a1,$80ca3e01,$a0323c8b,$03c29f00
  DC.L  $40044600,$e7977ac4,$142900f8,$3c010302
  DC.L  $c43f4400,$ff818048,$b104d0c0,$21589268
  DC.L  $1012a008,$09242113,$00420068,$8080b366
  DC.L  $1ff04080,$7d878d43,$0037bd99,$7d906039
  DC.L  $572872c1,$8c632140,$ca0a0791,$8c782418
  DC.L  $78543384,$d861e120,$c4b2a194,$a6c334ca
  DC.L  $07211f80,$259a19e0,$6c3096f8,$6e0fb0cc
  DC.L  $a2819414,$2d2a181c,$5031d29e,$044312cf
  DC.L  $8630db0c,$462819a5,$470b71a0,$1480af00
  DC.L  $0c450668,$940d91ab,$9940c28a,$50120cd2
  DC.L  $2418f068,$3602e046,$60473306,$1150a0b0
  DC.L  $65a120c3,$4b4192c4,$83082acc,$5030f088
  DC.L  $64b120cf,$5241b005,$03c0939a,$811014e9
  DC.L  $a54d9092,$c03b0a0c,$e8281930,$583600a0
  DC.L  $625940d0,$2202a780,$80582c82,$ad810008
  DC.L  $1905c139,$80e11418,$f07c32d0,$8862d120
  DC.L  $c34be1b6,$ec4341fa,$06625402,$9014c4a1
  DC.L  $e190ca53,$81a01482,$e088c080,$2c164157
  DC.L  $8016860c,$b4241aeb,$7021d681,$e443190a
  DC.L  $06625402,$90151660,$0a062594,$0cd2241b
  DC.L  $05905400,$a0641704,$c0012c68,$64b1e8cf
  DC.L  $02a18415,$30281986,$44340982,$c82bf00f
  DC.L  $01a1a044,$05660100,$b0590526,$02001032
  DC.L  $0b823c01,$58303262,$9e068330,$c9066912
  DC.L  $0d82c82a,$f8100081,$905c13b8,$130081e4
  DC.L  $14f02518,$78483672,$e415c242,$4a06f294
  DC.L  $0d80b813,$99502202,$9f007018,$18f06233
  DC.L  $e8e06641,$40d30281,$87870302,$89063c14
  DC.L  $4cd2341b,$01702470,$30010320,$2a580805
  DC.L  $82c82a98,$10008190,$5c131807,$81418607
  DC.L  $03280d06,$10140d40,$ac05c82a,$00503102
  DC.L  $a01582c8,$28e00f01,$a18f0483,$d3220680
  DC.L  $0c0c82e0,$81c0780a,$0d00a405,$3f007818
  DC.L  $340880af,$801e0786,$fa3a0d82,$482b980f
  DC.L  $00c19407,$03100e06,$80560b20,$ae002d03
  DC.L  $0678190c,$3c2219e0,$54355190,$63c118c1
  DC.L  $42418415,$a42818f0,$6c35c0a0,$6985600a
  DC.L  $06781e0c,$50381a01,$4e0a3102,$05039090
  DC.L  $02819014,$a0ac05c0,$90c0c004,$0c80afe0
  DC.L  $08020790,$5400a062,$05402b00,$50340040
  DC.L  $06e34e78,$a7be00a0,$60623050,$0a922280
  DC.L  $30641251,$1e038320,$92800864,$12040811
  DC.L  $03828030,$64125100,$89406832,$0ab21102
  DC.L  $2139f598,$08040a50,$52d12802,$06202500
  DC.L  $40c84498,$14185030,$31182814,$08200a02
  DC.L  $819e0303,$21adf541,$4004351a,$54441400
  DC.L  $83f9f77e,$41401037,$1a574414,$0483f080
  DC.L  $40205113,$38603c18,$1448a202,$50040e67
  DC.L  $77ed09cf,$e4e003c1,$ff80f53e,$59007031
  DC.L  $00e06542,$281c0c62,$2419c441,$140c8044
  DC.L  $00419ee7,$83a0c038,$18780832,$00506205
  DC.L  $0b02061b,$87020020,$6601a0fc,$1f37d062
  DC.L  $050c9634,$59007031,$00e07c0f,$3be81002
  DC.L  $06601c0c,$40a60190,$2c0a0640,$5100e07c
  DC.L  $019be0b8,$0406064c,$020c8041,$80401c0c
  DC.L  $40a76040,$c3404014,$0cc0341f,$83c69826
  DC.L  $0c432190,$0703100e,$077dcfe6,$81a02066
  DC.L  $01c0ce02,$818d00e0,$08190144,$0381cf73
  DC.L  $b9a22e88,$19814503,$81900683,$10284161
  DC.L  $806d0300,$80a601a0,$ef9a5e8f,$b1a2190c
  DC.L  $80381880,$083c7f18,$14030330,$0a062814
  DC.L  $0c680600,$20c40241,$b9001004,$1f207032
  DC.L  $00d06205,$280206d3,$85020020,$6601a0e0
  DC.L  $31de50b4,$0f0c5f2a,$188746b2,$60a86261
  DC.L  $20c34bc9,$98848305,$ca066dd1,$30c26515
  DC.L  $a0cbe291,$84450334,$8ec64c19,$0c263c98
  DC.L  $d2483130,$9a628120,$c20af014,$0c4c2219
  DC.L  $e9680aea,$140fe831,$19307c30,$4c8864c1
  DC.L  $78cf5241,$93048360,$b20a8014,$0c82e086
  DC.L  $005f0f8c,$502419ac,$5031ea93,$0443088a
  DC.L  $062f904c,$d2241968,$70329490,$626118d0
  DC.L  $0a4054c2,$97c52340,$9802818f,$00130c59
  DC.L  $30463348,$8c63ef40,$d7c2818a,$04832609
  DC.L  $06501c0c,$142419a8,$503050a0,$70c148cb
  DC.L  $e3419407,$037b8a06,$f0140c26,$3818d248
  DC.L  $32f88c6c,$8140d403,$81e41540,$28190070
  DC.L  $3e4ca068,$0140fd1a,$0602604c,$626150cd
  DC.L  $2361bebf,$03757e07,$74108c30,$38194068
  DC.L  $3080a06f,$0140ca03,$81880703,$402b0050
  DC.L  $30c01300,$a3140906,$e81c0d60,$a8110145
  DC.L  $c036040f,$20aa7080,$7035a0a0,$74056c0a
  DC.L  $07f4188d,$00a4054c,$29407030,$80a06a05
  DC.L  $602e4150,$0281905c,$10981005,$80281c75
  DC.L  $503c3bc4,$68057c3e,$0694740c,$280c0040
  DC.L  $c80a3174,$0f20a1c0,$10010680,$5600a063
  DC.L  $6026b286,$40190c82,$32189870,$3282d854
  DC.L  $74a10531,$0f061052,$82905430,$0500e0c8
  DC.L  $2a090903,$c0b06415,$84008140,$58320a86
  DC.L  $00f820a0,$0c190541,$00205016,$0c82b092
  DC.L  $10082802,$0610502a,$9817f006,$021e0c0c
  DC.L  $40041890,$808048a2,$81a0c211,$818c0103
  DC.L  $e23f0620,$1a0c8218,$19401033,$d0e06061
  DC.L  $c0cc4321,$f880a018,$1c0a9402,$8241fcbd
  DC.L  $c0f0281f,$8a93d20f,$0241ca89,$41526460
  DC.L  $50120fc7,$fa153141,$6c558290,$50020fe7
  DC.L  $fe050140,$f0761090,$50020c40,$4a0081bc
  DC.L  $b7bfa0a0,$0c188094,$01031e10,$42940103
  DC.L  $88130281,$00c0a402,$04032060,$620040c3
  DC.L  $1181d142,$0121c838,$10101006,$43130f06
  DC.L  $1e1c0c7c,$18186c08,$3310c861,$021b0500
  DC.L  $f80801e2,$181d0378,$01ce01e2,$10219e50
  DC.L  $0f80c01e,$2180d03a,$10b01e08,$40862540
  DC.L  $3e3c8823,$c8de0233,$80788408,$659403e0
  DC.L  $10078870,$740de024,$38078840,$8661403e
  DC.L  $01007887,$0340de02,$3b816894,$15e801f0
  DC.L  $0803c43a,$1a04e250,$50810c00,$a070332a
  DC.L  $f509e410,$3140d065,$85078a86,$1e110c7c
  DC.L  $3818814d,$43819886,$437f77ef,$01808810
  DC.L  $0e0d1021,$40e50040,$dc59f382,$43c81100
  DC.L  $7836b687,$82d398e8,$18404c0f,$06dfef38
  DC.L  $092010c5,$87904805,$028198f9,$470427cd
  DC.L  $f5015832,$0a868684,$b0307280,$20683251
  DC.L  $4107fb7a,$40580485,$a1a0a928,$0c1ca008
  DC.L  $19cc9490,$44390420,$278b6b70,$d8549480
  DC.L  $a00e501c,$0c3040c1,$1021803a,$28449401
  DC.L  $83078f86,$201a0cb4,$1418ec70,$30700782
  DC.L  $83310087,$fa00093e,$408440a4,$6e228020
  DC.L  $c024781c,$101efc0d,$c4a0381e,$e8002478
  DC.L  $98040cfc,$86e2501c,$0cf40012,$7c490281
  DC.L  $48dc4500,$418048f1,$270018f9,$0dc4a038
  DC.L  $18e80024,$7807f140,$1831410b,$00508180
  DC.L  $a0341910,$30310020,$6610c0cf,$0a20040c
  DC.L  $b043c0a1,$a0228598,$840241f8,$7103ff00
  DC.L  $808144c0,$81940283,$0f018864,$32829f31
  DC.L  $63202824,$1eedec0f,$0081ef5b,$daa0f004
  DC.L  $19fa4252,$0a00819f,$5be220a0,$041efb71
  DC.L  $da0a07f8,$0295b7a4,$0a040405,$0040cfdb
  DC.L  $62d05004,$0c79dfd9,$028120eb,$3a605001
  DC.L  $0c7d9b90,$2ff48411,$40183201,$0b01c083
  DC.L  $80a0a205,$90120284,$0170a201,$c0ff8181
  DC.L  $07804043,$c1003474,$00443ff0,$0d234334
  DC.L  $8107cfcf,$0348a064,$11a489c1,$920b7df7
  DC.L  $c0d24400,$0b1040a0,$c0cb6b68,$d802890f
  DC.L  $4c701c44,$b03c2438,$40e961e0,$43940c40
  DC.L  $0204d144,$0b084040,$16b63781,$0e503b59
  DC.L  $c400a21a,$5f0f0816,$c63b810e,$503288d2
  DC.L  $40006925,$0539010e,$50300908,$1a494421
  DC.L  $0800c6fe,$00d37fc0,$63004c38,$c0610631
  DC.L  $80462063,$3f1f4052,$80ff818c,$039903c8
  DC.L  $a04f0063,$10634ecf,$c0c6e001,$45d60700
  DC.L  $5a580531,$8c030f01,$a4a0643d,$03e080d2
  DC.L  $503168c6,$c701a4fc,$1fc0d228,$18d343f8
  DC.L  $2069140f,$c07e0349,$68c821a4,$7079e03c
  DC.L  $882058d2,$28190e50,$38d8f802,$ce361005
  DC.L  $8d228190,$e50395c7,$71124921,$8c66d303
  DC.L  $49226880,$07afea63,$74134d0f,$10059e00
  DC.L  $69240610,$104207df,$8d76e30c,$420834be
  DC.L  $069140c8,$7181d4b8,$c0626e01,$a4bf00a0
  DC.L  $4a002852,$8bfab206,$30037c0d,$25fc0312
  DC.L  $58031180,$018cff4c,$e30100ce,$1a5100ff
  DC.L  $01cd2498,$025840f8,$2774d079,$70d9c0d2
  DC.L  $4a23c819,$341a4945,$d7879081,$d9b801a4
  DC.L  $df80d262,$005020b7,$fe1f3b8c,$91082348
  DC.L  $b062e01e,$a2407826,$9058c1c0,$510473f3
  DC.L  $c69b90d2,$28180804,$e49a109c,$65e05f24
  DC.L  $4070288d,$2404aa05,$03c6e360,$83ca363e
  DC.L  $34a5c7c2,$86950101,$057a5e60,$0b06d2c3
  DC.L  $c69624d0,$c6149013,$e304070e,$c5848f19
  DC.L  $696070d2,$66860e27,$1c981800,$978850ee
  DC.L  $e638c440,$558c071a,$6070f940,$51380126
  DC.L  $45cc7900,$6b40d244,$40692dc0,$2813800d
  DC.L  $250300d3,$81a48800,$d25bc031,$27801a4a
  DC.L  $0701b2e3,$00fe3143,$1a059e06,$3001f405
  DC.L  $06600633,$0f640f21,$d8c818dc,$367031a0
  DC.L  $67e06229,$80318fc0,$4d4b00c3,$a0766e17
  DC.L  $cdb063c8,$5028e031,$83271928,$1b4637fe
  DC.L  $fc0c6c3c,$78050900,$0c6f701f,$48846377
  DC.L  $f3c0c63c,$2880c40c,$60818600,$84085f03
  DC.L  $49311803,$f81a4f30,$0d236190,$4690a0f7
  DC.L  $c0693be1,$b020b800,$69380034,$9288d208
  DC.L  $198c1a6c,$0380bf6d,$4282b818,$40d2281f
  DC.L  $6df86999,$0c02f99f,$07a28020,$7fddc7e8
  DC.L  $0fbf8015,$1c98786f,$9c90a0af,$0f10348a
  DC.L  $062825e0,$2897ebe0,$50538fc8,$1a43037f
  DC.L  $00a40071,$0282968f,$f00d2181,$bf80c600
  DC.L  $3c80c487,$c807fc06,$269fc67f,$fcfc8290
  DC.L  $0bf2f906,$0ea28a03,$fdc3a306,$9539a34f
  DC.L  $a067d7ca,$a8505e00,$140ffec7,$8cb7ecfd
  DC.L  $0a2c1af5,$f3f0180a,$140bf80a,$2fb01dd2
  DC.L  $60268a2c,$7d75f3e0,$3c0a145f,$87f01eb5
  DC.L  $fefc6671,$f8e85b17,$f22f97e0,$f20120f0
  DC.L  $1fc0a469,$0c0cfcff,$e17e989d,$02400349
  DC.L  $ef1ffc40,$2c4102c4,$118c3ff1,$00510001
  DC.L  $8dcfef01,$e8820d28,$817cbe51,$01785008
  DC.L  $1f000423,$cbef3c34,$f3ec8511,$e01f840e
  DC.L  $01628bac,$06b38cb4,$6c7869b7,$effafdb3
  DC.L  $8d86073c,$114bff76,$0290942c,$38699f6d
  DC.L  $faf99b4d,$c207288c,$101c3fbb,$9fdc6269
  DC.L  $8de34e77,$b3f7ce5e,$1e243828,$803877ff
  DC.L  $7fb8c363,$1d8697ff,$23afd79c,$3e087281
  DC.L  $80018c51,$38806229,$8d8044ae,$02817e00
  DC.L  $f450040f,$bfc4fff8,$b03403f9,$4c039440
  DC.L  $0028ada9,$0f0fffee,$7f19f7f2,$68d37ff5
  DC.L  $9df3f807,$f0128009,$870e0fdf,$3f19d9d9
  DC.L  $38d287da,$c18e7970,$80a23e00,$4c70e3ff
  DC.L  $f8f196c1,$888d363d,$b7df29fd,$bf50e502
  DC.L  $8ee1d3ff,$828a4f0f,$1e34c8ff,$637cb7ff
  DC.L  $7c04fc00,$81c3b3df,$ffc6641f,$8034a7bf
  DC.L  $9f7cdb9f,$9e04fc40,$61c398e3,$845f13f0
  DC.L  $10a10d8f,$fe37ee68,$3025f800,$ef1c04d8
  DC.L  $ce86c084,$881e0018,$1b31a122,$390a5614
  DC.L  $0c80281d,$04090851,$11c49903,$00804400
  DC.L  $60299255,$2a140c12,$18848a4c,$1c0f024c
  DC.L  $0a06df20,$4593e4e1,$3142c02c,$11402809
  DC.L  $3441245c,$dd3c8820,$50260103,$012bd150
  DC.L  $4a490249,$851c0009,$41a0a615,$822c898a
  DC.L  $710c48d0,$08130081,$8a14f0a2,$93c43201
  DC.L  $01f0e8b8,$00aa0a04,$78002108,$0226003a
  DC.L  $8601af82,$24482c0e,$82f16405,$03400e06
  DC.L  $4053c0e0,$628120d4,$03a18500,$02235408
  DC.L  $18883941,$81e04f01,$40e823c0,$90628120
  DC.L  $d403218d,$80c9081a,$80683ba9,$021c6a26
  DC.L  $39310550,$c4100d55,$c05107a3,$44314483
  DC.L  $300115fe,$01f61ec0,$448bfdbd,$cab9d085
  DC.L  $03404302,$40206120,$7c160031,$5fe5f04b
  DC.L  $02061265,$050b0002,$025200b9,$1c08184a
  DC.L  $940ec081,$80dfe570,$310a0730,$d8408508
  DC.L  $200a4040,$dbcc20e9,$2cc02251,$0661330a
  DC.L  $800404aa,$1087c018,$b40c297e,$01053037
  DC.L  $8040a000,$d8081a80,$1a0b60dd,$0680e06e
  DC.L  $04f06802,$067e04c2,$842c019f,$e11e0b00
  DC.L  $40c414c0,$08a14ff0,$4eb4c3e0,$65da808e
  DC.L  $643dc903,$1f3d82a1,$46a00140,$e00c2616
  DC.L  $a00a0201,$40da1b20,$20140fa0,$d25c4b00
  DC.L  $dd184480,$36103400,$07741242,$9e82215c
  DC.L  $8005840d,$40a93273,$0502d4e5,$0601d061
  DC.L  $83400435,$78600201,$5429d608,$5e44b987
  DC.L  $fffff42c,$9412a11b,$3f95c1fa,$251a3342
  DC.L  $9360f004,$0d10ac00,$0d820638,$06017000
  DC.L  $a0103400,$280a8024,$34a400a6,$14100b40
  DC.L  $0805e004,$02c80201,$740100b6,$01805f04
  DC.L  $80904029,$00201580,$100a2008,$05500402
  DC.L  $991900c9,$7007a540,$c70a3e0a,$41710086
  DC.L  $c58c030c,$38280e04,$10e00fc0,$03a00d08
  DC.L  $2f803f00,$06806a14,$52002998,$20c11c05
  DC.L  $06020942,$8c80805b,$c17036c0,$101ee018
  DC.L  $0ca00805,$b00e1210,$0081f805,$81052017
  DC.L  $00802078,$10100c41,$41838040,$51c0cc24
  DC.L  $e0101670,$082a42e0,$10157000,$a0037208
  DC.L  $0bb800f0,$00780500,$0278002c,$0607af88
  DC.L  $24401009,$20080590,$04022802,$01540100
  DC.L  $9a00805d,$00402180,$2014c010,$09600805
  DC.L  $b0040238,$02015c01,$009e0082,$807c8305
  DC.L  $017fbfc1,$a0041f00,$c0311489,$080181a0
  DC.L  $0038b19a,$ef501d60,$600c0c40,$06028b0e
  DC.L  $22850020,$72005016,$96001424,$8a800fe4
  DC.L  $0317641a,$5c89e0db,$25c45c6a,$0040c7c0
  DC.L  $a02d0041,$8206be06,$01180280,$1035e020
  DC.L  $68bc40ee,$e321484a,$06530a39,$c0c0b3c1
  DC.L  $10300206,$3d050729,$1e1bc413,$c404004d
  DC.L  $90803bf8,$0c050801,$53b03fef,$f0039c30
  DC.L  $40a07042,$06821000,$d2856c00,$49c22ee0
  DC.L  $6b706f50,$3300206a,$8061ea06,$60040de0
  DC.L  $06024003,$00606906,$10688400,$e0542160
  DC.L  $01f50013,$014ea060,$20020206,$c3640c20
  DC.L  $029402f4,$052f82c4,$c3c55550,$c3c7800e
  DC.L  $48840e28,$d0320e28,$4ffcff8c,$d0e0d5aa
  DC.L  $6a05015c,$03bc8830,$c0ec009c,$160a7241
  DC.L  $99103398,$a9583d16,$28660f41,$40f90e20
  DC.L  $f40e0cb4,$1b166003,$0adc3c8a,$9008ba06
  DC.L  $24d40d42,$081a101c,$7941b601,$de6901b4
  DC.L  $e5046461,$e040ac00,$688300c0,$21605f2e
  DC.L  $521c17ca,$582fa05e,$6706d404,$b0206559
  DC.L  $90759002,$a0962c10,$e0135881,$868ac009
  DC.L  $42819008,$901545dc,$0a02b194,$4281b12f
  DC.L  $0314b001,$80081892,$141c7c81,$9f010350
  DC.L  $308798af,$540f60c0,$12021410,$1206f902
  DC.L  $1343426e,$06840009,$2d9d81d1,$a0661768
  DC.L  $d03541fc,$7a53f026,$1006ec01,$e8023e51
  DC.L  $03080321,$429fd03a,$4798284c,$8c18e431
  DC.L  $5a7fe2fc,$05a9005d,$1f808230,$248144f0
  DC.L  $6d060020,$6b3b87c0,$98108e40,$b1060a00
  DC.L  $048d4198,$65413360,$764f4e80,$41049c01
  DC.L  $0360b068,$6140d10f,$20f83002,$80080d2b
  DC.L  $68a46d03,$78005030,$30304234,$23050372
  DC.L  $0a078847,$00a28d05,$83550e06,$62160f90
  DC.L  $0c4040c7,$2620e06e,$c5389c2e,$603c4288
  DC.L  $90457206,$38230025,$ca06ffda,$a1e0e80c
  DC.L  $1e02837f,$00841c00,$0c01feef,$42c84b9f
  DC.L  $fdff0890,$10110081,$ba14f174,$19a00625
  DC.L  $0881c9d7,$fdd330fc,$0f9097d8,$7ac997df
  DC.L  $f7fb14ce,$819525c0,$45481824,$3000a34b
  DC.L  $95700205,$51f20780,$0ff7001f,$ee003fdc
  DC.L  $003c3000,$2a050344,$1a0418c1,$9b10348c
  DC.L  $4934300a,$58044a54,$d704c8fc,$7a090020
  DC.L  $dee0a0d2,$291210cc,$6a140680,$1f30a1b0
  DC.L  $36d8a06e,$55d0588e,$06083701,$e17002a4
  DC.L  $483044b8,$3c497886,$43e040da,$0004140c
  DC.L  $04781982,$9c142df2,$2830cf03,$b04683c0
  DC.L  $b810411c,$081a0090,$373014cc,$83846b52
  DC.L  $c1c3f159,$7b81a824,$c1115c18,$e0046410
  DC.L  $0033c0d6,$e7195063,$80208c0a,$60092f9d
  DC.L  $87406031,$781a826c,$02a50748,$3a670302
  DC.L  $840960f1,$3fb7c0f3,$321a7870,$3f83d816
  DC.L  $0a9c8239,$414e3a1f,$fb5c0172,$e1fc3ec0
  DC.L  $1042c00b,$930fe056,$0ae21a00,$5cd8608b
  DC.L  $90241169,$05cf8608,$c1018811,$f200bd25
  DC.L  $c887f0e3,$025ce46f,$0a7025c8,$87f01507
  DC.L  $64b06040,$20dde081,$be750349,$93231c28
  DC.L  $6280694e,$06f05b04,$811c0160,$9b00b00c
  DC.L  $1bd00b00,$81bb8105,$1419b488,$34a15102
  DC.L  $409000b6,$47006c34,$0d7a54e5,$81519003
  DC.L  $0a02ba07,$e4e07f03,$1014be08,$a04d890d
  DC.L  $bd8c1936,$50378218,$1360c32f,$86007866
  DC.L  $0600af1d,$72ae40f3,$01c0f900,$218e95c0
  DC.L  $b02595b3,$2669e809,$5cc04e5d,$07e4040c
  DC.L  $0010caa0,$dc2781b6,$5312b8d4,$1581e701
  DC.L  $624ec6a6,$4282d230,$e36a686c,$4a571530
  DC.L  $2126e016,$5dc0a8a8,$20e4ef62,$ea6c6a78
  DC.L  $4e72b0cc,$4741dc89,$0369fa07,$14e10311
  DC.L  $0803a0e8,$3d850822,$5bebb050,$02069006
  DC.L  $c8b06cdf,$c0c002a0,$095c3441,$b22e19c1
  DC.L  $d416856c,$0d9160ce,$11e0d916,$0dc2f028
  DC.L  $80fc8401,$023819c0,$a407fac4,$2ba05988
  DC.L  $86c91494,$83718a06,$de140cc2,$f20de1d0
  DC.L  $ce1e2008,$28206f09,$86702106,$b1460379
  DC.L  $4623418a,$159c3819,$c2cc0905,$8c0de54c
  DC.L  $02381035,$a2b24765,$508c4aa9,$840c344e
  DC.L  $19a0211c,$3cc09859,$c0502ff9,$90683d2b
  DC.L  $a2903280,$26891015,$055c0a05,$79940aa1
  DC.L  $e4161599,$aa0061e0,$d8f381ec,$32413442
  DC.L  $c0ca3800,$1fa0f004,$5c17429a,$80c4081f
  DC.L  $f0025a81,$ffa9c07b,$0819e81f,$8af02fd3
  DC.L  $c0503280,$32150304,$11403888,$40010488
  DC.L  $0e318153,$7081b400,$18b81a40,$b808007c
  DC.L  $0ca00248,$3f950320,$12d00a08,$380a0241
  DC.L  $a3214072,$581a2811,$cac18002,$41e04100
  DC.L  $bed3a328,$2fa78328,$afcce0a2,$28006002
  DC.L  $06b4059e,$9b1d41e2,$4f128109,$601d2010
  DC.L  $28e05405,$06a00101,$69021950,$37019f48
  DC.L  $0f4d0a09,$a1033840,$828401f9,$ff8e2261
  DC.L  $3c99c648,$c0e81b00,$84276f80,$21084010
  DC.L  $8081a632,$7d20083c,$1b4ced06,$6dc1d788
  DC.L  $1fc00863,$41ec0f40,$34a65f62,$1018398a
  DC.L  $075eb900,$c82060a0,$1ca9525c,$1a82419b
  DC.L  $8b400b2e,$57f835af,$835e0d06,$e8040c44
  DC.L  $0fb140f2,$809306f0,$c2530abc,$d205a320
  DC.L  $c60a60e5,$2e409059,$12a6b100,$100f8471
  DC.L  $2000280f,$81168903,$38ba0685,$d6a008df
  DC.L  $4314aac0,$9c03c381,$abf6832f,$ee065a02
  DC.L  $fe206da3,$20e03fe0,$da2a8e80,$0da320c0
  DC.L  $0120da33,$0cc04c40,$d52780f7,$11913606
  DC.L  $060c0590,$306dc557,$01109301,$96281850
  DC.L  $683a01e8,$2ec70329,$9a073433,$02a12f02
  DC.L  $62083080,$068703ff,$1d8105b0,$ed030119
  DC.L  $00e07031,$81795201,$43849a01,$5a341979
  DC.L  $04142cf5,$38098703,$206582a0,$bbb741ea
  DC.L  $6601608c,$5352a3e1,$831403d2,$70320528
  DC.L  $3c891811,$f2819013,$c11f1c19,$2011f131
  DC.L  $b1007db3,$0a902716,$401a0103,$1412f4b0
  DC.L  $62e9c0cc,$aff6f80e,$00830601,$2176aae0
  DC.L  $4850e808,$22e30316,$2bd80e24,$f6483fc9
  DC.L  $90200400,$0ba920da,$6381f400,$c010a14d
  DC.L  $f0406980,$141d6141,$5e068284,$42058020
  DC.L  $6d00119b,$d7a0151a,$0ed80091,$80032081
  DC.L  $8c01a26f,$4a80c0ba,$01ac381e,$01140705
  DC.L  $f4038240,$07c88441,$00ee1c0f,$00d20c70
  DC.L  $a0c900b4,$0c0df40a,$a140d68a,$308505a1
  DC.L  $6100254f,$4281a104,$c132381b,$bce42e60
  DC.L  $5e810690,$02205061,$80681600,$14c18314
  DC.L  $0258503c,$02680085,$03470206,$7e31e690
  DC.L  $068106b0,$04415100,$38503250,$2065801d
  DC.L  $14303851,$ea10188a,$06e82c80,$7417a00c
  DC.L  $45030c02,$064800c1,$0e006010,$31200600
  DC.L  $830c0044,$5030e148,$1685c804,$47031102
  DC.L  $06280431,$02c48164,$87c36040,$c1007e50
  DC.L  $e0128903,$49868505,$2a08c548,$01c01034
  DC.L  $80d83508,$53fbb005,$b8cd0805,$e45a19e0
  DC.L  $ae26c06c,$02066006,$c157010c,$70380378
  DC.L  $360b300a,$85b04800,$96d60008,$480fd06c
  DC.L  $9900243d,$0c0a5838,$06294970,$3a82d80b
  DC.L  $45035a91,$700841e1,$905c1500,$224309d0
  DC.L  $2597b028,$c677a001,$76027400,$24001807
  DC.L  $2c284143,$84b9d0d1,$2209f297,$a8008735
  DC.L  $0827002a,$0bf81c04,$980f5000,$54190081
  DC.L  $8900e05e,$00c82c48,$507728a0,$5030c00a
  DC.L  $03032b01,$3754a760,$10264078,$11b1a854
  DC.L  $8018ad54,$a31204bd,$2c002430,$3350318a
  DC.L  $40020b8f,$2314a7fe,$834189f0,$5bccbed0
  DC.L  $be380128,$2c18d183,$3200d0e0,$2c809f0d
  DC.L  $d004299a,$1320d05a,$60883414,$42720610
  DC.L  $07d87b46,$07e5bf12,$0cd20180,$8209a783
  DC.L  $6835cfe3,$b02db2a0,$8193435b,$43735313
  DC.L  $02735204,$268384dc,$0e492e6c,$90a1a194
  DC.L  $17d9d8ba,$59daba98,$13d93813,$3b039041
  DC.L  $c085dec0,$98d0ced8,$d4c6c81c,$92381e60
  DC.L  $166c001d,$14100819,$a0016281,$a23d0377
  DC.L  $47808081,$012a8040,$83408e00,$b6281b78
  DC.L  $1031c0c3,$c40aa230,$01034403,$00103380
  DC.L  $30010368,$03001030,$8cd11424,$0a801384
  DC.L  $1c004dca,$03815600,$d350e108,$1141d040
  DC.L  $c7004100,$1e41aa77,$2180fdfe,$630608d6
  DC.L  $007e81a0,$703a9032,$08106436,$02885321
  DC.L  $d0022b05,$fc06010c,$4a060800,$3acfc240
  DC.L  $b8081844,$8fc30014,$08ea0900,$0200708c
  DC.L  $b06c0140,$f70fa6ea,$80091cab,$a59da03a
  DC.L  $249c0588,$ba193b9a,$98b89a5b,$3b581219
  DC.L  $d898103b,$839842c0,$95a5b985,$8b812dbd
  DC.L  $abb3a991,$ab8b8bbd,$9db83c00,$1030402e
  DC.L  $48801d02,$064652e9,$5f4980b4,$a0033a00
  DC.L  $55513071,$30cc0c0c,$8c4c00e1,$2200139f
  DC.L  $64081806,$9406060a,$f3194c00,$80341d88
  DC.L  $892f74c3,$124d0845,$2e116440,$04011412
  DC.L  $4a2e0d30,$f080032a,$0a038450,$0b860358
  DC.L  $262ff979,$80560c2a,$21100a00,$4c08a600
  DC.L  $4c1843e2,$204252e4,$48258827,$8742a768
  DC.L  $2480a190,$406ae0d1,$1240cfc8,$00911412
  DC.L  $c0524839,$3d04e806,$82415727,$111a0124
  DC.L  $9b61fd41,$00b15040,$b81c4400,$0b862441
  DC.L  $25e50309,$aa080103,$5300a958,$858002a5
  DC.L  $643c8400,$d5024421,$98480015,$0b449011
  DC.L  $b038e020,$28268005,$c104eca8,$0c3c1ce8
  DC.L  $a5c00dfa,$06918ea2,$3d8ca862,$a50a0440
  DC.L  $10056427,$bc4a288a,$04180081,$9800c3c1
  DC.L  $a3023c01,$81140481,$44680189,$52688840
  DC.L  $6b6054a0,$68a82744,$90208311,$25000b08
  DC.L  $f071d050,$f0486045,$0f183950,$ffe14b80
  DC.L  $0e024c01,$e0c6a0c5,$19ff8fa9,$208874f1
  DC.L  $5c8ab341,$c47b5308,$a2291c13,$4a9259fa
  DC.L  $18a04900,$9113002c,$c007600f,$f1300343
  DC.L  $6e670100,$64321a8d,$65832423,$06c4a10c
  DC.L  $740340c0,$c000e025,$5012fa21,$2d4c18c0
  DC.L  $74360020,$68606002,$06460600,$206c6850
  DC.L  $5c196138,$102f0388,$04836448,$3f003c4e
  DC.L  $bacb7600,$f40519e6,$818190c1,$a6004c83
  DC.L  $c2f03086,$f832c083,$70018030,$32101814
  DC.L  $2e848428,$01e32fbc,$0c4a3000,$e6390c56
  DC.L  $9ff81827,$c4073788,$866a5c0c,$de641e74
  DC.L  $6f3c0d21,$511b001c,$25201cf9,$03e60284
  DC.L  $7a0305e0,$7feef05d,$0f069378,$00404236
  DC.L  $10b42b68,$00122241,$003d9206,$08061b00
  DC.L  $1763380a,$3852bb01,$94f1d940,$307ea874
  DC.L  $040820e0,$0836c9e3,$670c0c4b,$9c002703
  DC.L  $9140f1e0,$3208f01f,$340ee43e,$04026e02
  DC.L  $01170100,$93807441,$c0c2920d,$c1b60192
  DC.L  $b9341852,$d1ff9b41,$852a1ff9,$54185211
  DC.L  $997dc800,$6085ad88,$1058a984,$f2601609
  DC.L  $4aec04f1,$498180a1,$0380aeac,$3190908e
  DC.L  $1e20a201,$0a06a82a,$81986824,$ae404f20
  DC.L  $a1f0ff25,$cc082c8a,$fade123d,$90651b1a
  DC.L  $84600b72,$50b30311,$1c980041,$04185100
  DC.L  $02107018,$18800728,$00080e09,$98118281
  DC.L  $ad010310,$96850828,$1ab370f2,$04d881eb
  DC.L  $24862068,$081868d4,$0c85c182,$04140181
  DC.L  $1007c330,$07f87e61,$1a0738b5,$825488b9
  DC.L  $89a10a73,$99209239,$11811c78,$3101e001
  DC.L  $1d72006b,$52398600,$7f06c1f2,$543414f0
  DC.L  $6ce5a6de,$4081ad01,$2a800e83,$cc86150c
  DC.L  $c00243ce,$f7043074,$6ce01811,$c0218243
  DC.L  $7302181a,$35a52819,$09ece229,$7e9a081c
  DC.L  $9648e0c5,$240fee3e,$0ba3fe01,$89745142
  DC.L  $81aac8a1,$40d66586,$d06a3520,$f411a019
  DC.L  $739c416a,$8818a000,$63902d51,$03728300
  DC.L  $311e0342,$42198a41,$18b60503,$d4d28324
  DC.L  $4e200180,$e8181240,$378b7014,$1a219f98
  DC.L  $41ee2498,$20200944,$8043aa06,$5879b0ff
  DC.L  $05ae38c5,$e819a94d,$0bd2520e,$3a9327d1
  DC.L  $030c6588,$a09041d0,$30b06c4f,$fa40d2c0
  DC.L  $7916c500,$10b80be0,$b9280103,$3a019884
  DC.L  $0103365a,$2d40d010,$3121e062,$5090d033
  DC.L  $02bb2441,$08741b33,$50806852,$20c3cec7
  DC.L  $fc2d70e0,$052866a1,$3ff3f2a9,$110e0804
  DC.L  $0cf00b85,$40cfab81,$b0534015,$a9c3103c
  DC.L  $4009d470,$934890f0,$853d2028,$90503044
  DC.L  $28084db0,$500ea8ec,$57d3ca28,$0f91b808
  DC.L  $8081bd80,$d2801589,$405f103f,$41083305
  DC.L  $033e1881,$55567f09,$0a00020f,$8d40c019
  DC.L  $2048150f,$fd6e0481,$c0f0a3e1,$a110430d
  DC.L  $90c01420,$5b540ffd,$1c114f03,$8dc0d542
  DC.L  $81b70012,$21718818,$bc523258,$8785c6a0
  DC.L  $6f0d40c7,$1a21801b,$262088a3,$806c6a06
  DC.L  $34a25891,$86c13801,$63583ff5,$78163703
  DC.L  $ff2b2c81,$c263483f,$f6383c01,$030f01a3
  DC.L  $50300488,$1a378363,$aa06c8d2,$0c92246b
  DC.L  $071c0d02,$46f06951,$23703302,$948c03b4
  DC.L  $122608a8,$0a0827d4,$0eca8199,$45500174
  DC.L  $1444600d,$dc60c480,$41a950c1,$684400c0
  DC.L  $040ca00c,$9280b801,$426c3c42,$4ac1e4d0
  DC.L  $30193a68,$486a0689,$2600c1a0,$40ada0e9
  DC.L  $1001a9b0,$c0908000,$d97fb5a2,$21ae4587
  DC.L  $2aa45924,$a89b120f,$fd4c190c,$93698051
  DC.L  $14890404,$90c30803,$408f3270,$02269060
  DC.L  $0110226b,$06bc0794,$207001fe,$c0aaa9d4
  DC.L  $c222d10a,$ac912891,$22c07049,$91ab8140
  DC.L  $d9a821a8,$261f9148,$a144b152,$0c188064
  DC.L  $8400da84,$1a78340d,$2104c810,$95000694
  DC.L  $40c2c3bc,$1306c881,$52a84b9f,$fc0308d5
  DC.L  $20d20613,$4630c126,$595c4cc8,$709bc0f5
  DC.L  $5d0f0002,$0f5560d1,$c48000b1,$81109458
  DC.L  $8938030b,$12531402,$aac1ffaa,$c02ab81e
  DC.L  $60108a60,$03a29747,$836f5e82,$d5103700
  DC.L  $100980f0,$0bc08a24,$1d000b07,$7c8bd040
  DC.L  $10835180,$8601c64d,$6c41300d,$0c54409f
  DC.L  $5e884718,$76e6ec01,$e800321e,$3e4de510
  DC.L  $5a820654,$0209806e,$053379e4,$569d7b18
  DC.L  $27c705c3,$819b97d3,$43ad03b2,$0c001879
  DC.L  $01fe85b3,$1401dc25,$93e9490b,$439cd106
  DC.L  $2801220c,$21e0dea8,$c1e900ea,$586e0675
  DC.L  $5a0f20fc,$00270955,$d802221b,$6a00168a
  DC.L  $841a4100,$a6c03341,$16470015,$7833e153
  DC.L  $01939031,$60300930,$030081bd,$00301818
  DC.L  $20030041,$a0007028,$18608a01,$030c8804
  DC.L  $700c0259,$f80081c8,$01d02feb,$0752f084
  DC.L  $00d83819,$7104115a,$81e3c040,$55a81c3c
  DC.L  $0197dff7,$fd02b681,$b4476068,$06064053
  DC.L  $04881dca,$0ef140f3,$0fcb51a1,$1647006e
  DC.L  $abd8010f,$30c1737f,$c0a03c1b,$95740820
  DC.L  $42a94235,$09ff9fa3,$89200140,$72a940b1
  DC.L  $41440040,$0a19807c,$71aa1749,$34a07604
  DC.L  $0c791041,$0813b068,$304826d0,$ac2d0bf8
  DC.L  $d0929051,$1924be2a,$00d1b809,$8181a1c3
  DC.L  $005fb891,$f2df26c2,$97ff20b4,$a70040c6
  DC.L  $4818063c,$965c1e4e,$98248007,$028907be
  DC.L  $65044b7c,$71302300,$c140cf86,$2ad00350
  DC.L  $8008594c,$50312a20,$14379022,$030365c2
  DC.L  $8f4484d8,$b02584fd,$e141c952,$309370ba
  DC.L  $bcf00b22,$085e3ecd,$6c991669,$f154209c
  DC.L  $0a01031d,$00a45214,$0db80d30,$a00f24c1
  DC.L  $4b49192c,$834ac263,$30a0d903,$0e1d8154
  DC.L  $50342491,$e8030c20,$080e1009,$600c25f4
  DC.L  $083e4103,$372c4843,$a08b94c1,$203ac81a
  DC.L  $11821000,$211685b4,$b2052b02,$026020a8
  DC.L  $4ac81c90,$95606928,$894977f2,$20c10225
  DC.L  $9d35090d,$97fb7964,$009412e4,$0713aff3
  DC.L  $71e004a2,$25d1ae00,$4af8ee12,$004480b8
  DC.L  $0107108d,$5b9760d0,$5449049d,$13081a30
  DC.L  $342055cb,$0829d491,$03810000,$38815d80
  DC.L  $19338052,$8ad14c40,$50103860,$05f1ac2f
  DC.L  $cac016a1,$41b83241,$daa48059,$97f64925
  DC.L  $2a12088a,$ba700208,$05bc0402,$9e0d05e9
  DC.L  $df324d07,$05080206,$8003c0c4,$6cc27823
  DC.L  $f6601820,$80a06580,$08020640,$5b008150
  DC.L  $85644002,$652e022b,$43788b21,$23a90021
  DC.L  $5336cc43,$83e3730f,$fffff0e1,$673441ca
  DC.L  $ad14f8dd,$121d4a1e,$a8b0813a,$7cccc284
  DC.L  $80080243,$82629ebd,$01891919,$87000d4c
  DC.L  $00556504,$03220201,$51010444,$8a180788
  DC.L  $0100013e,$10300c75,$282c300c,$719e1211
  DC.L  $e43878c2,$787cf68f,$0140c00c,$110fc8a4
  DC.L  $7300d0a2,$6038a416,$05688030,$210032f9
  DC.L  $2c114b14,$81044bfd,$de0fd2f9,$ca621877
  DC.L  $8220de62,$17fbfc50,$9ff8ff07,$029d0022
  DC.L  $b88f8028,$71126941,$8051f2b8,$90ad2f8c
  DC.L  $e167e1d2,$48482883,$ad93a3a5,$febe09a4
  DC.L  $90105879,$8000d27e,$807f1101,$14a7fe7f
  DC.L  $a1ce0a09,$2013a382,$fa920954,$a1724004
  DC.L  $0c188028,$3d8017d6,$8cbef03e,$ec375642
  DC.L  $8537c0b9,$a6005030,$95c41800,$52680020
  DC.L  $20624058,$0206d005,$81320370,$683b6028
  DC.L  $45000c02,$063000c1,$50011030,$31203a00
  DC.L  $830502a0,$88803538,$18780403,$0081b981
  DC.L  $4bb14250,$6b114038,$a1036803,$20103300
  DC.L  $100a700d,$0a62920f,$dc2d9108,$9280f294
  DC.L  $8164206a,$b540c340,$c8214ff0,$5aea0700
  DC.L  $4d01a900,$d20972a4,$05986dce,$0c17f7fc
  DC.L  $18270a24,$0593cea4,$18088180,$0241f60c
  DC.L  $02147207,$9171abc0,$1483c19b,$89850005
  DC.L  $81f80180,$8a01f05c,$00a85631,$6001a8a9
  DC.L  $813e4427,$faa9df61,$e7280a0a,$06dd3900
  DC.L  $920a99a1,$00607b80,$73a9c00f,$27884458
  DC.L  $00e82700,$71800320,$90040df0,$090020cb
  DC.L  $00911201,$030a0120,$50355144,$f47042c1
  DC.L  $a95e10ad,$800908a8,$2100482d,$90158678
  DC.L  $2311cf04,$923ca500,$11bb00dc,$3e042284
  DC.L  $7269f4e5,$9c47a0a0,$79007daf,$80f41c0d
  DC.L  $3af90c03,$220e8b21,$40e000ac,$300c0887
  DC.L  $98048280,$20e91c0c,$14441878,$014781be
  DC.L  $8a803031,$514001b0,$50352028,$1a5eee50
  DC.L  $6a1a06d8,$1c0df0b0,$60161110,$206465d8
  DC.L  $09d0040c,$22061007,$0283a150,$0105fe67
  DC.L  $01414ec7,$928a53ff,$1762a420,$23c01028
  DC.L  $c0808018,$381a000c,$2e101814,$305c4020
  DC.L  $f10f8048,$081d700b,$47280205,$2000e850
  DC.L  $30a0384e,$e5610801,$90444058,$19015c00
  DC.L  $a22c4020,$bfcee060,$28c06413,$00206202
  DC.L  $40cc26e8,$c0181884,$ec1c0041,$9851c210
  DC.L  $4b822fd8,$b0040a4e,$92814080,$a0538028
  DC.L  $14400cfd,$40d40612,$57110f40,$04255e00
  DC.L  $2e51d142,$7fe7e09f,$101d0270,$8400a550
  DC.L  $007e83e1,$9fa5e02c,$840081a4,$372020cc
  DC.L  $a60040c9,$000e2605,$2801ed58,$00212fb5
  DC.L  $20c20632,$50090aa3,$7f8dc072,$0c0104ca
  DC.L  $9878011a,$40802065,$0a1026a0,$00903c00
  DC.L  $488b007e,$840c840c,$1280a201,$1e09042d
  DC.L  $0848884c,$8d148249,$1203a480,$0b550b04
  DC.L  $243ec0c5,$82148686,$084eae0c,$07031046
  DC.L  $38915818,$9010b8d6,$14076028,$d01d4b64
  DC.L  $8cc687a9,$8a2f0d00,$37200430,$012b8d14
  DC.L  $0081a100,$017829e6,$01b0a040,$805c5448
  DC.L  $8a281ac8,$90370122,$90f91506,$f54c2220
  DC.L  $1d166866,$090040c4,$b104d0c0,$26589268
  DC.L  $6010ac45,$34080950,$06018183,$00405fc0
  DC.L  $2028c010,$bfc0c108,$44c01080,$0920202c
  DC.L  $d987e208,$601f61e3,$4c47e080,$041c8a20
  DC.L  $d081d008,$35001d09,$780e8081,$a800e834
  DC.L  $1a104c08,$04810855,$0b7254b4,$54403050
  DC.L  $00989680,$41ae0168,$aa40305c,$1486080f
  DC.L  $88108180,$c846c3a0,$5c21d010,$62bfffd4
  DC.L  $90a0040d,$62ff1942,$43e09f33,$1a207270
  DC.L  $8820a0ed,$5242e405,$20920709,$c220d21e
  DC.L  $20401c94,$150e0078,$221dc7d6,$7275ff74
  DC.L  $c3a50041,$14a7fef7,$45484b9c,$000f0101
  DC.L  $60c00611,$10c05040,$49e42409,$a4300401
  DC.L  $e197de00,$039577a6,$0214eb07,$162af280
  DC.L  $64c60a1a,$d4040ece,$6a0a0676,$60048308
  DC.L  $b1aa128e,$05b295c3,$73ef46c2,$81b21e40
  DC.L  $7ea09110,$7a120017,$40d12404,$6c0e1520
  DC.L  $14124474,$4c0040cc,$1060b160,$44c2c816
  DC.L  $0c240201,$40f1c050,$10c02ef1,$800c2822
  DC.L  $800f640c,$cbe0103a,$002c8503,$00562412
  DC.L  $ab032461,$04188928,$00584744,$29040f91
  DC.L  $0c0fa486,$190081ff,$8190081c,$c00528d4
  DC.L  $18099549,$06013260,$03a0206c,$00542a27
  DC.L  $d0a1e607,$07f80d70,$00e024a2,$00001e0a
  DC.L  $24c21e0e,$3c080c09,$201c8719,$1778ab30
  DC.L  $03004a03,$1429920b,$d27910f8,$798528f7
  DC.L  $8b9801fd,$ff2d8518,$40c924aa,$67f05020
  DC.L  $95b05010,$200b6438,$4f78903f,$6c001d04
  DC.L  $2801f2c6,$25cffe1e,$c925887c,$01e00557
  DC.L  $fcfd7b18,$56801d41,$81b6f21f,$21022291
  DC.L  $864c6906,$0040a918,$e2499380,$0811450a
  DC.L  $101c8280,$0b824165,$fe010201,$a0870108
  DC.L  $60214144,$04847b01,$05c040cf,$805823e0
  DC.L  $501104e1,$44080b98,$15043009,$02cd4504
  DC.L  $411efe44,$520418a2,$d0303610,$2d5852f0
  DC.L  $07f87013,$e1a528a3,$3ff67604,$14405480
  DC.L  $21200140,$c0508060,$20498784,$1804288e
  DC.L  $16b800e1,$0604100a,$6520024a,$a22062a1
  DC.L  $d41032a4,$4d24274e,$022065f7,$e1fe44c9
  DC.L  $90011c47,$0c026809,$80874964,$088843e0
  DC.L  $50307685,$cb00092a,$20070109,$9aae83c0
  DC.L  $90028749,$f0181802,$820a1b0a,$88818ea2
  DC.L  $8f222107,$c4890d04,$06044252,$9417fffc
  DC.L  $17458040,$0403e110,$0d8b17a2,$013c9654
  DC.L  $10730b29,$8ad018a9,$3ff5f400,$100f0035
  DC.L  $449f0e55,$c4642e86,$25cffcfe,$08460ad4
  DC.L  $140090f8,$03818e12,$a096da04,$2488c006
  DC.L  $4b2eba17,$4f8401a6,$95d9f800,$2684ac07
  DC.L  $2c953381,$9008d7e3,$a1033106,$20852823
  DC.L  $85037816,$4bc42202,$b2318503,$03915d78
  DC.L  $2994bc3a,$010902ac,$012148fc,$a043b010
  DC.L  $33000845,$0222f942,$85446144,$012801d3
  DC.L  $85e009c2,$e0020159,$0080ba80,$c0508501
  DC.L  $060a028a,$07617b00,$61501120,$852c0040
  DC.L  $d04c4048,$2d4a4c28,$351140e0,$64e7d028
  DC.L  $3c134306,$1d01d260,$56c06417,$e0318c02
  DC.L  $bc10c4dd,$48055b00,$5241c503,$e2ff810a
  DC.L  $3c4cf43e,$ff2664bb,$d5054958,$0018a800
  DC.L  $40450047,$2c002012,$80374805,$904b1272
  DC.L  $af242c03,$033efe84,$3c5e0501,$2f037c00
  DC.L  $a1ce2585,$02867c41,$601819b8,$0564004b
  DC.L  $c3ec2c44,$09f01296,$e00a1400,$08040304
  DC.L  $05bc0281,$c4132800,$e0831d08,$0bb04b30
  DC.L  $00742e50,$10256e24,$95e02845,$8799798c
  DC.L  $0851cd5c,$62104010,$0ae81885,$dc0c514c
  DC.L  $c02d8022,$02062002,$20a06622,$14240489
  DC.L  $8dc8804c,$20bfc030,$a82d0810,$609fd1c4
  DC.L  $8c00803c,$9867220b,$8001d85c,$90eff824
  DC.L  $c8401804,$380451e0,$a2968521,$a44c00b8
  DC.L  $5672ffa7,$980ce128,$a9623600,$60d06081
  DC.L  $088298ad,$81808188,$80c0a052,$426181c5
  DC.L  $fecc9de0,$08a544b9,$0034000c,$3c20002d
  DC.L  $1a00e702,$1004591f,$00c09d00,$6049c066
  DC.L  $20574226,$01354a44,$b2a01cb4,$ac424406
  DC.L  $a90f0364,$3878c002,$48794508,$418ec082
  DC.L  $1058149c,$dc000808,$88080682,$86838f22
  DC.L  $820351c4,$25002069,$09582250,$4db04c62
  DC.L  $b3a8a33f,$f07c3042,$58469818,$3c9845d0
  DC.L  $0402cb68,$a440aa42,$015d0040,$9e818008
  DC.L  $1ac8142f,$fff20394,$2762019e,$305301e4
  DC.L  $0d381f96,$01953a88,$3a21aa20,$1a82e0b9
  DC.L  $ce333420,$5110250a,$001a8407,$9e195545
  DC.L  $feb07a01,$7c41a2a7,$5f21802c,$40a230de
  DC.L  $6007044c,$518130ca,$8143d097,$a7402082
  DC.L  $4e01655c,$11902181,$e1e60104,$c4010170
  DC.L  $01c16180,$112a00c2,$ff1781c0,$c01040c0
  DC.L  $46054002,$0300c144,$865842a6,$0212d144
  DC.L  $2ae18103,$000a48f4,$e07c3cf0,$006250f9
  DC.L  $812a74f8,$82842191,$0be844ae,$50760273
  DC.L  $8638b5e0,$1714a0a1,$40fe56c2,$5fff2f42
  DC.L  $1a8d93b6,$c0eac560,$12023902,$56a4e091
  DC.L  $31183163,$327607a4,$0802811f,$02042120
  DC.L  $00c2ef4e,$fe728e8a,$9361a401,$50003c65
  DC.L  $f7fcffc2,$49800818,$7de1f7f7,$f9027b06
  DC.L  $0a4005e8,$21844089,$0305d039,$20126e28
  DC.L  $4ffcfdca,$ba0a7d83,$89540000,$87980987
  DC.L  $c0108672,$8059981b,$2f821f00,$37349ac5
  DC.L  $9f8050cb,$353905b0,$7050e462,$61c8c501
  DC.L  $91c00209,$8918982f,$31406478,$00501307
  DC.L  $260a1c8c,$4c3918a0,$323e0048,$77032313
  DC.L  $0ff6300d,$0c4c3fdc,$c0743130,$4a6c8048
  DC.L  $c4c151b2,$01231e01,$47000c8f,$fc1e0261
  DC.L  $48e28191,$eed503b2,$0046fe01,$c085ea20
  DC.L  $65c108c1,$c7e10004,$8fffe19d,$014188c4
  DC.L  $ee300a4c,$6048c120,$00103c08,$8cfc0392
  DC.L  $c3026148,$c35be026,$148fce9e,$014188ff
  DC.L  $c03d5100,$0c8dca02,$fc879042,$31f00f45
  DC.L  $00124002,$2300800a,$effe2400,$22313bde
  DC.L  $9e015300,$6c3c0902,$2662e200,$e5212d40
  DC.L  $0600d877,$77704c28,$d8001700,$21e53001
  DC.L  $e1b11333,$010073d0,$26580361,$c05203fe
  DC.L  $009afe01,$802e1ff8,$102bffbf,$f7fe7c7a
  DC.L  $054c01b0,$c00120d3,$281c0018,$d8641209
  DC.L  $80261a05,$980d9a20,$02722c10,$390600d8
  DC.L  $68008888,$7e8e6710,$c2027300,$6c380bba
  DC.L  $bbbba83a,$00258262,$c01b0f77,$76776667
  DC.L  $77f5ff1e,$1c237303,$b41523da,$0102f405
  DC.L  $02d37ee4,$7dfb90c0,$580b1191,$0c0a59ed
  DC.L  $3f5ba002,$118262d0,$58c0580e,$cbd4140b
  DC.L  $f3fb9979,$8302b05b,$2f791118,$c0be5ef3
  DC.L  $e67034d0,$89c83014,$22661600,$c0cc0266
  DC.L  $82032629,$20140ed2,$22211803,$68617210
  DC.L  $010d4130,$207211f8,$2c0a0205,$02e047e8
  DC.L  $10302c80,$c7df60ad,$02078001,$32fc6fc1
  DC.L  $80b993f0,$082a814f,$e78313e7,$8920040e
  DC.L  $fff22333,$1803f806,$5bb1fe1d,$0277e018
  DC.L  $0b58e50b,$00207e60,$e0a4defb,$2e718004
  DC.L  $0e42b700,$3c460467,$6e72e7d8,$4132c001
  DC.L  $80ba40b0,$1c01b0be,$6f19f4ef,$9f6963e4
  DC.L  $0ff33fe0,$331812e6,$7fcbe099,$04cb3806
  DC.L  $02ae02c0,$7006301c,$020c380c,$89006079
  DC.L  $981005f2,$074c1838,$8130606c,$12f03806
  DC.L  $c0081900,$8f8340b8,$148401fd,$f888d020
  DC.L  $7000130e,$06c13f02,$c0422502,$8f408240
  DC.L  $e7c0c10f,$ff00204c,$281cf839,$61382a60
  DC.L  $1bde44e4,$580503e0,$a3d799ab,$d7898032
  DC.L  $037a404c,$8c087ff7,$fc3f989f,$b09dc006
  DC.L  $0181b850,$4580503e,$0ac101e9,$01e51ca4
  DC.L  $281fcbf4,$604c008b,$9c06e026,$220f9060
  DC.L  $17e64860,$0303e013,$fa680514,$bc1202fc
  DC.L  $c04c8c09,$7c119178,$30003601,$30918f80
  DC.L  $4c7c0070,$57e7c858,$0303e08f,$cfef9035
  DC.L  $c20ee3fe,$085d40ff,$dfc1e1f0,$15300a12
  DC.L  $042c0181,$f0090c04,$050b2054,$20004460
  DC.L  $0c8401c0,$0029813b,$000c0284,$190b0060
  DC.L  $7c11810c,$6203e900,$a0684013,$b0040813
  DC.L  $50bf4897,$20c03038,$90aab107,$20808880
  DC.L  $be1079f2,$ef503040,$01640873,$03c13206
  DC.L  $a0040f02,$2e008708,$3acee827,$b50304ef
  DC.L  $16fc1807,$0f721600,$c0f82c0b,$70029480
  DC.L  $503c3d8d,$d4501d03,$fc7f1740,$9d380601
  DC.L  $c38c8580,$3031b418,$44029700,$64070e22
  DC.L  $310ce84d,$0d3883b0,$00930389,$8b00ff83
  DC.L  $a2b00a07,$f7bf6eff,$90413b00,$6407fe33
  DC.L  $21ffe9f1,$fef97c03,$8d344e60,$14208858
  DC.L  $03035461,$09218810,$216600c8,$0a144444
  DC.L  $15286411,$4a004001,$36070f56,$06f00b00
  DC.L  $606c653a,$00f5083b,$c0098503,$1f1a8099
  DC.L  $77c0c05c,$c0580303,$fd0098e6,$002f841e
  DC.L  $46643027,$fc3ff60e,$c7f37872,$41c80ec0
  DC.L  $303310b0,$06071b01,$5880b540,$80cc0190
  DC.L  $181c0c3c,$14f56c19,$321fa80e,$1a440d80
  DC.L  $bc80b006,$07fbff5e,$ffc84029,$c0190bff
  DC.L  $30c3ff3d,$67ffcd7c,$12038989,$24e41806
  DC.L  $f6721600,$c0eab7ed,$97972be9,$805901bd
  DC.L  $ccc07d30,$797dcc5e,$1c80e265,$8000be28
  DC.L  $34016010,$9810799f,$f0098a06,$380131e6
  DC.L  $07c159ab,$00607fdc,$37e84882,$f841f87f
  DC.L  $a1f83fa1,$fe30f04c,$a9879060,$10024858
  DC.L  $01030013,$81b14980,$60040e40,$401818b0
  DC.L  $30296000,$a205fa06,$c05b8058,$0103007d
  DC.L  $806180c1,$fab06100,$f80590b0,$ff2ef0f0
  DC.L  $2961c000,$a013a98f,$90601422,$48580503
  DC.L  $4c002100,$01a61021,$e600c80a,$13231616
  DC.L  $342c2808,$034d031d,$d20604dc,$0e80a3bb
  DC.L  $20ff0128,$3002026c,$0d80a34d,$aa68517f
  DC.L  $8026020f,$e3fe0261,$40c13281,$b009e024
  DC.L  $2c008180,$1b42da1e,$81003d60,$0c809e03
  DC.L  $427c00a4,$f900bc80,$26207800,$60168ac0
  DC.L  $2819c81b,$87ff2603,$d600c80f,$fc4665fe
  DC.L  $052bf803,$e4026103,$5c0300bf,$0242c028
  DC.L  $1ac80420,$07f8540f,$5803202f,$c00808c0
  DC.L  $802f800f,$f00d340d,$80a09d50,$10987801
  DC.L  $f8bb0348,$20fa3ba1,$52240c1a,$581b0177
  DC.L  $01600c0c,$4280ffdd,$4098e00c,$8409d000
  DC.L  $0ff80c02,$63036828,$84103fd9,$000907e9
  DC.L  $1ff143e7,$f01cc07f,$8217d025,$d0abf922
  DC.L  $00d340f0,$00d058c0,$58411008,$0ce04892
  DC.L  $4d00a098,$40290428,$48a30072,$11490400
  DC.L  $64681ce0,$1805a2b0,$0a061520,$440024e0
  DC.L  $16c01901,$81888846,$05900310,$80696062
  DC.L  $60a0c00f,$879ebf8f,$28263802,$263803f1
  DC.L  $7f006910,$6c0040ec,$28800408,$0643fa2c
  DC.L  $2cf00989,$84c126d9,$999ff199,$1ff98fdc
  DC.L  $04c20638,$0682b002,$c208a0b8,$005e0848
  DC.L  $c1520810,$a0c05820,$1423cac8,$200f8823
  DC.L  $c00f5509,$8103682c,$202c2089,$06100500
  DC.L  $90a05033,$0905e185,$02929a0f,$c0020863
  DC.L  $08370260,$81b00c0c,$04302c00,$2850000a
  DC.L  $90230010,$a8098118,$48330810,$219b8823
  DC.L  $1f083188,$1cfa130a,$0780140e,$c0452061
  DC.L  $e7cfe392,$0988e8d3,$4276f9e7,$c03e043b
  DC.L  $818f8180,$081d8500,$008101f8,$80985033
  DC.L  $01ff847e,$4027413e,$206b58c0,$d240d807
  DC.L  $0f821600,$40e2c8f9,$98698079,$2c18403e
  DC.L  $00c80e18,$02ac099a,$0c4c0700,$d340d804
  DC.L  $f1e21600,$40deff20,$151f7f1d,$a01e7029
  DC.L  $013cbc86,$00ddfe79,$bf8d101a,$481b0080
  DC.L  $3042c008,$1b216330,$01300143,$26ec0190
  DC.L  $10024860,$598cc809,$8804069a,$06c057c0
  DC.L  $580503c0,$3b804c99,$80348418,$a5815d02
  DC.L  $56026a06,$913416c0,$281df832,$2a133803
  DC.L  $203fe0c0,$2a994690,$818e0180,$6f702160
  DC.L  $040fb9c2,$117a13f9,$1ebd7803,$e00c80de
  DC.L  $82203ee7,$023ea71f,$807026a0,$6c054805
  DC.L  $801031ef,$f0821480,$19810210,$0f805909
  DC.L  $0b223108,$fa250af9,$8003834d,$036017e4
  DC.L  $08580103,$11130441,$4426040f,$029017e0
  DC.L  $04446040,$9fc527f8,$0bea06c0,$56c05805
  DC.L  $03806a1e,$6efe27a0,$f5083ece,$e8605d07
  DC.L  $8003f802,$6a06c05d,$c0580103,$f70244ff
  DC.L  $b9ffbf81,$30107b9b,$b0c0a741,$2a2b3099
  DC.L  $5805a2b0,$0a068120,$46002060,$62a00090
  DC.L  $1818c8c4,$6051009f,$803b2004,$cc0c5004
  DC.L  $1b447e91,$09e85004,$1e464430,$2140a062
  DC.L  $656017e0,$88580503,$5f0c3f08,$ff8f1f63
  DC.L  $c3703888,$8fe7f89f,$ea46404d,$c0da23c0
  DC.L  $5803037b,$1e7efe0f,$20f57033,$cfcfb405
  DC.L  $5f008c87,$c0261c0d,$a06c0181,$c63fc2c0
  DC.L  $44ca3a35,$b6666430,$28902688,$261039c0
  DC.L  $3009e0e4,$2c018187,$0f216f1f,$903eb819
  DC.L  $e600d204,$60806cc1,$ffd004c2,$06c03873
  DC.L  $10b00a06,$e100c361,$c3c141a6,$98024070
  DC.L  $cc1940e0,$2040c00c,$00382610,$39c0300c
  DC.L  $0cc42c01,$81c72060,$21061eae,$0703803a
  DC.L  $03001002,$004001c1,$3081b002,$80b95dc0
  DC.L  $dc002616,$0ff41817,$8004c381,$cf8180a1
  DC.L  $55801037,$f8e7ffec,$30415601,$6425ca02
  DC.L  $ff09ffff,$c15c0984,$0d804009,$21605b75
  DC.L  $90026006,$28060b0e,$00c80800,$02ac0881
  DC.L  $01380300,$d240e800,$c03fff90,$b02e7dcb
  DC.L  $ffd3fdd7,$fff5fbfc,$07c01901,$ffb8bb46
  DC.L  $05f2ff7c,$3f804ca0,$7905e405,$81730988
  DC.L  $29903890,$18d12003,$00b2140b,$01323022
  DC.L  $0812960c,$026503a0,$2ef51036,$017a0086
  DC.L  $d5c6120c,$52c0be01,$2a209940,$f20b780b
  DC.L  $02ff0142,$be61fe61,$012050e0,$0c8587f9
  DC.L  $fe8c0ae7,$0ffd83f8,$82655c03,$00bf0242
  DC.L  $c0af51f0,$40172bf0,$015600c8,$0bf00027
  DC.L  $f0980ff4,$98ff2407,$13020790,$550ac05e
  DC.L  $bbe02639,$8c200805,$1c0190b0,$f32230dc
  DC.L  $f2685d20,$9840d701,$90544058,$16d34178
  DC.L  $00fd00ff,$fc7cfe03,$e016427e,$40044604
  DC.L  $02fd987d,$804c2074,$00a02b60,$140181a0
  DC.L  $4dc04d25,$07d9dd0c,$08aa9c81,$3081ef81
  DC.L  $8070e721,$605fdf06,$19861dca,$65431381
  DC.L  $480e1ee6,$ea302994,$3fc61fd2,$09977019
  DC.L  $0510a604,$5221002c,$f10a0e01,$64248b20
  DC.L  $00a28600,$42804ca0,$79038601,$0a606f64
  DC.L  $1c86143b,$40a3802c,$126d1918,$0601904f
  DC.L  $511ea207,$b80c8168,$b229882a,$401885ef
  DC.L  $aafc6014,$f403b5ec,$4441ee02,$abd005f4
  DC.L  $02610309,$9c09e016,$05020099,$4f87be10
  DC.L  $26020ef3,$fe1817c0,$25446802,$65df0641
  DC.L  $6301602c,$208d9822,$18731841,$a8296016
  DC.L  $01830f33,$330c0223,$0c03945d,$800be207
  DC.L  $90387270,$aca627b1,$3802cc35,$8c209814
  DC.L  $b0060c4c,$8502944c,$1de84a1c,$010b0260
  DC.L  $81800320,$70fcd851,$302f7e60,$3f0c3a4c
  DC.L  $21960c30,$1f0050fc,$d0518038,$77bf3070
  DC.L  $08341484,$c7f01902,$78060a60,$6d130790
  DC.L  $07972828,$5c017c4c,$5e3cc604,$f8b54d79
  DC.L  $00bd4026,$2064e210,$0c0c4e53,$15e1ef04
  DC.L  $09970050,$c7006001,$2b0f0c40,$4c281c85
  DC.L  $03f90b0a,$62fc0285,$0001310e,$00f0e043
  DC.L  $b3080bf7,$f20bf3f6,$0c030f32,$07132be0
  DC.L  $3200819f,$ff523fdb,$a72f911f,$b31ff50f
  DC.L  $9fd07c01,$3e4e7f46,$00df2d93,$ff723fd0
  DC.L  $13081d00,$32008190,$015e00e7,$df103f10
  DC.L  $9d108f08,$10d07c01,$42be0046,$00e133af
  DC.L  $815c00d0,$13081be0,$320081a0,$00920066
  DC.L  $14907120,$73200360,$70a1c0b0,$4a401180
  DC.L  $283cc280,$2c801402,$6207400c,$80607314
  DC.L  $443e0409,$f87b9902,$7600103a,$db00706e
  DC.L  $e9098207,$fe0c8020,$7614c5cf,$305d207f
  DC.L  $200d5020,$7300707f,$d8118028,$20f0b07f
  DC.L  $18100994,$0f20081b,$fdf8222c,$0b00ff80
  DC.L  $ffc17efe,$cc00206b,$e0c01ff0,$1d57e80b
  DC.L  $e8098a07,$90040e62,$48218280,$a0518c27
  DC.L  $960c24c0,$0206400c,$010301d4,$86184281
  DC.L  $30206380,$90020751,$4002c028,$1a2014d6
  DC.L  $81e00900,$3004b240,$40c42004,$20983039
  DC.L  $80606a02,$5c3cdc3d,$9c4132e0,$0303a313
  DC.L  $c6c1e402,$65036802,$06000981,$b0158005
  DC.L  $c4252d03,$c0060600,$00c181b8,$c1404ca0
  DC.L  $790040cb,$c1302a10,$78440f23,$fa880a17
  DC.L  $0053c180,$2610fdf4,$62fe0130,$81c00320
  DC.L  $281cc084,$0861fa41,$fd60fd30,$02819f81
  DC.L  $72281bf6,$41f86601,$3081e401,$034004c0
  DC.L  $a8480310,$80914080,$4c001060,$20040821
  DC.L  $041404ca,$0790140c,$f1f20a05,$3e1e7a42
  DC.L  $441e3d0c,$002061e0,$c01fcff1,$f3c781ea
  DC.L  $026503c8,$0206be09,$81501c85,$ecc5e68a
  DC.L  $f5e66004,$8335bf53,$1f900994,$0f20081b
  DC.L  $9dba022c,$05cf016e,$696f02b5,$6f980120
  DC.L  $ce44edc6,$04c81304,$0e001900,$c0cc1f60
  DC.L  $a039ccfc,$8cf9d66c,$ecc00907,$f2f99ec8
  DC.L  $fa1d4098,$20790040,$da2c0058,$08626330
  DC.L  $e330019b,$37300081,$a60300b4,$c1999389
  DC.L  $84069206,$26060d38,$0902260d,$0c7c1900
  DC.L  $40cfc130,$2a11fb83,$fbf3fc01,$fb300141
  DC.L  $ffbfff7e,$3f705013,$081e40b0,$0bdb01b3
  DC.L  $d6142e23,$da63de22,$0a0e014d,$818054f5
  DC.L  $67b2436e,$2a0d2103,$c8160198,$17a0285f
  DC.L  $c7b747bf,$d3c7acc0,$0206720c,$02e7acbd
  DC.L  $dc1c8f50,$4ca780c8,$0606c0b3,$0501665a
  DC.L  $265a222d,$5a660010,$31906014,$c1e6d091
  DC.L  $64917098,$303a02cc,$4202813f,$001f2028
  DC.L  $1c1be004,$026081df,$83200818,$f8260540
  DC.L  $5e81013f,$1d1fbf63,$000819f8,$300be0ff
  DC.L  $f9f8fff5,$40982071,$01a0c820,$a0c87550
  DC.L  $98283cc0,$07870348,$b902c187,$944c4701
  DC.L  $100c0e40,$181a454e,$9e0f7ca2,$65201601
  DC.L  $981131ea,$00ee002e,$20a0383e,$c000e409
  DC.L  $81036f46,$07411401,$03489600,$280e0f70
  DC.L  $1bf09942,$8381c801,$03402850,$78302ba0
  DC.L  $0265c004,$c0083c40,$206917c0,$10324050
  DC.L  $71801411,$319c04c0,$08328020,$69105078
  DC.L  $38800084,$09810368,$0a060779,$0502fd80
  DC.L  $ff00df00,$00b24070,$040c1803,$7c3f8023
  DC.L  $c8132cf8,$3dd981d0,$4080e090,$248b2016
  DC.L  $70e0f300,$3a102651,$c03005c3,$3cace101
  DC.L  $c20c2656,$00387f01,$8a70df24,$098207b8
  DC.L  $0600d87f,$18019b90,$23230c13,$0206c007
  DC.L  $0ffff37f,$ffe41e82,$651f0300,$1c300020
  DC.L  $883fc404,$ca780600,$d86cc450,$4c122e68
  DC.L  $0997800c,$01b0c72b,$fbbfb405,$42657c06
  DC.L  $003c3666,$22606c09,$97ef481b,$00743f09
  DC.L  $30a36013,$2df81800,$e1905215,$d804c0a9
  DC.L  $86039021,$190004c1,$9190004c,$379d1aa2
  DC.L  $3de84c29,$1a0004c3,$51b99e23,$13072700
  DC.L  $01306470,$00130ff7,$b0030c4c,$2b594044
  DC.L  $3098547c,$d048c261,$29f20243,$38064004
  DC.L  $3130a867,$9510c4c5,$54491898,$54337208
  DC.L  $6261a8dc,$3cf7e07f,$67f7db7c,$0da6377e
  DC.L  $c838bf4f,$c01f9db3,$a06dd827,$67fcf2ff
  DC.L  $e78f1c78,$6e007130,$e8615490,$c4e40a21
  DC.L  $00109111,$44980241,$01142254,$04511220
  DC.L  $05c44080,$12401940,$84101118,$a1020801
  DC.L  $042d8e13,$034d826f,$f03743e8,$9bfe4342
  DC.L  $7f00be40,$98dfe0ef,$a338c818,$f9e42b44
  DC.L  $260d1d26,$f0174d6e,$ba530129,$056b692a
  DC.L  $e24e92d8,$87098206,$57032fac,$f5d3b726
  DC.L  $3c50c0da,$f641c263,$29898103,$fe7b809c
  DC.L  $7c07dadc,$ffc11133,$e8026081,$fb804e7f
  DC.L  $bfffecfd,$0fa0982c,$303c4862,$74055090
  DC.L  $144b8292,$94011281,$09314b02,$a8ab0805
  DC.L  $d461c810,$a00c92c5,$34c04548,$4a810109
  DC.L  $0ec71306,$864c010c,$4c351a85,$b77ecf3f
  DC.L  $a04e3df8,$ffb3c11d,$131e805f,$7b6fc1f7
  DC.L  $e0edb7bd,$f7f6fe8f,$3e585fde,$80e87130
  DC.L  $a8682009,$84869161,$5c8c8ba6,$51552980
  DC.L  $b5c2b488,$9441775c,$a402dad3,$5809ae06
  DC.L  $4d2969af,$26e459a0,$80b4e404,$63898543
  DC.L  $55004c4e,$38748809,$95a05ffc,$0fd0275b
  DC.L  $9fc04c5f,$c03fffbf,$e0fff07d,$c03b08f6
  DC.L  $e78fbe78,$5bd04e64,$00981430,$c4487809
  DC.L  $12144a00,$4185a6cb,$70062214,$a4a5a808
  DC.L  $a22b401b,$b8832071,$803086cc,$71813143
  DC.L  $0a9004a8,$208cdf1c,$4c0a1930,$04313094
  DC.L  $74e00a0c,$86d400a0,$086ea810,$130c8614
  DC.L  $010c000b,$012b63cd,$fc0fdc03,$944dbe03
  DC.L  $d31ef6c6,$ff9cff2d,$e00c4fdd,$f03ef81e
  DC.L  $fb77befd,$99e1ed1e,$16dfa0ee,$ce1d1c6d
  DC.L  $7218a00f,$03c1c005,$f7e7604c,$311bfbba
  DC.L  $3a028291,$a1404028,$29182404,$19a3219e
  DC.L  $0320021a,$27043b82,$9183afe2,$204c091a
  DC.L  $123c0281,$c9a001d1,$291c7084,$3420e86f
  DC.L  $e003de07,$06170c0e,$1e0140e4,$e000f214
  DC.L  $8c6ac61a,$e0783ff0,$2a2d839d,$0e860e0f
  DC.L  $00a07260,$01d06402,$464d248e,$d0a260c8
  DC.L  $c7c1cf23,$0fc02c18,$500a3140,$64640013
  DC.L  $07277ae4,$0ec83118,$50723fc0,$09831bfe
  DC.L  $07903231,$e0f26141,$f2e00191,$80a0a380
  DC.L  $0ff7001f,$ec5e3d18,$28723130,$e46280c8
  DC.L  $e7a221be,$3343130e,$460a1c8c,$4c3918a0
  DC.L  $0430900f,$0543ec50,$86100660,$a8610ff2
  DC.L  $c4c3c98c,$8903b005,$0626044e,$c0141809
  DC.L  $f3310e20,$63baa4c4,$c0418b6f,$03069986
  DC.L  $e4388c4c,$281d8068,$31303862,$8a40c282
  DC.L  $818c8b43,$1eaa0628,$b08c7aa8,$18a04831
  DC.L  $91e863d5,$40c14281,$a3bbc026,$16186910
  DC.L  $3145207c,$0140c4c3,$e1978028,$18188734
  DC.L  $30a11310,$be847f00,$1484c42f,$8818a010
  DC.L  $3138280a,$1e0f048a,$04ca03c4,$0c511151
  DC.L  $54148260,$30c99d60,$26140f1a,$48189944
  DC.L  $3aa18985,$03051270,$0f050309,$89875d05
  DC.L  $0303e303,$87f00148,$4c4041a1,$0a005028
  DC.L  $184c4c30,$00098503,$1b001447,$54204c2c
  DC.L  $31302064,$03f020d3,$40c4c361,$8691030a
  DC.L  $0a06261d,$0c521311,$ea847f00,$1484c47a
  DC.L  $8818a010,$31301870,$801328f5,$1031c415
  DC.L  $45504209,$80c32900,$99434a81,$8c8d0313
  DC.L  $0d860a25,$a00a0606,$261d0c52,$13182881
  DC.L  $0403c3c3,$f800a434,$d1484e14,$02062603
  DC.L  $0e000265,$0e102140,$9c10aee8,$ef83da38
  DC.L  $1a18792c,$04cae6cf,$9dd38130,$c460a226
  DC.L  $1f0c5213,$1f26d6d1,$3c0983c3,$14869b81
  DC.L  $0e004c1e,$190004ca,$0c019c04,$61f944a8
  DC.L  $1310b00d,$378c2818,$981c3051,$130f8629
  DC.L  $098a5021,$8a04c3e1,$8a434d14,$84c3e190
  DC.L  $c8404c61,$8260133d,$c070c4c2,$8199f947
  DC.L  $204ee14a,$06260d0f,$ac0290b8,$1fa05113
  DC.L  $07861422,$6364c82a,$81302461,$a01484c1
  DC.L  $e1f000b2,$0706d41c,$12c08139,$001b15b0
  DC.L  $c4c281a1,$c945204e,$bf3f8069,$103130a8
  DC.L  $61607daa,$0001444c,$1e1ef5fe,$0aea0308
  DC.L  $90b70260,$48c14029,$0983c31e,$0a060c92
  DC.L  $80813a00,$c3837b18,$4c50da0a,$1e088bc0
  DC.L  $0c11dc94,$9204e7fc,$f1f21fc2,$098743fb
  DC.L  $005144c0,$c1820143,$c2009850,$37ab6b71
  DC.L  $1c0985c3,$f8039970,$2160290f,$004c2e1c
  DC.L  $08103808,$64948122,$3041b210,$130a47e4
  DC.L  $df013289,$0143fe00,$98503051,$2c005030
  DC.L  $38d00281,$43c3004c,$0e318a10,$6f0060c7
  DC.L  $8181ff02,$12130305,$87130130,$f8688227
  DC.L  $7f9e3b20,$4c3e1850,$8981230a,$0207c610
  DC.L  $8c26051f,$ce103c00,$48402c09,$83c3c11e
  DC.L  $8ff3ffb7,$bfda0983,$c30a12f0,$0986230a
  DC.L  $0207c610,$8f001892,$26048e40,$74e30088
  DC.L  $21ec6be1,$43b42898,$503301d3,$b3fddf78
  DC.L  $70810986,$c318af01,$30313038,$614140ef
  DC.L  $42118f14,$52b80a06,$261b0cee,$a3e00188
  DC.L  $7a9a06cc,$150d2008,$1bf83107,$83ffcfbf
  DC.L  $1405130d,$87800591,$21460626,$044f1a14
  DC.L  $18987431,$e0e46900,$10e690a1,$df9b03b0
  DC.L  $0507001b,$00a0a870,$00d8c020,$2128050c
  DC.L  $0301c109,$00e0c730,$203c050c,$323e0900
  DC.L  $e0f8cf61,$c4820d10,$341f999c,$0281c1c6
  DC.L  $66c3a20a,$04878c81,$04807064,$b4489033
  DC.L  $20f06108,$1008c80e,$07f60502,$9fc80080
  DC.L  $e0758a1e,$c01201c1,$9b304357,$481fb078
  DC.L  $31b37824,$0383cddd,$87120830,$30d07cca
  DC.L  $700a0106,$14005180,$20d44dc0,$515002c1
  DC.L  $8c00b2ea,$004c2830,$a0207e31,$d0d02061
  DC.L  $c81c0c20,$181128e8,$0082a04c,$321f4544
  DC.L  $078241bc,$47e0a08a,$a8202605,$0c55de09
  DC.L  $0020c3c1,$f1098eee,$ec31d481,$918783ee
  DC.L  $53805008,$30a23ccc,$0a020944,$de054a00
  DC.L  $400706b0,$48119580,$98507386,$67c80a82
  DC.L  $63a1b841,$4390381e,$40e1e439,$e004e608
  DC.L  $48071eac,$879c0098,$90661807,$e7038409
  DC.L  $8987fc01,$30106800,$132ceeef,$ca04c321
  DC.L  $e731c04c,$141b3606,$e100c46d,$04c0a1c6
  DC.L  $03c0241f,$84f4ca04,$c6001a18,$020404c1
  DC.L  $41cf47bf,$21120100,$98143889,$88098283
  DC.L  $9f3080f4,$4cc10130,$28626013,$0d07fe01
  DC.L  $309871c8,$700a0106,$14427f81,$81310d00
  DC.L  $54260f0f,$7b00f902,$63000130,$6861a020
  DC.L  $fa07b0e7,$f0263022,$30130846,$400131e0
  DC.L  $0098343f,$c0098283,$c00098ee,$83890418
  DC.L  $18683130,$d0743430,$130a46bc,$bd0130a4
  DC.L  $73c01303,$6614020c,$2b878383,$10804023
  DC.L  $81568010,$01c1ec36,$0404604c,$1418f0f8
  DC.L  $f202a088,$48098343,$0d010627,$6fdfb300
  DC.L  $0c4210b0,$7a400707,$20900019,$8130d078
  DC.L  $60044813,$b900260d,$0fe00261,$60c77638
  DC.L  $5026190c,$390e0140,$20c28848,$f8388814
  DC.L  $01381548,$01001c1c,$df785946,$04c141ef
  DC.L  $6e0f202a,$13018722,$0130107b,$c397efc0
  DC.L  $0b1188bc,$789001c1,$88060016,$604c141e
  DC.L  $060000e6,$04c261f8,$804c241e,$1804c577
  DC.L  $53150261,$90cb8026,$0a0e8467,$82f30270
  DC.L  $20028a80,$160c7f1c,$3d230260,$a0d79987
  DC.L  $9026048d,$787afcf3,$02746004,$c5001c18
  DC.L  $be383a66,$04c141a0,$7f4017f6,$1898483c
  DC.L  $0ff80997,$50026050,$db90e014,$020c2800
  DC.L  $a51310ab,$c00f2010,$c3c0261a,$0f87fc7d
  DC.L  $0260b0e4,$8026020f,$8abf0099,$52408001
  DC.L  $0dc044c2,$51f9804c,$3c1e6804,$c2a18500
  DC.L  $830a074c,$c6013285,$01431b7d,$0632a40c
  DC.L  $4c061d30,$320381f4,$03023c07,$04274cff
  DC.L  $41c2081a,$20583130,$d063ba30,$dd044c2c
  DC.L  $1ff410e8,$8c4eb810,$8744604d,$f0c4c241
  DC.L  $dc1421e1,$189ddca4,$0c21f11d,$c404cb0c
  DC.L  $51441851,$443ae1d8,$0103130f,$87c81c0c
  DC.L  $4e141100,$0874c388,$0e06270a,$0834d230
  DC.L  $484c0918,$508c8d13,$1e020627,$0a08f001
  DC.L  $a61189c2,$8226048c,$c0620260,$f0c1c188
  DC.L  $51302063,$4d069f86,$26108c50,$08189810
  DC.L  $30800349,$c3b3e206,$26088dbf,$08189802
  DC.L  $3c0bd402,$1d40c284,$43ae1898,$1231c1f4
  DC.L  $0190bf80,$4e141160,$09889007,$a811895f
  DC.L  $c3fd05a7,$44e08061,$4261b0ef,$c0130a0c
  DC.L  $5f081898,$4c31eac4,$64444088,$04ce0629
  DC.L  $0c0034a6,$1e402405,$f3818984,$231eaa06
  DC.L  $26108c14,$a26040c6,$90818be6,$c31484c3
  DC.L  $e1a12d75,$8ae02844,$c2818700,$51661840
  DC.L  $06924189,$8023e071,$3c409826,$304c9863
  DC.L  $c234808e,$892a2500,$98c0c4c1,$8187ab43
  DC.L  $13084634,$9a0c1802,$60a0c692,$61898303
  DC.L  $0a843ae1,$8988a426,$1f0f892b,$a4530142
  DC.L  $26514110,$e9861020,$0481a460,$62822600
  DC.L  $8c700265,$4000987c,$31a4a061,$422fd10e
  DC.L  $986260f0,$d4044c48,$99830570,$13140c50
  DC.L  $420021d3,$0f201810,$98303141,$026b8626
  DC.L  $0c0c1112,$026140ff,$19218983,$03052c50
  DC.L  $028a34de,$200348c3,$0200a142,$63e1995d
  DC.L  $fb8ae028,$44ca290b,$004c4080,$0d350f21
  DC.L  $10211600,$40c4c452,$130786c1,$34608099
  DC.L  $0828804c,$3c315002,$97280145,$13284c4c
  DC.L  $30200f08,$018404c1,$91b40050,$a2651a46
  DC.L  $87f001e0,$60620030,$141098b8,$63bc0e23
  DC.L  $d009f42a,$8c00261b,$0c28181c,$0004e0a1
  DC.L  $3a00d24c,$30a0e062,$61f0c704,$50028528
  DC.L  $00a14480,$34930d48,$69058250,$0180a089
  DC.L  $82c30300,$96903008,$0809c607,$10087787
  DC.L  $ee0392c5,$0028a026,$84ff81e5,$0b8290ad
  DC.L  $001428c0,$06926182,$00201818,$800c0504
  DC.L  $04e91a38,$04c091cb,$69031dd4,$47c0040c
  DC.L  $4c211a40,$0c2e0438,$010f08cc,$000d230c
  DC.L  $3d5b1828,$89810308,$7f861404,$0c4c211c
  DC.L  $4038a9f0,$0a410f08,$dc002110,$03ca1308
  DC.L  $471e0c0b,$7c0260c8,$dfc03224,$0c691e18
  DC.L  $805031a4,$84613270,$210f08e4,$02818d24
  DC.L  $23030a06,$34908fe8,$01450874,$4620140c
  DC.L  $4c211fc0,$388a10e8,$8e402818,$98423900
  DC.L  $a0626088,$c1460002,$1d88c280,$81813423
  DC.L  $08060500,$010ec47e,$00f88fc0,$04cc8c4c
  DC.L  $181fe324,$3130d064,$7998081a,$4206261f
  DC.L  $0e70ce02,$6048f207,$0f21f026,$040c439e
  DC.L  $198601f9,$c604c091,$a0004c39,$1b3004c2
  DC.L  $818873c3,$f09e9940,$983239e8,$f804c103
  DC.L  $f200133c,$3c09f80d,$bdc3e306,$06277f80
  DC.L  $4c291909,$fe04e604,$cb0401ea,$b87e1bd8
  DC.L  $07d81302,$463d873e,$2980d220,$604cf0c5
  DC.L  $20bea460,$b6000692,$91d0804c,$281e1004
  DC.L  $3ae1f82f,$2f204c29,$1cf004c1,$81c10043
  DC.L  $9e189879,$3e1e0e09,$8c0be103,$1307863c
  DC.L  $3f013064,$7bf7e208,$132e1004,$c3e1e180
  DC.L  $4c2c9909,$1c04c281,$b9004c1e,$1ef6e404
  DC.L  $c291ef0e,$5fa12613,$16200983,$c3c0c080
  DC.L  $98323c30,$098523a1,$19e0bcc0,$9810317c
  DC.L  $b87e0bcc,$c3d812bd,$8626020d,$787afcf3
  DC.L  $026517cf,$8681fd01,$b7686348,$e0f03fe0
  DC.L  $260c0c69,$2e185001,$4a265320,$0983c3e1
  DC.L  $ff1f4098,$123e2afc,$026040cc,$80099e0c
  DC.L  $439c1898,$3930a074,$cc6010ec,$47e00c08
  DC.L  $7003bb50,$d8044c14,$1f403023,$c0087123
  DC.L  $1dd186e8,$226160f8,$0002740f,$f1921898
  DC.L  $183b811e,$a206261c,$4ee0a21d,$88fb9481
  DC.L  $89822378,$1145d86c,$80c0c4e0,$a110e326
  DC.L  $28220010,$ec462822,$6048f001,$e0261b0f
  DC.L  $f2efdd02,$700fffda,$04e0a11a,$420621d5
  DC.L  $0c203818,$987c3202,$28480120,$12882e09
  DC.L  $c2823c01,$0e586100,$c0c4e141,$13024660
  DC.L  $310130d8,$7fc0a0be,$3ee03484,$0c284690
  DC.L  $81887543,$080e0626,$1f0df16f,$6fc3480a
  DC.L  $bfd78260,$40c34881,$895bc313,$06273dfa
  DC.L  $de813a0f,$de026214,$21a484c4,$90531015
  DC.L  $20a91138,$270a0869,$103130f8,$62821a54
  DC.L  $8f0a1305,$8779face,$f0fe07fe,$fdc13020
  DC.L  $62fd3200,$985e32c5,$94570520,$2ab74e09
  DC.L  $81031800,$98910013,$01189811,$3beed6ff
  DC.L  $8ff83a2c,$c26040c6,$91099824,$a5c00b01
  DC.L  $9643704c,$08187004,$c4480099,$f0c4c3a1
  DC.L  $8d204313,$06063495,$0c283818,$98083e20
  DC.L  $0875c313,$0f873dda,$dbf1f703,$eff7c130
  DC.L  $107c4010,$eb862609,$4c2a10e5,$86101c0c
  DC.L  $4c261b00,$89858314,$110e8462,$62290439
  DC.L  $23044080,$98503fc6,$4860be60,$c2845fa2
  DC.L  $6024c504,$20028a88,$c0402822,$6048c111
  DC.L  $20261b0d,$82010034,$af04c850,$8d22c308
  DC.L  $0e0636f2,$8c504580,$263c401b,$7f862822
  DC.L  $5648c20a,$20261b0c,$62381e50,$028a2653
  DC.L  $22880981,$43140e06,$60013078,$6c101983
  DC.L  $0004000b,$43050a26,$52202005,$83098106
  DC.L  $16740c04,$40050282,$261b0ffb,$f77eff0f
  DC.L  $17f27c0a,$a3000986,$c30c3a06,$0909c142
  DC.L  $74013286,$9543c081,$03387021,$c4020130
  DC.L  $f862a740,$d0000a10,$28512006,$94c34082
  DC.L  $04489000,$40025001,$80e28226,$1b0ff7ee
  DC.L  $fd1c77ff,$ec04e303,$880986c3,$90230772
  DC.L  $e4009003,$8a00e145,$05f58609,$8c0c0c03
  DC.L  $bbf0e810,$00450a00,$28001a00,$38a14600
  DC.L  $3bb30d82,$08800040,$54082002,$8141098d
  DC.L  $87f7eeff,$fffdfff6,$c13b011e,$03ba70c1
  DC.L  $83200b15,$40d15096,$d20634d1,$30a86f1e
  DC.L  $0001e3c0,$0f0c1328,$4c343130,$a06306c1
  DC.L  $9870c023,$00c9001d,$d1a1c002,$6987f1f2
  DC.L  $267efe05,$f0126001,$c515e183,$83766040
  DC.L  $7e83fb70,$3d7e1850,$7038a002,$8834ec30
  DC.L  $80e06141,$40c69261,$8eb70388,$07153e01
  DC.L  $483d611b,$80042200,$79421d08,$e3c1816f
  DC.L  $80693118,$98bf8064,$681843dc,$3130f861
  DC.L  $30a0ce04,$4c7c8010,$f70e4028,$18984c31
  DC.L  $eae06261,$f0fa36c5,$d00b0541,$3f500a28
  DC.L  $872c3e0c,$3077cc04,$d4402818,$134c3e8d
  DC.L  $3077dc04,$d7e01e45,$08744720,$140c09a6
  DC.L  $1f7edfbb,$ee026b20,$140c09a6,$1898083f
  DC.L  $11800099,$41a5a189,$97600135,$0a020613
  DC.L  $108c2018,$1400021f,$11f80352,$3f00987c
  DC.L  $3db004d7,$b444c091,$91e6605e,$604c1e18
  DC.L  $d21039c3,$3804c023,$fa029c03,$9038790e
  DC.L  $44984c21,$198601f9,$c604c3e1,$8d210340
  DC.L  $00985c31,$a410642c,$d8081a42,$06026d0c
  DC.L  $4c041cf4,$cc04c0e1,$84c0831e,$9e8f40d2
  DC.L  $10342009,$87c39f00,$db9c3130,$907fe013
  DC.L  $0386d1b4,$2880582a,$0b0a213f,$c0f2a099
  DC.L  $6c803495,$0d830a18,$96000300,$1f86f601
  DC.L  $f704c361,$b4690230,$e1003401,$f40f61cf
  DC.L  $a1107132,$9100693e,$1e1802f8,$e1b7ed7a
  DC.L  $30e1fe37,$fdf04c70,$00261b0f,$a36c5d00
  DC.L  $b2541215,$4343c1f9,$417cd878,$60ec1f00
  DC.L  $1c003e0b,$cbd01c4c,$291cf004,$e7000be2
  DC.L  $c3880e06,$261f0fbf,$6fdd87ef,$f3bfe782
  DC.L  $61f0c206,$04100b06,$41015c3c,$18130a06
  DC.L  $17cf0fc0,$787d0260,$c8f7efd7,$10265720
  DC.L  $0693c314,$84c0e187,$8c780081,$fe07b392
  DC.L  $130787f1,$fe3e8b98,$0fe03c28,$848e8260
  DC.L  $c0c34ae1,$f86f6e20,$4c1a18d2,$50308100
  DC.L  $001c1641,$0013b787,$2fd0300d,$388f0302
  DC.L  $0260d0c6,$91c1e061,$c0690e19,$8358b336
  DC.L  $6902842a,$846783f8,$82658200,$87543489
  DC.L  $20449922,$09957998,$790261b0,$cc1a8511
  DC.L  $a349983d,$0bc3d7ef,$c405f206,$21d50fe3
  DC.L  $cc1dff0c,$051040fe,$43008982,$23c0ff80
  DC.L  $981c3a04,$70ff4e82,$05085001,$4a21cb0f
  DC.L  $428c1deb,$d08265e1,$ff1f402f,$ec380040
  DC.L  $99020211,$4f4038ab,$f00876c3,$cd800081
  DC.L  $1026070f,$3044c0a1,$fe324313,$18003077
  DC.L  $0e020a08,$503a6630,$0986c3e0,$c1033c78
  DC.L  $2680f803,$021c00ee,$ec3c0820,$558b020a
  DC.L  $0f403023,$c0013503,$130a8794,$20811013
  DC.L  $28eea231,$b7607c00,$1b7a8626,$0c0c2818
  DC.L  $189d8823,$ba40c4c2,$a1e04000,$8c181280
  DC.L  $44c01180,$814354c8,$189c2851,$31f200d2
  DC.L  $54340808,$60c200a0,$113bb948,$18982237
  DC.L  $81130246,$14226582,$00348931,$4840017d
  DC.L  $88c5041a,$69183802,$f9918541,$35c20069
  DC.L  $7131411e,$00696231,$410bea46,$30013014
  DC.L  $634d0267,$8626068c,$20026384,$0130f661
  DC.L  $42265320,$06909314,$85802624,$400d2046
  DC.L  $256d0c34,$821e1426,$1c8c5fa0,$9924c521
  DC.L  $800bf434,$be18d205,$30a869a1,$0f30ec00
  DC.L  $818981a3,$0e0043e4,$310e106e,$0040c4c0
  DC.L  $698874c3,$b0020626,$130d8044,$c0a18877
  DC.L  $83070804,$40981237,$41130287,$f8c90c4c
  DC.L  $2c18543b,$a50c4c07,$18a08eee,$43130086
  DC.L  $29098523,$40009852,$30a117c7,$8626168c
  DC.L  $50420010,$f90c4c3c,$18a08981,$23044480
  DC.L  $4c5230a1,$1a689006,$93898a08,$b004c448
  DC.L  $0349f0c5,$04260918,$414404c3,$11e50028
  DC.L  $a265c200,$4c5c3300,$04c0a314,$11328100
  DC.L  $133c184c,$78314113,$04469e02,$a8c00261
  DC.L  $f0f10a27,$0509d006,$47218985,$632800a1
  DC.L  $44802638,$40191f06,$26160d40,$06028226
  DC.L  $048cc0e2,$0260f0c0,$3c81c500,$28a02650
  DC.L  $c4c24182,$fdc31309,$07885680,$0a146002
  DC.L  $5790c4c2,$4182fd03,$14113078,$62f940f0
  DC.L  $11e0260f,$0c62081c,$5025b481,$8a2e43e4
  DC.L  $00db8831,$42898d00,$8986430a,$11dd6060
  DC.L  $60c18309,$0034b810,$e007ae43,$c0ef804c
  DC.L  $70345820,$40c100d2,$30f039c0,$d0260c0f
  DC.L  $f41c621e,$b30ff002,$6040f904,$30c81c50
  DC.L  $01441a68,$1f5804c3,$a1c00183,$870e1028
  DC.L  $2818eedc,$30001020,$48827153,$e01484c7
  DC.L  $c80257e0,$c7613060,$70008122,$448e1410
  DC.L  $8801e509,$85c3fb07,$18c78302,$df00873c
  DC.L  $327478e1,$c392098b,$f8064481,$8874c3c0
  DC.L  $870f1f3e,$20987c31,$e1478102,$050a229d
  DC.L  $d0310e98,$6b1240dd,$6fe76063,$2370fdfb
  DC.L  $f7eff026,$120ff192,$18985030,$700297e8
  DC.L  $01451a4b,$87e1c183,$060e4e47,$606261b0
  DC.L  $cd1b362c,$1849cfe4,$0c4c1618,$80fa79f3
  DC.L  $e7cf9240,$2818981c,$30f0c184,$3bd03540
  DC.L  $c4c0e1fa,$80438818,$28c0004c,$31185010
  DC.L  $31ea387e,$800a2848,$302c3826,$1618f570
  DC.L  $3f007c47,$e0130787,$fa0801ff,$0f831434
  DC.L  $948c8f32,$026140f8,$8026030e,$e8081f84
  DC.L  $e19a04c0,$e18152c2,$2026081e,$40e1e43a
  DC.L  $0104cb44,$01a46862,$60c0cc30,$0fce3026
  DC.L  $0f0c7403,$d440d000,$26008f54,$00a51399
  DC.L  $b0203484,$0c4c161c,$000c0266,$7a660260
  DC.L  $70f8a97d,$35281068,$1323d3d1,$ebd8130d
  DC.L  $87c70983,$039f3080,$987c3b06,$180be103
  DC.L  $130a4642,$7f81e181,$307870c1,$a366de1b
  DC.L  $d807dc13,$0d872444,$2a8098a0,$63d873ec
  DC.L  $18130586,$10030130,$10617df0,$f76d9b76
  DC.L  $cd882638,$00130247,$4343c171,$8132e114
  DC.L  $404c3a1e,$14387a06,$9abc0130,$386c55a2
  DC.L  $9a94e9f3,$e7dd13d0,$1c4e4984,$c6080801
  DC.L  $e0d76132,$8c017020,$4c391eed,$bb7a069a
  DC.L  $26108c69,$081f0f04,$04c1818d,$25430811
  DC.L  $30a063c3,$f0130387,$05630a80,$98a07bdb
  DC.L  $f7eb981a,$4586100c,$084c181e,$1804c1d1
  DC.L  $8d20c313,$10582c84,$8f83f881,$3040c438
  DC.L  $618988d9,$8786f6e1,$04c0e1f9,$6f7f0a13
  DC.L  $264d9874,$6f0e5fb1,$1071a420,$613150c2
  DC.L  $08405026,$140f0302,$026088f6,$cc202761
  DC.L  $804c0e18,$4c8a8014,$a174233c,$17841328
  DC.L  $1744009b,$a1810306,$0f9f782f,$330f0071
  DC.L  $30246bc3,$d7e79813,$02072507,$d043131f
  DC.L  $80098703,$40fe8300,$84c1c31d,$366cdf3e
  DC.L  $0fc0ffe0,$98303fc6,$48626214,$50528580
  DC.L  $14a265e2,$29809814,$30a0e07e,$1c3fe3f8
  DC.L  $130d8638,$22801302,$06095f80,$4c081810
  DC.L  $07aaa1fe,$0332da72,$06261f0c,$0c034260
  DC.L  $c1800181,$30f86143,$ee039285,$804a6300
  DC.L  $9810317c,$58791040,$f021c010,$426130ff
  DC.L  $81e50b83,$b6bd00c0,$8f017109,$8f1004c2
  DC.L  $a1d6b703,$dd84c051,$f000f613,$0386c1ad
  DC.L  $58b36641,$3ae04800,$26264013,$01872048
  DC.L  $93244841,$30446c1a,$950a3464,$13ae0a26
  DC.L  $20401301,$87e1cf9f,$3e7e413b,$b9481898
  DC.L  $22378113,$0b868009,$417a009c,$14226572
  DC.L  $00980c3a,$0478f1e3,$d204c623,$09122448
  DC.L  $c09c2822,$00131220,$0980c320,$071944e1
  DC.L  $41130247,$800f0130,$f860e1c3,$87181382
  DC.L  $84262e1e,$04183878,$f104c111,$c002858b
  DC.L  $16104e14,$11e0098b,$1004c061,$a0038ca2
  DC.L  $70a08981,$23301880,$987c30a2,$8981032e
  DC.L  $0098d900,$4c061c00,$08183061,$04c311c7
  DC.L  $944c0818,$4004c688,$8a0261d0,$e001dc51
  DC.L  $30c46465,$13094614,$2265f22b,$82003832
  DC.L  $41804409,$83030a28,$984a3141,$16009889
  DC.L  $11c04c06,$18081020,$4604e141,$130787fd
  DC.L  $fbf7ef81,$38201850,$981033f0,$2003833c
  DC.L  $18fcee43,$20500831,$302067d2,$00a80aba
  DC.L  $40800e0e,$fa07c880,$980a3a40,$09818318
  DC.L  $988d91e2,$21a20038,$3201000c,$cc098793
  DC.L  $53005008,$31302065,$da88a80a,$b59141a8
  DC.L  $0703ea07,$c6483130,$a0610004,$41068806
  DC.L  $0c118295,$026060c3,$b6236571,$c8190fb2
  DC.L  $e20260e0,$cbba2121,$c50c5ddf,$9d026160
  DC.L  $f7756750,$26190fb8,$8e014020,$c4c181c2
  DC.L  $8442e642,$1850a04c,$40703130,$a0620110
  DC.L  $0a028610,$81048130,$b06201a1,$205801e4
  DC.L  $871004ca,$90626140,$c732211c,$050c38bf
  DC.L  $89026160,$c2ed6210,$26190e14,$8e014020
  DC.L  $c4c68220,$088c4051,$5002c18c,$01720a05
  DC.L  $0613170c,$82420260,$a0c50422,$12189087
  DC.L  $24351050,$6262bf0a,$0d383c19,$f8379841
  DC.L  $898a0004,$e0ffcc04,$09864307,$43805008
  DC.L  $3138284b,$84021015,$48638de1,$e0c22086
  DC.L  $f1e04039,$fb79f378,$e1740a05,$06260c0c
  DC.L  $281a1a04,$4404c241,$8a084008,$22103c44
  DC.L  $10100800,$81820100,$08184090,$20104104
  DC.L  $c3418a0e,$04af850c,$d27ff881,$ed083000
  DC.L  $444409c3,$ff1c28e3,$0c861e07,$00a01071
  DC.L  $400a29f2,$006202ad,$00132103,$2091f281
  DC.L  $a5343c01,$40a0c261,$e1c3804c,$1418a42c
  DC.L  $0f187002,$410c1610,$0c210857,$160814ae
  DC.L  $7eae5cae,$58290704,$c0c18a55,$c030c263
  DC.L  $41841440,$4e7f0098,$5433f009,$8483ca00
  DC.L  $5144e0c0,$098b64f3,$1af36104,$29e67820
  DC.L  $5bcc03cd,$dbcd81cc,$0a050660,$00981462
  DC.L  $82277408,$8044a012,$a0450421,$40582052
  DC.L  $80028192,$8100881c,$098d0628,$35c030d2
  DC.L  $0241a780,$0418604c,$7f002605,$0dfc0261
  DC.L  $a0c284e8,$02fdd0ed,$1ee31eef,$a080f301
  DC.L  $02dee71e,$e7deef0e,$60982632,$800a1448
  DC.L  $026040d2,$05108513,$08414a01,$00a88288
  DC.L  $ca898413,$0d06a003,$0141ae01,$86261a0c
  DC.L  $c0e20260,$48c28a7c,$01a6e877,$8ff1cff3
  DC.L  $8fb10008,$19053fc7,$0098706d,$0550c260
  DC.L  $21b40050,$a3001302,$07922984,$298e2946
  DC.L  $0b23532d,$0410a61c,$a6582107,$81418800
  DC.L  $c0506804,$693e189d,$808f0130,$2477052e
  DC.L  $00988268,$370fb1ef,$b6b1805b,$c7e08136
  DC.L  $6fb0efb6,$104c1c1e,$0c6c31e0,$10690064
  DC.L  $e8700260,$81a50aa1,$4aa49182,$d54d1542
  DC.L  $04912a83,$2a900b41,$e0506600,$90060690
  DC.L  $090130b8,$71d040ff,$8026130d,$90381c50
  DC.L  $01459213,$87ad0ef9,$fe7c3014,$7f9a0803
  DC.L  $dfbfc1bf,$de4098d0,$6141c0db,$41a18980
  DC.L  $83880515,$3e01484c,$aa006029,$40182162
  DC.L  $4162cc10,$52c40ac5,$80c41e05,$06e00208
  DC.L  $81fe1402,$90050130,$b871e0c0,$b7c00293
  DC.L  $0c0e020f,$21c0fec1,$5253f009,$c3d054a0
  DC.L  $39e06086,$f1b6f1f0,$416de04d,$e385904c
  DC.L  $251c0019,$02c18996,$400a05cf,$0304278d
  DC.L  $a78f820b,$4f024f1c,$0c83c090,$ce03e04c
  DC.L  $190c4c37,$1f803440,$2187804c,$0f1a0078
  DC.L  $31006042,$6014c0c1,$100e0e00,$36014178
  DC.L  $d203c1c0,$00c1a00a,$1e0004c3,$e5ff0220
  DC.L  $3c1fc807,$82998507,$73060e46,$90010ff4
  DC.L  $1000d0ff,$c0e00a0c,$c04c5910,$0174c000
  DC.L  $00000090,$4ab21240,$00011a74
BurstNibPatch:
  DC.L  $48e72000,$08010001,$6700000a,$20780204
  DC.L  $60000006,$20780200,$b0a80004,$63000012
  DC.L  $4a906700,$00062050,$60ee7000,$241f4e75
  DC.L  $22280004,$928043f0,$08002478,$0200b1ca
  DC.L  $67000020,$b1d26700,$00062452,$60f62412
  DC.L  $b4b80204,$66000006,$21c90204,$24896000
  DC.L  $000621c9,$02002290,$23410004,$2008241f
  DC.L  $4e752049,$21400004,$b1fc0020,$00006400
  DC.L  $002e20b8,$020421c8,$02042278,$0200b3fc
  DC.L  $00200000,$65000010,$0c910020,$00006500
  DC.L  $00062251,$60f222b8,$02046000,$000a20b8
  DC.L  $020021c8,$02006100,$00086100,$00524e75
  DC.L  $22780200,$2009d0a9,$0004b088,$6700000a
  DC.L  $22512009,$66ee4e75,$24780200,$b1ca6700
  DC.L  $001eb1d2,$67000006,$245260f6,$2490b1f8
  DC.L  $02046600,$000e21d0,$02046000,$000621d0
  DC.L  $02002028,$0004d1a9,$00042049,$4e752228
  DC.L  $0004d288,$22780200,$b2896700,$000a2251
  DC.L  $200966f4,$4e752478,$0200b3ca,$6700001e
  DC.L  $b3d26700,$00062452,$60f62491,$b3f80204
  DC.L  $6600000e,$21d10204,$60000006,$21d10200
  DC.L  $20290004,$d1a80004
  DC.W  $4e75
CMD_BURST:
  MOVEQ #0,D6
  MOVEQ #0,D0
  MOVE.B  #0,LAB_A480CA
  MOVE.W  DrivesConnected,D1
  CMPI.W  #1,D1
  BEQ.W LAB_42C608
  JSR ReadParameter
  TST.B ParamFound
  BEQ.W doBurst
LAB_42C608:
  ST  LAB_A480CA
  MOVE.L  D0,D6
  TST.W D0
  BMI.W LAB_A2DF8A
  CMPI.W  #3,D0
  BHI.W LAB_A2DF8A
  MOVEQ #-13,D0
  BTST  D6,DrivesConnectedLo
  BNE.W LAB_42C630
  JMP PrintDiskOpResult
LAB_42C630:
  MOVE.W  D6,D0
  MOVEQ #0,D6
  BSET  D0,D6
  BRA.W LAB_42C64E
doBurst:
  MOVE.W  DrivesConnected,D6
  CMPI.B  #1,D6
  BNE.W LAB_42C64E
  ST  LAB_A480CA
LAB_42C64E:
  MOVE.L  #BurstNibPatch,UnpackSourceEnd
  MOVE.L  #BURST_NIB_DEST,UnpackDest
  JSR UnpackNoFlash
  MOVE.W #$7fff,intena+hardware
  JSR disableAllDma
  LEA EXT_32000,A0
  LEA BurstNibPatch(PC),A1
  MOVE.W  #$00ac,D0
LAB_42C676:
  MOVE.W  (A1)+,(A0)+
  DBF D0,LAB_42C676
  MOVEA.L A0,A1
  MOVE.W  #$4ef9,(A0)+
  MOVE.L  #$00032072,(A0)+
  LEA 6(A0),A0
  MOVE.W  #$4ef9,(A0)+
  MOVE.L  #$00032000,(A0)+
  LEA $D2(A1),A1
  MOVE.L  A1,EXT_4.W
  MOVE.L  #$00000208,EXT_204.W
  MOVE.L  A0,EXT_208.W
  MOVE.L  #$0001fdf8,EXT_20C.W
  CLR.L (A0)
  MOVE.L  ChipMemEnd,D0
  SUB.L A0,D0
  SUB.L #$00000200,D0
  MOVE.L  D0,4(A0)
  MOVE.L  EXT_204.W,EXT_1E0.W
  CLR.L EXT_1E4.W
  MOVE.L  #$000001e0,EXT_200.W
  LEA EXT_C00000,A0
  MOVE.L  SlowMemEnd,D0
  BNE.W LAB_42C70C
  TST.B AutoConfigPrefsFlag
  BEQ.W LAB_42C6FC
  TST.B ExtMemAddPrefsFlag
  BEQ.W LAB_42C71A
LAB_42C6FC:
  MOVEA.L autoConfigMemStart,A0
  MOVE.L  autoConfigMemEnd,D0
  BEQ.W LAB_42C71A
LAB_42C70C:
  MOVE.L  A0,EXT_200.W
  MOVE.L  EXT_204.W,(A0)
  SUB.L A0,D0
  MOVE.L  D0,4(A0)
LAB_42C71A:
  LEA EXT_20000,A0
  MOVE.W  #$0147,D0
LAB_42C724:
  CLR.L (A0)+
  DBF D0,LAB_42C724
  MOVE.W  D6,EXT_21A6E
  TST.B LAB_A480CA
  BEQ.W LAB_42C750
  LEA EXT_27C28,A0
  LEA LAB_42C768(PC),A1
  MOVE.L  #$00000016,D0
LAB_42C74A:
  MOVE.W  (A1)+,(A0)+
  DBF D0,LAB_42C74A
LAB_42C750:
  JSR SwapChipRam1
  MOVEA.L ChipMemEnd,A7
  if arhardware=1
  CLR.L FreezeMode
  endc
  JMP BURST_NIB_DEST
LAB_42C768:
  MOVEQ #1,D2
LAB_42C76A:
  MOVEM.L D2/A0,-(A7)
  MOVE.L  #$00010003,D1
  MOVE.L  #$00008000,D0
  JSR -198(A6)
  MOVEM.L (A7)+,D2/A0
  ADD.L #$000003f0,D0
  MOVE.L  D0,(A0)+
  DBF D2,LAB_42C76A
  MOVE.L  -4(A0),(A0)+
  MOVEQ #0,D0
  RTS
CMD_ASCII:
  LEA AsciiTabText(PC),A0
  JSR PrintText
  MOVEQ #0,D1
  MOVEQ #0,D0
LAB_A2DEF2:
  MOVEQ #$F,D2
  MOVE.W  D1,D0
  JSR SUB_A2DF7C
LAB_A2DEFC:
  JSR PrintSpace
  MOVEQ #$F,D0
  SUB.W D2,D0
  MULU  #$0010,D0
  ADD.W D1,D0
  JSR InvalidAsciiToDot
  JSR PrintChar
  DBF D2,LAB_A2DEFC
  ADDQ.W  #1,D1
  JSR PrintCrIfNotBlankLine
  CMPI.W  #$0010,D1
  BNE.S LAB_A2DEF2
  JSR PrintReady
  RTS

AsciiTabText:
  DC.B  "ASCII-Table",$D,"===========",$D,$D,"  0 1 2 3 4 5 6 7 8 9 A B C D E F",$D,0

SUB_A2DF6E:
  JSR PrintSpace
  JSR PrintSpace
  RTS
SUB_A2DF7C:
  MOVE.L  D1,-(A7)
  MOVEQ #1,D1
  JSR PrintValue
  MOVE.L  (A7)+,D1
  RTS
LAB_A2DF8A:
  JMP PrintWTF
LAB_A2DF90:
  DS.L  1
  DC.L  $00000002,$00000003,$00000004,$00000005
  DC.L  $00000006,$00000007,$00000008,$00000009
  DC.L  $0000000a,$0000000b,$00010000,$00020000
  DC.L  $00030000,$00040000,$00050000,$00060000
  DC.L  $00070000,$00008001,$00008002,$00008003
  DC.L  $00008004,$00008005,$00008006,$00008007
  DC.L  $00008008,$00008009,$0000800a,$00008010
  DC.L  $00008011,$00008012,$00008013,$00008014
  DC.L  $00008015,$00008020,$00008021,$00008022
  DC.L  $00008030,$00008031,$01000000,$81000001
  DC.L  $81000002,$81000003,$81000004,$81000005
  DC.L  $81000006,$81000007,$81000008,$81000009
  DC.L  $8100000a,$02000000,$82010000,$82010006
  DC.L  $82010007,$02010009,$8201000a,$8201000b
  DC.L  $82010030,$82011234,$03000000,$83010000
  DC.L  $04000000,$84000001,$04000001,$84010002
  DC.L  $04010003,$04010004,$84010005,$84000006
  DC.L  $84010007,$84010008,$84000009,$8401000a
  DC.L  $8401000b,$8400000c,$8400000d,$8400000e
  DC.L  $8400000f,$05000000,$06000000,$07000000
  DC.L  $07010001,$07000002,$07000003,$07000004
  DC.L  $07000005,$07000006,$07000007,$07000008
  DC.L  $07000009,$0700000a,$0700000b,$0700000c
  DC.L  $08000000,$08000001,$09000000,$0a000000
  DC.L  $0a000001,$10000000,$11000000,$12000000
  DC.L  $13000000,$14000000,$14000001,$14000002
  DC.L  $15000000,$15000001,$15000002,$20000000
  DC.L  $21000000,$21000001,$21000002,$22000000
  DC.L  $30000000,$30000001,$31000000,$32000000
  DC.L  $ffffffff

StringsTable:
  DC.B  "M68000",0
  DC.B  "bus error",0
  DC.B  "address error",0
  DC.B  "illegal instruction",0
  DC.B  "division by zero",0
  DC.B  "chk instruction",0
  DC.B  "trapv instruction",0
  DC.B  "privilege violage",0
  DC.B  "single step mode",0
  DC.B  "linea emulation",0
  DC.B  "linef emulation",0
  DC.B  "no memory",0
  DC.B  "make library",0
  DC.B  "open library",0
  DC.B  "open device",0
  DC.B  "open resource",0
  DC.B  "io error",0
  DC.B  "no io signal",0
  DC.B  "exec library",0
  DC.B  "gfx library",0
  DC.B  "layers library",0
  DC.B  "intuition library",0
  DC.B  "math library",0
  DC.B  "clist library",0
  DC.B  "dos library",0
  DC.B  "ram library",0
  DC.B  "icon library",0
  DC.B  "expansion library",0
  DC.B  "audio device",0
  DC.B  "console device",0
  DC.B  "gameport device",0
  DC.B  "keyboard device",0
  DC.B  "trackdisk device",0
  DC.B  "timer device",0
  DC.B  "cia resource",0
  DC.B  "disk resource",0
  DC.B  "misc resource",0
  DC.B  "boot strap",0
  DC.B  "workbench",0
  DC.B  "exec library",0
  DC.B  "68000 exception vector checksum",0
  DC.B  "execbase checksum",0
  DC.B  "library checksum",0
  DC.B  "make library (no memory)",0
  DC.B  "memory list",0
  DC.B  "interrupt server (no memory)",0
  DC.B  "initstruct of an aptr source",0
  DC.B  "a semaphore is in illegal state",0
  DC.B  "free memory",0
  DC.B  "illegal m68000 exception taken",0
  DC.B  "graphics library",0
  DC.B  "no special",0
  DC.B  "long frame",0
  DC.B  "short frame",0
  DC.B  "text tmpras",0
  DC.B  "bltbitmap",0
  DC.B  "regions",0
  DC.B  "makevport",0
  DC.B  "emergency memory",0
  DC.B  "layers library",0
  DC.B  "no special",0
  DC.B  "intuition library",0
  DC.B  "unknown gadget type",0
  DC.B  "unknown gadget type",0
  DC.B  "create port",0
  DC.B  "item plane alloc",0
  DC.B  "sub alloc",0
  DC.B  "plane alloc",0
  DC.B  "item box top < relzero",0
  DC.B  "open screen",0
  DC.B  "open screen (raster alloc)",0
  DC.B  "open sys screen (unknown type)",0
  DC.B  "add sw gadgets",0
  DC.B  "open window",0
  DC.B  "bad state return entering intuition",0
  DC.B  "bad message received by idcmp",0
  DC.B  "weird echo",0
  DC.B  "could not open console device",0
  DC.B  "math library",0
  DC.B  "clist library",0
  DC.B  "dos library",0
  DC.B  "startup",0
  DC.B  "no endtask",0
  DC.B  "qpkt failure",0
  DC.B  "unexpected packet received",0
  DC.B  "freevec failed",0
  DC.B  "disk block sequence error",0
  DC.B  "bitmap corrupt",0
  DC.B  "key already free",0
  DC.B  "invalid checksum",0
  DC.B  "disk error",0
  DC.B  "key out of range",0
  DC.B  "bad overlay",0
  DC.B  "ram library",0
  DC.B  "illegal overlays",0
  DC.B  "icon library",0
  DC.B  "expansion library",0
  DC.B  "bad expansion free",0
  DC.B  "audio device",0
  DC.B  "console device",0
  DC.B  "game port device",0
  DC.B  "keyboard device",0
  DC.B  "trackdisk device",0
  DC.B  "calibrate: seek error",0
  DC.B  "delay: error on timer wait",0
  DC.B  "timer device",0
  DC.B  "bad request",0
  DC.B  "no power supply ticks",0
  DC.B  "cia resource",0
  DC.B  "disk resource",0
  DC.B  "get until: already has disk",0
  DC.B  "interrupt: no active unit",0
  DC.B  "misc resource",0
  DC.B  "bootstrap",0
  DC.B  "boot code returned an error",0
  DC.B  "workbench",0
  DC.B  "diskcopy",0,0,0

SUB_A2E8D4:
  MOVEM.L D0-D1/D7/A0-A2,-(A7)
  MOVE.L  D0,D7
  LEA LAB_A2DF90(PC),A2
  CMPI.L  #$0000000b,D7
  BLS.W LAB_A2E99E
  LEA DeadEndText(PC),A0
  BTST  #$1F,D7
  BEQ.S LAB_A2E8F6
  LEA RecoveryText(PC),A0
LAB_A2E8F6:
  JSR PrintText
  ANDI.L  #$7f000000,D0
  MOVE.L  D0,D1
  BEQ.S LAB_A2E934
  CMP.L D7,D1
  BEQ.S LAB_A2E934
  MOVEQ #0,D0
  LEA LAB_A2DF90(PC),A1
LAB_A2E910:
  CMP.L (A1),D1
  BEQ.S LAB_A2E920
  ADDQ.W  #1,D0
  CMPI.L  #$ffffffff,(A1)+
  BNE.S LAB_A2E910
  MOVEQ #-1,D0
LAB_A2E920:
  TST.L D0
  BMI.S LAB_A2E934
  JSR SUB_A2E9D2
  LEA StringsTable(PC),A0
  JSR PrintTableEntry
LAB_A2E934:
  MOVE.L  D7,D1
  MOVEQ #0,D0
  LEA LAB_A2DF90(PC),A1
LAB_A2E93C:
  CMP.L (A1),D1
  BEQ.S LAB_A2E94C
  ADDQ.W  #1,D0
  CMPI.L  #$ffffffff,(A1)+
  BNE.S LAB_A2E93C
  MOVEQ #-1,D0
LAB_A2E94C:
  TST.L D0
  BMI.S LAB_A2E960
  JSR SUB_A2E9D2
  LEA StringsTable(PC),A0
  JSR PrintTableEntry
LAB_A2E960:
  MOVE.L  D7,D1
  ANDI.L  #$000f0000,D1
  BEQ.S LAB_A2E998
  CMP.L D7,D1
  BEQ.S LAB_A2E998
  MOVEQ #0,D0
  LEA LAB_A2DF90(PC),A1
LAB_A2E974:
  CMP.L (A1),D1
  BEQ.S LAB_A2E984
  ADDQ.W  #1,D0
  CMPI.L  #$ffffffff,(A1)+
  BNE.S LAB_A2E974
  MOVEQ #-1,D0
LAB_A2E984:
  TST.L D0
  BMI.S LAB_A2E998
  JSR SUB_A2E9D2
  LEA StringsTable(PC),A0
  JSR PrintTableEntry
LAB_A2E998:
  MOVEM.L (A7)+,D0-D1/D7/A0-A2
  RTS
LAB_A2E99E:
  CMPI.W  #1,D0
  BEQ.S LAB_A2E998
  LEA StringsTable(PC),A0
  JSR PrintText
  SUBQ.W  #1,D0
  BMI.S LAB_A2E998
  JSR SUB_A2E9D2
  JSR PrintTableEntry
  BRA.S LAB_A2E998

DeadEndText:
  DC.B  "dead end",0

RecoveryText:
  DC.B  "recovery",0

SUB_A2E9D2:
  MOVE.L  A0,-(A7)
  LEA LAB_A2E9E2(PC),A0
  JSR PrintText
  MOVEA.L (A7)+,A0
  RTS
LAB_A2E9E2:
  DC.L  $2c200000
CMD_ALERT:
  JSR ReadParameter
  TST.B ParamFound
  BNE.S LAB_A2EA20
  LEA LAB_A2DF90(PC),A0
LAB_A2E9F8:
  MOVE.L  (A0)+,D0
  CMPI.L  #$ffffffff,D0
  BEQ.S LAB_A2EA24
  TST.B EscapePressed
  BNE.S LAB_A2EA24
  JSR Print8DigitHex
  JSR SUB_A2DF6E(PC)
  JSR SUB_A2E8D4(PC)
  JSR PrintCrIfNotBlankLine
  BRA.S LAB_A2E9F8
LAB_A2EA20:
  JSR SUB_A2E8D4(PC)
LAB_A2EA24:
  JSR PrintReady
  RTS
CMD_DCHIP:
  JSR readCmdCharSkipSpaces
  TST.B endOfCmdString
  BNE.W LAB_A2DF8A
  JSR SUB_A1827E
  LEA ChipRegsText,A2
  MOVEQ #0,D1
  MOVE.W  #$00ff,D2
LAB_A2EA4E:
  MOVEA.L A0,A1
LAB_A2EA50:
  TST.B (A2)
  BEQ.S LAB_A2EA76
  MOVE.B  (A1)+,D0
  JSR UpperCaseChar
  MOVE.W  D0,D4
  MOVE.B  (A2)+,D0
  JSR UpperCaseChar
  CMP.B D4,D0
  BEQ.S LAB_A2EA50
LAB_A2EA6A:
  TST.B (A2)+
  BNE.S LAB_A2EA6A
  ADDQ.W  #2,D1
  DBF D2,LAB_A2EA4E
  MOVEQ #-1,D1
LAB_A2EA76:
  TST.W D1
  BPL.S LAB_A2EA86
  LEA UnknownRegNameText(PC),A0
  JSR PrintText
  BRA.S LAB_A2EA96
LAB_A2EA86:
  ADD.W D1,D1
  LEA StringMsgTable(PC),A0
  MOVEA.L 0(A0,D1.W),A0
  JSR PrintText
LAB_A2EA96:
  JSR PrintReady
  RTS

UnknownRegNameText:
  DC.B  "unknown chipregname!",0,0

StringMsgTable:
  DC.L  BlitterMsgText
  DC.L  txtChipRegDesc_dmacon
  DC.L  txtChipRegDesc_vpos
  DC.L  txtChipRegDesc_vhpos
  DC.L  txtChipRegDesc_dskdatr
  DC.L  txtChipRegDesc_joyxdat
  DC.L  txtChipRegDesc_joyxdat
  DC.L  txtChipRegDesc_clxdat
  DC.L  txtChipRegDesc_adkcon
  DC.L  txtChipRegDesc_joyxdat
  DC.L  txtChipRegDesc_joyxdat
  DC.L  txtChipRegDesc_pot
  DC.L  txtChipRegDesc_serdata
  DC.L  txtChipRegDesc_dskbytr
  DC.L  txtChipRegDesc_intena
  DC.L  txtChipRegDesc_intena
  DC.L  txtChipRegDesc_dskpt
  DC.L  txtChipRegDesc_dskpt
  DC.L  txtChipRegDesc_dsklen
  DC.L  txtChipRegDesc_dskdatr
  DC.L  txtChipRegDesc_refptr
  DC.L  txtChipRegDesc_vpos
  DC.L  txtChipRegDesc_vhpos
  DC.L  txtChipRegDesc_copcon
  DC.L  txtChipRegDesc_serdatb
  DC.L  txtChipRegDesc_serper
  DC.L  txtChipRegDesc_pot
  DC.L  txtChipRegDesc_joytest
  DC.L  txtChipRegDesc_strequ
  DC.L  txtChipRegDesc_strvbl
  DC.L  txtChipRegDesc_strhor
  DC.L  txtChipRegDesc_strlong
  DC.L  txtChipRegDesc_bltcon
  DC.L  txtChipRegDesc_bltcon
  DC.L  txtChipRegDesc_bltafwm
  DC.L  txtChipRegDesc_bltalwm
  DC.L  txtChipRegDesc_bltxpth
  DC.L  txtChipRegDesc_bltxpth
  DC.L  txtChipRegDesc_bltxpth
  DC.L  txtChipRegDesc_bltxpth
  DC.L  txtChipRegDesc_bltxpth
  DC.L  txtChipRegDesc_bltxpth
  DC.L  txtChipRegDesc_bltxpth
  DC.L  txtChipRegDesc_bltxpth
  DC.L  txtChipRegDesc_bltsize
  DC.L  txtChipRegDesc_undef_ECS
  DC.L  txtChipRegDesc_undef_ECS
  DC.L  txtChipRegDesc_undef_ECS
  DC.L  txtChipRegDesc_bltxmod
  DC.L  txtChipRegDesc_bltxmod
  DC.L  txtChipRegDesc_bltxmod
  DC.L  txtChipRegDesc_bltxmod
  DC.L  txtChipRegDesc_unused
  DC.L  txtChipRegDesc_unused
  DC.L  txtChipRegDesc_unused
  DC.L  txtChipRegDesc_unused
  DC.L  txtChipRegDesc_bltxdat
  DC.L  txtChipRegDesc_bltxdat
  DC.L  txtChipRegDesc_bltxdat
  DC.L  txtChipRegDesc_unused
  DC.L  txtChipRegDesc_undef_ECS
  DC.L  txtChipRegDesc_undef_AGA
  DC.L  txtChipRegDesc_undef_ECS
  DC.L  txtChipRegDesc_dsksync
  DC.L  txtChipRegDesc_copxlc
  DC.L  txtChipRegDesc_copxlc
  DC.L  txtChipRegDesc_copxlc
  DC.L  txtChipRegDesc_copxlc
  DC.L  txtChipRegDesc_copjmp
  DC.L  txtChipRegDesc_copjmp
  DC.L  txtChipRegDesc_copins
  DC.L  txtChipRegDesc_diw
  DC.L  txtChipRegDesc_diw
  DC.L  txtChipRegDesc_ddf
  DC.L  txtChipRegDesc_ddf
  DC.L  txtChipRegDesc_dmacon
  DC.L  txtChipRegDesc_clxcon
  DC.L  txtChipRegDesc_intena
  DC.L  txtChipRegDesc_intena
  DC.L  txtChipRegDesc_adkcon
  DC.L  txtChipRegDesc_audxpt
  DC.L  txtChipRegDesc_audxpt
  DC.L  txtChipRegDesc_audxlen
  DC.L  txtChipRegDesc_audxper
  DC.L  txtChipRegDesc_audxvol
  DC.L  txtChipRegDesc_audxdat
  DC.L  txtChipRegDesc_unused
  DC.L  txtChipRegDesc_unused
  DC.L  txtChipRegDesc_audxpt
  DC.L  txtChipRegDesc_audxpt
  DC.L  txtChipRegDesc_audxlen
  DC.L  txtChipRegDesc_audxper
  DC.L  txtChipRegDesc_audxvol
  DC.L  txtChipRegDesc_audxdat
  DC.L  txtChipRegDesc_unused
  DC.L  txtChipRegDesc_unused
  DC.L  txtChipRegDesc_audxpt
  DC.L  txtChipRegDesc_audxpt
  DC.L  txtChipRegDesc_audxlen
  DC.L  txtChipRegDesc_audxper
  DC.L  txtChipRegDesc_audxvol
  DC.L  txtChipRegDesc_audxdat
  DC.L  txtChipRegDesc_unused
  DC.L  txtChipRegDesc_unused
  DC.L  txtChipRegDesc_audxpt
  DC.L  txtChipRegDesc_audxpt
  DC.L  txtChipRegDesc_audxlen
  DC.L  txtChipRegDesc_audxper
  DC.L  txtChipRegDesc_audxvol
  DC.L  txtChipRegDesc_audxdat
  DC.L  txtChipRegDesc_unused
  DC.L  txtChipRegDesc_unused
  DC.L  txtChipRegDesc_bplxpt
  DC.L  txtChipRegDesc_bplxpt
  DC.L  txtChipRegDesc_bplxpt
  DC.L  txtChipRegDesc_bplxpt
  DC.L  txtChipRegDesc_bplxpt
  DC.L  txtChipRegDesc_bplxpt
  DC.L  txtChipRegDesc_bplxpt
  DC.L  txtChipRegDesc_bplxpt
  DC.L  txtChipRegDesc_bplxpt
  DC.L  txtChipRegDesc_bplxpt
  DC.L  txtChipRegDesc_bplxpt
  DC.L  txtChipRegDesc_bplxpt
  DC.L  txtChipRegDesc_bplxptAGA
  DC.L  txtChipRegDesc_bplxptAGA
  DC.L  txtChipRegDesc_bplxptAGA
  DC.L  txtChipRegDesc_bplxptAGA
  DC.L  txtChipRegDesc_bplcon
  DC.L  txtChipRegDesc_bplcon
  DC.L  txtChipRegDesc_bplcon
  DC.L  txtChipRegDesc_undef_ECS
  DC.L  txtChipRegDesc_bplxmod
  DC.L  txtChipRegDesc_bplxmod
  DC.L  txtChipRegDesc_undef_AGA
  DC.L  txtChipRegDesc_undef_AGA
  DC.L  txtChipRegDesc_bplxdat
  DC.L  txtChipRegDesc_bplxdat
  DC.L  txtChipRegDesc_bplxdat
  DC.L  txtChipRegDesc_bplxdat
  DC.L  txtChipRegDesc_bplxdat
  DC.L  txtChipRegDesc_bplxdat
  DC.L  txtChipRegDesc_bplxdatAGA
  DC.L  txtChipRegDesc_bplxdatAGA
  DC.L  txtChipRegDesc_sprxpt
  DC.L  txtChipRegDesc_sprxpt
  DC.L  txtChipRegDesc_sprxpt
  DC.L  txtChipRegDesc_sprxpt
  DC.L  txtChipRegDesc_sprxpt
  DC.L  txtChipRegDesc_sprxpt
  DC.L  txtChipRegDesc_sprxpt
  DC.L  txtChipRegDesc_sprxpt
  DC.L  txtChipRegDesc_sprxpt
  DC.L  txtChipRegDesc_sprxpt
  DC.L  txtChipRegDesc_sprxpt
  DC.L  txtChipRegDesc_sprxpt
  DC.L  txtChipRegDesc_sprxpt
  DC.L  txtChipRegDesc_sprxpt
  DC.L  txtChipRegDesc_sprxpt
  DC.L  txtChipRegDesc_sprxpt
  DC.L  txtChipRegDesc_sprxpos
  DC.L  txtChipRegDesc_sprxctl
  DC.L  txtChipRegDesc_sprxdata
  DC.L  txtChipRegDesc_sprxdata
  DC.L  txtChipRegDesc_sprxpos
  DC.L  txtChipRegDesc_sprxctl
  DC.L  txtChipRegDesc_sprxdata
  DC.L  txtChipRegDesc_sprxdata
  DC.L  txtChipRegDesc_sprxpos
  DC.L  txtChipRegDesc_sprxctl
  DC.L  txtChipRegDesc_sprxdata
  DC.L  txtChipRegDesc_sprxdata
  DC.L  txtChipRegDesc_sprxpos
  DC.L  txtChipRegDesc_sprxctl
  DC.L  txtChipRegDesc_sprxdata
  DC.L  txtChipRegDesc_sprxdata
  DC.L  txtChipRegDesc_sprxpos
  DC.L  txtChipRegDesc_sprxctl
  DC.L  txtChipRegDesc_sprxdata
  DC.L  txtChipRegDesc_sprxdata
  DC.L  txtChipRegDesc_sprxpos
  DC.L  txtChipRegDesc_sprxctl
  DC.L  txtChipRegDesc_sprxdata
  DC.L  txtChipRegDesc_sprxdata
  DC.L  txtChipRegDesc_sprxpos
  DC.L  txtChipRegDesc_sprxctl
  DC.L  txtChipRegDesc_sprxdata
  DC.L  txtChipRegDesc_sprxdata
  DC.L  txtChipRegDesc_sprxpos
  DC.L  txtChipRegDesc_sprxctl
  DC.L  txtChipRegDesc_sprxdata
  DC.L  txtChipRegDesc_sprxdata
  DC.L  txtChipRegDesc_color
  DC.L  txtChipRegDesc_color
  DC.L  txtChipRegDesc_color
  DC.L  txtChipRegDesc_color
  DC.L  txtChipRegDesc_color
  DC.L  txtChipRegDesc_color
  DC.L  txtChipRegDesc_color
  DC.L  txtChipRegDesc_color
  DC.L  txtChipRegDesc_color
  DC.L  txtChipRegDesc_color
  DC.L  txtChipRegDesc_color
  DC.L  txtChipRegDesc_color
  DC.L  txtChipRegDesc_color
  DC.L  txtChipRegDesc_color
  DC.L  txtChipRegDesc_color
  DC.L  txtChipRegDesc_color
  DC.L  txtChipRegDesc_color
  DC.L  txtChipRegDesc_color
  DC.L  txtChipRegDesc_color
  DC.L  txtChipRegDesc_color
  DC.L  txtChipRegDesc_color
  DC.L  txtChipRegDesc_color
  DC.L  txtChipRegDesc_color
  DC.L  txtChipRegDesc_color
  DC.L  txtChipRegDesc_color
  DC.L  txtChipRegDesc_color
  DC.L  txtChipRegDesc_color
  DC.L  txtChipRegDesc_color
  DC.L  txtChipRegDesc_color
  DC.L  txtChipRegDesc_color
  DC.L  txtChipRegDesc_color
  DC.L  txtChipRegDesc_color
  DC.L  txtChipRegDesc_undef_ECS
  DC.L  txtChipRegDesc_undef_ECS
  DC.L  txtChipRegDesc_undef_ECS
  DC.L  txtChipRegDesc_undef_ECS
  DC.L  txtChipRegDesc_undef_ECS
  DC.L  txtChipRegDesc_undef_ECS
  DC.L  txtChipRegDesc_undef_ECS
  DC.L  txtChipRegDesc_undef_ECS
  DC.L  txtChipRegDesc_undef_ECS
  DC.L  txtChipRegDesc_undef_ECS
  DC.L  txtChipRegDesc_undef_ECS
  DC.L  txtChipRegDesc_undef_ECS
  DC.L  txtChipRegDesc_undef_ECS
  DC.L  txtChipRegDesc_undef_ECS
  DC.L  txtChipRegDesc_undef_ECS
  DC.L  txtChipRegDesc_undef_ECS
  DC.L  txtChipRegDesc_undef_ECS
  DC.L  txtChipRegDesc_undef_ECS
  DC.L  txtChipRegDesc_undef_ECS
  DC.L  txtChipRegDesc_undef_ECS
  DC.L  txtChipRegDesc_undef_ECS
  DC.L  txtChipRegDesc_undef_ECS
  DC.L  txtChipRegDesc_undef_ECS
  DC.L  txtChipRegDesc_undef_ECS
  DC.L  txtChipRegDesc_unused
  DC.L  txtChipRegDesc_unused
  DC.L  txtChipRegDesc_unused
  DC.L  txtChipRegDesc_unused
  DC.L  txtChipRegDesc_unused
  DC.L  txtChipRegDesc_unused
  DC.L  txtChipRegDesc_undef_AGA
  DC.L  txtChipRegDesc_no_op

BlitterMsgText:
  DC.B  "data result of blitter, dummy"
  DC.B  $0d
  DS.B  1

txtChipRegDesc_dmacon:
  DC.B  "control of the dma channels",$D,"Bit Function    Description",$D,"15  s"
  DC.B  "et/clr     Set/clr control bit",$D,"14  bbusy       Blitter busy s"
  DC.B  "tatus bit (read only)",$D,"13  bzero       Blitter logic zero stat"
  DC.B  "us bit",$D,"12  x",$D,"11  x",$D,"10  bltpri      Blitter DMA priority",$D,"09  d"
  DC.B  "maen       Enable all DMA below",$D,"08  bplen       Bit plane DMA"
  DC.B  " enable",$D,"07  copen       Copper DMA enable",$D,"06  blten       Bli"
  DC.B  "tter DMA enable",$D,"05  spren       Sprite DMA enable",$D,"04  dsken  "
  DC.B  "     Disk DMA enable",$D,"03  aud3en      Audio channel 3 DMA enab"
  DC.B  "le",$D,"02  aud2en      Audio channel 2 DMA enable",$D,"01  aud1en     "
  DC.B  " Audio channel 1 DMA enable",$D,"00  aud0en      Audio channel 0 D"
  DC.B  "MA enable",$D,0

txtChipRegDesc_vpos:
  DC.B  "BIT 15,14,13,12,11,10,09,08,07,06,05,04,03,02,01,00",$D,"USE LOF  "
  DC.B  "                                        V8",$D,0

txtChipRegDesc_vhpos:
  DC.B  "BIT# 15,14,13,12,11,10,09,03,07,06,05,04,03,02,01,00",$D,"USE  V7 "
  DC.B  "V6 V5 V4 V3 V2 V1 V0,H8 H7 H6 H5 H4 H3 H2 H1",$D,0

txtChipRegDesc_dskdatr:
  DC.B  "disk DMA data buffer",$D,0

txtChipRegDesc_joyxdat:
  DC.B  "mouse/joystick counter",$D,"BIT  15,14,13,12,11,10,09,08 07,06,05,"
  DC.B  "04,03,02,01,00",$D,"MDAT Y7 Y6 Y5 Y4 Y3 Y2 Y1 Y0 X7 X6 X5 X4 X3 X2"
  DC.B  " X1 X0",$D,0

txtChipRegDesc_clxdat:
  DC.B  "collision detection register",$D,"BIT COLLISIONS REGISTERED",$D,"15  no"
  DC.B  "t used",$D,"14  Sprite 4 (or 5) to sprite 6 (or 7)",$D,"13  Sprite 2 (o"
  DC.B  "r 3) to sprite 6 (or 7)",$D,"12  Sprite 2 (or 3) to sprite 4 (or 5"
  DC.B  ")",$D,"11  Sprite 0 (or 1) to sprite 6 (or 7)",$D,"10  Sprite 0 (or 1) "
  DC.B  "to sprite 4 (or 5)",$D,"09  Sprite 0 (or 1) to sprite 2 (or 3)",$D,"08 "
  DC.B  " Playfield 2 to sprite 6 (or 7)",$D,"07  Playfield 2 to sprite 4 ("
  DC.B  "or 5)",$D,"06  Playfield 2 to sprite 2 (or 3)",$D,"05  Playfield 2 to s"
  DC.B  "prite 0 (or 1)",$D,"04  Playfield 1 to sprite 6 (or 7)",$D,"03  Playfie"
  DC.B  "ld 1 to sprite 4 (or 5)",$D,"02  Playfield 1 to sprite 2 (or 3)",$D,"01"
  DC.B  "  Playfield 1 to sprite 0 (or 1)",$D,"00  Playfield 1 to playfield"
  DC.B  " 2",$D,0

txtChipRegDesc_adkcon:
  DC.B  "BIT USE",$D,"15  SET/CLR   Set/clear control bit",$D,"14  PRECOMPHI",$D,"13 "
  DC.B  " PRECOMPLO",$D,"12  MFMPREC   1=MFM, 0=GCR",$D,"11  UARTBRK   1=UART br"
  DC.B  "eak",$D,"10  WORDSYNC  1=SYNC ON",$D,"09  MSBSYNC   1=MSBSYNC ON",$D,"08  FA"
  DC.B  "ST      1=fast, 0=slow",$D,"07  USE3PN    ch 3 mod nothing",$D,"06  USE"
  DC.B  "2P3    ch 2 mod per of cha 3",$D,"05  USE1P2    ch 1 mod per of ch"
  DC.B  "a 2",$D,"04  USE0P1    ch 0 mod per of cha 1",$D,"03  USE3VN    ch 3 mo"
  DC.B  "d nothing",$D,"02  USE2V3    ch 2 mod vol of cha 3",$D,"01  USE1V2    c"
  DC.B  "h 1 mod vol of cha 2",$D,"00  USE0V1    ch 0 mod vol of cha 1",$D,0

txtChipRegDesc_pot:
  DC.B  "BIT FUNCT   DESCRIPTION",$D,"15  OUTRY   Output enable",$D,"14  DATRY  "
  DC.B  " I/O data",$D,"13  OUTRX   Output enable",$D,"12  DATRX   I/O data",$D,"11  "
  DC.B  "OUTLY   Output enable",$D,"10  DATLY   I/O data",$D,"09  OUTLX   Output"
  DC.B  " enable",$D,"08  DATLX   I/O data",$D,"07-01 0     Reserved",$D,"00  START  "
  DC.B  " Start pots",$D,0

txtChipRegDesc_serdata:
  DC.B  "Serial port data/status",$D,"BIT SYM          FUNCTION",$D,"15  OVRUN  "
  DC.B  "      overrun.",$D,"14  RBF          buffer full",$D,"13  TBE          "
  DC.B  "buffer empty",$D,"12  TSRE         shift register empty",$D,"11  RXD   "
  DC.B  "       RXD pin",$D,"10  0            Not used",$D,"09  STP          Sto"
  DC.B  "p bit",$D,"08  STP-DB8      Stop bit",$D,"07  DB7          Data bit",$D,"06 "
  DC.B  " DB6          Data bit",$D,"05  DBS          Data bit",$D,"04  DB4     "
  DC.B  "     Data bit",$D,"03  DB3          Data bit",$D,"02  DB2          Data"
  DC.B  " bit",$D,"01  DB1          Data bit",$D,"00  DB0          Data bit",$D,0

txtChipRegDesc_dskbytr:
  DC.B  "Disk data byte/status",$D,"BIT   FUNCTION  DESCRIPTION",$D,"15    DSKBY"
  DC.B  "T    Byte ready",$D,"14    DMAON     1=Diskdma on",$D,"13    DISKWRITE "
  DC.B  "1=Diskwrite on",$D,"12    WORDEQUAL 1=Sync found",$D,"11-08 X         N"
  DC.B  "ot used",$D,"07-00 DATA      Disk byte data",$D,0

txtChipRegDesc_intena:
  DC.B  "Interrupt bits",$D,"BIT FUNCT  LEVEL  DESCRIPTION",$D,"15  SET/CLR     "
  DC.B  "  Set/clear control bit",$D,"14  INTEN         Master bit",$D,"13  EXTE"
  DC.B  "R    6    External interrupt",$D,"12  DSKSYN   5    Disk sync",$D,"11  "
  DC.B  "RBF      5    Serial buffer full",$D,"10  AUD3     4    Channel 3 "
  DC.B  "finished",$D,"09  AUD2     4    Channel 2 finished",$D,"08  AUDl     4 "
  DC.B  "   Channel 1 finished",$D,"07  AUD0     4    Channel 0 finished",$D,"06"
  DC.B  "  BLIT     3    Blitter finished",$D,"05  VERTB    3    Vertical b"
  DC.B  "lank",$D,"04  COPER    3    Copper",$D,"03  PORTS    2    I/O ports and"
  DC.B  " timers",$D,"02  SOFT     1    Software interrupt",$D,"01  DSKBLK   1  "
  DC.B  "  Disk block finished",$D,"00  TBE      1    Serial port buffer em"
  DC.B  "pty",$D,0

txtChipRegDesc_dskpt:
  DC.B  "Address of disk DMA data",$D,0

txtChipRegDesc_dsklen:
  DC.B  "Length of disk DMA data",$D,"BIT  FUNCTION       DESCRIPTION",$D,"15   "
  DC.B  "DMAEN          Disk DMA enable",$D,"14   WRITE          1=write",$D,"13"
  DC.B  "-0 LENGTH         Length in words",$D,0

txtChipRegDesc_refptr:
  DC.B  "Refresh pointer",$D,0

txtChipRegDesc_copcon:
  DC.B  "Copper control register",$D,"BIT NAME      FUNCTION",$D,"01  CDANG     "
  DC.B  "1=Access to blitter",$D,0

txtChipRegDesc_serdatb:
  DC.B  "Serial port data/stop bits",$D,"BIT 15,14,13,12,11,10,09,08,07,06,"
  DC.B  "05,04,03,02,01,00",$D,"USE  0  0  0  0  0  0  S D8 D7 D6 D5 D4 D3 "
  DC.B  "D2 D1 D0",$D,0

txtChipRegDesc_serper:
  DC.B  "Serial port period/control",$D,"BIT   SYM        FUNCTION",$D,"15    LO"
  DC.B  "NG       1=Serial receive 9-bit word.",$D,"14-00 RATE       Baud r"
  DC.B  "ate",$D,0

txtChipRegDesc_joytest:
  DC.B  "Write all joystick/mouse counters",$D,"BIT 15,14,13,12,11,10,09,08"
  DC.B  " 07,06,05,04,03,02,01,00",$D,"DAT Y7 Y6 Y5 Y4 Y3 Y2 xx xx X7 X6 X5"
  DC.B  " X4 X3 X2 xx xx",$D,0

txtChipRegDesc_strequ:
  DC.B  "Strobe for horizontal sync vb/equ",$D,0

txtChipRegDesc_strvbl:
  DC.B  "Strobe for horizontal sync vb",$D,0

txtChipRegDesc_strhor:
  DC.B  "Strobe for horizontal sync",$D,0

txtChipRegDesc_strlong:
  DC.B  "Strobe for horizontal sync long line",$D,0

txtChipRegDesc_bltcon:
  DC.B  "Blitter control register 0",$D,"BIT BLTCON0    BLTCON1  BLTCON0   "
  DC.B  "BLTCON1",$D,"Area mode               Line Mode",$D,"15    ASH3      BSH"
  DC.B  "3    START3    TEXTURE3",$D,"14    ASH2      BSH2    START2    TEX"
  DC.B  "TURE2",$D,"13    ASH1      BSH1    START1    TEXTURE1",$D,"12    ASA0  "
  DC.B  "    BSH0    START0    TEXTURE0",$D,"11    USEA        X     1     "
  DC.B  "    0",$D,"10    USEB        X     0         0",$D,"09    USEC        X"
  DC.B  "     1         0",$D,"08    USED        X     1         0",$D,"07    LF"
  DC.B  "7         X     LF7       0",$D,"06    LF6         X     LF6      "
  DC.B  " SIGN",$D,"05    LF5         X     LF5       0",$D,"04    LF4       EFE"
  DC.B  "     LF4       SUD",$D,"03    LF3       IFE     LF3       SUL",$D,"02  "
  DC.B  "  LF2       FCI     LF2       AUL",$D,"01    LF1       DESC    LF1"
  DC.B  "       SING",$D,"00    LF0       LINE(0) LF0       LINE(1)",$D,$D,"ASH 3-"
  DC.B  "0 Shift value of A source",$D,"BSH 3-0 Shift value of B source",$D,"USE"
  DC.B  "A use source A",$D,"USEB use source B",$D,"USEC use source C",$D,"USED use d"
  DC.B  "estination D",$D,"LF 7-0 Logic minterms",$D,"EFE Exclusive fill",$D,"IFE Inc"
  DC.B  "lusive fill",$D,"FCI Fill carry input",$D,"DESC Descending control bit",$D
  DC.B  "LINE Line mode",$D,"START 3-0 Starting point",$D,"SIGN Sign flag",$D,"SING S"
  DC.B  "ingle bit",$D,"SUD Up or down bit",$D,"SUL Up or left bit",$D,"AUL Always up"
  DC.B  " or left",$D,0

txtChipRegDesc_bltafwm:
  DC.B  "Blitter first-word mask for A",$D,0

txtChipRegDesc_bltalwm:
  DC.B  "Blitter last-word mask for A",$D,0

txtChipRegDesc_bltxpth:
  DC.B  "Blitter address for source/destination",$D,0

txtChipRegDesc_bltsize:
  DC.B  "Blitter start and size",$D,"BIT 15,19,13,12,11,10,09,08,07,06,05,0"
  DC.B  "4,03,02,01,00",$D,"    h9 h8 h7 h6 h5 h4 h3 h2 h1 h0,w5 w4 w3 w2 w"
  DC.B  "1 w0",$D,0

txtChipRegDesc_undef_ECS:
  DC.B  "Sorry no information! (ECS register)",$D,0

txtChipRegDesc_undef_AGA:
  DC.B  "Sorry no information! (AGA register)",$D,0

txtChipRegDesc_bltxmod:
  DC.B  "Blitter modulo for source/destination",$D,0

txtChipRegDesc_unused:
  DC.B  "Unused!",$D,0

txtChipRegDesc_bltxdat:
  DC.B  "Blitter source data register",$D,0

txtChipRegDesc_dsksync:
  DC.B  "Disk sync register",$D,0

txtChipRegDesc_copxlc:
  DC.B  "Copper location register",$D,0

txtChipRegDesc_copjmp:
  DC.B  "Copper restart",$D,0

txtChipRegDesc_copins:
  DC.B  "Copper instruction, dummy",$D,0

txtChipRegDesc_diw:
  DC.B  "Display window start/stop",$D,"BIT 15,14,13,12,11,10,09,08,07,06,0"
  DC.B  "5,04,03,02,01,00",$D,"USE V7 V6 V5 V4 V3 V2 V1 V0 H7 H6 H5 H4 H3 H"
  DC.B  "2 H1 H0",$D,0

txtChipRegDesc_ddf:
  DC.B  "Display data fetch start/stop",$D,"BIT 15,14,13,12,11,10,09,08,07,"
  DC.B  "06,05,04,03,02,01,00",$D,"USE  0  0  0  0  0  0  0  0 H8 H7 H6 H5 "
  DC.B  "H4 H3  0  0",$D,0

txtChipRegDesc_clxcon:
  DC.B  "Collision control",$D,"BIT FUNCTION   DESCRIPTION",$D,"15  ENSP7     En"
  DC.B  "able sprite 7/6",$D,"14  ENSP5     Enable sprite 5/4",$D,"13  ENSP3    "
  DC.B  " Enable sprite 3/2",$D,"12  ENSP1     Enable sprite 1/0",$D,"11  ENBP6 "
  DC.B  "    Enable plane 6",$D,"10  ENBP5     Enable plane 5",$D,"09  ENBP4    "
  DC.B  " Enable plane 4",$D,"08  ENBP3     Enable plane 3",$D,"07  ENBP2     En"
  DC.B  "able plane 2",$D,"06  ENBP1     Enable plane 1",$D,"05  NVBP6     Match"
  DC.B  " for plane 6",$D,"04  MVBP5     Match for plane 5",$D,"03  MVBP4     Ma"
  DC.B  "tch for plane 4",$D,"02  MVBP3     Match for plane 3",$D,"01  MVBP2    "
  DC.B  " Match for plane 2",$D,"00  MVBP1     Match for plane 1",$D,0

txtChipRegDesc_audxpt:
  DC.B  "Audio channel location",$D,0

txtChipRegDesc_audxlen:
  DC.B  "Audio channel length",$D,0

txtChipRegDesc_audxper:
  DC.B  "Audio channel period",$D,0

txtChipRegDesc_audxvol:
  DC.B  "Audio channel volume",$D,0

txtChipRegDesc_audxdat:
  DC.B  "Audio channel data",$D,0

txtChipRegDesc_bplxpt:
  DC.B  "Bit plane pointer",$D,0

txtChipRegDesc_bplxptAGA:
  DC.B  "Bit plane pointer (AGA)",$D,0

txtChipRegDesc_bplcon:
  DC.B  "Bit plane control register",$D,"BIT BPLCON0 BPLCON1 BPLCON2",$D,"15  HI"
  DC.B  "RES   X       X",$D,"14  BPU2    X       X",$D,"13  BPU1    X       X",$D,"1"
  DC.B  "2  BPU0    X       X",$D,"11  HOMOD   X       X",$D,"10  DBLPF   X     "
  DC.B  "  X",$D,"09  COLOR   X       X",$D,"08  GAUD    X       X",$D,"07  X       P"
  DC.B  "F2H3   X",$D,"06  X       PF2H2   PF2PRI",$D,"05  X       PF2H1   PF2P2"
  DC.B  $D,"04  X       PF2H0   PF2P1",$D,"03  LPEN    PF1H3   PF2P0",$D,"02  LACE"
  DC.B  "    PF1H2   PF1P2",$D,"01  ERSY    PF1H1   PF1P1",$D,"00  X       PF1H0"
  DC.B  "   PF1lP0",$D,$D,"HIRES Hires mode",$D,"BPU   # of bit planes",$D,"HOMOD HAM  "
  DC.B  "mode",$D,"DBLPF Double playfield",$D,"COLOR Composite video",$D,"GAUD  Genlo"
  DC.B  "ck audio",$D,"LPEN  Lightpen",$D,"LACE  Interlace mode",$D,"ERSY  External r"
  DC.B  "esync",$D,"PF2PR Playfield 2 > 1",$D,"PF2P  Playfield 2 priority",$D,"PF1P  "
  DC.B  "Playfield 1 priority",$D,"PF2H  Playfield 2 scroll code",$D,"PFlH  Play"
  DC.B  "field 1 scroll code",$D,0

txtChipRegDesc_bplxmod:
  DC.B  "Bit plane modulo",$D,0

txtChipRegDesc_bplxdat:
  DC.B  "Bit plane data",$D,0

txtChipRegDesc_bplxdatAGA:
  DC.B  "Bit plane data (AGA)",$D,0

txtChipRegDesc_sprxpt:
  DC.B  "Sprite pointer",$D,0

txtChipRegDesc_sprxpos:
  DC.B  "Sprite start position data",$D,"BIT   SYM      FUNCTION",$D,"15-08 SV7-"
  DC.B  "SV0  Start vertical value",$D,"07-00 SH8-SH1  Start horizontal val"
  DC.B  "ue",$D,0

txtChipRegDesc_sprxctl:
  DC.B  "Sprite vert stop position and control data",$D,"BIT   SYM       FU"
  DC.B  "NCTION",$D,"15-08 EV7-EV0   End vertical value",$D,"07    ATT       Att"
  DC.B  "ach bit",$D,"06-04 X",$D,"02    SV8       Start vertical MSB",$D,"01    EV8 "
  DC.B  "      End  vertical MSB",$D,"00    SH0       Start horizontal LSB",$D
  DC.B  0

txtChipRegDesc_sprxdata:
  DC.B  "Sprite image data register",$D,0

txtChipRegDesc_color:
  DC.B  "Color table xx",$D,"BIT 15,14,13,12,11,10,09,08,07,06,05,04,03,02,"
  DC.B  "01,00",$D,"RGB  X  X  X  X R3 R2 B1 R0 G3 G2 G1 G0 B3 B2 B1 B0",$D,0

txtChipRegDesc_no_op:
  DC.B  "No operation",$D,0
  even

checkFileSystem:
  MOVE.L  A1,-(A7)
  MOVEQ #0,D0
  JSR loadSector
  BMI.S LAB_A30F62
  MOVEQ #0,D0
  CLR.B FastFileSystemFlag1
  CMPI.L  #DOSZERO_TAG,(A1)
  BEQ.S LAB_A30F62
  MOVE.B  #1,FastFileSystemFlag1
  CMPI.L  #DOSONE_TAG,(A1)
  BEQ.S LAB_A30F62
  MOVEQ #-34,D0
LAB_A30F62:
  MOVEA.L (A7)+,A1
  TST.W D0
  RTS
  JSR GetFilename
  MOVE.W  D0,D1
  MOVEQ #-14,D0
  TST.W D1
  BEQ.S LAB_A30FF2
  JSR ReadParameter
  TST.B ParamFound
  BEQ.W LAB_A2DF8A
  MOVEA.L D0,A2
  JSR ReadParameter
  TST.B ParamFound
  BEQ.W LAB_A2DF8A
  MOVE.L  D0,D2
  JSR ReadParameter
  TST.B ParamFound
  BEQ.W LAB_A2DF8A
  MOVE.L  D0,D3
  LEA EXT_7000.W,A0
  JSR backupMfmBuffer
  LEA stringWorkspace,A1
  MOVE.W  D1,D0
  MOVE.B  currDriveNo,-(A7)
  JSR OpenFile
  BMI.S LAB_A30FDE
  MOVE.L  D2,D0
  JSR readFileData
  BMI.S LAB_A30FDE
  MOVE.L  D3,D0
  JSR readFileData
LAB_A30FDE:
  MOVE.B  (A7)+,currDriveNo
  JSR PrintDiskOpResult
  JSR restoreMfmBuffer
  RTS
LAB_A30FF2:
  JMP PrintDiskOpResult
SUB_A30FF8:
  MOVE.L  D0,-(A7)
  PEA (A0)
  JSR readCmdCharSkipSpaces
  MOVEA.W #0,A1
  MOVEQ #-1,D1
  TST.B endOfCmdString
  BNE.W LAB_A31046
  CMPI.W  #$002e,D0
  BNE.S LAB_A31046
  JSR readCmdCharSkipSpaces
  MOVEQ #0,D1
  BCLR  #5,D0
  MOVEA.W #0,A1
  CMPI.W  #$0042,D0
  BEQ.S LAB_A31046
  MOVEA.W #1,A1
  CMPI.W  #$0057,D0     ;87 - W
  BEQ.S LAB_A31046
  MOVEA.W #2,A1
  CMPI.W  #$004c,D0     ;76   L
  BEQ.S LAB_A31046
  MOVEA.W #0,A1
LAB_A31046:
  MOVE.W  A1,LAB_A35698
  TST.W D1
  BNE.S LAB_A31052
  MOVE.L  A0,(A7)
LAB_A31052:
  MOVEA.L (A7)+,A0
  MOVE.L  (A7)+,D0
  RTS
CMD_ROMAVOID:
  MOVEM.L D0-D3/A0-A2,-(A7)
  LEA AvoidRomDisabledText,A0
  NOT.B RomAvoidFlag
  BEQ.S LAB_A31070
  LEA AvoidRomEnabledText,A0
LAB_A31070:
  JSR PrintText
  JSR calcArChecksum
  MOVEM.L (A7)+,D0-D3/A0-A2
  JMP PrintReady


CMD_KICKROMADR:
 if arsoft=0
 LEA nokickromadrtext(PC),A0
 JSR PrintText
 JMP PrintReady

nokickromadrtext:
 DC.B "KICKROMADR is not available in hardware",$D,0
 even
 else

  MOVEM.L D0-D3/A0-A2,-(A7)
  LEA AvoidRomF8Text,A0
  MOVEA.L #$00f80000,A1
  MOVEA.L #$00fffff0,A2
  NOT.B LAB_A310FC
  BEQ.S LAB_A310B6
  MOVEA.L #$00200000,A1
  MOVEA.L #$00280000,A2
  LEA AvoidRom20Text,A0
LAB_A310B6:

  MOVE.L  A1,LAB_A1021A+2
  MOVE.L  A1,LAB_A10260+2
  MOVE.L  A1,LAB_A103C6+2
  MOVE.L  A2,LAB_A10224+2
  MOVE.L  A2,LAB_A1026A+2
  MOVE.L  A2,LAB_A103D0+2

  JSR PrintText
  JSR calcArChecksum
  MOVEM.L (A7)+,D0-D3/A0-A2
  JMP PrintReady

AvoidRomF8Text:
  DC.B  $D,"Kickstart ROM AVOID $F80000<>$1000000",$D,0

AvoidRom20Text:
  DC.B  $D,"Kickstart ROM AVOID $200000<>$280000",$D,0
  endc

RobDNotActiveText:
  DC.B  $D,"Rob Northen Decrypter Deactivated.",$D,0

DobDActiveText:
  DC.B  $D,"Rob Northen Decrypter Activated.",$D,0

AvoidRomDisabledText:
  DC.B  $D,"Kickstart ROM calls avoid, disabled.",$D,0

AvoidRomEnabledText:
  DC.B  $D,"Kickstart ROM calls avoid, enabled.",$D,0

cacheStatusText:
  DC.B  $D,"Cache Status Report.",$D,0

DataBurstEnabledText:
  DC.B  $D,"Data Burst Enabled.",$D,0

DataCacheEnabledText:
  DC.B  $D,"Data Cache Enabled.",$D,0

InstBurstEnabledText:
  DC.B  $D,"Inst Burst Enabled.",$D,0

InstCacheEnabledText:
  DC.B  $D,"Inst Cache Enabled.",$D,0

AllExceptionsIgnoredText:
  DC.B  $D,"All Exceptions ignored.",$D,0

AllExceptionsActiveText:
  DC.B  $D,"All Exceptions will activate AR-PRO.",$D,0

DeepMemwatchEnabledText:
  DC.B  $D,"DEEP Memwatcher now enabled.",$D,0

DeepMemwatchDisabledText:
  DC.B  $D,"DEEP Memwatcher now disabled.",$D,0,0

  even
SUB_A312D2:
  CMPA.L  #$00000420,A0
  BEQ.W LAB_A31698
  MOVE.L  D0,D1
  SWAP  D1
  TST.W D1
  BEQ.W LAB_A31698
  CMPI.W  #$fffe,D0
  BNE.S LAB_A31302
  MOVE.W  D1,D2
  ANDI.W  #$00ff,D2
  CMPI.W  #1,D2
  BEQ.W LAB_A31694
  CMPI.W  #$ffff,D1
  BEQ.W LAB_A31698
LAB_A31302:
  CMPI.W  #$0080,D1
  BNE.S LAB_A31314
  CMPI.W  #$0020,D0
  BGT.W LAB_A31698
  BRA.W LAB_A31694
LAB_A31314:
  CMPI.W  #$0084,D1
  BNE.S LAB_A31326
  CMPI.W  #$0020,D0
  BGT.W LAB_A31698
  BRA.W LAB_A31694
LAB_A31326:
  CMPI.W  #$00e0,D1
  BNE.S LAB_A31338
  CMPI.W  #$0020,D0
  BGT.W LAB_A31698
  BRA.W LAB_A31694
LAB_A31338:
  CMPI.W  #$00e4,D1
  BNE.S LAB_A3134A
  CMPI.W  #$0020,D0
  BGT.W LAB_A31698
  BRA.W LAB_A31694
LAB_A3134A:
  CMPI.W  #$00e8,D1
  BNE.S LAB_A3135C
  CMPI.W  #$0020,D0
  BGT.W LAB_A31698
  BRA.W LAB_A31694
LAB_A3135C:
  CMPI.W  #$00ec,D1
  BNE.S LAB_A3136E
  CMPI.W  #$0020,D0
  BGT.W LAB_A31698
  BRA.W LAB_A31694
LAB_A3136E:
  CMPI.W  #$00f0,D1
  BNE.S LAB_A31380
  CMPI.W  #$0020,D0
  BGT.W LAB_A31698
  BRA.W LAB_A31694
LAB_A31380:
  CMPI.W  #$00f4,D1
  BNE.S LAB_A31392
  CMPI.W  #$0020,D0
  BGT.W LAB_A31698
  BRA.W LAB_A31694
LAB_A31392:
  CMPI.W  #$0092,D1
  BNE.S LAB_A313A4
  CMPI.W  #$0090,D0
  BGT.W LAB_A31698
  BRA.W LAB_A31694
LAB_A313A4:
  CMPI.W  #$0094,D1
  BNE.S LAB_A313B6
  CMPI.W  #$0100,D0
  BGT.W LAB_A31698
  BRA.W LAB_A31694
LAB_A313B6:
  CMPI.W  #$0096,D1
  BNE.S LAB_A313C8
  CMPI.W  #$9000,D0
  BGT.W LAB_A31698
  BRA.W LAB_A31694
LAB_A313C8:
  CMPI.W  #$0180,D1
  BNE.S LAB_A313DA
  CMPI.W  #$1000,D0
  BGT.W LAB_A31698
  BRA.W LAB_A31694
LAB_A313DA:
  CMPI.W  #$0182,D1
  BNE.S LAB_A313EC
  CMPI.W  #$1000,D0
  BGT.W LAB_A31698
  BRA.W LAB_A31694
LAB_A313EC:
  CMPI.W  #$0184,D1
  BNE.S LAB_A313FE
  CMPI.W  #$1000,D0
  BGT.W LAB_A31698
  BRA.W LAB_A31694
LAB_A313FE:
  CMPI.W  #$0186,D1
  BNE.S LAB_A31410
  CMPI.W  #$1000,D0
  BGT.W LAB_A31698
  BRA.W LAB_A31694
LAB_A31410:
  CMPI.W  #$0188,D1
  BNE.S LAB_A31422
  CMPI.W  #$1000,D0
  BGT.W LAB_A31698
  BRA.W LAB_A31694
LAB_A31422:
  CMPI.W  #$018a,D1
  BNE.S LAB_A31434
  CMPI.W  #$1000,D0
  BGT.W LAB_A31698
  BRA.W LAB_A31694
LAB_A31434:
  CMPI.W  #$018c,D1
  BNE.S LAB_A31446
  CMPI.W  #$1000,D0
  BGT.W LAB_A31698
  BRA.W LAB_A31694
LAB_A31446:
  CMPI.W  #$018e,D1
  BNE.S LAB_A31458
  CMPI.W  #$1000,D0
  BGT.W LAB_A31698
  BRA.W LAB_A31694
LAB_A31458:
  CMPI.W  #$0190,D1
  BNE.S LAB_A3146A
  CMPI.W  #$1000,D0
  BGT.W LAB_A31698
  BRA.W LAB_A31694
LAB_A3146A:
  CMPI.W  #$0192,D1
  BNE.S LAB_A3147C
  CMPI.W  #$1000,D0
  BGT.W LAB_A31698
  BRA.W LAB_A31694
LAB_A3147C:
  CMPI.W  #$0194,D1
  BNE.S LAB_A3148E
  CMPI.W  #$1000,D0
  BGT.W LAB_A31698
  BRA.W LAB_A31694
LAB_A3148E:
  CMPI.W  #$0196,D1
  BNE.S LAB_A314A0
  CMPI.W  #$1000,D0
  BGT.W LAB_A31698
  BRA.W LAB_A31694
LAB_A314A0:
  CMPI.W  #$0198,D1
  BNE.S LAB_A314B2
  CMPI.W  #$1000,D0
  BGT.W LAB_A31698
  BRA.W LAB_A31694
LAB_A314B2:
  CMPI.W  #$019a,D1
  BNE.S LAB_A314C4
  CMPI.W  #$1000,D0
  BGT.W LAB_A31698
  BRA.W LAB_A31694
LAB_A314C4:
  CMPI.W  #$019c,D1
  BNE.S LAB_A314D6
  CMPI.W  #$1000,D0
  BGT.W LAB_A31698
  BRA.W LAB_A31694
LAB_A314D6:
  CMPI.W  #$019e,D1
  BNE.S LAB_A314E8
  CMPI.W  #$1000,D0
  BGT.W LAB_A31698
  BRA.W LAB_A31694
LAB_A314E8:
  CMPI.W  #$01a0,D1
  BNE.S LAB_A314FA
  CMPI.W  #$1000,D0
  BGT.W LAB_A31698
  BRA.W LAB_A31694
LAB_A314FA:
  CMPI.W  #$01a2,D1
  BNE.S LAB_A3150C
  CMPI.W  #$1000,D0
  BGT.W LAB_A31698
  BRA.W LAB_A31694
LAB_A3150C:
  CMPI.W  #$01a4,D1
  BNE.S LAB_A3151E
  CMPI.W  #$1000,D0
  BGT.W LAB_A31698
  BRA.W LAB_A31694
LAB_A3151E:
  CMPI.W  #$01a6,D1
  BNE.S LAB_A31530
  CMPI.W  #$1000,D0
  BGT.W LAB_A31698
  BRA.W LAB_A31694
LAB_A31530:
  CMPI.W  #$01a8,D1
  BNE.S LAB_A31542
  CMPI.W  #$1000,D0
  BGT.W LAB_A31698
  BRA.W LAB_A31694
LAB_A31542:
  CMPI.W  #$01aa,D1
  BNE.S LAB_A31554
  CMPI.W  #$1000,D0
  BGT.W LAB_A31698
  BRA.W LAB_A31694
LAB_A31554:
  CMPI.W  #$01ac,D1
  BNE.S LAB_A31566
  CMPI.W  #$1000,D0
  BGT.W LAB_A31698
  BRA.W LAB_A31694
LAB_A31566:
  CMPI.W  #$01ae,D1
  BNE.S LAB_A31578
  CMPI.W  #$1000,D0
  BGT.W LAB_A31698
  BRA.W LAB_A31694
LAB_A31578:
  CMPI.W  #$01b0,D1
  BNE.S LAB_A3158A
  CMPI.W  #$1000,D0
  BGT.W LAB_A31698
  BRA.W LAB_A31694
LAB_A3158A:
  CMPI.W  #$01b2,D1
  BNE.S LAB_A3159C
  CMPI.W  #$1000,D0
  BGT.W LAB_A31698
  BRA.W LAB_A31694
LAB_A3159C:
  CMPI.W  #$01b4,D1
  BNE.S LAB_A315AE
  CMPI.W  #$1000,D0
  BGT.W LAB_A31698
  BRA.W LAB_A31694
LAB_A315AE:
  CMPI.W  #$01b6,D1
  BNE.S LAB_A315C0
  CMPI.W  #$1000,D0
  BGT.W LAB_A31698
  BRA.W LAB_A31694
LAB_A315C0:
  CMPI.W  #$01b8,D1
  BNE.S LAB_A315D2
  CMPI.W  #$1000,D0
  BGT.W LAB_A31698
  BRA.W LAB_A31694
LAB_A315D2:
  CMPI.W  #$01ba,D1
  BNE.S LAB_A315E4
  CMPI.W  #$1000,D0
  BGT.W LAB_A31698
  BRA.W LAB_A31694
LAB_A315E4:
  CMPI.W  #$01bc,D1
  BNE.S LAB_A315F6
  CMPI.W  #$1000,D0
  BGT.W LAB_A31698
  BRA.W LAB_A31694
LAB_A315F6:
  CMPI.W  #$01be,D1
  BNE.S LAB_A31608
  CMPI.W  #$1000,D0
  BGT.W LAB_A31698
  BRA.W LAB_A31694
LAB_A31608:
  CMPI.W  #$01e4,D1
  BNE.S LAB_A3161A
  CMPI.W  #$7f00,D0
  BGT.W LAB_A31698
  BRA.W LAB_A31694
LAB_A3161A:
  CMPI.W  #$01fc,D1
  BNE.S LAB_A3162C
  CMPI.W  #$0010,D0
  BGT.W LAB_A31698
  BRA.W LAB_A31694
LAB_A3162C:
  CMPI.W  #$0100,D1
  BEQ.S LAB_A31694
  CMPI.W  #$0102,D1
  BEQ.S LAB_A31694
  CMPI.W  #$0104,D1
  BEQ.S LAB_A31694
  CMPI.W  #$0106,D1
  BEQ.S LAB_A31694
  CMPI.W  #$0108,D1
  BEQ.S LAB_A31694
  CMPI.W  #$010a,D1
  BEQ.S LAB_A31694
  CMPI.W  #$010c,D1
  BEQ.S LAB_A31694
  CMPI.W  #$01dc,D1
  BEQ.S LAB_A31694
  CMPI.W  #$01e4,D1
  BEQ.S LAB_A31694
  CMPI.W  #$01fc,D1
  BEQ.S LAB_A31694
  CMPI.W  #$0088,D1
  BEQ.S LAB_A31694
  CMPI.W  #$008a,D1
  BEQ.S LAB_A31694
  CMPI.W  #$008e,D1
  BEQ.S LAB_A31694
  CMPI.W  #$0090,D1
  BEQ.S LAB_A31694
  CMPI.W  #$0096,D1
  BEQ.S LAB_A31694
  CMPI.W  #$009a,D1
  BEQ.S LAB_A31694
  CMPI.W  #$009c,D1
  BEQ.S LAB_A31694
  BRA.S LAB_A31698
LAB_A31694:
  MOVEQ #0,D0
  RTS
LAB_A31698:
  MOVEQ #-1,D0
  RTS
LAB_A3169C:
  CMPI.W  #$000c,D0
  BNE.S LAB_A316B2
  LEA USPText(PC),A0
  JSR PrintText
  JMP LAB_A1643C
LAB_A316B2:
  CMPI.W  #$000d,D0
  BNE.S LAB_A316C8
  LEA CCRText(PC),A0
  JSR PrintText
  JMP LAB_A1643C
LAB_A316C8:
  CMPI.W  #$000e,D0
  BNE.S LAB_A316DE
  LEA SRText(PC),A0
  JSR PrintText
  JMP LAB_A1643C
LAB_A316DE:
  CMPI.W  #$0012,D0
  BNE.S LAB_A316F4
  LEA CACRText(PC),A0
  JSR PrintText
  JMP LAB_A1643C
LAB_A316F4:
  CMPI.W  #$0013,D0
  BNE.S LAB_A3170A
  LEA VBRText(PC),A0
  JSR PrintText
  JMP LAB_A1643C
LAB_A3170A:
  CMPI.W  #$0014,D0
  BNE.S LAB_A31720
  LEA SFCText(PC),A0
  JSR PrintText
  JMP LAB_A1643C
LAB_A31720:
  CMPI.W  #$0015,D0
  BNE.S LAB_A31736
  LEA DFCText(PC),A0
  JSR PrintText
  JMP LAB_A1643C
LAB_A31736:
  CMPI.W  #$0016,D0
  BNE.S LAB_A3174C
  LEA CAARText(PC),A0
  JSR PrintText
  JMP LAB_A1643C
LAB_A3174C:
  CMPI.W  #$0017,D0
  BNE.S LAB_A31762
  LEA MSPText(PC),A0
  JSR PrintText
  JMP LAB_A1643C
LAB_A31762:
  CMPI.W  #$0018,D0
  BNE.S LAB_A31778
  LEA ISPText(PC),A0
  JSR PrintText
  JMP LAB_A1643C
LAB_A31778:
  CMPI.W  #$0019,D0
  BNE.S LAB_A3178E
  LEA TCText(PC),A0
  JSR PrintText
  JMP LAB_A1643C
LAB_A3178E:
  CMPI.W  #$001a,D0
  BNE.S LAB_A317A4
  LEA ITT0Text(PC),A0
  JSR PrintText
  JMP LAB_A1643C
LAB_A317A4:
  CMPI.W  #$001b,D0
  BNE.S LAB_A317BA
  LEA ITT1Text(PC),A0
  JSR PrintText
  JMP LAB_A1643C
LAB_A317BA:
  CMPI.W  #$001c,D0
  BNE.S LAB_A317D0
  LEA DTT0Text(PC),A0
  JSR PrintText
  JMP LAB_A1643C
LAB_A317D0:
  CMPI.W  #$001d,D0
  BNE.S LAB_A317E6
  LEA DTT1Text(PC),A0
  JSR PrintText
  JMP LAB_A1643C
LAB_A317E6:
  CMPI.W  #$001e,D0
  BNE.S LAB_A317FC
  LEA MMUSRText(PC),A0
  JSR PrintText
  JMP LAB_A1643C
LAB_A317FC:
  CMPI.W  #$001f,D0
  BNE.S LAB_A31812
  LEA URPText(PC),A0
  JSR PrintText
  JMP LAB_A1643C
LAB_A31812:
  CMPI.W  #$0020,D0
  BNE.S LAB_A31828
  LEA SRPText(PC),A0
  JSR PrintText
  JMP LAB_A1643C
LAB_A31828:
  JMP LAB_A163DE

USPText:
  DC.B  "USP",0

CCRText:
  DC.L  $43435200

SRText:
  DC.L  $53520000

CACRText:
  DC.B  "CACR",0

VBRText:
  DC.B  "VBR",0

SFCText:
  DC.B  $53
  DC.W  $4643
  DS.B  1
DFCText:
  DC.B  "DFC",0

CAARText:
  DC.B  "CAAR",0

MSPText:
  DC.L  $4d535000

ISPText:
  DC.L  $49535000

TCText:
  DC.B  "TC",0

ITT0Text:
  DC.B  "ITT0",0

ITT1Text:
  DC.B  "ITT1",0

DTT0Text:
  DC.B  "DTT0",0

DTT1Text:
  DC.B  "DTT1",0

MMUSRText:
  DC.B  "MMUSR",0

URPText:
  DC.B  $55
  DC.W  $5250
  DS.B  1

SRPText:
  DC.B  "SRP",0,0

SUB_A3187E:
  MOVEM.L A1-A3,-(A7)
  MOVE.L  D7,D0
  ANDI.W  #$fffe,D0
  CMPI.W  #$4e7a,D0
  BNE.W LAB_A31946
  MOVE.W  #$0050,LAB_A47FB6
  MOVEQ #0,D1
  MOVE.L  D7,D0
  ANDI.W  #1,D0
  BEQ.S LAB_A318A4
  MOVEQ #1,D1
LAB_A318A4:
  LEA LAB_A47FBA,A1
  LEA LAB_A47FCC,A2
  TST.W D1
  BEQ.S LAB_A318C0
  LEA LAB_A47FCC,A1
  LEA LAB_A47FBA,A2
LAB_A318C0:
  JSR memSafeReadWord
  ADDQ.L  #2,A0
  MOVE.L  D0,D7
  ANDI.W  #$0fff,D0
  MOVEQ #$F,D1
  LEA LAB_A318DE(PC),A3
LAB_A318D4:
  CMP.W (A3)+,D0
  BEQ.S LAB_A3191E
  DBF D1,LAB_A318D4
  BRA.S LAB_A31946
LAB_A318DE:
  DC.L  $00020801,$00000001,$08000802,$08030804
  DC.L  $00030004,$00050006,$00070805,$08060807
  DC.L  $00120013,$00140015,$000c0016,$00170018
  DC.L  $0019001a,$001b001c,$001d001e,$001f0020
LAB_A3191E:
  MOVE.W  $1E(A3),(A1)
  MOVE.L  D7,D0
  ANDI.W  #$f000,D0
  ROL.W #4,D0
  MOVEQ #0,D1
  CMPI.W  #8,D0
  BLT.S LAB_A31936
  MOVEQ #1,D1
  SUBQ.W  #8,D0
LAB_A31936:
  MOVE.W  D1,(A2)
  EXT.L D0
  MOVE.L  D0,2(A2)
  MOVEM.L (A7)+,A1-A3
  MOVEQ #1,D0
  RTS
LAB_A31946:
  MOVEM.L (A7)+,A1-A3
  MOVEQ #0,D0
  RTS

crc16tbl:
  DC.W $0000,$1021,$2042,$3063,$4084,$50A5,$60C6,$70E7
  DC.W $8108,$9129,$A14A,$B16B,$C18C,$D1AD,$E1CE,$F1EF
  DC.W $1231,$0210,$3273,$2252,$52B5,$4294,$72F7,$62D6
  DC.W $9339,$8318,$B37B,$A35A,$D3BD,$C39C,$F3FF,$E3DE
  DC.W $2462,$3443,$0420,$1401,$64E6,$74C7,$44A4,$5485
  DC.W $A56A,$B54B,$8528,$9509,$E5EE,$F5CF,$C5AC,$D58D
  DC.W $3653,$2672,$1611,$0630,$76D7,$66F6,$5695,$46B4
  DC.W $B75B,$A77A,$9719,$8738,$F7DF,$E7FE,$D79D,$C7BC
  DC.W $48C4,$58E5,$6886,$78A7,$0840,$1861,$2802,$3823
  DC.W $C9CC,$D9ED,$E98E,$F9AF,$8948,$9969,$A90A,$B92B
  DC.W $5AF5,$4AD4,$7AB7,$6A96,$1A71,$0A50,$3A33,$2A12
  DC.W $DBFD,$CBDC,$FBBF,$EB9E,$9B79,$8B58,$BB3B,$AB1A
  DC.W $6CA6,$7C87,$4CE4,$5CC5,$2C22,$3C03,$0C60,$1C41
  DC.W $EDAE,$FD8F,$CDEC,$DDCD,$AD2A,$BD0B,$8D68,$9D49
  DC.W $7E97,$6EB6,$5ED5,$4EF4,$3E13,$2E32,$1E51,$0E70
  DC.W $FF9F,$EFBE,$DFDD,$CFFC,$BF1B,$AF3A,$9F59,$8F78
  DC.W $9188,$81A9,$B1CA,$A1EB,$D10C,$C12D,$F14E,$E16F
  DC.W $1080,$00A1,$30C2,$20E3,$5004,$4025,$7046,$6067
  DC.W $83B9,$9398,$A3FB,$B3DA,$C33D,$D31C,$E37F,$F35E
  DC.W $02B1,$1290,$22F3,$32D2,$4235,$5214,$6277,$7256
  DC.W $B5EA,$A5CB,$95A8,$8589,$F56E,$E54F,$D52C,$C50D
  DC.W $34E2,$24C3,$14A0,$0481,$7466,$6447,$5424,$4405
  DC.W $A7DB,$B7FA,$8799,$97B8,$E75F,$F77E,$C71D,$D73C
  DC.W $26D3,$36F2,$0691,$16B0,$6657,$7676,$4615,$5634
  DC.W $D94C,$C96D,$F90E,$E92F,$99C8,$89E9,$B98A,$A9AB
  DC.W $5844,$4865,$7806,$6827,$18C0,$08E1,$3882,$28A3
  DC.W $CB7D,$DB5C,$EB3F,$FB1E,$8BF9,$9BD8,$ABBB,$BB9A
  DC.W $4A75,$5A54,$6A37,$7A16,$0AF1,$1AD0,$2AB3,$3A92
  DC.W $FD2E,$ED0F,$DD6C,$CD4D,$BDAA,$AD8B,$9DE8,$8DC9
  DC.W $7C26,$6C07,$5C64,$4C45,$3CA2,$2C83,$1CE0,$0CC1
  DC.W $EF1F,$FF3E,$CF5D,$DF7C,$AF9B,$BFBA,$8FD9,$9FF8
  DC.W $6E17,$7E36,$4E55,$5E74,$2E93,$3EB2,$0ED1,$1EF0

crc32tbl:
 DC.L $00000000,$77073096,$ee0e612c,$990951ba,$076dc419,$706af48f,$e963a535,$9e6495a3
 DC.L $0edb8832,$79dcb8a4,$e0d5e91e,$97d2d988,$09b64c2b,$7eb17cbd,$e7b82d07,$90bf1d91
 DC.L $1db71064,$6ab020f2,$f3b97148,$84be41de,$1adad47d,$6ddde4eb,$f4d4b551,$83d385c7
 DC.L $136c9856,$646ba8c0,$fd62f97a,$8a65c9ec,$14015c4f,$63066cd9,$fa0f3d63,$8d080df5
 DC.L $3b6e20c8,$4c69105e,$d56041e4,$a2677172,$3c03e4d1,$4b04d447,$d20d85fd,$a50ab56b
 DC.L $35b5a8fa,$42b2986c,$dbbbc9d6,$acbcf940,$32d86ce3,$45df5c75,$dcd60dcf,$abd13d59
 DC.L $26d930ac,$51de003a,$c8d75180,$bfd06116,$21b4f4b5,$56b3c423,$cfba9599,$b8bda50f
 DC.L $2802b89e,$5f058808,$c60cd9b2,$b10be924,$2f6f7c87,$58684c11,$c1611dab,$b6662d3d
 DC.L $76dc4190,$01db7106,$98d220bc,$efd5102a,$71b18589,$06b6b51f,$9fbfe4a5,$e8b8d433
 DC.L $7807c9a2,$0f00f934,$9609a88e,$e10e9818,$7f6a0dbb,$086d3d2d,$91646c97,$e6635c01
 DC.L $6b6b51f4,$1c6c6162,$856530d8,$f262004e,$6c0695ed,$1b01a57b,$8208f4c1,$f50fc457
 DC.L $65b0d9c6,$12b7e950,$8bbeb8ea,$fcb9887c,$62dd1ddf,$15da2d49,$8cd37cf3,$fbd44c65
 DC.L $4db26158,$3ab551ce,$a3bc0074,$d4bb30e2,$4adfa541,$3dd895d7,$a4d1c46d,$d3d6f4fb
 DC.L $4369e96a,$346ed9fc,$ad678846,$da60b8d0,$44042d73,$33031de5,$aa0a4c5f,$dd0d7cc9
 DC.L $5005713c,$270241aa,$be0b1010,$c90c2086,$5768b525,$206f85b3,$b966d409,$ce61e49f
 DC.L $5edef90e,$29d9c998,$b0d09822,$c7d7a8b4,$59b33d17,$2eb40d81,$b7bd5c3b,$c0ba6cad
 DC.L $edb88320,$9abfb3b6,$03b6e20c,$74b1d29a,$ead54739,$9dd277af,$04db2615,$73dc1683
 DC.L $e3630b12,$94643b84,$0d6d6a3e,$7a6a5aa8,$e40ecf0b,$9309ff9d,$0a00ae27,$7d079eb1
 DC.L $f00f9344,$8708a3d2,$1e01f268,$6906c2fe,$f762575d,$806567cb,$196c3671,$6e6b06e7
 DC.L $fed41b76,$89d32be0,$10da7a5a,$67dd4acc,$f9b9df6f,$8ebeeff9,$17b7be43,$60b08ed5
 DC.L $d6d6a3e8,$a1d1937e,$38d8c2c4,$4fdff252,$d1bb67f1,$a6bc5767,$3fb506dd,$48b2364b
 DC.L $d80d2bda,$af0a1b4c,$36034af6,$41047a60,$df60efc3,$a867df55,$316e8eef,$4669be79
 DC.L $cb61b38c,$bc66831a,$256fd2a0,$5268e236,$cc0c7795,$bb0b4703,$220216b9,$5505262f
 DC.L $c5ba3bbe,$b2bd0b28,$2bb45a92,$5cb36a04,$c2d7ffa7,$b5d0cf31,$2cd99e8b,$5bdeae1d
 DC.L $9b64c2b0,$ec63f226,$756aa39c,$026d930a,$9c0906a9,$eb0e363f,$72076785,$05005713
 DC.L $95bf4a82,$e2b87a14,$7bb12bae,$0cb61b38,$92d28e9b,$e5d5be0d,$7cdcefb7,$0bdbdf21
 DC.L $86d3d2d4,$f1d4e242,$68ddb3f8,$1fda836e,$81be16cd,$f6b9265b,$6fb077e1,$18b74777
 DC.L $88085ae6,$ff0f6a70,$66063bca,$11010b5c,$8f659eff,$f862ae69,$616bffd3,$166ccf45
 DC.L $a00ae278,$d70dd2ee,$4e048354,$3903b3c2,$a7672661,$d06016f7,$4969474d,$3e6e77db
 DC.L $aed16a4a,$d9d65adc,$40df0b66,$37d83bf0,$a9bcae53,$debb9ec5,$47b2cf7f,$30b5ffe9
 DC.L $bdbdf21c,$cabac28a,$53b39330,$24b4a3a6,$bad03605,$cdd70693,$54de5729,$23d967bf
 DC.L $b3667a2e,$c4614ab8,$5d681b02,$2a6f2b94,$b40bbe37,$c30c8ea1,$5a05df1b,$2d02ef8d


  if arsoft=1
  DC.L SECSTRT_0
  DC.B "AR5_"
BusError:
  TST.B MoveVbr
  BNE.S .1
  MOVE.L  BUS_ERROR+oldVecs,-(A7)
  RTS
.1
  MOVE.L  BUS_ERROR.W,-(A7)
  RTS
AddressError:
  TST.B MoveVbr
  BNE.S .1

  MOVE.L  ADR_ERROR+oldVecs,-(A7)
  RTS

.1
  MOVE.L  ADR_ERROR.W,-(A7)
  RTS
Illegal:
  TST.B MoveVbr
  BNE.S .1

  MOVE.L  ILLEG_OPC+oldVecs,-(A7)
  RTS

.1
  MOVE.L  ILLEG_OPC.W,-(A7)
  RTS

DivZero:
  TST.B MoveVbr
  BNE.S .1

  MOVE.L  DIVISION0+oldVecs,-(A7)
  RTS

.1
  MOVE.L  DIVISION0.W,-(A7)
  RTS

ChkInstruction:
  TST.B MoveVbr
  BNE.S .1

  MOVE.L  CHK+oldVecs,-(A7)
  RTS
.1
  MOVE.L  CHK.W,-(A7)
  RTS

TrapVInstruction:
  TST.B MoveVbr
  BNE.S .1

  MOVE.L  TRAPV+oldVecs,-(A7)
  RTS

.1
  MOVE.L  TRAPV.W,-(A7)
  RTS

PrivViolation:
  TST.B MoveVbr
  BNE.S .1

  MOVE.L  PRIVILEG+oldVecs,-(A7)
  RTS

.1
  MOVE.L  PRIVILEG.W,-(A7)
  RTS

LineAInstruction:
  TST.B MoveVbr
  BNE.S .1

  MOVE.L  LINEA_EMU+oldVecs,-(A7)
  RTS

.1
  MOVE.L  LINEA_EMU.W,-(A7)
  RTS

LineFInstruction:
  TST.B MoveVbr
  BNE.S .1

  MOVE.L  LINEF_EMU+oldVecs,-(A7)
  RTS

.1
  MOVE.L  LINEF_EMU.W,-(A7)
  RTS

TraceException:
  TST.B MoveVbr
  BNE.S .1

  MOVE.L  TRACE+oldVecs,-(A7)
  RTS

.1
  MOVE.L  TRACE.W,-(A7)
  RTS

SpuriousException:
  JSR ArExceptionHandler

  TST.B MoveVbr
  BNE.S .1

  MOVE.L  INT_WRONG+oldVecs,-(A7)
  RTS

.1
  MOVE.L  INT_WRONG.W,-(A7)
  RTS

Level1IntHandler:
  JSR ArExceptionHandler
  TST.B MoveVbr
  BNE.S .1

  MOVE.L  AUTO_INT1+oldVecs,-(A7)
  RTS

.1
  MOVE.L  AUTO_INT1.W,-(A7)
  RTS

Level2IntHandler:
  JSR ArExceptionHandler

  TST.B MoveVbr
  BNE.S .1

  MOVE.L  AUTO_INT2+oldVecs,-(A7)
  RTS

.1
  MOVE.L  AUTO_INT2.W,-(A7)
  RTS

Level3IntHandler:
  JSR ArExceptionHandler
  TST.B MoveVbr
  BNE.S .1

  MOVE.L  AUTO_INT3+oldVecs,-(A7)
  RTS

.1
  MOVE.L  AUTO_INT3.W,-(A7)
  RTS

Level4IntHandler:
  JSR ArExceptionHandler
  TST.B MoveVbr
  BNE.S .1

  MOVE.L  AUTO_INT4+oldVecs,-(A7)
  RTS

.1
  MOVE.L  AUTO_INT4.W,-(A7)
  RTS

Level5IntHandler:
  JSR ArExceptionHandler
  TST.B MoveVbr
  BNE.S .1

  MOVE.L  AUTO_INT5+oldVecs,-(A7)
  RTS

.1
  MOVE.L  AUTO_INT5.W,-(A7)
  RTS

Level6IntHandler:
  JSR ArExceptionHandler

  TST.B MoveVbr
  BNE.S .1

  MOVE.L  AUTO_INT6+oldVecs,-(A7)
  RTS

.1
  MOVE.L  AUTO_INT6.W,-(A7)
  RTS

NMI_SoftEntry:
  JMP Freeze

Trap0Handler:
  TST.B MoveVbr
  BNE.S .1

  MOVE.L  TRAP_00+oldVecs,-(A7)
  RTS

.1
  MOVE.L  TRAP_00.W,-(A7)
  RTS

Trap1Handler:
  TST.B MoveVbr
  BNE.S .1
  MOVE.L  TRAP_01+oldVecs,-(A7)
  RTS
.1
  MOVE.L  TRAP_01.W,-(A7)
  RTS

Trap2Handler:
  TST.B MoveVbr
  BNE.S .1
  MOVE.L  TRAP_02+oldVecs,-(A7)
  RTS
.1
  MOVE.L  TRAP_02.W,-(A7)
  RTS

Trap3Handler:
  TST.B MoveVbr
  BNE.S .1
  MOVE.L  TRAP_03+oldVecs,-(A7)
  RTS
.1
  MOVE.L  TRAP_03.W,-(A7)
  RTS

Trap4Handler:
  TST.B MoveVbr
  BNE.S .1
  MOVE.L  TRAP_04+oldVecs,-(A7)
  RTS
.1
  MOVE.L  TRAP_04.W,-(A7)
  RTS

Trap5Handler:
  TST.B MoveVbr
  BNE.S .1
  MOVE.L  TRAP_05+oldVecs,-(A7)
  RTS
.1
  MOVE.L  TRAP_05.W,-(A7)
  RTS

Trap6Handler:
  TST.B MoveVbr
  BNE.S .1
  MOVE.L  TRAP_06+oldVecs,-(A7)
  RTS
.1
  MOVE.L  TRAP_06.W,-(A7)
  RTS

Trap7Handler:
  TST.B MoveVbr
  BNE.S .1
  MOVE.L  TRAP_07+oldVecs,-(A7)
  RTS
.1
  MOVE.L  TRAP_07.W,-(A7)
  RTS

Trap8Handler:
  TST.B MoveVbr
  BNE.S .1
  MOVE.L  TRAP_08+oldVecs,-(A7)
  RTS
.1
  MOVE.L  TRAP_08.W,-(A7)
  RTS

Trap9Handler:
  TST.B MoveVbr
  BNE.S .1
  MOVE.L  TRAP_09+oldVecs,-(A7)
  RTS
.1
  MOVE.L  TRAP_09.W,-(A7)
  RTS

Trap10Handler:
  TST.B MoveVbr
  BNE.S .1
  MOVE.L  TRAP_10+oldVecs,-(A7)
  RTS
.1
  MOVE.L  TRAP_10.W,-(A7)
  RTS

Trap11Handler:
  TST.B MoveVbr
  BNE.S .1
  MOVE.L  TRAP_11+oldVecs,-(A7)
  RTS
.1
  MOVE.L  TRAP_11.W,-(A7)
  RTS

Trap12Handler:
  TST.B MoveVbr
  BNE.S .1
  MOVE.L  TRAP_12+oldVecs,-(A7)
  RTS
.1
  MOVE.L  TRAP_12.W,-(A7)
  RTS

Trap13Handler:
  TST.B MoveVbr
  BNE.S .1
  MOVE.L  TRAP_13+oldVecs,-(A7)
  RTS
.1
  MOVE.L  TRAP_13.W,-(A7)
  RTS

Trap14Handler:
  TST.B MoveVbr
  BNE.S .1
  MOVE.L  TRAP_14+oldVecs,-(A7)
  RTS
.1
  MOVE.L  TRAP_14.W,-(A7)
  RTS

Trap15Handler:
  TST.B MoveVbr
  BNE.S .1
  MOVE.L  TRAP_15+oldVecs,-(A7)
  RTS
.1
  MOVE.L  TRAP_15.W,-(A7)
  RTS
oldVecs:
  DS.L  $40
OldVbr:
  DS.L  1
  endc
  if rsnoop=1
  ds.b SECSTRT_0+$40000-*-4
  else
  cnop 0,4
  endc
ENDCRC
checksum:
  ;DC.L $1905c6ed ;v0.1
  ;DC.L $507aad91 ; v0.2
  ;DC.L $76DF1216  ;v0.2.1
  ;DC.L $91BC69e6  ;v0.2.2
  ;DC.L $f694b5e4  ;v0.3.0
  ;DC.L $7f54738f  ;v0.3.1
  ;DC.L $1f089d31  ;v0.4.0
  ;DC.L $1cc7ba4e  ;v0.4.1
  ;DC.L $49c1f66a  ;v0.4.2
  ;DC.L $e93aa3a2 ;v0.5.0
  ;DC.L $ea3aa3a2 ;v0.6.0
  ;DC.L $5a46e2fc ;v0.6.1
  ;DC.L $8d559577  ;v0.7.0

  DC.L $37b1bd83 ; v0.8.0

arramstart:
;all of this is used to store chipmem data
;dont move any of it

  ;first 48k of space in AR hardware is actually
  ;only 8 bit so we have to use MOVEP and allow twice
  ;as much space

ChipramSave1:
  ;if arhardware=1
  DS.L  $1F40
  ;else
  ;DS.W  $1F40
  ;endc
ChipRamSave2:
  if arhardware=1
  DS.L  $10C0
  else
  DS.W  $10C0
  endc
mt_sin:
  DS.L  8
mt_periods:
  DS.L  $12
mt_speed:
  DS.B  1
mt_songpos:
  DS.B  1
  even
mt_pattpos:
  DS.W  1
mt_counter:
  DS.B  1
mt_break:
  DS.B  1
  even
mt_dmacon:
  DS.W  1
mt_samplestarts:
  DS.L  $1F
mt_chan1:
  DS.L  7
mt_chan2:
  DS.L  7
mt_chan3:
  DS.L  7
mt_chan4:
  DS.L  7
LAB_A43E52:
  DS.L $129
LAB_A442F6:
  DS.L $1b0
;reserve extra space enough for track buffer
  ds.b mt_sin+$3200+$406-($10c0*2)-*
;chipmem storage area end
  cnop 0,4
DiskBitmap:
  DS.L  $1B
LAB_A44FE2:
  DS.L  $1C
hashTable:
  DS.L  $37
hashTable2:
  DS.L  $37
LAB_A4520A:
  DS.L  $2F
  DS.W  1
LAB_A452C8:
  DS.L  $22
  DS.W  1
LAB_A45352:
  DS.L  $40
LAB_A45452:
  DS.L  $2F

TextPage1:
  DS.L  80*25/4
TextPage2:
  DS.L  80*25/4

currCopper:
  DS.L  1
robdmode:
  DS.B  1
decryptins:
  DS.B  1
  even
cpuAddrSize:
  DS.W  1
vbrflag
  DS.W  1
Save200:
  DS.L  1
EscapeDisabled:
  DS.B  1
IgnoreShift
  DS.B  1
  even
bitplaneCount:
  DS.W  1
diskOpResult2:
  DS.W  1
debuggerMode:
  DS.B  1
debuggerFocus:
  DS.B  1
ChipsetIdValue:
  DS.B  1
  even
dbgMemBase:
  DS.L  1
dbgDisasmBase:
  DS.L  1
dbgSecondLineAddr:
  DS.L  1
repeatCount
  DS.W  1
VgaModeFlag:
  DS.W  1
LAB_A35698:
  DS.W  1
SAVE_CACR:
  DS.L  1
SaveEntryRegs:
  DS.L  $10
SAVE_CIABPRB:
  DS.L  1
  DS.W  1
  DS.B  1
SAVE_CIAAICR:
  DS.B  1
  even
memWatchSlotsUsed1:
  DS.L  1
memWatchSlotsUsed2:
  DS.W  1
deepMemWatch:
  DS.W  1
OldTrace:
  DS.L  1
ignoreExceptions:
  DS.W  1
CopyFmode:
  DS.W  1
CopyDiwHigh:
  DS.W  1
copperPos:
  DS.L  1
;LAB_A489F0:
; DS.W  1
LAB_A489FC:
  DS.W  1
LAB_A489FE:
  DS.L  1
LAB_A48A02:
  DS.L  1
LAB_A48A06:
  DS.W  1
LAB_A48A08:
  DS.L  1
  if arsoft=1
LAB_A48A0C:
  DS.L  $23
  endc

SaveColor:
  DS.B  1
LAB_A4806B:
  DS.B  1
LAB_A4806C:
  DS.B  1
LAB_A4806D:
  DS.B  1
  even
SaveTrap1:
  DS.L  1
SaveTrap2:
  DS.L  1
SaveSR:
  DS.L  1
LAB_A4807A:
  DS.L  1
LAB_A4807E:
  DS.L  $B
LAB_A480AA:
  DS.B  1
LAB_A480AB:
  DS.B  1
  even
LAB_A480AC:
  DS.W  1
bpl1Work:
  DS.L  1
bpl2Work:
  DS.L  1
bpl3Work:
  DS.L  1
bpl4Work:
  DS.L  1
bpl5Work:
  DS.L  1
bpl6Work:
  DS.L  1
bpl7Work:
  DS.L  1
bpl8Work:
  DS.L  1
LAB_A480C6
  DS.L  1
LAB_A480CA:
  DS.B  1
LAB_A480CB:
  DS.B  1
LAB_A480CC:
  DS.B  1
LAB_A480CD:
  DS.B  1
LAB_A480CE:
  DS.B  1
LAB_A480CF:
  DS.B  1
  even
LAB_A480D0:
  DS.W  1
LAB_A480D2:
  DS.L  1
LAB_A480D6:
  DS.B  1
LAB_A480D7:
  DS.B  1
  ;DS.W 1
  even
LAB_A480DA:
  DS.L  1
LAB_A480DE:
  DS.L  1
trainerSearchVal:
  DS.W  1
BreakpointList:
  DS.L  7
  DS.W  1
BreakpointTrapNo:
  DS.W  1
SaveTrap:
  DS.L  1
  ;DS.W 1
SaveDskSync:
  DS.W  1
saveCIAA:
  DS.L  3
  DS.W  1
SAVE_CIAACRA:
  DS.B  1
SAVE_CIAACRB:
  DS.B  1
  DS.L  2
saveCIAB:
  DS.B  1
saveCIAB1:
  DS.B  1
  DS.L  3
SAVE_CIABCRA:
  DS.B  1
SAVE_CIABCRB:
  DS.B  1
  DS.L  3
  DS.W  1
  if rsnoop=1
SaveDskPt:
  DS.L  1
SaveDskLen:
  DS.W 1
  endc
restartFlag:
  DS.W  1
picViewerMode:
  DS.W  1
RemarksData:
  DS.L  $1E
SaveCopJmp:
  DS.W  1
;dont split
LAB_A481C0:
  DS.W  1
LAB_A481C2:
  DS.W  1
;end
;dont split
LAB_A481C4:
  DS.W  1
LAB_A481C6:
  DS.W  1
;end
LAB_A481C8:
  DS.W  1
;dont split
LAB_A481CA:
  DS.W  1
LAB_A481CC:
  DS.L  1
;end
  ;DS.W 1
bronFlag:
  DS.L  1
LAB_A481D6:
  DS.W  1
  ;DS.L 1
LAB_A481DC:
  DS.W  1
LAB_A481DE:
  DS.B  1
LAB_A481DF:
  DS.B  1
  ;unused
  ;DS.B 1
LAB_A481E1:
  DS.B  1
cursorEnabled:
  DS.B  1
LAB_A481E5:
  DS.B  1
  even
VirusCheckerSettingsPrefs:
  DS.W  1
LAB_A481E8:
  DS.W  1
keymap:
  DS.W  1
PrinFlag:
  DS.L  1
memPeekerBitplaneLocks:
  DS.W  1
memPeekerHelpFlag:
  DS.W  1
memPeekHelpX:
  DS.W  1
memPeekHelpY:
  DS.W  1
memPeekerColorReg:
  DS.W  1
memPeekerBlackFlag:
  DS.W  1
memPeekerDdfMode:
  DS.W  1
saveSp:
  DS.L  1
sqInRamdisk:
  DS.W  1
insertmode:
  DS.B  1
LAB_A48205:
  DS.B  1
  even
ArBgCol:
  DS.W  1
ArFgCol:
  DS.W  1
ChipMemEnd:
  DS.L  1
SlowMemEnd:
  DS.L  1
exceptionsActive:
  DS.W  1
breakpointsActive:
  DS.W  1
autofireP1ORP2:
  DS.W  1
newActivateMode:
  DS.B  1
newActivateModeLo:
  DS.B  1
  even
currMouseX:
  DS.W  1
currMouseY:
  DS.W  1
viewingPrefs:
  DS.W  1
P1AutoFirePrefsSetting:
  DS.B  1
P1AutoFireSettingLo:
  DS.B  1
P2AutoFirePrefsSetting:
  DS.B  1
P2AutoFireSettingLo:
  DS.B  1
DrivesConnected:
  DS.B  1
DrivesConnectedLo:
  DS.B  1
DriveControlPrefsValue:
  DS.B  1
DriveControlPrefsValueLo:
  DS.B  1
  even
BootSelectPrefs:
  DS.W  1
LAB_A4822A:
  DS.B  1
LAB_A4822B:
  DS.B  1
memoryControlPrefsValue:
  DS.B  1
memoryControlPrefsValueLo:
  DS.B  1
LAB_A4822E:
  DS.B  1
memConfigFlags:
  DS.B  1
  even
foundSlowMemEnd:
  DS.L  1
foundChipMemEnd:
  DS.L  1
ramDiskMem:
  DS.L  1
LAB_A4823C:
  DS.W  1
LAB_A4823E:
  DS.W  1
LAB_A48240:
  DS.W  1
LAB_A48242:
  DS.W  1
LAB_A48244:
  DS.B  1
LAB_A48245:
  DS.B  1
LAB_A48246:
  DS.B  1
LAB_A48247:
  DS.B  1
currDriveNo:
  DS.B  1
currTrackNo:
  DS.B  1
LAB_A4824A:
  DS.B  1
TrackBufferModified:
  DS.B  1
LAB_A4824C:
  DS.B  1
LAB_A4824D:
  DS.B  1
  even
LAB_A4824E:
  DS.W  1
LAB_A48250:
  DS.L  1
oldTrackPositions:
  DS.L  1
  DS.W  1
mfmSectorAddresses:
  DS.L  $B
  DS.L  1   ;extra sector for PDOS read function
  DS.W  1
DiskCoderFlags:
DiskCoderDf0Flag:
  DS.B  1
DiskCoderDf1Flag:
  DS.B  1
DiskCoderDf2Flag:
  DS.B  1
DiskCoderDf3Flag:
  DS.B  1
DiskCoderDf4Flag:
  DS.B  1
  even
DiskCoderValues:
DiskCoderDf0Value:
  DS.L  1
DiskCoderDf1Value:
  DS.L  1
DiskCoderDf2Value:
  DS.L  1
DiskCoderDf3Value:
  DS.L  1
DiskCoderDf4Value:
  DS.L  1
LAB_A4829A:
  DS.L  1
LAB_A4829E:
  DS.W  1
LAB_A482A0:
  DS.L  $A
LAB_A482C8:
  DS.L  2
LAB_A482D0:
  DS.W  1
LAB_A482D2:
  DS.W  1
PackStart:
  DS.L  1
PackEnd:
  DS.L  1
PackDest:
  DS.L  1
PackRate:
  DS.L  1
UnpackSourceEnd:
  DS.L  1
UnpackDest:
  DS.L  1
printerDumpToggle:
  DS.B  1
PrinterFound:
  DS.B  1
  even
trackerPlaying:
  DS.W  1
LAB_A482F0:
  DS.W  1
ModPointer:
  DS.L  1
ModType:
  DS.W  1
LAB_A482F8:
  DS.L  1
bitmapBlock:
  DS.L  1
saveCurrDriveNo:
  DS.B  1
VerifyFormat:
  DS.B  1
  even
QuickFormat:
  DS.W  1
FilenameLen:
  DS.B  1
FilenameLenLo:
  DS.B  1
  even
SaveFilename:
  DS.L  1
DataBlockSize:
  DS.W  1
LAB_A4830C:
  DS.L  1
currentHeaderBlock:
  DS.L  1
LAB_A48314:
  DS.L  1
dataBLockSequenceNum:
  DS.W  1
LAB_A4831A:
  DS.L  1
fileSize:
  DS.L  1
LAB_A48322:
  DS.L  4
LAB_44F68E:
  DS.W  1
LAB_44F690:
  DS.W  1
scanIncrement:
  DS.W  1
LAB_44F694:
  DS.L  1
LAB_44F698:
  DS.L  1
LAB_A48332:
  DS.B  1
LAB_A48333:
  DS.B  1
LAB_A48334:
  DS.B  1
LAB_A48335:
  DS.B  1
LAB_A48336:
  DS.B  1
virusFound:
  DS.B  1
  even
currentDirBlock:
  DS.L  1
rootBlockLoadedFlags:
;one byte per drive
  DS.L  1
  DS.W  1 ;extra for ramdisk (drive 4)
rootBlockLoadedCrc:
;one long per drive
  DS.L  5 ;extra for ramdisk (drive 4)
LAB_A48350:
  DS.L  1
LAB_A48354:
  DS.L  1
  DS.W  1
LAB_A4835A:
  DS.L  1
LAB_A4835E:
  DS.L  1
LAB_A48362:
  DS.L  2
LAB_A4836A:
  DS.L  1
LAB_A4836E:
  DS.L  1
LAB_A48372:
  DS.L  1
SaveCop1Lch:
  DS.W  1
SaveCop1Lcl:
  DS.W  1
SaveCop2LcCopy:
  DS.L  1
DiskMonBuffer:
  DS.L  1
DiskMonBufferSize:
  DS.L  1
LAB_A48386:
  DS.L  1
LAB_A4838A:
  DS.B  1
LAB_A4838B:
  DS.B  1
TBufferAllocated:
  DS.B  1
LAB_A4838D:
  DS.B  1
LAB_A4838E:
  DS.B  1
LAB_A4838F:
  DS.B  1
BootblockCoderPrefsFlag:
  DS.B  1
LAB_A48391:
  DS.B  1
LAB_A48392:
  DS.B  1
LAB_A48393:
  DS.B  1
LAB_A48394:
  DS.B  1
UnpackFlashy:
  DS.B  1
AutoConfigPrefsFlag:
  DS.B  1
LAB_A48397:
  DS.B  1
  even
NoresPrefsFlag:
  DS.W  1
LAB_A4839A:
  DS.B  1
LAB_A4839B:
  DS.B  1
  even
BootblockCoderValue:
  DS.L  1
LAB_A483A2:
  DS.L  1
LAB_A483A6:
  DS.L  1
LAB_A483AA:
  DS.L  1
LAB_A483AE:
  DS.L  1
LAB_A483B2:
  DS.L  1
LAB_A483B6:
  DS.L  1
LAB_A483BA:
  DS.W  1
LAB_A483BC:
  DS.L  1
LAB_A483C0:
  DS.L  1
LAB_A483C4:
  DS.B  1
MegaStickPrefsFlag:
  DS.B  1
Port1Button1:
  DS.B  1
Port0Button1:
  DS.B  1
AltKey:
  DS.B  1
forceUpper:
  DS.B  1
scrollLock:
  DS.B  1
LAB_A483CB:
  DS.B  1
LAB_A483CC:
  DS.B  1
LAB_A483CD:
  DS.B  1
DeepTrainerActive:
  DS.B  1
MemwatchActive:
  DS.B  1
TestPrefsFlag:
  DS.B  1
LAB_A483D1:
  DS.B  1
viewingPrefsCopy:
  DS.B  1
LAB_A483D3:
  DS.B  1
BlankerPrefsFlag:
  DS.B  1
SaveDiskResidentPrefsFlag:
  DS.B  1
LAB_A483D6:
  DS.B  1
SetmapDPrefsFlag:
  DS.B  1
LAB_A483D8:
  DS.B  1
ExtMemAddPrefsFlag:
  DS.B  1
LAB_A483DA:
  DS.B  1
LAB_A483DB:
  DS.B  1
TraceActive:
  DS.B  1
TraceSkipSubs:
  DS.B  1
  even
LAB_A483DE:
  DS.W  1
LAB_A483E0:
  DS.L  $D
  DS.W  1
LAB_A48416:
  DS.W  1
LAB_A48418:
  DS.L  1
LAB_A4841C:
  DS.W  1
LAB_A4841E:
  DS.W  1
LAB_A48420:
  DS.L  1
MemWatchAddrs:
  DS.L  5
LAB_A48438:
  DS.L  1
BlankerCount:
  DS.W  1
LAB_A4843E:
  DS.L  1
LAB_A48442:
  DS.L  1
LAB_A48446:
  DS.L  1
LAB_A4844A:
  DS.L  1
saveOldDoIo:
  DS.L  1
LAB_A48452:
  DS.L  1
ramDiskMem2:
  DS.L  1
autoConfigMemStart:
  DS.L  1
autoConfigMemEnd:
  DS.L  1
foundAutoConfigMemStart:
  DS.L  1
foundAutoConfigMemEnd:
  DS.L  1
LAB_A4846A:
  DS.L  1
LAB_A4846E:
  DS.L  1
TraceStepCount:
  DS.L  1
LastCmdBuff:
  DS.L  $14
LAB_A484C6:
  DS.L  1
LAB_A484CA:
  DS.L  1
CursorStore:
  DS.L  1
fileExtensionBlock:
  DS.L  1
LAB_A484D6:
  DS.L  1
RegSnoopAddr:
  DS.L  1
BurstNibblerFastStartPrefsFlag:
  DS.B  1
kickstartVersion:
  DS.B  1
FastFileSystemFlag1:
  DS.B  1
FastFileSystemFlag2:
  DS.B  1
copyLockSearch:
  DS.B  1
pdosRead:
  DS.B  1
pdosTrack:
  DS.B  1
mfmRead:
  DS.B  1
sectorRead:
  DS.B  1
byteRead:
  DS.B  1
full64k
  DS.B  1
fullPal
  DS.B  1
  even
newRamdiskAddr
  DS.L  1
trackStartSkip
  DS.L  1
trackMaxByteCount
  DS.L  1
memSaveEnd:
  DS.L  1
pdosKey:
  DS.L  1
mfmSync:
  DS.W  1
mfmLength
  DS.W  1
TextPage1Addr
  DS.L  1
TextPage2Addr
  DS.L  1
;debuginfo1
;  DS.L  1
;debuginfo2
;  DS.W  1
AgaPaletteSave
  DS.L 1
AgaPaletteCopy
  DS.L 1
SaveAgaColor0
  DS.L 1
SaveAgaColor1
  DS.L 1
apiActive
  DS.B 1
apiCall
  DS.B 1
DisableVposWrite
  DS.B 1
LAB_A310FC:
  DS.B  1
RomAvoidFlag:
  DS.B  1
  even
stackSave:
  DS.L 1
seed:
  DS.L 1


  if arsoft=1
  even
AllocedMem
  DC.L 0
LAB_A10019:
  DC.B 0
imode:
  DC.B 3
AllocFail:
  DC.B 0
MoveVbr:
  DC.B 0
ResetProof:
  DC.B 0
IgnoreAllocErr:
  DC.B 0
  endc

  even
stringWorkspace:
  DS.L  $14

;spare space here for more variables

;keydata DS.B 128

  if rsnoop=1
  ds.b SECSTRT_0+$4f000-*
  else
    even
  endc
;  RSSET *
  ;RSSET $4ff000
;RegSnoop:  RS.L  $10
;RegSnoopBltcon0:  RS.W  1
;RegSnoopBltcon1:  RS.L  $F
;RegSnoopDskSync:  RS.W  1
;RegSnoopCop1Lc:  RS.L  1
;RegSnoopCop2Lc:  RS.L  7
;RegSnoopAud0Lc:  RS.L  $10
;RegSnoopBpl1Pt:  RS.L  9
;RegSnoopBplCon2:  RS.W  1
;RegSnoopBplCon3:  RS.W  1
;RegSnoopBpl1Mod:  RS.W  1
;RegSnoopBpl2Mod:  RS.W  1
;RegSnoopBplCon4:  RS.L  5
;RegSnoopColor00:  RS.L 8
;  ;DC.L  $00000fff,$0eee0ddd,$0ccc0bbb,$0aaa0999
;  ;DC.L  $08880777,$06660555,$04440333,$02220111
;RegSnoopColor17:  RS.L  1
;RegSnoopColor19:  RS.L  $16
;  RS.W  1
;  RS.W  1

  ;reserve regsnoop area
RegSnoop
  DS.W $100


SaveDmaCon:
  DS.B  1
SaveDmaCon1:
  DS.B  1
SaveIntena:
  DS.W  1
SaveIntreq:
  DS.B  1
SaveIntReq1:
  DS.B  1
SaveAdkcon:
  DS.W  1
SaveCpuRegs:
  DS.L  8
SaveCpuRegs2:
  DS.L  7
SaveCpuA7:
  DS.L  1
SaveOldPc:
  DS.L  1
SaveOldSr:
  DS.W  1
SaveBplCon0:
  DS.W  1
SaveBplCon1:
  DS.W  1
SaveBplCon2:
  DS.W  1
SaveBplCon3:
  DS.W  1
SaveBplCon4:
  DS.W  1
SaveBeamCon0:
  DS.W  1
SaveFmode:
  DS.W  1
SaveBpl1Mod:
  DS.W  1
SaveBpl2Mod:
  DS.W  1
SaveColor00:
  DS.W  1
SaveColor01:
  DS.W  1
SaveDiwStart:
  DS.W  1
SaveDiwStop:
  DS.W  1
SaveDiwHigh:
  DS.W  1
SaveDdfStrt:
  DS.W  1
SaveDdfStop:
  DS.W  1
SaveBpl1Pth:
  DS.W  1
SaveBpl1Ptl:
  DS.W  1
SaveBltCon0:
  DS.W  1
SaveBltCon1:
  DS.W  1
SaveBltAfwm:
  DS.W  1
SaveBtlAlwm:
  DS.W  1
SaveBltCPth:
  DS.W  1
SaveBltCptl:
  DS.W  1
SaveBltBPth:
  DS.W  1
SaveBltBPtl:
  DS.W  1
SaveBltAPth:
  DS.W  1
SaveBltAPtl:
  DS.W  1
SaveBltDPth:
  DS.W  1
SaveBltDPtl:
  DS.W  1
SaveBltCMod:
  DS.W  1
SaveBltBMod:
  DS.W  1
SaveBltAMod:
  DS.W  1
SaveBltDMod:
  DS.W  1
SaveBltCDat:
  DS.W  1
SaveBltBDat:
  DS.W  1
SaveBltADat:
  DS.W  1
SaveBltSize:
  DS.W  1
Int2Save:
  DS.L  1
Int3Save:
  DS.L  1
RawKeyCode:
  DS.B  1
RawKeyCodeLo:
  DS.B  1
cursorX:
  DS.B  1
cursorXLo:
  DS.B  1
cursorY:
  DS.B  1
cursorYLo:
  DS.B  1
  even
PageHeight:
  DS.W 1
KeyCode:
  DS.B  1
KeyCodeLo:
  DS.B  1
ShiftKey:
  DS.B  1
EscapePressed:
  DS.B  1
  even
CurrentPage:
  DS.L  1
keyRepeat:
  DS.W  1
LAB_A47F3E:
  DS.W  1
LAB_A47F40:
  DS.W  1
flashLedOnKey:
  DS.W  1
ParamFound:
  DS.L  1
cmdSpacesSkipped:
  DS.B  1
endOfCmdString:
  DS.B  1
  even
lowestMem:
  DS.L  1
highestMem:
  DS.L  1
invalidMemAddr:
  DS.W  1
trainerModeActive:
  DS.W  1
trainerContinueAddress:
  DS.L  1
trainerWorkspacePtr:
  DS.L  1
AronFlag:
  DS.L  1
binaryBitWidth:
  DS.W  1
asciiDumpOffset:
  DS.B  1
AsciiDumpOffset1:
  DS.B  1
  even
LAB_A47FB6:
  DS.W  1
LAB_A47FB8:
  DS.W  1
LAB_A47FBA:
  DS.W  1
LAB_A47FBC:
  DS.W  1
LAB_A47FBE:
  DS.W  1
LAB_A47FC0:
  DS.L  1
LAB_A47FC4:
  DS.L  1
  DS.L  1
LAB_A47FCC:
  DS.W  1
LAB_A47FCE:
  DS.W  1
LAB_A47FD0:
  DS.W  1
LAB_A47FD2:
  DS.L  1
LAB_A47FD6:
  DS.L  1
  DS.L  1
BranchInstructionType:
  DS.W  1
  DS.L  8
DefaultAddress:
  DS.L  1
SAVE_VPOS:
  DS.L  1
  DS.L  1
tempD0:
  DS.L  1
tempD1:
  DS.L  1
CopyCop1lc:
  DS.L  1
CopyCop2lc:
  DS.L  1
CopyDiwStart:
  DS.B  1
CopyDiwStartLo:
  DS.B  1
CopyDiwStop:
  DS.B  1
CopyDiwStopLo:
  DS.B  1
CopyDdfStrt:
  DS.B  1
CopyDdfStrtLo:
  DS.B  1
CopyDdfStop:
  DS.B  1
CopyDdfStopLo:
  DS.B  1
  even
CopyBpl1Pth:
  DS.L  1
CopyBpl2Pth:
  DS.L  1
CopyBpl3Pth:
  DS.L  1
CopyBpl4Pth:
  DS.L  1
CopyBpl5Pth:
  DS.L  1
CopyBpl6Pth:
  DS.L  1
CopyBpl7Pth:
  DS.L  1
CopyBpl8Pth:
  DS.L  1
;these must be kept in this order
CopyBplCon0:
  DC.B  $10
CopyBplCon0Lo:
  DS.B  1
CopyBplCon1:
  DS.B  1
CopyBplCon1Lo:
  DS.B  1
  even
CopyBplCon2:
  DS.W  1
CopyBplCon3:
  DS.W  1
CopyBplMod1:
  DS.W  1
CopyBplMod2:
  DS.W  1
CopyBplCon4:
  DS.W  1
;until here
CopyBeamCon0:
  DS.W  1
CopySpr0Pt:
  DS.L  8
Copyclxcon:
  DS.W  1

LAB_A4550E:
  DS.L  $212

StackStart:
  DS.L  $fe
  ;safety check
  if arsoft=1
  DS.L  $100
  else
  ds.b arramstart+$10000-*
  endc
StackEnd:
dataend:

  END
