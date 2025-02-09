MODULE 'dos/dos'

PROC checkArMem(arbase) IS Long(arbase+4)="ACTI"

PROC calcArChecksum(arbase)
  DEF check=0,i
  FOR i:=arbase TO arbase+1024*256-4 STEP 4
    check:=check+Long(i)
  ENDFOR
ENDPROC check

PROC checkArFlashId(arbase)
  DEF id1,id2
  PutChar(arbase+($5555*2),$AA)
  PutChar(arbase+($2AAA*2),$55)
  PutChar(arbase+($5555*2),$90)
  Delay(1)
  
  //read id
  id1:=Shl(Char(arbase+$400),8) OR Char(arbase+$402)

  PutChar(arbase+($5555*2),$AA)
  PutChar(arbase+($2AAA*2),$55)
  PutChar(arbase+($5555*2),$F0)
  Delay(1)

  PutChar(arbase+1+($5555*2),$AA)
  PutChar(arbase+1+($2AAA*2),$55)
  PutChar(arbase+1+($5555*2),$90)
  Delay(1)
  
  //read id
  id2:=Shl(Char(arbase+$401),8) OR Char(arbase+$403)

  PutChar(arbase+1+($5555*2),$AA)
  PutChar(arbase+1+($2AAA*2),$55)
  PutChar(arbase+1+($5555*2),$F0)
  Delay(1)
ENDPROC (id1=$1FD5) AND (id2=$1FD5)

PROC sendFlashWrite(arbase,chip)
  PutChar(arbase+chip+($5555*2),$AA)
  PutChar(arbase+chip+($2AAA*2),$55)
  PutChar(arbase+chip+($5555*2),$A0)
ENDPROC

PROC waitSectorComplete(arbase,chip)
  DEF v1,v2
  
  REPEAT
    v1:=Char(arbase+chip+4)
    v2:=Char(arbase+chip+4)
  UNTIL v1=v2
ENDPROC

PROC main()
  DEF fh,romFile,chip,sector,i,arbase=0,checksum,src,dest
  DEF response[100]:STRING
  
  WriteF('Action Replay 5 Flash Tool v0.1 by REbEL/QTX\n\n')
  
  IF StrLen(arg)=0
    WriteF('Usage: ar5flasher <filename>\n\n')
    RETURN
  ENDIF

  fh:=Open(arg,MODE_OLDFILE)  
  IF fh=0
    WriteF('Error: unable to open file: \s\n\n',arg)
    RETURN
  ENDIF
  
  IF checkArMem($400000)
    arbase:=$400000
  ELSEIF checkArMem($800000)
    arbase:=$800000
  ELSE
    IF checkArFlashId($400000)
      arbase:=$400000
    ELSEIF checkArFlashId($800000)
      arbase:=$800000
    ENDIF
  ENDIF
  
  IF arbase=0
    WriteF('Error: Action Replay memory is not visible\n\n')
    RETURN
  ENDIF
  WriteF('Action Replay memory located at: $\h\n',arbase)
  
  IF checkArFlashId(arbase)=FALSE
    WriteF('Error: Unable to determine flash chip for your Action Replay\n\n')
    RETURN
  ENDIF
  
  romFile:=New(256*1024)
  IF romFile=0
  WriteF('Error: Unable to allocate 256k of RAM\n\n')
  Close(fh)
  RETURN
  ENDIF

  Read(fh,romFile,256*1024)
  Close(fh)
  WriteF('File loaded...\n')
  
  IF Long(romFile+4)<>"ACTI"
    WriteF('Error: Action Replay ROM signature not found\n\n')
    Dispose(romFile)
    RETURN
  ENDIF
  
  checksum:=calcArChecksum(arbase)
  
  //check checksum
  IF checksum<>Long(arbase+(256*1024)-4)
    WriteF('Warning: The ROM checksum is not correct. It will be corrected when writing\n\n')
  ENDIF
  WriteF('\nFlashing is about to commence. Corruption may occur if power is lost during the process. ')
  WriteF('Are you sure you wish to continue (y/n)? ')
  ReadStr(Input(),response)
  UpperStr(response)
  IF response[0]<>"Y"
    WriteF('\nOperation aborted\n')
    Dispose(romFile)
    RETURN
  ENDIF

  //fix checksum  
  PutLong(arbase+(256*1024)-4,checksum)
  
  //copy pref settings to the new file
  IF Long(arbase+$40000-512)="pref"
    CopyMem(arbase+$40000-512,romFile+$40000-512,128)
  ENDIF
  
  WriteF('\nFlashing: ')
  FOR chip:=0 TO 1
    src:=romFile+chip
    dest:=arbase+chip
    FOR sector:=0 TO (256*1024/2/128)-1
      IF sector AND 3 = 0 THEN WriteF('.')
      Forbid()
      Disable()
      sendFlashWrite(arbase,chip)
      FOR i:=0 TO 127
        IF dest>=(arbase+4) THEN PutChar(dest,Char(src)) 
        dest+=2
        src+=2
      ENDFOR
      Enable()
      Permit()
      waitSectorComplete(arbase,chip)
    ENDFOR
  ENDFOR

  WriteF('\n\nVerifying: ')
  FOR i:=0 TO (256*1024-1)
    IF (i AND 511=0) THEN WriteF('.')
    IF i>=4
      IF Char(romFile+i)<>Char(arbase+i)
        WriteF('\n\nVerify failure. Operation failed!\n\n')
        Dispose(romFile)
        RETURN
      ENDIF
    ENDIF
  ENDFOR
  
  WriteF('\n\nOperation completed successfully\n\n')
  Dispose(romFile)
ENDPROC
