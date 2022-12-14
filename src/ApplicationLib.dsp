# Microsoft Developer Studio Project File - Name="ApplicationLib" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=ApplicationLib - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "ApplicationLib.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "ApplicationLib.mak" CFG="ApplicationLib - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "ApplicationLib - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "ApplicationLib - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "ApplicationLib - Win32 Release"

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
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /YX /FD /c
# ADD CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /YX /FD /c
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ELSEIF  "$(CFG)" == "ApplicationLib - Win32 Debug"

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
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /YX /FD /GZ /c
# ADD CPP /nologo /MDd /W3 /GX /ZI /Od /I "../include" /I "../include/util" /I "../include/Concurrency" /I "$(CPP_U_TEST)/include" /I "$(CPP_U_TEST)/include/Platforms/VisualCpp" /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /FD /GZ /c
# SUBTRACT CPP /X /YX
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo
# Begin Special Build Tool
SOURCE="$(InputPath)"
PostBuild_Cmds=copy Debug\ApplicationLib.lib ..\lib
# End Special Build Tool

!ENDIF 

# Begin Target

# Name "ApplicationLib - Win32 Release"
# Name "ApplicationLib - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\Concurrency\Action.cpp
# End Source File
# Begin Source File

SOURCE=.\Concurrency\ActiveObject.cpp
# End Source File
# Begin Source File

SOURCE=.\util\ConcurrencyBuildTime.cpp
# End Source File
# Begin Source File

SOURCE=.\Concurrency\NullAction.cpp
# End Source File
# Begin Source File

SOURCE=.\Concurrency\Runnable.cpp
# End Source File
# Begin Source File

SOURCE=.\Concurrency\Timer.cpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=..\include\Concurrency\Action.h
# End Source File
# Begin Source File

SOURCE=..\include\Concurrency\ActionExecutingRunnable.h
# End Source File
# Begin Source File

SOURCE=..\include\Concurrency\ActiveObject.h
# End Source File
# Begin Source File

SOURCE=.\Concurrency\AllTests.h
# End Source File
# Begin Source File

SOURCE=..\include\util\ConcurrencyBuildTime.h
# End Source File
# Begin Source File

SOURCE=..\include\Concurrency\Delay.h
# End Source File
# Begin Source File

SOURCE=..\include\Concurrency\Event.h
# End Source File
# Begin Source File

SOURCE=..\include\Concurrency\EventSettingAction.h
# End Source File
# Begin Source File

SOURCE=..\include\Concurrency\Mutex.h
# End Source File
# Begin Source File

SOURCE=..\include\Concurrency\NullAction.h
# End Source File
# Begin Source File

SOURCE=..\include\Concurrency\Runnable.h
# End Source File
# Begin Source File

SOURCE=..\include\Concurrency\ScopeLock.h
# End Source File
# Begin Source File

SOURCE=..\include\Concurrency\Thread.h
# End Source File
# Begin Source File

SOURCE=..\include\Concurrency\Timer.h
# End Source File
# Begin Source File

SOURCE=..\include\Concurrency\WaitingAction.h
# End Source File
# End Group
# Begin Group "platform"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\platforms\Win32\Delay.cpp
# End Source File
# Begin Source File

SOURCE=..\platforms\Win32\Event.cpp
# End Source File
# Begin Source File

SOURCE=..\platforms\Win32\Mutex.cpp
# End Source File
# Begin Source File

SOURCE=..\platforms\Win32\Platform.h
# End Source File
# Begin Source File

SOURCE=..\platforms\Win32\Thread.cpp
# End Source File
# End Group
# End Target
# End Project
