
ILLEG_OPC EQU $10

MaxLocMem EQU 62
MemList equ 322
_LVOWaitPort  EQU -$180
_LVORead  EQU -$2A
_LVOGetMsg  EQU -$174
_LVOCloseLibrary  EQU -$19E
_LVOOpen  EQU -$1e
_LVOClose EQU -$24
_LVOCloseWindow EQU -$48
_LVOOpenWindow EQU -$CC
_LVOSetAPen EQU -$156
_LVOWrite EQU -$30
_LVOMove  EQU -$F0
_LVODraw  EQU -$F6
_LVOOpenLibrary EQU -$228
_LVOCloseScreen EQU -$42
_LVOReplyMsg  EQU -$17A
_LVORefreshGadgets  EQU -$DE
_LVOFindTask  EQU -$126
_LVOLoadView  EQU -$DE
_LVOWaitTOF   EQU -$10E
_LVOUserState EQU -156
_LVOSuperState  EQU -150

_LVOOffGadget EQU -$AE
_LVOOnGadget EQU -$BA
_LVOLockPubScreen EQU -$1FE
_LVOUnlockPubScreen EQU -$204
_LVOPrintIText EQU -$D8

GadgetsRow1Top EQU $3d
GadgetsRow2Top EQU $4d
GadgetsRow3Top EQU $5d
GadgetsRow4Top EQU $6d
GadgetsRow5Top EQU $8d

GTYP_BOOLGADGET   EQU 1
GTYP_STRGADGET    EQU 4

GACT_RELVERIFY    EQU 1
GACT_IMMEDIATE    EQU 2
GACT_TOGGLESELECT EQU $100

GFLG_GADGIMAGE    EQU 4
GFLG_GADGHIMAGE   EQU 2

;imode, romAvoid, vgaMode, IgnoreAlloc,
;insert mode, move vbr, reset proof, keymap

****************************************************************************
  SECTION main,CODE

  MOVEM.L D0-D7/A0-A3/A5/A6,-(SP)
  MOVE.L  A0,cmdline.L
  SUBA.L  A1,A1
  MOVEA.L 4.W,A6
  JSR _LVOFindTask(A6)
  MOVEA.L D0,A4
  TST.L $AC(A4)
  BNE.S lbC00004A
  LEA $5C(A4),A0
  MOVEA.L 4.W,A6
  JSR _LVOWaitPort(A6)
  JSR _LVOGetMsg(A6)
lbC00004A LEA doslibrary.MSG(PC),A1
  MOVEQ #0,D0
  MOVEA.L 4.W,A6
  JSR _LVOOpenLibrary(A6)
  LEA dosbase(PC),A1
  MOVE.L  D0,(A1)
  BNE.S main
  MOVEM.L (SP)+,D0-D7/A0-A3/A5/A6
  MOVEQ #0,D0
  RTS

doslibrary.MSG  dc.b  'dos.library',0
dosbase dc.l  0
cmdline dc.l  0
  dc.b  '$VER: ar5loader 1.0.0-04042025',0
  even
main MOVEA.L 4.L,A6
  SUBA.L  A1,A1
  JSR _LVOFindTask(A6)
  MOVE.L  D0,myTask.L
  MOVEA.L 4.W,A6
  ;CMPI.W  #$27,$14(A6)
  ;BCS.W done
  BSR UpdateStatus
  BSR.W loadConfig
  TST.W lbW0005AA.L
  BMI.S lbC0000FA
  MOVEA.L cmdline(PC),A0
  CMPI.B  #$3F,(A0)
  BEQ.S lbC0000FA
  BSR.W loadAR
  BRA.W done

lbC0000FA BSR.W openLibs
  BSR.W drawGadgetBoxes
  BSR.W updateCycleValues
  BSR.W openMainWindow
  BSR.W printStatusText
  MOVEQ #0,D0
  MOVE.W topbordersize,D0
  ADD.W #4,D0
  MOVE.L #54,D1
  SUB.W D0,D1
  MOVE.L  D1,-(SP)
  MOVE.L  #$256,-(SP)
  MOVE.L D0,-(SP)
  MOVE.L  #13,-(SP)
  MOVE.L  window.L,-(SP)
  JSR drawBevel.L
  LEA $14(SP),SP
messageLoop MOVEA.L 4.L,A6
  MOVEA.L window(PC),A0
  MOVEA.L $56(A0),A0
  JSR _LVOWaitPort(A6)
  TST.L D0
  BEQ.S messageLoop
  MOVEA.L 4.L,A6
  MOVEA.L window(PC),A0
  MOVEA.L $56(A0),A0
  JSR _LVOGetMsg(A6)
  TST.L D0
  BEQ.W messageLoop
  MOVEA.L D0,A0
  MOVE.L  $14(A0),D6
  MOVEQ #0,D7
  MOVE.W  $18(A0),D7
  MOVE.L  $1C(A0),D5
  MOVEA.L D0,A1
  JSR _LVOReplyMsg(A6)
  CMP.L #$400000,D6
  BEQ .tick
  BTST  #9,D6
  BNE.S shutdown
  MOVEA.L D5,A0
  MOVEQ #0,D5
  MOVE.W  $26(A0),D5
  SUBQ.L  #1,D5
  LEA gadgetActions(PC),A0
  LSL.L #2,D5
  MOVEA.L 0(A0,D5.L),A0
  JSR (A0)      ;message handler

.tick
  BSR UpdateStatus
  BSR.W printStatusText

  TST.B running.L
  BMI.W messageLoop
shutdown BSR.W closeMainWindow
  BSR.W closeLibs
done MOVEM.L (SP)+,D0-D7/A0-A3/A5/A6
  MOVEQ #0,D0
  RTS

running dc.b  $FF

  even
status1itext  dc.b  1,0 ;frontpen,backpen
  dc.b  1,0 ;drawmode,pad
  dc.w  4,2
  dc.l  defTextAttr
  dc.l  status1text
  dc.l  status2itext
status1text
    dc.b  'Status: '
stat:
  dc.b  'Not Installed',0

  even
status2itext  dc.b  1,0 ;frontpen,backpen
  dc.b  1,0 ;drawmode,pad
  dc.w  4,12
  dc.l  defTextAttr
  dc.l  status2text
  dc.l  0

status2text
  dc.b  'Address: '
addr:
  dc.b  'N/A      ',0
myTask  dc.l 0

openLibs  MOVEA.L 4.L,A6
  LEA doslibrary.MSG0(PC),A1
  MOVEQ #33,D0
  JSR _LVOOpenLibrary(A6)
  MOVE.L  D0,dosbase2.L
  MOVEA.L 4.L,A6
  LEA intuitionlibr.MSG(PC),A1
  MOVEQ #33,D0
  JSR _LVOOpenLibrary(A6)
  MOVE.L  D0,intuibase.L
  MOVEA.L 4.L,A6
  LEA graphicslibra.MSG(PC),A1
  MOVEQ #33,D0
  JSR _LVOOpenLibrary(A6)
  MOVE.L  D0,gfxbase.L
  MOVEA.L 4.L,A6
  RTS

dosbase2  dc.l  0
doslibrary.MSG0 dc.b  'dos.library',0
intuibase dc.l  0
intuitionlibr.MSG dc.b  'intuition.library',0
gfxbase dc.l  0
graphicslibra.MSG dc.b  'graphics.library',0,0

closeLibs MOVEA.L 4.L,A6
  TST.L dosbase2.L
  BEQ.S lbC0004D0
  MOVEA.L dosbase2(PC),A1
  JSR _LVOCloseLibrary(A6)
lbC0004D0 MOVEA.L 4.L,A6
  TST.L intuibase.L
  BEQ.S lbC0004E6
  MOVEA.L intuibase(PC),A1
  JSR _LVOCloseLibrary(A6)
lbC0004E6 MOVEA.L 4.L,A6
  TST.L gfxbase.L
  BEQ.S lbC0004FC
  MOVEA.L gfxbase(PC),A1
  JSR _LVOCloseLibrary(A6)
lbC0004FC
  RTS

loadConfig  MOVEA.L dosbase(PC),A6
  MOVE.L #cfgname,D1
  MOVE.L #1005,D2
  JSR _LVOOpen(a6)
  MOVE.L D0,optionsfh
  BEQ.S lbC00053C
  
  MOVE.L  optionsfh(PC),D1
  MOVE.L  #optionsstart,D2
  MOVE.L  #optionsend-optionsstart,D3
  JSR _LVORead(A6)

  MOVE.L  optionsfh(PC),D1
  JSR _LVOClose(A6)

lbC00053C LEA installAddr(PC),A5

  ;imode
  MOVEQ #0,D0
  MOVE.B 7(A5),D0
  AND.B #$F,D0
  MOVE.L  D0,imodeValue.L

  ;keymap
  MOVEQ #0,D0
  MOVE.B 7(A5),D0
  LSR.B #4,D0
  MOVE.L  D0,keymapValue.L

  ;romavoid
  MOVE.B 6(A5),D0
  AND.B #1,D0
  SNE D0
  MOVEA.L #romAvoidGadget,A0
  BSR.W setGadgetCheckStatus
  
  ;vgamode
  MOVE.B 6(A5),D0
  AND.B #2,D0
  SNE D0
  MOVEA.L #vgaGadget,A0
  BSR.W setGadgetCheckStatus

  ;ignorealloc
  MOVE.B 6(A5),D0
  AND.B #4,D0
  SNE D0
  MOVEA.L #ignoreMemAllocGadget,A0
  BSR.W setGadgetCheckStatus
  
  ;insert mode
  MOVE.B 6(A5),D0
  AND.B #8,D0
  SNE D0
  MOVEA.L #InsertmodeGadget,A0
  BSR.W setGadgetCheckStatus

  ;move vbr
  MOVE.B 6(A5),D0
  AND.B #16,D0
  SNE D0
  MOVEA.L #VbrmoveGadget,A0
  BSR.W setGadgetCheckStatus
  
  ;reset proof
  MOVE.B 6(A5),D0
  AND.B #32,D0
  SNE D0
  MOVEA.L #ResetProofGadget,A0
  BSR.W setGadgetCheckStatus

  ;disable vpos write
  MOVE.B 6(A5),D0
  AND.B #64,D0
  SNE D0
  MOVEA.L #DisableVposGadget,A0
  BSR.W setGadgetCheckStatus

  ;custom address
  MOVE.B 6(A5),D0
  AND.B #128,D0
  SNE D0
  MOVE.L #customAddrGadget,A0
  BSR.W setGadgetCheckStatus

  TST.L installAddr
  BNE.S .1
  
  JSR GetDefInstallAddr
  MOVE.L  D0,installAddr
.1
  BSR UpdateEnabledGads

  LEA lbW00B7C0.L,A0
  LEA ABCDEF.MSG(PC),A1
  MOVE.L  (A5),D0
  MOVEQ #7,D1
  MOVEQ #0,D2
lbC000550 MOVE.B  D0,D2
  ANDI.B  #15,D2
  MOVE.B  0(A1,D2.W),-(A0)
  ROR.L #4,D0
  DBRA  D1,lbC000550
  RTS

UpdateEnabledGads:
  TST.W vbrflag
  BNE.S .v

  MOVE.L #VbrmoveGadget,A0
  LEA 12(a0),A0;flags
  MOVE.W (a0),D1
  OR.W #$100,D1 ;set disabled
  AND.W #$FF7F,D1 ; clear checked
  MOVE.W D1,(a0)
  
  ;disable vbrmove
  AND.W #$FFEF,installAddr+6
  
  
.v
  MOVE.L #customAddrGadget,A0
  LEA 12(a0),A0;flags
  MOVE.W (a0),D0
  AND.W #$80,D0
  SNE D0
  EXT.W D0
  
  MOVE.L #installAddrLabelGadget2,A0

  TST.L intuibase
  BNE.S .1

  LEA 12(a0),A0;flags
  MOVE.W (a0),D1
  AND.W #$100,D0
  EOR.W #$100,D0
  AND.W #$FEFF,D1
  OR.W D0,D1
  MOVE.W D1,(a0)
  RTS

.1  
  MOVEA.L intuibase(PC),A6
  MOVEA.L window(PC),A1
  SUBA.L  A2,A2
  TST.B D0
  BEQ.S .2
  JSR _LVOOnGadget(A6)
  RTS

.2 
  JSR _LVOOffGadget(A6)
  RTS

cfgname  DC.B 'ar.cfg',0
ABCDEF.MSG  dc.b  '0123456789ABCDEF'
  even
optionsstart
installAddr dc.l  0
installoptions  dc.l  0
optionsend
lbW0005AA dc.w  $FFFF

setGadgetCheckStatus  TST.L D0
  BEQ.S lbC0005BA
  BSET  #7,13(A0)
  RTS

lbC0005BA BCLR  #7,13(A0)
  RTS

getGadgetCheckedStatus  MOVEQ #0,D0
  MOVE.B  13(A0),D0
  LSR.B #7,D0
  SNE D0
  RTS

updateGadStatus LEA installAddr(PC),A5
  MOVE.L  keymapValue(PC),D0
  LSL.L #4,D0
  OR.L  imodeValue(PC),D0
  MOVE.B D0,7(A5)
  
  MOVEQ #0,D1
  MOVEA.L #romAvoidGadget,A0
  BSR.S getGadgetCheckedStatus
  AND.B #1,D0
  OR.B D0,D1

  MOVEA.L #vgaGadget,A0
  BSR.W getGadgetCheckedStatus
  AND.B #2,D0
  OR.B D0,D1

  MOVEA.L #ignoreMemAllocGadget,A0
  BSR.W getGadgetCheckedStatus
  AND.B #4,D0
  OR.B D0,D1

  MOVEA.L #InsertmodeGadget,A0
  BSR.W getGadgetCheckedStatus
  AND.B #8,D0
  OR.B D0,D1

  MOVEA.L #VbrmoveGadget,A0
  BSR.W getGadgetCheckedStatus
  AND.B #16,D0
  OR.B D0,D1

  MOVEA.L #ResetProofGadget,A0
  BSR.W getGadgetCheckedStatus
  AND.B #32,D0
  OR.B D0,D1

  MOVEA.L #DisableVposGadget,A0
  BSR.W getGadgetCheckedStatus
  AND.B #64,D0
  OR.B D0,D1

  MOVEA.L #customAddrGadget,A0
  BSR.W getGadgetCheckedStatus
  AND.B #128,D0
  OR.B D0,D1

  MOVE.B  D1,6(A5)

  CLR.L (A5)  ;clear install addr

  TST.B D0  ;custom address
  BEQ.W defaddr

  LEA ascii.MSG.L,A0
  MOVEQ #0,D0
  MOVEQ #7,D1
lbC0005DA MOVE.B  (A0)+,D2
  BEQ.S lbC000614
  CMPI.B  #$61,D2
  BCS.S lbC0005EE
  CMPI.B  #$7A,D2
  BHI.S lbC0005EE
  SUBI.B  #$20,D2
lbC0005EE SUBI.B  #$30,D2
  BMI.W lbC00064C
  CMPI.B  #10,D2
  BCS.W lbC00060C
  SUBI.B  #$11,D2
  BMI.W lbC00064C
  CMPI.B  #5,D2
  BHI.W lbC00064C
  ADDI.B  #10,D2
lbC00060C ROL.L #4,D0
  OR.B  D2,D0
  DBRA  D1,lbC0005DA
lbC000614 MOVE.L  D0,(A5)

defaddr
  MOVE.W  #0,8(A5)
  RTS

lbC00064C BRA.W lbC00053C

defTextAttr dc.l  topazfont.MSG ;font name
  dc.w  8   ;height
  dc.w  0   ;style
  dc.w  8   ;flags
topazfont.MSG dc.b  'topaz.font',0,0

openMainWindow

  CLR.L D7
  MOVEA.L 4.W,A6
  CMPI.W  #$27,$14(A6)
  BCS.W .s1

  MOVEA.L intuibase(PC),A6
  SUB.L A0,A0
  CLR.L D7 
  JSR _LVOLockPubScreen(A6)
  MOVE.L D0,D7

.s1  
  MOVEA.L intuibase(PC),A6
  LEA newwindow(PC),A0
  SUBA.L  A1,A1
  JSR _LVOOpenWindow(A6)
  MOVE.L  D0,window.L
  
  TST.L D7
  BEQ.S .1

  SUB.L A0,A0
  MOVE.L D7,A1

  MOVEQ #0,D7
  MOVE.B 35(A1),D7    ;wbortop
  MOVE.L 40(A1),A2    ;font
  ADD.W 4(A2),D7      ;font size
  MOVE.W D7,topbordersize
  JSR _LVOUnlockPubScreen(A6)

.1
  RTS

window  dc.l  0
topbordersize dc.w 14

newwindow dc.w  4,34  ;leftedge, topedge
  dc.w  $270,$A0    ;width, height
  dc.b  1,2         ;detailpen, blockpen
  dc.l  $400266     ;idcmp
  dc.l  $0001300E   ;flags  WFLG_RMBTRAP+WFLG_WINDOWACTIVE+WFLG_ACTIVATE+WFLG_CLOSEGADGET+WFLG_DEPTHGADGET+WFLG_DRAGBAR
  dc.l  installGadget ;gadgets
  dc.l  0             ;checkmark
  dc.l  Ar5Title0     ;window title
  dc.l  0             ;screen
  dc.l  0             ;bitmap
  dc.w  $280          ;minwidth
  dc.w  $C8           ;minheight
  dc.w  $280          ;maxwidth
  dc.w  $C8           ;maxheight
  dc.w  1            ;type (workbench)
Ar5Title0 dc.b  'Action Replay 5 Loader',0

closeMainWindow TST.L window.L
  BEQ.W lbC0007C0
  MOVEA.L intuibase(PC),A6
  MOVEA.L window(PC),A0
  CLR.L D0
  JSR _LVOCloseWindow(A6)
lbC0007C0 RTS

drawBevel MOVEM.L D0-D7/A0-A6,-(SP)
  MOVEA.L gfxbase(PC),A6
  MOVEA.L $40(SP),A0
  MOVEA.L $32(A0),A1
  MOVEQ #1,D0
  JSR _LVOSetAPen(A6)
  MOVE.L  $44(SP),D2
  MOVE.L  $48(SP),D3
  SUBQ.L  #2,D2
  SUBQ.L  #1,D3
  MOVE.L  D2,D0
  MOVE.L  D3,D1
  JSR _LVOMove(A6)
  ADD.L $50(SP),D3
  ADDQ.L  #1,D3
  MOVE.L  D2,D0
  MOVE.L  D3,D1
  JSR _LVODraw(A6)
  ADDQ.L  #1,D2
  SUBQ.L  #1,D3
  MOVE.L  D2,D0
  MOVE.L  D3,D1
  JSR _LVODraw(A6)
  SUB.L $50(SP),D3
  MOVE.L  D2,D0
  MOVE.L  D3,D1
  JSR _LVODraw(A6)
  ADD.L $4C(SP),D2
  MOVE.L  D2,D0
  MOVE.L  D3,D1
  JSR _LVODraw(A6)
  MOVEQ #2,D0
  JSR _LVOSetAPen(A6)
  ADDQ.L  #1,D2
  ADD.L $50(SP),D3
  ADDQ.L  #1,D3
  MOVE.L  D2,D0
  MOVE.L  D3,D1
  JSR _LVOMove(A6)
  SUB.L $50(SP),D3
  SUBQ.L  #1,D3
  MOVE.L  D2,D0
  MOVE.L  D3,D1
  JSR _LVODraw(A6)
  SUBQ.L  #1,D2
  ADDQ.L  #1,D3
  MOVE.L  D2,D0
  MOVE.L  D3,D1
  JSR _LVODraw(A6)
  ADD.L $50(SP),D3
  MOVE.L  D2,D0
  MOVE.L  D3,D1
  JSR _LVODraw(A6)
  SUB.L $4C(SP),D2
  MOVE.L  D2,D0
  MOVE.L  D3,D1
  JSR _LVODraw(A6)
  MOVEM.L (SP)+,D0-D7/A0-A6
  RTS

drawGadgetBoxes LEA borderGadgets(PC),A0
lbC0008B0 TST.L (A0)
  BEQ.W lbC000A7C
  MOVEA.L (A0)+,A1
  MOVEA.L $12(A1),A2
  MOVEA.L 10(A2),A3
  MOVEQ #0,D0
  MOVE.W  4(A2),D0
  LSR.W #3,D0
  MOVEA.L A3,A4
  MOVE.W  6(A2),D1
  SUBQ.W  #2,D1
  ORI.B #1,-1(A4,D0.W)
  ADDA.L  D0,A4
  MOVEM.W D0,-(SP)
  MOVE.W  A4,D0
  BTST  #0,D0
  BEQ.S lbC0008E6
  ADDQ.L  #1,A4
lbC0008E6 MOVEM.W (SP)+,D0
lbC0008EA ORI.B #3,-1(A4,D0.W)
  ADDA.L  D0,A4
  MOVEM.W D0,-(SP)
  MOVE.W  A4,D0
  BTST  #0,D0
  BEQ.S lbC000900
  ADDQ.L  #1,A4
lbC000900 MOVEM.W (SP)+,D0
  SUBQ.W  #1,D1
  BNE.S lbC0008EA
  MOVE.W  D0,D1
lbC00090A ORI.B #$FF,-1(A4,D1.W)
  SUBQ.W  #1,D1
  BNE.S lbC00090A
  ANDI.B  #$7F,(A4)
  BTST  #0,D0
  BEQ.S lbC000920
  ADDQ.L  #1,D0
lbC000920 MULU.W  6(A2),D0
  ADDA.L  D0,A3
  MOVEQ #0,D0
  MOVE.W  4(A2),D0
  LSR.W #3,D0
  MOVE.W  D0,D1
lbC000930 ORI.B #$FF,-1(A3,D1.W)
  SUBQ.W  #1,D1
  BNE.S lbC000930
  ADDA.L  D0,A3
  ANDI.B  #$FE,-1(A3)
  MOVEM.W D0,-(SP)
  MOVE.W  A3,D0
  BTST  #0,D0
  BEQ.S lbC000950
  ADDQ.L  #1,A3
lbC000950 MOVEM.W (SP)+,D0
  MOVE.W  6(A2),D1
  SUBQ.W  #2,D1
lbC00095A ORI.B #$C0,(A3)
  ADDA.L  D0,A3
  MOVEM.W D0,-(SP)
  MOVE.W  A3,D0
  BTST  #0,D0
  BEQ.S lbC00096E
  ADDQ.L  #1,A3
lbC00096E MOVEM.W (SP)+,D0
  SUBQ.W  #1,D1
  BNE.S lbC00095A
  ORI.B #$80,(A3)
  MOVEA.L $16(A1),A2
  MOVEA.L 10(A2),A3
  MOVEQ #0,D0
  MOVE.W  4(A2),D0
  LSR.W #3,D0
  MOVE.L  D0,D2
  BTST  #0,D2
  BEQ.S lbC000994
  ADDQ.L  #1,D2
lbC000994 MOVE.W  6(A2),D1
  SUBQ.W  #2,D1
  MULU.W  D2,D1
  MOVEA.L A3,A4
  ADDA.L  D2,A4
lbC0009A0 MOVE.B  #$FF,(A4)+
  SUBQ.W  #1,D1
  BNE.S lbC0009A0
  MOVEA.L A3,A4
  MOVE.W  D0,D1
lbC0009AC ORI.B #$FF,-1(A4,D1.W)
  SUBQ.W  #1,D1
  BNE.S lbC0009AC
  ADDA.L  D0,A4
  ANDI.B  #$FE,-1(A4)
  MOVEM.W D0,-(SP)
  MOVE.W  A4,D0
  BTST  #0,D0
  BEQ.S lbC0009CC
  ADDQ.L  #1,A4
lbC0009CC MOVEM.W (SP)+,D0
  MOVE.W  6(A2),D1
  SUBQ.W  #2,D1
lbC0009D6 ANDI.B  #$FC,-1(A4,D0.W)
  ADDA.L  D0,A4
  MOVEM.W D0,-(SP)
  MOVE.W  A4,D0
  BTST  #0,D0
  BEQ.S lbC0009EC
  ADDQ.L  #1,A4
lbC0009EC MOVEM.W (SP)+,D0
  SUBQ.W  #1,D1
  BNE.S lbC0009D6
  ORI.B #$80,(A4)
  BTST  #0,D0
  BEQ.S lbC000A00
  ADDQ.L  #1,D0
lbC000A00 MULU.W  6(A2),D0
  ADDA.L  D0,A3
  MOVEQ #0,D0
  MOVE.W  4(A2),D0
  LSR.W #3,D0
  MOVE.W  6(A2),D1
  SUBQ.W  #2,D1
  MOVE.L  D0,D2
  BTST  #0,D2
  BEQ.S lbC000A1E
  ADDQ.L  #1,D2
lbC000A1E MULU.W  D2,D1
  MOVEA.L A3,A4
  ADDA.L  D2,A4
lbC000A24 MOVE.B  #$FF,(A4)+
  SUBQ.W  #1,D1
  BNE.S lbC000A24
  MOVE.W  6(A2),D1
  SUBQ.W  #2,D1
  ORI.B #1,-1(A3,D0.W)
  ADDA.L  D0,A3
  MOVEM.W D0,-(SP)
  MOVE.W  A3,D0
  BTST  #0,D0
  BEQ.S lbC000A48
  ADDQ.L  #1,A3
lbC000A48 MOVEM.W (SP)+,D0
lbC000A4C ANDI.B  #$3F,(A3)
  ADDA.L  D0,A3
  MOVEM.W D0,-(SP)
  MOVE.W  A3,D0
  BTST  #0,D0
  BEQ.S lbC000A60
  ADDQ.L  #1,A3
lbC000A60 MOVEM.W (SP)+,D0
  SUBQ.W  #1,D1
  BNE.S lbC000A4C
  MOVE.W  D0,D1
lbC000A6A ORI.B #$FF,-1(A3,D1.W)
  SUBQ.W  #1,D1
  BNE.S lbC000A6A
  ANDI.B  #$7F,(A3)
  BRA.W lbC0008B0

lbC000A7C RTS

borderGadgets dc.l  installGadget
  dc.l  saveGadget
  dc.l  quitGadget
  dc.l  uninstallGadget
  dc.l  imodeGadget
  dc.l  keymapGadget
  dc.l  0

updateCycleValues LEA cycleGadgets(PC),A0
lbC000A9A TST.L (A0)
  BEQ.S lbC000AB6
  MOVEM.L (A0)+,A1/A2
  MOVEA.L (A2),A3
  MOVE.L  (A3),D0
  LSL.L #2,D0
  ADDQ.L  #8,A2
  MOVEA.L $1A(A1),A1
  MOVE.L  0(A2,D0.L),12(A1)
  BRA.S lbC000A9A

lbC000AB6 RTS

cycleGadgets dc.l  imodeGadget
  dc.l  imodeGadgetValues
  dc.l  keymapGadget
  dc.l  keymapValues
  dc.l  0

refreshCycleGad MOVEA.L 4(SP),A0
  MOVEA.L 8(SP),A1
  MOVEA.L (A1),A2
  MOVE.L  (A2),D0
  ADDQ.L  #1,D0
  CMP.L 4(A1),D0
  BCS.S lbC000ADA
  MOVEQ #0,D0
lbC000ADA MOVE.L  D0,(A2)
  LSL.L #2,D0
  ADDQ.L  #8,A1
  MOVEA.L $1A(A0),A0
  MOVE.L  0(A1,D0.L),12(A0)
  MOVEA.L intuibase(PC),A6
  MOVEA.L 4(SP),A0
  MOVEA.L window(PC),A1
  SUBA.L  A2,A2
  JSR _LVORefreshGadgets(A6)
  RTS

UpdateStatus:
  MOVEA.L 4.W,A6
  JSR _LVOSuperState(A6)
  MOVE.L  D0,d7

  opt p=68020
  BSR getVBR
  MOVE.L A0,vbrval

  MOVE.L  D7,D0
  JSR _LVOUserState(A6)

  MOVE.L vbrval,D0
  BEQ.S .notins
  MOVE.L D0,A0

  CMP.L #"AR5_",-4(A0)
  BNE.S .notins

.wasins
  ST.B installed
  MOVE.L -8(A0),D0
  MOVE.L D0,installedAddr

  LEA stat,a0
  MOVE.L #"Inst",(A0)+
  MOVE.L #"alle",(A0)+
  MOVE.L #"d   ",(A0)+
  MOVE.B #" ",(A0)+


  LEA addr+9,a0 
  LEA ABCDEF.MSG,A1
  MOVE.W #7,D2
  MOVEQ #0,D1
.lp
  MOVE.B D0,D1
  AND.B #$F,D1
  MOVE.B (A1,D1),-(A0)
  LSR.L #4,D0
  DBF D2,.lp
  MOVE.B #"$",-(A0)
  RTS

.notins
  MOVE.L 8,a0
  CMP.L #"AR5_",-4(A0)
  BEQ.S .wasins

  SF.B installed

  LEA stat,a0
  MOVE.L #"Not ",(A0)+
  MOVE.L #"Inst",(A0)+
  MOVE.L #"alle",(A0)+
  MOVE.B #"d",(A0)+

  LEA addr,a0
  MOVE.B #"N",(A0)+
  MOVE.B #"/",(A0)+
  MOVE.B #"A",(A0)+
  MOVE.B #" ",(A0)+
  MOVE.B #" ",(A0)+
  MOVE.B #" ",(A0)+
  MOVE.B #" ",(A0)+
  MOVE.B #" ",(A0)+
  MOVE.B #" ",(A0)+
  RTS

getVBR:
  MOVE.L ILLEG_OPC.W,-(A7)
  MOVE.L #vbrtrap,ILLEG_OPC.W
  SUB.L A0,A0
  MOVEC VBR,A0
  MOVE.L (A7)+,ILLEG_OPC.W
  RTS
vbrtrap:
  MOVE.W #0,vbrflag
  ADD.L  #4,2(a7)
  RTE

vbrval DC.L 0
vbrflag DC.W -1

printStatusText
  MOVEM.L D0-D7/A0-A6,-(SP)
  MOVE.L window,A0
  MOVE.L 50(a0),A0  ;window rport
  LEA status1itext,A1
  MOVEQ #12,D0
  MOVEQ #4,D1
  ADD.W topbordersize,D1
  MOVE.L intuibase,A6
  JSR _LVOPrintIText(A6)
  MOVEM.L (SP)+,D0-D7/A0-A6
  RTS

gadgetActions dc.l  loadAR
  dc.l  saveConfig
  dc.l  uninstallAR
  dc.l  quit
  dc.l  noAction
  dc.l  noAction
  dc.l  updateImode
  dc.l  noAction
  dc.l  noAction
  dc.l  updateKeymap
  dc.l  customGadCheck

quit  MOVE.B  #0,running.L
noAction  RTS

loadAR  
  TST.B installed
  BNE.S noAction
  BSR.W updateGadStatus
  MOVE.L  installAddr(PC),oldinstalladdr
  MOVEA.L dosbase(PC),A6
  MOVE.L #file1,D1
  MOVE.L #1005,D2
  JSR _LVOOpen(a6)
  MOVE.L D0,optionsfh
  BEQ.W err

  MOVE.L  optionsfh(PC),D1
  MOVE.L  #tempData,D2     ;read data 
  MOVE.L  #$20,D3
  JSR _LVORead(A6)

  LEA tempData,A0
  CMP.L #$000003F3,(A0)+
  BNE err
  TST.L (A0)+
  BNE err
  CMP.L #1,(A0)+
  BNE err
  TST.L (A0)+
  BNE err
  TST.L (A0)+
  BNE err
  MOVE.L (A0)+,D3
  CMP.L #$000003E9,(A0)+
  BNE err
  CMP.L (A0)+,D3
  BNE err

  MOVE.B  installAddr+6(PC),D0
  AND.B #$80,D0
  BNE.S .1
  
  BSR GetDefInstallAddr
  MOVE.L  D0,installAddr
  
.1
  MOVE.L installAddr,D0
  MOVE.L D0,A0
  
  ADD.L D3,D3
  ADD.L D3,D3
  
  MOVE.L  optionsfh(PC),D1
  MOVE.L  A0,D2     ;read code  
  JSR _LVORead(A6)

  MOVE.L  optionsfh(PC),D1
  MOVE.L  #tempData,D2     ;read reloc data
  MOVE.L  #tempDataEnd-tempData,D3
  JSR _LVORead(A6)

  MOVE.L  optionsfh(PC),D1
  JSR _LVOClose(A6)

  MOVE.L  installAddr(PC),D6
  MOVE.L  #tempData,D7
  MOVEA.L D6,A0

  MOVEA.L D6,A0
  MOVEA.L D7,A1

  CMP.L #$3ec,(A1)+
  BNE err

  MOVE.L  (A1)+,D0  ;number of entries
  ADDQ.L  #4,A1
lbC000D44 MOVE.L  (A1)+,D1  ;get reloc offset
  ADD.L D6,0(A0,D1.L)
  SUBI.L  #1,D0
  BNE.S lbC000D44   ;next entry

  MOVE.L  installAddr(PC),D0
  BRA.W lbC000D94

err:
  MOVEQ #$32,D0
lbC000D70 CLR.B $BFE801.L
lbC000D76 MOVE.W  #$F0,$DFF180.L
  MOVE.W  #$C40,$DFF106.L
  TST.B $BFE801.L
  BEQ.S lbC000D76
  SUBQ.W  #1,D0
  BNE.S lbC000D70
  MOVE.L  oldinstalladdr(PC),installAddr
  RTS

file1:
  DC.B "ar5.dat",0
  even

GetDefInstallAddr
  MOVEM.L D1-D7/A0-A7,-(a7)
  move.l 4.w,a6
  move.l MaxLocMem(a6),d1
  move.l MemList(a6),d0
  ; look for fast memory
  cmp.l #$80000,d0
  blt.s .chip

  MOVE.B #255,D1
  MOVE.L D0,A1
  
.n
  MOVE.L D0,A0
  cmp.l #$80000,d0
  blt.s .d
  
  MOVE.W 14(A0),D0
  AND.W #$100,D0    ;local mem?
  BEQ.S .s
  
  CMP.B 9(A0),D1    ;higher priority?
  BCS.S .s
  
  MOVE.L A0,A1  
  MOVE.B 9(A0),D1

.s MOVE.L (A0),D0
   BNE.S .n
.d
  MOVE.L $18(A1),D1 ;get memory end

.chip
  MOVE.L D1,D0
  SUB.L #$60000,D0  ;find suitable high part of chip ram
  MOVEM.L (A7)+,D1-D7/A0-A7
  RTS


uninstallAR
  TST.B installed
  BEQ.W noAction
  MOVE.L installedAddr,A0
  LEA 4(a0),A0
  JSR (A0)
  RTS

lbC000D94 MOVEM.L D0-D7/A0-A6,-(SP)
  MOVEA.L gfxbase(PC),A6
  LEA oldview(PC),A0
  MOVE.L  $22(A6),(A0)
  SUBA.L  A1,A1
  JSR _LVOLoadView(A6)
  MOVEA.L gfxbase(PC),A6
  JSR _LVOWaitTOF(A6)
  JSR _LVOWaitTOF(A6)
  MOVEM.L (A7),D0-D7/A0-A6
  MOVE.L  installoptions(PC),D0
  JSR (A0)
  MOVEA.L 4.W,A6
  MOVEA.L $9C(A6),A6
  MOVE.L  $26(A6),$DFF080
  MOVEA.L gfxbase(PC),A6
  MOVEA.L oldview(PC),A1
  JSR _LVOLoadView(A6)
  JSR _LVOWaitTOF(A6)
  JSR _LVOWaitTOF(A6)
  MOVEM.L (A7)+,D0-D7/A0-A6
  MOVE.L  oldinstalladdr(PC),installAddr
  RTS

oldview: DC.L 0
oldinstalladdr  DC.L 0

saveConfig  BSR.W updateGadStatus
  MOVEA.L dosbase(PC),A6
  
  move.l installAddr,oldinstalladdr

  ;check custom address
  move.b installAddr+6,D0
  and.b #$80,D0
  BNE.S .1
  
  ;save with a blank install addr if custom not checked
  CLR.L installAddr
  
.1
  MOVE.L #cfgname,D1
  MOVE.L #1006,D2
  JSR _LVOOpen(a6)
  MOVE.L D0,optionsfh
  BEQ.S .2

  MOVE.L  optionsfh(PC),D1
  MOVE.L  #optionsstart,D2
  MOVE.L  #optionsend-optionsstart,D3
  JSR _LVOWrite(A6)

  MOVE.L  optionsfh(PC),D1
  JSR _LVOClose(A6)
.2:
  move.l oldinstalladdr,installAddr
  RTS

updateImode MOVE.L  #imodeGadgetValues,-(SP)
  MOVE.L  #imodeGadget,-(SP)
  JSR refreshCycleGad.L
  ADDQ.L  #8,SP
  RTS

updateKeymap  MOVE.L  #keymapValues,-(SP)
  MOVE.L  #keymapGadget,-(SP)
  JSR refreshCycleGad.L
  ADDQ.L  #8,SP
  RTS

customGadCheck
  JSR UpdateEnabledGads
  RTS

installed dc.b 0
 even
installedAddr dc.l 0
optionsfh dc.l 0

imodeValue  dc.l  0
imodeGadgetValues dc.l  imodeValue
  dc.l  4
  dc.l  LeftRightMous.MSG
  dc.l  KeyonKeypad.MSG
  dc.l  RightMouseBut.MSG
  dc.l  Level7Interru.MSG
LeftRightMous.MSG dc.b  'Left & Right Mouse B. + ''F'' Key',0
KeyonKeypad.MSG dc.b  '       ''*'' Key on Keypad       ',0
RightMouseBut.MSG dc.b  '       Right MouseButton       ',0
Level7Interru.MSG dc.b  '       Level 7 Interrupt       ',0

keymapValue dc.l  0
keymapValues  dc.l  keymapValue
  dc.l  4
  dc.l  UK.MSG
  dc.l  DE.MSG
  dc.l  US.MSG
  dc.l  IT.MSG
UK.MSG  dc.b  '  UK  ',0
DE.MSG  dc.b  '  DE  ',0
IT.MSG  dc.b  '  IT  ',0
US.MSG  dc.b  '  US  ',0

  SECTION arpro2003344,DATA_C
installGadget dc.l  saveGadget
  dc.w  $B,GadgetsRow5Top     ;leftedge, topedge
  dc.w  $50,$C               ;width, height
  dc.w  GFLG_GADGIMAGE+GFLG_GADGHIMAGE;flags
  dc.w  GACT_RELVERIFY      ;activation
  dc.w  GTYP_BOOLGADGET     ;type
  dc.l  installButtonImage           ;gadgetrender
  dc.l  installButtonSelectedImage           ;selectrender
  dc.l  installItext           ;gadgettext
  dcb.w 4,0
  dc.w  1                     ;gadgetid
  dcb.w 2,0
installItext  dc.l  $1000000
  dc.l  $40002
  dc.l  defTextAttr
  dc.l  InstallARPROS.MSG
  dc.l  0
InstallARPROS.MSG dc.b  ' Install ',0
installButtonImage
  dc.l  0           ;leftedge, topedge
  dc.l  $50000C     ;width, height
  dc.w  2           ;depth
  dc.l  installButtonImageData   ;imagedata
  dc.w  $300        ;planepick,planeoff
  dcb.w 2,0         ;nextimage
installButtonSelectedImage
  dc.l  0           ;leftedge, topedge  
  dc.l  $50000C     ;width, height
  dc.w  2           ;depth
  dc.l  installButtonSelectedImageData   ;imagedata
  dc.w  $300        ;planepick,planeoff
  dcb.w 2,0         ;nextimage
installButtonImageData
  ds.b ($50+7/8)*$c*2
installButtonSelectedImageData
  ds.b ($50+7/8)*$c*2

saveGadget  dc.l  uninstallGadget
  dc.w  $d0,GadgetsRow5Top    ;leftedge, topedge
  dc.w  $78,$C       ;width, height
  dc.w  GFLG_GADGIMAGE+GFLG_GADGHIMAGE;flags
  dc.w  GACT_RELVERIFY     ;activation
  dc.w  GTYP_BOOLGADGET    ;type
  dc.l  saveButtonImage     ;gadgetrender
  dc.l  saveButtonSelectedImage     ;selectrender
  dc.l  saveItext     ;gadgettext
  dcb.w 4,0
  dc.w  2             ;gadgetid
  dcb.w 2,0

saveItext dc.l  $1000000
  dc.l  $40002
  dc.l  defTextAttr
  dc.l  SaveARPROOpti.MSG
  dc.l  0
SaveARPROOpti.MSG dc.b  ' Save Options ',0
saveButtonImage dc.l  0
  dc.l  $78000C
  dc.w  2
  dc.l  saveButtonImageData
  dc.w  $300
  dcb.w 2,0
saveButtonSelectedImage dc.l  0
  dc.l  $78000C
  dc.w  2
  dc.l  saveButtonSelectedImageData
  dc.w  $300
  dcb.w 2,0
saveButtonImageData
  ds.b ($78+7/8)*$c*2
saveButtonSelectedImageData
  ds.b ($78+7/8)*$c*2

uninstallGadget  dc.l  quitGadget
  dc.w  $60,GadgetsRow5Top   ;leftedge, topedge
  dc.w  $60,$C               ;width, height
  dc.w  GFLG_GADGIMAGE+GFLG_GADGHIMAGE;flags
  dc.w  GACT_RELVERIFY       ;activation
  dc.w  GTYP_BOOLGADGET    ;type
  dc.l  uninstallGadgetImage           ;gadgetrender
  dc.l  uninstallGadgetSelectedImage           ;selectrender
  dc.l  uninstallItext           ;gadgettext
  dcb.w 4,0
  dc.w  3                   ;gadgetid
  dcb.w 2,0
uninstallItext dc.l  $1000000
  dc.l  $40002
  dc.l  defTextAttr
  dc.l  Uninstall.MSG
  dc.l  0
Uninstall.MSG  dc.b  ' Uninstall ',0,0
uninstallGadgetImage dc.l  0
  dc.l  $60000C
  dc.w  2
  dc.l  uninstallGadgetImageData
  dc.w  $300
  dcb.w 2,0
uninstallGadgetSelectedImage dc.l  0
  dc.l  $60000C
  dc.w  2
  dc.l  uninstallGadgetSelectedImageData
  dc.w  $300
  dcb.w 2,0
uninstallGadgetImageData
  ds.b ($60+7/8)*$c*2
uninstallGadgetSelectedImageData
  ds.b ($60+7/8)*$c*2
quitGadget  dc.l  customAddrGadget
  dc.w  $228,GadgetsRow5Top   ;leftedge, topedge
  dc.w  $38,$C               ;width, height
  dc.w  GFLG_GADGIMAGE+GFLG_GADGHIMAGE;flags
  dc.w  GACT_RELVERIFY        ;activation
  dc.w  GTYP_BOOLGADGET      ;type
  dc.l  quitGadgetImage           ;gadgetrender
  dc.l  quitGadgetSelectedImage           ;selectrender
  dc.l  quitItext             ;gadgettext
  dcb.w 4,0
  dc.w  4                   ;gadgetid
  dcb.w 2,0
quitItext dc.l  $1000000
  dc.l  $40002
  dc.l  defTextAttr
  dc.l  QuitInstallat.MSG
  dc.l  0
QuitInstallat.MSG dc.b  ' Quit ',0
quitGadgetImage dc.l  0
  dc.l  $38000C
  dc.w  2
  dc.l  quitGadgetImageData
  dc.w  $300
  dcb.w 2,0
quitGadgetSelectedImage dc.l  0
  dc.l  $38000C
  dc.w  2
  dc.l  quitGadgetSelectedImageData
  dc.w  $300
  dcb.w 2,0
quitGadgetImageData
  ds.b ($38+7/8)*$c*2
quitGadgetSelectedImageData
  ds.b ($38+7/8)*$c*2

customAddrGadget  dc.l  installAddrLabelGadget2
  dc.w  $C,GadgetsRow1Top  ;left, top
  dc.w  $17,$B  ;width, height
  dc.w  GFLG_GADGIMAGE+GFLG_GADGHIMAGE;flags
  dc.w  GACT_TOGGLESELECT+GACT_RELVERIFY;activation
  dc.w  GTYP_BOOLGADGET;type
  dc.l  checkboxGadgetImage   ;gadgetrender
  dc.l  checkboxGadgetSelectedImage   ;selectrender
  dc.l  customAddrIText   ;gadgettext
  dcb.w 4,0
  dc.w  11               ;gadget id
  dcb.w 2,0
customAddrIText dc.b  $1,0,0,0  ;front pen, backpen, drawmode,pad
  dc.w  $1C,2 ;leftedge, topedge
  dc.l  defTextAttr     ;font
  dc.l  customAddr.MSG   ;text
  dc.l  0 ;next itext
customAddr.MSG  dc.b  'Custom Address',0,0

installAddrLabelGadget2 dc.l  activateLabelGadget
  dc.w  $a4,GadgetsRow1Top+2   ;leftedge, topedge
  dc.w  $48,8     ;width, height
  dc.w  0         ;flags
  dc.w  GACT_IMMEDIATE ;activation
  dc.w  GTYP_STRGADGET ;type
  dc.l  installAddrLabelGadget2Image ;gadgetrender
  dcb.w 6,0       ;selectrender
  dc.l  installAddrItext ;gadgettext
  dc.w  6
  dcb.w 2,0
installAddrItext  dc.l  ascii.MSG
  dc.l  lbL00B7C2
  dc.l  9
  dcb.l 6,0
installAddrLabelGadget2Image
  dc.l  $FFFCFFFE
  dc.l  $2030005
  dc.l  lbL007744
  dc.l  lbL007758
lbL007744 dc.l  0
  dc.l  11
  dc.l  $1000A
  dc.l  $10000
  dc.l  $4E0000
lbL007758 dc.l  $FFFCFFFE
  dc.l  $2030005
  dc.l  lbL007768
  dc.l  lbL00777C
lbL007768 dc.l  $3000A
  dc.l  $4D000A
  dc.l  $4D0001
  dc.l  $4C0002
  dc.l  $4C0009
lbL00777C dc.l  $FFFCFFFE
  dc.l  $1030005
  dc.l  lbL00778C
  dc.l  lbL0077A0
lbL00778C dc.l  $4C0001
  dc.l  $20001
  dc.l  $2000A
  dc.l  $30009
  dc.l  $30001
lbL0077A0 dc.l  $FFFCFFFE
  dc.l  $1030005
  dc.l  lbL0077B0
  dc.l  0
lbL0077B0 dc.l  $1000B
  dc.l  $4F000B
  dc.l  $4F0000
  dc.l  $4E0001
  dc.l  $4E000A

activateLabelGadget dc.l  imodeGadget
  dc.w  $104,GadgetsRow1Top+2    ;leftedge, topedge
  dc.w  $58,8               ;width, height
  dc.w  GFLG_GADGIMAGE+GFLG_GADGHIMAGE;flags
  dc.w  GACT_RELVERIFY      ;activation
  dc.w  GTYP_BOOLGADGET    ;type
  dc.l  activateLabelGadgetImage           ;gadgetrender
  dc.l  activateLabelGadgetSelectedImage           ;selectrender
  dc.l  activateOnItext
  dcb.w 4,0
  dc.w  7               ;gadgetid
  dcb.w 2,0
activateOnItext dc.l  $1000000
  dc.l  0
  dc.l  defTextAttr
  dc.l  Activateon.MSG
  dc.l  0
Activateon.MSG  dc.b  'Activate on',0

activateLabelGadgetImage  dc.l  0
  dc.l  $580008
  dc.w  2
  dc.l  activateLabelGadgetImageData
  dc.w  $300
  dcb.w 2,0
activateLabelGadgetSelectedImage  dc.l  0
  dc.l  $580008
  dc.w  2
  dc.l  activateLabelGadgetSelectedImageData
  dc.w  $300
  dcb.w 2,0
activateLabelGadgetImageData
  ds.b ($58+7/8)*$8*2
activateLabelGadgetSelectedImageData
  dcb.b ($58+7/8)*$8*2,$ff
imodeGadget dc.l  romAvoidGadget
  dc.w  $160,GadgetsRow1Top   ;leftedge, topedge
  dc.w  $100,$C    ;width, height
  dc.w  GFLG_GADGIMAGE+GFLG_GADGHIMAGE;flags
  dc.w  GACT_RELVERIFY;activation
  dc.w  GTYP_BOOLGADGET;type
  dc.l  imodeGadgetImage   ;gadgetrender
  dc.l  imodeGadgetSelectedImage   ;selectrender
  dc.l  imodeGadgetItext   ;gadgettext
  dcb.w 4,0
  dc.w  7           ;gadgetid
  dcb.w 2,0
imodeGadgetItext  dc.l  $1000000
  dc.l  $40002
  dc.l  defTextAttr
  dc.l  0
  dc.l  0
imodeGadgetImage  dc.l  0
  dc.l  $100000C
  dc.w  2
  dc.l  imodeGadgetImageData
  dc.w  $300
  dcb.w 2,0
imodeGadgetSelectedImage
  dc.l  0
  dc.l  $100000C
  dc.w  2
  dc.l  imodeGadgetSelectedImageData
  dc.w  $300
  dcb.w 2,0
imodeGadgetImageData
  ds.b ($100+7/8)*$c*2
imodeGadgetSelectedImageData
  ds.b ($100+7/8)*$c*2
romAvoidGadget  dc.l  vgaGadget
  dc.w  $C,GadgetsRow2Top  ;left, top
  dc.w  $17,$B  ;width, height
  dc.w  GFLG_GADGIMAGE+GFLG_GADGHIMAGE;flags
  dc.w  GACT_TOGGLESELECT+GACT_RELVERIFY;activation
  dc.w  GTYP_BOOLGADGET;type
  dc.l  checkboxGadgetImage   ;gadgetrender
  dc.l  checkboxGadgetSelectedImage   ;selectrender
  dc.l  romAvoidIText   ;gadgettext
  dcb.w 4,0
  dc.w  8               ;gadget id
  dcb.w 2,0
romAvoidIText dc.b  $1,0,0,0  ;front pen, backpen, drawmode,pad
  dc.w  $1C,2 ;leftedge, topedge
  dc.l  defTextAttr     ;font
  dc.l  RomAvoid.MSG   ;text
  dc.l  0 ;next itext
RomAvoid.MSG  dc.b  'RomAvoid',0,0

vgaGadget dc.l  ignoreMemAllocGadget
  dc.w  $98,GadgetsRow2Top   ;left, top
  dc.w  $17,$B   ;width, height
  dc.w  GFLG_GADGIMAGE+GFLG_GADGHIMAGE;flags
  dc.w  GACT_TOGGLESELECT+GACT_RELVERIFY;activation
  dc.w  GTYP_BOOLGADGET;type
  dc.l  checkboxGadgetImage   ;gadgetrender
  dc.l  checkboxGadgetSelectedImage   ;selectrender
  dc.l  vgamodeItext   ;gadgettext
  dcb.w 4,0
  dc.w  9             ;gadget id
  dcb.w 2,0
vgamodeItext    dc.b  $1,0,0,0  ;front pen, backpen, drawmode,pad
  dc.w  $1C,2   ;leftedge, topedge
  dc.l  defTextAttr       ;font
  dc.l  VGAScreenMode.MSG ;text
  dc.l  0 ;nextitxt
VGAScreenMode.MSG dc.b  'VGA ScreenMode',0,0

ignoreMemAllocGadget  dc.l  InsertmodeGadget
  dc.w  $134,GadgetsRow2Top    ;left, top
  dc.w  $17,$B      ;width, height
  dc.w  GFLG_GADGIMAGE+GFLG_GADGHIMAGE;flags
  dc.w  GACT_TOGGLESELECT+GACT_RELVERIFY;activation
  dc.w  GTYP_BOOLGADGET ;type
  dc.l  checkboxGadgetImage   ;gadgetrender
  dc.l  checkboxGadgetSelectedImage   ;selectrender
  dc.l  ignoreMemAllocItext   ;gadgettext
  dcb.w 4,0
  dc.w  9           ;gadget id
  dcb.w 2,0
ignoreMemAllocItext     dc.b  $1,0,0,0  ;front pen, backpen, drawmode,pad
  dc.w  $1C,2   ;leftedge, topedge
  dc.l  defTextAttr       ;font
  dc.l  IgnoreMemoryA.MSG ;text
  dc.l  0 ;nextitext
IgnoreMemoryA.MSG dc.b  'Ignore Memory Allocation',0,0

InsertmodeGadget:  dc.l VbrmoveGadget
  dc.w  $c,GadgetsRow3Top  ;left, top
  dc.w  $17,$B    ;width, height
  dc.w  GFLG_GADGIMAGE+GFLG_GADGHIMAGE;flags
  dc.w  GACT_TOGGLESELECT+GACT_RELVERIFY;activation
  dc.w  GTYP_BOOLGADGET;type
  dc.l  checkboxGadgetImage   ;gadgetrender
  dc.l  checkboxGadgetSelectedImage   ;selectrender
  dc.l  InsertModeItext
  dcb.w 4,0
  dc.w  9         ;gadget id
  dcb.w 2,0
InsertModeItext       dc.b  $1,0,0,0  ;front pen, backpen, drawmode,pad
  dc.w  $1C,2   ;leftedge, topedge
  dc.l  defTextAttr       ;font
  dc.l  InsertMode.MSG  ;text
  dc.l  0 ;nextitext
InsertMode.MSG  dc.b  'Insert Mode',0
VbrmoveGadget:  dc.l  keymapLabelGadget
  dc.w  $98,GadgetsRow3Top  ;left, top
  dc.w  $17,$B    ;width, height
  dc.w  GFLG_GADGIMAGE+GFLG_GADGHIMAGE;flags
  dc.w  GACT_TOGGLESELECT+GACT_RELVERIFY;activation
  dc.w  GTYP_BOOLGADGET ;type
  dc.l  checkboxGadgetImage   ;gadgetrender
  dc.l  checkboxGadgetSelectedImage   ;selectrender
  dc.l  VbrMoveItext
  dcb.w 4,0
  dc.w  9       ;gadget id
  dcb.w 2,0
VbrMoveItext        dc.b  $1,0,0,0  ;front pen, backpen, drawmode,pad
  dc.w  $1C,2   ;leftedge, topedge
  dc.l  defTextAttr       ;font
  dc.l  VbrMoveItext.MSG  ;text
  dc.l  0 ;nextitext
VbrMoveItext.MSG  dc.b  'Move VBR',0

keymapLabelGadget dc.l  keymapGadget
  dc.w  $134,GadgetsRow3Top    ;leftedge, topedge
  dc.w  $30,8               ;width, height
  dc.w  GFLG_GADGIMAGE+GFLG_GADGHIMAGE;flags
  dc.w  GACT_RELVERIFY     ;activation
  dc.w  GTYP_BOOLGADGET    ;type
  dc.l  keymapLabelGadgetImage           ;gadgetrender
  dc.l  keymapLabelGadgetSelectedImage           ;selectrender
  dc.l  keymapLabelItext
  dcb.w 4,0
  dc.w  10             ;gadget id
  dcb.w 2,0
keymapLabelItext  dc.l  $1000000
  dc.w  0,2
  dc.l  defTextAttr
  dc.l  keymap.MSG
  dc.l  0
keymap.MSG  dc.b  'Keymap',0
keymapLabelGadgetImage  dc.l  0
  dc.w  $30,$0008
  dc.w  2
  dc.l  keymapLabelGadgetImageData
  dc.w  $300
  dcb.w 2,0
keymapLabelGadgetSelectedImage  dc.l  0
  dc.w  $30,$0008
  dc.w  2
  dc.l  keymapLabelGadgetSelectedImageData
  dc.w  $300
  dcb.w 2,0
keymapLabelGadgetImageData
  dcb.w $30*8,0
keymapLabelGadgetSelectedImageData
  dcb.w $30*8,$FFFF

keymapGadget  dc.l  ResetProofGadget
  dc.w  $166,GadgetsRow3Top   ;leftedge, topedge
  dc.w  $38,$C    ;width, height
  dc.w  GFLG_GADGIMAGE+GFLG_GADGHIMAGE;flags
  dc.w  GACT_RELVERIFY;activation
  dc.w  GTYP_BOOLGADGET;type
  dc.l  keymapGadgetImage   ;gadgetrender
  dc.l  keymapGadgetSelectedImage   ;selectrender
  dc.l  keymapItext   ;gadgettext
  dcb.w 4,0
  dc.w  10          ;gadget id
  dcb.w 2,0

keymapItext dc.l  $1000000
  dc.l  $40002
  dc.l  defTextAttr
  dc.l  0
  dc.l  0

keymapGadgetImage dc.l  0
  dc.w  $38,$C
  dc.w  2
  dc.l  keymapGadgetImageData
  dc.w  $300
  dcb.w 2,0

keymapGadgetSelectedImage
  dc.l  0
  dc.w  $38,$C
  dc.w  2
  dc.l  keymapGadgetSelectedImageData
  dc.w  $300
  dcb.w 2,0
keymapGadgetImageData
  dcb.w $38*$c,0
keymapGadgetSelectedImageData
  dcb.w $38*$c,0

ResetProofGadget:  dc.l DisableVposGadget
  dc.w  $c,GadgetsRow4Top  ;left, top
  dc.w  $17,$B    ;width, height
  dc.w  GFLG_GADGIMAGE+GFLG_GADGHIMAGE;flags
  dc.w  GACT_TOGGLESELECT+GACT_RELVERIFY;activation
  dc.w  GTYP_BOOLGADGET ;type
  dc.l  checkboxGadgetImage   ;gadgetrender
  dc.l  checkboxGadgetSelectedImage   ;selectrender
  dc.l  ResetProofItext
  dcb.w 4,0
  dc.w  9       ;gadget id
  dcb.w 2,0
ResetProofItext       dc.b  $1,0,0,0  ;front pen, backpen, drawmode,pad
  dc.w  $1C,2   ;leftedge, topedge
  dc.l  defTextAttr       ;font
  dc.l  ResetProofItext.MSG  ;text
  dc.l  0 ;nextitext
ResetProofItext.MSG dc.b  'Reset Proof',0

DisableVposGadget:  dc.l 0
  dc.w  $98,GadgetsRow4Top  ;left, top
  dc.w  $17,$B    ;width, height
  dc.w  GFLG_GADGIMAGE+GFLG_GADGHIMAGE;flags
  dc.w  GACT_TOGGLESELECT+GACT_RELVERIFY;activation
  dc.w  GTYP_BOOLGADGET ;type
  dc.l  checkboxGadgetImage   ;gadgetrender
  dc.l  checkboxGadgetSelectedImage   ;selectrender
  dc.l  DisableVposItext
  dcb.w 4,0
  dc.w  9       ;gadget id
  dcb.w 2,0
DisableVposItext       dc.b  $1,0,0,0  ;front pen, backpen, drawmode,pad
  dc.w  $1C,2   ;leftedge, topedge
  dc.l  defTextAttr       ;font
  dc.l  DisableVposItext.MSG  ;text
  dc.l  0 ;nextitext
DisableVposItext.MSG dc.b  'Disable VPos Write',0

  even
ascii.MSG dc.b  '00000000'
lbW00B7C0 dc.w  0
lbL00B7C2 dcb.l 2,0
  dc.w  0
checkboxGadgetImage dc.l  0
  dc.l  $20000B
  dc.w  3
  dc.l  checkboxGadgetImageData
  dc.w  $700
  dcb.w 2,0
checkboxGadgetImageData dc.l  $200
  dcb.l 9,$600
  dc.l  $7FFFFE00
  dc.l  $FFFFFC00
  dcb.l 9,$C0000000
  dc.l  $80000000
  dcb.l 11,0
checkboxGadgetSelectedImage dc.l  0
  dc.l  $20000B
  dc.w  3
  dc.l  checkboxGadgetSelectedImageData
  dc.w  $700
  dcb.w 2,0
checkboxGadgetSelectedImageData dc.l  $200
  dc.l  $600
  dc.l  $E600
  dc.l  $18600
  dc.l  $30600
  dc.l  $7060600
  dc.l  $38C0600
  dc.l  $1F80600
  dc.l  $F00600
  dc.l  $600
  dc.l  $7FFFFE00
  dc.l  $FFFFFC00
  dcb.l 9,$C0000000
  dc.l  $80000000
  dcb.l 11,0

  SECTION temp,BSS
tempData ds.l  $2100
tempDataEnd

  end
