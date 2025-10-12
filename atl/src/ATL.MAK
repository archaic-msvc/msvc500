# Microsoft Developer Studio Generated NMAKE File, Format Version 4.20
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

!IF "$(CFG)" == ""
CFG=atl - Win32 Debug
!MESSAGE No configuration specified.  Defaulting to atl - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "atl - Win32 Debug" && "$(CFG)" != "atl - Win32 Unicode Debug"\
 && "$(CFG)" != "atl - Win32 Release" && "$(CFG)" !=\
 "atl - Win32 Unicode Release"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE on this makefile
!MESSAGE by defining the macro CFG on the command line.  For example:
!MESSAGE 
!MESSAGE NMAKE /f "atl.mak" CFG="atl - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "atl - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "atl - Win32 Unicode Debug" (based on\
 "Win32 (x86) Dynamic-Link Library")
!MESSAGE "atl - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "atl - Win32 Unicode Release" (based on\
 "Win32 (x86) Dynamic-Link Library")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 
################################################################################
# Begin Project
# PROP Target_Last_Scanned "atl - Win32 Unicode Release"
MTL=mktyplib.exe
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "atl - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Target_Dir ""
OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

ALL : "$(OUTDIR)\atl.dll" "$(OUTDIR)\atl.bsc" "$(OUTDIR)\regsvr32.trg"\
 ".\atl.tlb"

CLEAN : 
	-@erase "$(INTDIR)\atl.obj"
	-@erase "$(INTDIR)\atl.pch"
	-@erase "$(INTDIR)\atl.res"
	-@erase "$(INTDIR)\atl.sbr"
	-@erase "$(INTDIR)\RegObj.obj"
	-@erase "$(INTDIR)\RegObj.sbr"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\StdAfx.sbr"
	-@erase "$(INTDIR)\vc40.idb"
	-@erase "$(INTDIR)\vc40.pdb"
	-@erase "$(OUTDIR)\atl.bsc"
	-@erase "$(OUTDIR)\atl.dll"
	-@erase "$(OUTDIR)\atl.exp"
	-@erase "$(OUTDIR)\atl.ilk"
	-@erase "$(OUTDIR)\atl.lib"
	-@erase "$(OUTDIR)\atl.pdb"
	-@erase "$(OUTDIR)\regsvr32.trg"
	-@erase ".\atl.h"
	-@erase ".\atl.tlb"
	-@erase ".\atl_i.c"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

# ADD BASE CPP /nologo /MDd /W3 /Gm /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_WINDLL" /D "_MBCS" /Yu"stdafx.h" /c
# ADD CPP /nologo /MDd /W3 /Gm /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_WINDLL" /D "_MBCS" /FR /Yu"stdafx.h" /c
CPP_PROJ=/nologo /MDd /W3 /Gm /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D\
 "_WINDLL" /D "_MBCS" /FR"$(INTDIR)/" /Fp"$(INTDIR)/atl.pch" /Yu"stdafx.h"\
 /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c 
CPP_OBJS=.\Debug/
CPP_SBRS=.\Debug/
# ADD BASE MTL /nologo /D "_DEBUG" /win32
# ADD MTL /nologo /D "_DEBUG" /win32
MTL_PROJ=/nologo /D "_DEBUG" /win32 
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
RSC_PROJ=/l 0x409 /fo"$(INTDIR)/atl.res" /d "_DEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/atl.bsc" 
BSC32_SBRS= \
	"$(INTDIR)\atl.sbr" \
	"$(INTDIR)\RegObj.sbr" \
	"$(INTDIR)\StdAfx.sbr"

"$(OUTDIR)\atl.bsc" : "$(OUTDIR)" $(BSC32_SBRS)
    $(BSC32) @<<
  $(BSC32_FLAGS) $(BSC32_SBRS)
<<

LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /dll /debug /machine:I386
# ADD LINK32 /nologo /base:0x5f3e0000 /version:2.0 /subsystem:windows /dll /debug /machine:I386
LINK32_FLAGS=/nologo /base:0x5f3e0000 /version:2.0 /subsystem:windows /dll\
 /incremental:yes /pdb:"$(OUTDIR)/atl.pdb" /debug /machine:I386 /def:".\atl.def"\
 /out:"$(OUTDIR)/atl.dll" /implib:"$(OUTDIR)/atl.lib" 
DEF_FILE= \
	".\atl.def"
LINK32_OBJS= \
	"$(INTDIR)\atl.obj" \
	"$(INTDIR)\atl.res" \
	"$(INTDIR)\RegObj.obj" \
	"$(INTDIR)\StdAfx.obj"

"$(OUTDIR)\atl.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

# Begin Custom Build
OutDir=.\Debug
TargetPath=.\Debug\atl.dll
InputPath=.\Debug\atl.dll
SOURCE=$(InputPath)

"$(OutDir)\regsvr32.trg" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   regsvr32 /s /c "$(TargetPath)"
   echo regsvr32 exec. time > "$(OutDir)\regsvr32.trg"

# End Custom Build

!ELSEIF  "$(CFG)" == "atl - Win32 Unicode Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Unicode Debug"
# PROP BASE Intermediate_Dir "Unicode Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "DebugU"
# PROP Intermediate_Dir "DebugU"
# PROP Target_Dir ""
OUTDIR=.\DebugU
INTDIR=.\DebugU
# Begin Custom Macros
OutDir=.\DebugU
# End Custom Macros

ALL : "$(OUTDIR)\atl.dll" "$(OUTDIR)\regsvr32.trg" ".\atl.tlb"

CLEAN : 
	-@erase "$(INTDIR)\atl.obj"
	-@erase "$(INTDIR)\atl.pch"
	-@erase "$(INTDIR)\atl.res"
	-@erase "$(INTDIR)\RegObj.obj"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc40.idb"
	-@erase "$(INTDIR)\vc40.pdb"
	-@erase "$(OUTDIR)\atl.dll"
	-@erase "$(OUTDIR)\atl.exp"
	-@erase "$(OUTDIR)\atl.ilk"
	-@erase "$(OUTDIR)\atl.lib"
	-@erase "$(OUTDIR)\atl.pdb"
	-@erase "$(OUTDIR)\regsvr32.trg"
	-@erase ".\atl.h"
	-@erase ".\atl.tlb"
	-@erase ".\atl_i.c"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

# ADD BASE CPP /nologo /MDd /W3 /Gm /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_WINDLL" /D "_UNICODE" /Yu"stdafx.h" /c
# ADD CPP /nologo /MDd /W3 /Gm /Zi /Od /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_WINDLL" /D "_UNICODE" /Yu"stdafx.h" /c
CPP_PROJ=/nologo /MDd /W3 /Gm /Zi /Od /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D\
 "_WINDLL" /D "_UNICODE" /Fp"$(INTDIR)/atl.pch" /Yu"stdafx.h" /Fo"$(INTDIR)/"\
 /Fd"$(INTDIR)/" /c 
CPP_OBJS=.\DebugU/
CPP_SBRS=.\.
# ADD BASE MTL /nologo /D "_DEBUG" /win32
# ADD MTL /nologo /D "_DEBUG" /win32
MTL_PROJ=/nologo /D "_DEBUG" /win32 
# ADD BASE RSC /l 0x409 /d "_DEBUG" /d "_UNICODE"
# ADD RSC /l 0x409 /d "_DEBUG"
RSC_PROJ=/l 0x409 /fo"$(INTDIR)/atl.res" /d "_DEBUG" /d "_UNICODE"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/atl.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /dll /debug /machine:I386
# ADD LINK32 /nologo /base:0x5f3e0000 /version:2.0 /subsystem:windows /dll /debug /machine:I386
LINK32_FLAGS=/nologo /base:0x5f3e0000 /version:2.0 /subsystem:windows /dll\
 /incremental:yes /pdb:"$(OUTDIR)/atl.pdb" /debug /machine:I386 /def:".\atl.def"\
 /out:"$(OUTDIR)/atl.dll" /implib:"$(OUTDIR)/atl.lib" 
DEF_FILE= \
	".\atl.def"
LINK32_OBJS= \
	"$(INTDIR)\atl.obj" \
	"$(INTDIR)\atl.res" \
	"$(INTDIR)\RegObj.obj" \
	"$(INTDIR)\StdAfx.obj"

"$(OUTDIR)\atl.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

# Begin Custom Build
OutDir=.\DebugU
TargetPath=.\DebugU\atl.dll
InputPath=.\DebugU\atl.dll
SOURCE=$(InputPath)

"$(OutDir)\regsvr32.trg" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   regsvr32 /s /c "$(TargetPath)"
   echo regsvr32 exec. time > "$(OutDir)\regsvr32.trg"

# End Custom Build

!ELSEIF  "$(CFG)" == "atl - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Target_Dir ""
OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

ALL : "$(OUTDIR)\atl.dll" "$(OUTDIR)\regsvr32.trg" ".\atl.tlb"

CLEAN : 
	-@erase "$(INTDIR)\atl.obj"
	-@erase "$(INTDIR)\atl.pch"
	-@erase "$(INTDIR)\atl.res"
	-@erase "$(INTDIR)\RegObj.obj"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(OUTDIR)\atl.dll"
	-@erase "$(OUTDIR)\atl.exp"
	-@erase "$(OUTDIR)\atl.lib"
	-@erase "$(OUTDIR)\regsvr32.trg"
	-@erase ".\atl.h"
	-@erase ".\atl.tlb"
	-@erase ".\atl_i.c"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

# ADD BASE CPP /nologo /MT /W3 /O1 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_WINDLL" /D "_MBCS" /D "_ATL_MIN_CRT" /Yu"stdafx.h" /c
# ADD CPP /nologo /MT /W3 /O1 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_WINDLL" /D "_MBCS" /D "_ATL_MIN_CRT" /Yu"stdafx.h" /c
# SUBTRACT CPP /Fr
CPP_PROJ=/nologo /MT /W3 /O1 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_WINDLL"\
 /D "_MBCS" /D "_ATL_MIN_CRT" /Fp"$(INTDIR)/atl.pch" /Yu"stdafx.h"\
 /Fo"$(INTDIR)/" /c 
CPP_OBJS=.\Release/
CPP_SBRS=.\.
# ADD BASE MTL /nologo /D "NDEBUG" /win32
# ADD MTL /nologo /D "NDEBUG" /win32
MTL_PROJ=/nologo /D "NDEBUG" /win32 
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
RSC_PROJ=/l 0x409 /fo"$(INTDIR)/atl.res" /d "NDEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/atl.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
# ADD BASE LINK32 /nologo /entry:"DllMain" /subsystem:windows /dll /machine:I386
# ADD LINK32 /nologo /base:0x5f3e0000 /version:2.0 /entry:"DllMain" /subsystem:windows /dll /machine:I386 /MERGE:.idata=.rdata
# SUBTRACT LINK32 /pdb:none
LINK32_FLAGS=/nologo /base:0x5f3e0000 /version:2.0 /entry:"DllMain"\
 /subsystem:windows /dll /incremental:no /pdb:"$(OUTDIR)/atl.pdb" /machine:I386\
 /def:".\atl.def" /out:"$(OUTDIR)/atl.dll" /implib:"$(OUTDIR)/atl.lib"\
 /MERGE:.idata=.rdata 
DEF_FILE= \
	".\atl.def"
LINK32_OBJS= \
	"$(INTDIR)\atl.obj" \
	"$(INTDIR)\atl.res" \
	"$(INTDIR)\RegObj.obj" \
	"$(INTDIR)\StdAfx.obj"

"$(OUTDIR)\atl.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

# Begin Custom Build
OutDir=.\Release
TargetPath=.\Release\atl.dll
InputPath=.\Release\atl.dll
SOURCE=$(InputPath)

"$(OutDir)\regsvr32.trg" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   regsvr32 /s /c "$(TargetPath)"
   echo regsvr32 exec. time > "$(OutDir)\regsvr32.trg"

# End Custom Build

!ELSEIF  "$(CFG)" == "atl - Win32 Unicode Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "ReleaseU"
# PROP BASE Intermediate_Dir "ReleaseU"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "ReleaseU"
# PROP Intermediate_Dir "ReleaseU"
# PROP Target_Dir ""
OUTDIR=.\ReleaseU
INTDIR=.\ReleaseU
# Begin Custom Macros
OutDir=.\ReleaseU
# End Custom Macros

ALL : "$(OUTDIR)\atl.dll" "$(OUTDIR)\regsvr32.trg" ".\atl.tlb"

CLEAN : 
	-@erase "$(INTDIR)\atl.obj"
	-@erase "$(INTDIR)\atl.pch"
	-@erase "$(INTDIR)\atl.res"
	-@erase "$(INTDIR)\RegObj.obj"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(OUTDIR)\atl.dll"
	-@erase "$(OUTDIR)\atl.exp"
	-@erase "$(OUTDIR)\atl.lib"
	-@erase "$(OUTDIR)\regsvr32.trg"
	-@erase ".\atl.h"
	-@erase ".\atl.tlb"
	-@erase ".\atl_i.c"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

# ADD BASE CPP /nologo /MT /W3 /O1 /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_WINDLL" /D "_UNICODE" /D "_ATL_MIN_CRT" /Yu"stdafx.h" /c
# ADD CPP /nologo /MT /W3 /O1 /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_WINDLL" /D "_UNICODE" /D "_ATL_MIN_CRT" /Yu"stdafx.h" /c
CPP_PROJ=/nologo /MT /W3 /O1 /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_WINDLL"\
 /D "_UNICODE" /D "_ATL_MIN_CRT" /Fp"$(INTDIR)/atl.pch" /Yu"stdafx.h"\
 /Fo"$(INTDIR)/" /c 
CPP_OBJS=.\ReleaseU/
CPP_SBRS=.\.
# ADD BASE MTL /nologo /D "NDEBUG" /win32
# ADD MTL /nologo /D "NDEBUG" /win32
MTL_PROJ=/nologo /D "NDEBUG" /win32 
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG" /d "_UNICODE"
RSC_PROJ=/l 0x409 /fo"$(INTDIR)/atl.res" /d "NDEBUG" /d "_UNICODE"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/atl.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
# ADD BASE LINK32 /nologo /entry:"DllMain" /subsystem:windows /dll /machine:I386
# ADD LINK32 /nologo /base:0x5f3e0000 /version:2.0 /entry:"DllMain" /subsystem:windows /dll /machine:I386 /MERGE:.text=.rsrc /MERGE:.rdata=.data /MERGE:.CRT=.idata /MERGE:.idata=.data
# SUBTRACT LINK32 /pdb:none
LINK32_FLAGS=/nologo /base:0x5f3e0000 /version:2.0 /entry:"DllMain"\
 /subsystem:windows /dll /incremental:no /pdb:"$(OUTDIR)/atl.pdb" /machine:I386\
 /def:".\atl.def" /out:"$(OUTDIR)/atl.dll" /implib:"$(OUTDIR)/atl.lib"\
 /MERGE:.text=.rsrc /MERGE:.rdata=.data /MERGE:.CRT=.idata /MERGE:.idata=.data 
DEF_FILE= \
	".\atl.def"
LINK32_OBJS= \
	"$(INTDIR)\atl.obj" \
	"$(INTDIR)\atl.res" \
	"$(INTDIR)\RegObj.obj" \
	"$(INTDIR)\StdAfx.obj"

"$(OUTDIR)\atl.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

# Begin Custom Build
OutDir=.\ReleaseU
TargetPath=.\ReleaseU\atl.dll
InputPath=.\ReleaseU\atl.dll
SOURCE=$(InputPath)

"$(OutDir)\regsvr32.trg" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   regsvr32 /s /c "$(TargetPath)"
   echo regsvr32 exec. time > "$(OutDir)\regsvr32.trg"

# End Custom Build

!ENDIF 

.c{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.c{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

################################################################################
# Begin Target

# Name "atl - Win32 Debug"
# Name "atl - Win32 Unicode Debug"
# Name "atl - Win32 Release"
# Name "atl - Win32 Unicode Release"

!IF  "$(CFG)" == "atl - Win32 Debug"

!ELSEIF  "$(CFG)" == "atl - Win32 Unicode Debug"

!ELSEIF  "$(CFG)" == "atl - Win32 Release"

!ELSEIF  "$(CFG)" == "atl - Win32 Unicode Release"

!ENDIF 

################################################################################
# Begin Source File

SOURCE=.\StdAfx.cpp

!IF  "$(CFG)" == "atl - Win32 Debug"

DEP_CPP_STDAF=\
	".\StdAfx.h"\
	{$(INCLUDE)}"\atlconv.cpp"\
	{$(INCLUDE)}"\atlctl.cpp"\
	{$(INCLUDE)}"\atlimpl.cpp"\
	{$(INCLUDE)}"\statreg.cpp"\
	
# ADD CPP /Yc"stdafx.h"

BuildCmds= \
	$(CPP) /nologo /MDd /W3 /Gm /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D\
 "_WINDLL" /D "_MBCS" /FR"$(INTDIR)/" /Fp"$(INTDIR)/atl.pch" /Yc"stdafx.h"\
 /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\StdAfx.obj" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

"$(INTDIR)\StdAfx.sbr" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

"$(INTDIR)\atl.pch" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "atl - Win32 Unicode Debug"

DEP_CPP_STDAF=\
	".\StdAfx.h"\
	{$(INCLUDE)}"\atlbase.h"\
	{$(INCLUDE)}"\atlcom.h"\
	{$(INCLUDE)}"\atlconv.cpp"\
	{$(INCLUDE)}"\atlconv.h"\
	{$(INCLUDE)}"\atlctl.cpp"\
	{$(INCLUDE)}"\atlctl.h"\
	{$(INCLUDE)}"\atliface.h"\
	{$(INCLUDE)}"\atlimpl.cpp"\
	{$(INCLUDE)}"\statreg.cpp"\
	
# ADD BASE CPP /Yc"stdafx.h"
# ADD CPP /Yc"stdafx.h"

BuildCmds= \
	$(CPP) /nologo /MDd /W3 /Gm /Zi /Od /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D\
 "_WINDLL" /D "_UNICODE" /Fp"$(INTDIR)/atl.pch" /Yc"stdafx.h" /Fo"$(INTDIR)/"\
 /Fd"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\StdAfx.obj" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

"$(INTDIR)\atl.pch" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "atl - Win32 Release"

DEP_CPP_STDAF=\
	".\StdAfx.h"\
	{$(INCLUDE)}"\atlbase.h"\
	{$(INCLUDE)}"\atlcom.h"\
	{$(INCLUDE)}"\atlconv.cpp"\
	{$(INCLUDE)}"\atlconv.h"\
	{$(INCLUDE)}"\atlctl.cpp"\
	{$(INCLUDE)}"\atlctl.h"\
	{$(INCLUDE)}"\atliface.h"\
	{$(INCLUDE)}"\atlimpl.cpp"\
	{$(INCLUDE)}"\atlwin.h"\
	{$(INCLUDE)}"\statreg.cpp"\
	
# ADD BASE CPP /Yc"stdafx.h"
# ADD CPP /Yc"stdafx.h"

BuildCmds= \
	$(CPP) /nologo /MT /W3 /O1 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_WINDLL"\
 /D "_MBCS" /D "_ATL_MIN_CRT" /Fp"$(INTDIR)/atl.pch" /Yc"stdafx.h"\
 /Fo"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\StdAfx.obj" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

"$(INTDIR)\atl.pch" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "atl - Win32 Unicode Release"

DEP_CPP_STDAF=\
	".\StdAfx.h"\
	{$(INCLUDE)}"\atlbase.h"\
	{$(INCLUDE)}"\atlcom.h"\
	{$(INCLUDE)}"\atlconv.cpp"\
	{$(INCLUDE)}"\atlconv.h"\
	{$(INCLUDE)}"\atlctl.cpp"\
	{$(INCLUDE)}"\atlctl.h"\
	{$(INCLUDE)}"\atliface.h"\
	{$(INCLUDE)}"\atlimpl.cpp"\
	{$(INCLUDE)}"\statreg.cpp"\
	
# ADD BASE CPP /Yc"stdafx.h"
# ADD CPP /Yc"stdafx.h"

BuildCmds= \
	$(CPP) /nologo /MT /W3 /O1 /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_WINDLL"\
 /D "_UNICODE" /D "_ATL_MIN_CRT" /Fp"$(INTDIR)/atl.pch" /Yc"stdafx.h"\
 /Fo"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\StdAfx.obj" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

"$(INTDIR)\atl.pch" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\atl.cpp

!IF  "$(CFG)" == "atl - Win32 Debug"

DEP_CPP_ATL_C=\
	".\atl.h"\
	".\atl_i.c"\
	".\RegObj.h"\
	".\StdAfx.h"\
	{$(INCLUDE)}"\atlbase.h"\
	{$(INCLUDE)}"\atlcom.h"\
	{$(INCLUDE)}"\atlconv.h"\
	{$(INCLUDE)}"\atlctl.h"\
	{$(INCLUDE)}"\atlwin.h"\
	{$(INCLUDE)}"\OBJSAFE.H"\
	{$(INCLUDE)}"\statreg.h"\
	

"$(INTDIR)\atl.obj" : $(SOURCE) $(DEP_CPP_ATL_C) "$(INTDIR)"\
 "$(INTDIR)\atl.pch" ".\atl.h" ".\atl_i.c"

"$(INTDIR)\atl.sbr" : $(SOURCE) $(DEP_CPP_ATL_C) "$(INTDIR)"\
 "$(INTDIR)\atl.pch" ".\atl.h" ".\atl_i.c"


!ELSEIF  "$(CFG)" == "atl - Win32 Unicode Debug"

DEP_CPP_ATL_C=\
	".\atl.h"\
	".\atl_i.c"\
	".\RegObj.h"\
	".\StdAfx.h"\
	{$(INCLUDE)}"\atlbase.h"\
	{$(INCLUDE)}"\atlcom.h"\
	{$(INCLUDE)}"\atlconv.h"\
	{$(INCLUDE)}"\atlctl.h"\
	{$(INCLUDE)}"\atliface.h"\
	

"$(INTDIR)\atl.obj" : $(SOURCE) $(DEP_CPP_ATL_C) "$(INTDIR)"\
 "$(INTDIR)\atl.pch" ".\atl.h" ".\atl_i.c"


!ELSEIF  "$(CFG)" == "atl - Win32 Release"

DEP_CPP_ATL_C=\
	".\atl.h"\
	".\atl_i.c"\
	".\RegObj.h"\
	".\StdAfx.h"\
	{$(INCLUDE)}"\atlbase.h"\
	{$(INCLUDE)}"\atlcom.h"\
	{$(INCLUDE)}"\atlconv.h"\
	{$(INCLUDE)}"\atlctl.h"\
	{$(INCLUDE)}"\atliface.h"\
	{$(INCLUDE)}"\atlwin.h"\
	

"$(INTDIR)\atl.obj" : $(SOURCE) $(DEP_CPP_ATL_C) "$(INTDIR)"\
 "$(INTDIR)\atl.pch" ".\atl.h" ".\atl_i.c"


!ELSEIF  "$(CFG)" == "atl - Win32 Unicode Release"

DEP_CPP_ATL_C=\
	".\atl.h"\
	".\atl_i.c"\
	".\RegObj.h"\
	".\StdAfx.h"\
	{$(INCLUDE)}"\atlbase.h"\
	{$(INCLUDE)}"\atlcom.h"\
	{$(INCLUDE)}"\atlconv.h"\
	{$(INCLUDE)}"\atlctl.h"\
	{$(INCLUDE)}"\atliface.h"\
	

"$(INTDIR)\atl.obj" : $(SOURCE) $(DEP_CPP_ATL_C) "$(INTDIR)"\
 "$(INTDIR)\atl.pch" ".\atl.h" ".\atl_i.c"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\atl.def

!IF  "$(CFG)" == "atl - Win32 Debug"

!ELSEIF  "$(CFG)" == "atl - Win32 Unicode Debug"

!ELSEIF  "$(CFG)" == "atl - Win32 Release"

!ELSEIF  "$(CFG)" == "atl - Win32 Unicode Release"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\atl.rc
DEP_RSC_ATL_R=\
	".\RegObj.rgs"\
	

!IF  "$(CFG)" == "atl - Win32 Debug"


"$(INTDIR)\atl.res" : $(SOURCE) $(DEP_RSC_ATL_R) "$(INTDIR)"
   $(RSC) $(RSC_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "atl - Win32 Unicode Debug"


"$(INTDIR)\atl.res" : $(SOURCE) $(DEP_RSC_ATL_R) "$(INTDIR)"
   $(RSC) $(RSC_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "atl - Win32 Release"


"$(INTDIR)\atl.res" : $(SOURCE) $(DEP_RSC_ATL_R) "$(INTDIR)"
   $(RSC) $(RSC_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "atl - Win32 Unicode Release"


"$(INTDIR)\atl.res" : $(SOURCE) $(DEP_RSC_ATL_R) "$(INTDIR)"
   $(RSC) $(RSC_PROJ) $(SOURCE)


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\atl.idl

!IF  "$(CFG)" == "atl - Win32 Debug"

# Begin Custom Build
InputPath=.\atl.idl

BuildCmds= \
	midl /h atl.h /iid atl_i.c atl.idl \
	

"atl.tlb" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"atl.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"atl_i.c" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "atl - Win32 Unicode Debug"

# Begin Custom Build
InputPath=.\atl.idl

BuildCmds= \
	midl /h atl.h /iid atl_i.c atl.idl \
	

"atl.tlb" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"atl.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"atl_i.c" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "atl - Win32 Release"

# Begin Custom Build
InputPath=.\atl.idl

BuildCmds= \
	midl /h atl.h /iid atl_i.c atl.idl \
	

"atl.tlb" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"atl.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"atl_i.c" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "atl - Win32 Unicode Release"

# Begin Custom Build
InputPath=.\atl.idl

BuildCmds= \
	midl /h atl.h /iid atl_i.c atl.idl \
	

"atl.tlb" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"atl.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"atl_i.c" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\RegObj.cpp

!IF  "$(CFG)" == "atl - Win32 Debug"

DEP_CPP_REGOB=\
	".\atl.h"\
	".\RegObj.h"\
	".\StdAfx.h"\
	{$(INCLUDE)}"\atlbase.h"\
	{$(INCLUDE)}"\atlcom.h"\
	{$(INCLUDE)}"\atlconv.h"\
	{$(INCLUDE)}"\atlctl.h"\
	{$(INCLUDE)}"\atlwin.h"\
	{$(INCLUDE)}"\OBJSAFE.H"\
	{$(INCLUDE)}"\statreg.h"\
	

"$(INTDIR)\RegObj.obj" : $(SOURCE) $(DEP_CPP_REGOB) "$(INTDIR)"\
 "$(INTDIR)\atl.pch" ".\atl.h"

"$(INTDIR)\RegObj.sbr" : $(SOURCE) $(DEP_CPP_REGOB) "$(INTDIR)"\
 "$(INTDIR)\atl.pch" ".\atl.h"


!ELSEIF  "$(CFG)" == "atl - Win32 Unicode Debug"

DEP_CPP_REGOB=\
	".\atl.h"\
	".\RegObj.h"\
	".\StdAfx.h"\
	{$(INCLUDE)}"\atlbase.h"\
	{$(INCLUDE)}"\atlcom.h"\
	{$(INCLUDE)}"\atlconv.h"\
	{$(INCLUDE)}"\atlctl.h"\
	{$(INCLUDE)}"\atliface.h"\
	

"$(INTDIR)\RegObj.obj" : $(SOURCE) $(DEP_CPP_REGOB) "$(INTDIR)"\
 "$(INTDIR)\atl.pch" ".\atl.h"


!ELSEIF  "$(CFG)" == "atl - Win32 Release"

DEP_CPP_REGOB=\
	".\atl.h"\
	".\RegObj.h"\
	".\StdAfx.h"\
	{$(INCLUDE)}"\atlbase.h"\
	{$(INCLUDE)}"\atlcom.h"\
	{$(INCLUDE)}"\atlconv.h"\
	{$(INCLUDE)}"\atlctl.h"\
	{$(INCLUDE)}"\atliface.h"\
	{$(INCLUDE)}"\atlwin.h"\
	

"$(INTDIR)\RegObj.obj" : $(SOURCE) $(DEP_CPP_REGOB) "$(INTDIR)"\
 "$(INTDIR)\atl.pch" ".\atl.h"


!ELSEIF  "$(CFG)" == "atl - Win32 Unicode Release"

DEP_CPP_REGOB=\
	".\atl.h"\
	".\RegObj.h"\
	".\StdAfx.h"\
	{$(INCLUDE)}"\atlbase.h"\
	{$(INCLUDE)}"\atlcom.h"\
	{$(INCLUDE)}"\atlconv.h"\
	{$(INCLUDE)}"\atlctl.h"\
	{$(INCLUDE)}"\atliface.h"\
	

"$(INTDIR)\RegObj.obj" : $(SOURCE) $(DEP_CPP_REGOB) "$(INTDIR)"\
 "$(INTDIR)\atl.pch" ".\atl.h"


!ENDIF 

# End Source File
# End Target
# End Project
################################################################################
