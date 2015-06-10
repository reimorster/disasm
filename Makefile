#
# Borland C++ IDE generated makefile
#
# Fixed by Reinaldo Moreira to Work under BCC55 < reimorster at gmail dot com >

.AUTODEPEND

#
# Borland C++ tools
#
IMPLIB  = Implib
BCC32   = Bcc32 +BccW32.cfg 
TLINK32 = ILink32
TLIB    = TLib
BRC32   = Brc32
#
# IDE macros
#


#
# Options
#
IDE_LFLAGS32 =  -LC:\BCC55\LIB
LLATC32_disasmdexe =  -Tpe -ap -c
RLATC32_disasmdexe =  -w32
BLATC32_disasmdexe = 
CNIEAT_disasmdexe = -IC:\BCC55\INCLUDE -D
LNIEAT_disasmdexe = -x
LEAT_disasmdexe = $(LLATC32_disasmdexe)
REAT_disasmdexe = $(RLATC32_disasmdexe)
BEAT_disasmdexe = $(BLATC32_disasmdexe)


	
#
# Dependency List
#
Dep_disasm = \
   disasm.exe

disasm : BccW32.cfg $(Dep_disasm)
  @echo MakeNode 

Dep_disasmdexe = \
   disasm.obj\
   main.obj\
   assembl.obj\
   asmserv.obj

disasm.exe : $(Dep_disasmdexe)
  $(TLINK32) @&&|
 /v $(IDE_LFLAGS32) $(LEAT_disasmdexe) $(LNIEAT_disasmdexe) +
C:\BCC55\LIB\c0x32.obj+
disasm.obj+
main.obj+
assembl.obj+
asmserv.obj
$<,$*
C:\BCC55\LIB\import32.lib+
C:\BCC55\LIB\cw32.lib

|

disasm.obj :  disasm.c
  $(BCC32) -c $(CEAT_disasmdexe) $(CNIEAT_disasmdexe) -o$@ disasm.c

main.obj :  main.c
  $(BCC32) -c $(CEAT_disasmdexe) $(CNIEAT_disasmdexe) -o$@ main.c

assembl.obj :  assembl.c
  $(BCC32) -c $(CEAT_disasmdexe) $(CNIEAT_disasmdexe) -o$@ assembl.c

asmserv.obj :  asmserv.c
  $(BCC32) -c $(CEAT_disasmdexe) $(CNIEAT_disasmdexe) -o$@ asmserv.c

# Compiler configuration file
BccW32.cfg : 
   Copy &&|
-R
-v
-vi
-WC
-K
-d
| $@



