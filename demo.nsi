ShowInstDetails show

!include LogicLib.nsh
!include shortcut-properties.nsh

Section

CreateShortcut "$SMPROGRAMS\test.lnk" "calc.exe" "--dummy" ""
!insertmacro ShortcutSetToastProperties "$SMPROGRAMS\test.lnk" "{32860D72-BA7F-64CC-AF50-72B6FB1ECE26}" "com.example.nsisdemo" ; DON'T USE THIS GUID!!!
pop $0
${If} $0 <> 0
	MessageBox MB_ICONEXCLAMATION "Shortcut-Attributes to enable Toast Messages couldn't be set"
	SetErrors
	Abort
${EndIf}
DetailPrint Returncode=$0

;SetRegView 64 ;If the Toast-Application is 64 Bit
WriteRegStr HKLM "SOFTWARE\Classes\CLSID\{32860D72-BA7F-64CC-AF50-72B6FB1ECE26}\LocalServer32" "" "C:\ProgramFiles\Snoretoast.exe" ; Add the needed Registry Key (https://docs.microsoft.com/en-us/windows/win32/com/localserver32)

SectionEnd
