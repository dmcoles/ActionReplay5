# Assemble Action Replay

options=-L ar5.lst
compiler=vasmm68k_mot

dbg:
							$(compiler) -Fhunkexe $(options) -no-opt -o ar5 AR5.ASM -Ddbg=1 -Dpistorm=0 -Darhardware=0 -Darsoft=0 -Ddemon2=0

pistorm:
							$(compiler) -Fhunkexe $(options) -no-opt -o ar5 AR5.ASM -Ddbg=0 -Dpistorm=1 -Darhardware=0 -Darsoft=0 -Ddemon2=0
							ar5 ar5.bin

soft:
							$(compiler) -Fhunkexe $(options) -no-opt -o ar5.dat AR5.ASM -Ddbg=0 -Dpistorm=0 -Darhardware=0 -Darsoft=1 -Ddemon2=0

hwv1:
							$(compiler) -Fhunkexe $(options) -no-opt -o ar5 AR5.ASM -Ddbg=0 -Dpistorm=0 -Darhardware=1 -Darsoft=0 -Ddemon2=0
							ar5 artestrom

hwv2:
							$(compiler) -Fhunkexe $(options) -no-opt -o ar5 AR5.ASM -Ddbg=0 -Dpistorm=0 -Darhardware=1 -Darsoft=0 -Ddemon2=1
							ar5 artestrom

clean:
							-delete ar5
							-delete artestrom

